.class public Lcom/cynosure/paymentsdk/layout/SDKPushDialog$PushDialogDownloadClickListener;
.super Ljava/lang/Object;
.source "SDKPushDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cynosure/paymentsdk/layout/SDKPushDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PushDialogDownloadClickListener"
.end annotation


# instance fields
.field private apkInfo:Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

.field final synthetic this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;


# direct methods
.method public constructor <init>(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)V
    .locals 0
    .param p2, "apkInfo"    # Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$PushDialogDownloadClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    if-eqz p2, :cond_0

    .line 282
    iput-object p2, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$PushDialogDownloadClickListener;->apkInfo:Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    .line 284
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$PushDialogDownloadClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$PushDialogDownloadClickListener;->apkInfo:Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    # invokes: Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->downloadAPK(Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)V
    invoke-static {v0, v1}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->access$1(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)V

    .line 289
    return-void
.end method
