.class public abstract Lcom/cynosure/payment3rd/ThirdPartPayClass;
.super Ljava/lang/Object;
.source "ThirdPartPayClass.java"


# instance fields
.field protected _activity:Landroid/app/Activity;

.field protected _context:Landroid/content/Context;

.field protected _isNeedClassLoader:Z

.field protected _param:Ljava/lang/String;

.field protected _sdkFileDownloadFolderPath:Ljava/lang/String;

.field protected _sdkFileInDexFolder:Ljava/io/File;

.field protected _sdkFileInDexFolderPath:Ljava/lang/String;

.field protected _sdkMD5:Ljava/lang/String;

.field protected _sdkName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_isNeedClassLoader:Z

    .line 15
    return-void
.end method

.method private init3rd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkFileDownloadFolderPath:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    const-string v1, "dex"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkFileInDexFolder:Ljava/io/File;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    const-string v2, "dex"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkFileInDexFolderPath:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private loadDex()Ldalvik/system/DexClassLoader;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 65
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkFileDownloadFolderPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "sdkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v4, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkFileDownloadFolderPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkFileInDexFolder:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v4, v5, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 68
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    iget-object v4, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .end local v2    # "sdkFile":Ljava/io/File;
    :goto_0
    return-object v0

    .line 73
    .restart local v2    # "sdkFile":Ljava/io/File;
    :cond_0
    iget-object v4, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dex or jar files is not exists"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 74
    goto :goto_0

    .line 77
    .end local v2    # "sdkFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    .line 82
    goto :goto_0
.end method


# virtual methods
.method public abstract doPay()V
.end method

.method public init()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cynosure/payment3rd/ThirdPartPayClass;->init3rd()V

    .line 30
    invoke-virtual {p0}, Lcom/cynosure/payment3rd/ThirdPartPayClass;->initPay()V

    .line 31
    return-void
.end method

.method public abstract initParam()Z
.end method

.method public abstract initPay()V
.end method

.method public pay()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cynosure/payment3rd/ThirdPartPayClass;->init3rd()V

    .line 35
    invoke-virtual {p0}, Lcom/cynosure/payment3rd/ThirdPartPayClass;->initParam()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/cynosure/payment3rd/ThirdPartPayClass;->doPay()V

    .line 47
    :cond_0
    return-void
.end method
