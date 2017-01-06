.class public Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;
.super Ljava/lang/Object;
.source "DownloadAPKInfo.java"


# instance fields
.field private apkFileURL:Ljava/lang/String;

.field private apkID:I

.field private apkImageURL:Ljava/lang/String;

.field private apkTitle:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private startActivityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getApkFileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->apkFileURL:Ljava/lang/String;

    return-object v0
.end method

.method public getApkID()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->apkID:I

    return v0
.end method

.method public getApkImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->apkImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getApkTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->apkTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->startActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public setApkFileURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkFileURL"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->apkFileURL:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setApkID(I)V
    .locals 0
    .param p1, "apkID"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->apkID:I

    .line 22
    return-void
.end method

.method public setApkImageURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkImageURL"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->apkImageURL:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setApkTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkTitle"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->apkTitle:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->packageName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setStartActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "startActivityName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->startActivityName:Ljava/lang/String;

    .line 46
    return-void
.end method
