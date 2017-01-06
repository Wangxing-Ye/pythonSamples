.class Lcom/baidu/mtjstatsdk/l;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/mtjstatsdk/i;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/i;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/l;->c:Lcom/baidu/mtjstatsdk/i;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/l;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/DataCore;->isPartEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "welcome timer log start"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/l;->c:Lcom/baidu/mtjstatsdk/i;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/l;->c:Lcom/baidu/mtjstatsdk/i;

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/i;->c(Lcom/baidu/mtjstatsdk/i;)Z

    move-result v2

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mtjstatsdk/i;->a(Landroid/content/Context;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method
