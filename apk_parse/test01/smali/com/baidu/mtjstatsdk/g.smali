.class Lcom/baidu/mtjstatsdk/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/g;->a:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->isStart(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p3, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "**************load caceh**start********"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->loadStatData(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->loadLastSession(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getCacheLogWithCoreDataLock()Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mtjstatsdk/GameCacheLoadListener;->readLogFromFileDataCoreHash(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    :cond_0
    invoke-static {}, Lcom/baidu/mtjstatsdk/i;->a()Lcom/baidu/mtjstatsdk/i;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->a:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**************load caceh**end********appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "statsdk"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
