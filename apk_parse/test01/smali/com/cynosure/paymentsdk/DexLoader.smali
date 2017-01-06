.class public Lcom/cynosure/paymentsdk/DexLoader;
.super Ldalvik/system/DexClassLoader;
.source "DexLoader.java"


# static fields
.field private static _instance:Lcom/cynosure/paymentsdk/DexLoader;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/lang/String;
    .param p3, "libraryPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/cynosure/paymentsdk/DexLoader;
    .locals 6

    .prologue
    .line 21
    sget-object v0, Lcom/cynosure/paymentsdk/DexLoader;->_instance:Lcom/cynosure/paymentsdk/DexLoader;

    if-eqz v0, :cond_2

    .line 22
    sget-object v0, Lcom/cynosure/paymentsdk/DexLoader;->_instance:Lcom/cynosure/paymentsdk/DexLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 27
    :goto_0
    sget-object v0, Lcom/cynosure/paymentsdk/DexLoader;->_instance:Lcom/cynosure/paymentsdk/DexLoader;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/cynosure/paymentsdk/DexLoader;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/cynosure/paymentsdk/DexLoader;->_instance:Lcom/cynosure/paymentsdk/DexLoader;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/cynosure/paymentsdk/DexLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 31
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 32
    const-string v3, "payment_core.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "dex"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 30
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/cynosure/paymentsdk/DexLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/cynosure/paymentsdk/DexLoader;->_instance:Lcom/cynosure/paymentsdk/DexLoader;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/cynosure/paymentsdk/DexLoader;->_instance:Lcom/cynosure/paymentsdk/DexLoader;

    return-object v0

    .line 25
    :cond_2
    const-string v0, "getInstance is null"

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
