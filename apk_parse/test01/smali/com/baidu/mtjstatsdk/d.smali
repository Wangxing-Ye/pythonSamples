.class Lcom/baidu/mtjstatsdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lcom/baidu/mtjstatsdk/a;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/d;->f:Lcom/baidu/mtjstatsdk/a;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/d;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mtjstatsdk/d;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/mtjstatsdk/d;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/baidu/mtjstatsdk/d;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->checkLoadCacheFinished(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/d;->f:Lcom/baidu/mtjstatsdk/a;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/d;->f:Lcom/baidu/mtjstatsdk/a;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/baidu/mtjstatsdk/f;

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventStat: event_id["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] with label["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not started or alread done."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->b([Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/d;->c:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mtjstatsdk/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/d;->d:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mtjstatsdk/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "statsdk"

    const-string v1, "EventStat: Wrong Case, eventId/label pair not match"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/d;->f:Lcom/baidu/mtjstatsdk/a;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/d;->e:J

    iget-wide v5, v4, Lcom/baidu/mtjstatsdk/f;->c:J

    sub-long v6, v0, v5

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "statsdk"

    const-string v1, "EventStat: Wrong Case, Duration must be positive"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/d;->d:Ljava/lang/String;

    iget-wide v4, v4, Lcom/baidu/mtjstatsdk/f;->c:J

    iget-object v8, p0, Lcom/baidu/mtjstatsdk/d;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mtjstatsdk/DataCore;->putEvent(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
