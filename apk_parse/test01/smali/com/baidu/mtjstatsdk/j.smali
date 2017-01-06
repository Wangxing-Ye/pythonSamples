.class Lcom/baidu/mtjstatsdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/mtjstatsdk/i;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/i;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/j;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "statsdk"

    const-string v1, "putExceptionToCache start"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/j;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/j;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->putExceptionToCache(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "statsdk"

    const-string v1, "putExceptionToCache end"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/i;->a(Lcom/baidu/mtjstatsdk/i;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/i;->a(Lcom/baidu/mtjstatsdk/i;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/i;->a(Lcom/baidu/mtjstatsdk/i;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    invoke-static {}, Lcom/baidu/mtjstatsdk/a/a;->a()[Lcom/baidu/mtjstatsdk/a/a;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/j;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadSendStrategy(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/i;->a(Lcom/baidu/mtjstatsdk/i;Lcom/baidu/mtjstatsdk/a/a;)Lcom/baidu/mtjstatsdk/a/a;

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/j;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadSendStrategyTime(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/i;->a(Lcom/baidu/mtjstatsdk/i;I)I

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/j;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadOnlyWifiChannel(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/i;->a(Lcom/baidu/mtjstatsdk/i;Z)Z

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/i;->b(Lcom/baidu/mtjstatsdk/i;)Lcom/baidu/mtjstatsdk/a/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mtjstatsdk/a/a;->c:Lcom/baidu/mtjstatsdk/a/a;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/j;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/i;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/baidu/mtjstatsdk/i;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/baidu/mtjstatsdk/k;

    invoke-direct {v2, p0}, Lcom/baidu/mtjstatsdk/k;-><init>(Lcom/baidu/mtjstatsdk/j;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/DataCoreObject;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/i;->b(Lcom/baidu/mtjstatsdk/i;)Lcom/baidu/mtjstatsdk/a/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mtjstatsdk/a/a;->b:Lcom/baidu/mtjstatsdk/a/a;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/j;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/i;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
