.class Lcom/baidu/mtjstatsdk/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/j;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/j;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/k;->a:Lcom/baidu/mtjstatsdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/k;->a:Lcom/baidu/mtjstatsdk/j;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/k;->a:Lcom/baidu/mtjstatsdk/j;

    iget-object v1, v1, Lcom/baidu/mtjstatsdk/j;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/k;->a:Lcom/baidu/mtjstatsdk/j;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/j;->c:Lcom/baidu/mtjstatsdk/i;

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/i;->c(Lcom/baidu/mtjstatsdk/i;)Z

    move-result v2

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/k;->a:Lcom/baidu/mtjstatsdk/j;

    iget-object v3, v3, Lcom/baidu/mtjstatsdk/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mtjstatsdk/i;->a(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method
