.class public Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/h;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->getInstance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->getLoadCacheObject(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/mtjstatsdk/h;

    move-result-object v0

    sget-object v1, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/baidu/mtjstatsdk/h;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/mtjstatsdk/h;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static checkLoadCacheFinished(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    iget-boolean v1, v0, Lcom/baidu/mtjstatsdk/h;->b:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/baidu/mtjstatsdk/h;->d:Lcom/baidu/mtjstatsdk/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/h;->d:Lcom/baidu/mtjstatsdk/g;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static checkStartLoadCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/baidu/mtjstatsdk/h;->a:Z

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/h;->d:Lcom/baidu/mtjstatsdk/g;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/g;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;
    .locals 1

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    :cond_0
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    return-object v0
.end method


# virtual methods
.method public getLoadCacheObject(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/mtjstatsdk/h;
    .locals 1

    new-instance v0, Lcom/baidu/mtjstatsdk/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/h;-><init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public initLoadCacheParams(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    iput-boolean v1, v0, Lcom/baidu/mtjstatsdk/h;->a:Z

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    iput-boolean v1, v0, Lcom/baidu/mtjstatsdk/h;->b:Z

    return-void
.end method

.method public declared-synchronized isFinished(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/h;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStart(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/h;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
