.class Lcom/baidu/mtjstatsdk/game/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/e;->c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/game/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/baidu/mtjstatsdk/game/a/d;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/e;->c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getBDGameAccountHash(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mtjstatsdk/game/a/f;->a(Lcom/baidu/mtjstatsdk/game/a/d;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/e;->c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->putBDGameAccountHash(Ljava/lang/String;Lcom/baidu/mtjstatsdk/game/a/f;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/e;->c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
