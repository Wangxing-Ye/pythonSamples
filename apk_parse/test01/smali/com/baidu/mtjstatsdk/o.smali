.class Lcom/baidu/mtjstatsdk/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mtjstatsdk/m;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/m;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/o;->c:Lcom/baidu/mtjstatsdk/m;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/o;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/o;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/o;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->checkLoadCacheFinished(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
