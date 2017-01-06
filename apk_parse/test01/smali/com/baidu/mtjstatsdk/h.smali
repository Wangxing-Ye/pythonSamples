.class final Lcom/baidu/mtjstatsdk/h;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Lcom/baidu/mtjstatsdk/g;

.field final synthetic e:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/h;->e:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/h;->a:Z

    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/h;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/h;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/h;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/h;->a:Z

    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/h;->b:Z

    new-instance v0, Lcom/baidu/mtjstatsdk/g;

    invoke-direct {v0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/g;-><init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/h;->d:Lcom/baidu/mtjstatsdk/g;

    return-void
.end method
