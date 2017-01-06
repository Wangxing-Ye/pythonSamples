.class public Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;
.super Ljava/lang/Thread;
.source "SDKPushDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cynosure/paymentsdk/layout/SDKPushDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadThread"
.end annotation


# instance fields
.field private apkInfo:Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

.field private savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "apkInfo"    # Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;
    .param p2, "savePath"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 415
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;->apkInfo:Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    .line 416
    iput-object p2, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;->savePath:Ljava/lang/String;

    .line 417
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 421
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 423
    new-instance v0, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 424
    .local v0, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;->apkInfo:Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkFileURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;->savePath:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;->apkInfo:Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->downloadByHttpGet(Ljava/lang/String;Ljava/lang/String;ZLcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const-string v1, "download ok"

    invoke-static {v1}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;->apkInfo:Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkID()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;->apkInfo:Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    invoke-virtual {v3}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "100%"

    .line 427
    invoke-static {v1, v2, v3}, Lcom/cynosure/paymentsdk/SDKInterface;->updateDownloadNotice(ILjava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;->savePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->installNormal(Landroid/content/Context;Ljava/lang/String;)Z

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    const-string v1, "download failed"

    invoke-static {v1}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    goto :goto_0
.end method
