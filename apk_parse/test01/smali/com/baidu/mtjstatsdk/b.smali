.class Lcom/baidu/mtjstatsdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:Lcom/baidu/mtjstatsdk/a;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/b;->g:Lcom/baidu/mtjstatsdk/a;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mtjstatsdk/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/mtjstatsdk/b;->d:Ljava/lang/String;

    iput p6, p0, Lcom/baidu/mtjstatsdk/b;->e:I

    iput-wide p7, p0, Lcom/baidu/mtjstatsdk/b;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->checkLoadCacheFinished(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/b;->d:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/mtjstatsdk/b;->e:I

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/b;->f:J

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/baidu/mtjstatsdk/b;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mtjstatsdk/DataCore;->putEvent(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
