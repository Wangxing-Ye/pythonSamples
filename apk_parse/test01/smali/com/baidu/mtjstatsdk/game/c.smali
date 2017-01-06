.class Lcom/baidu/mtjstatsdk/game/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:D

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;IDLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/c;->e:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/mtjstatsdk/game/c;->b:I

    iput-wide p4, p0, Lcom/baidu/mtjstatsdk/game/c;->c:D

    iput-object p6, p0, Lcom/baidu/mtjstatsdk/game/c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/baidu/mtjstatsdk/game/a/c;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/c;->b:I

    iget-wide v3, p0, Lcom/baidu/mtjstatsdk/game/c;->c:D

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/game/c;->e:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    invoke-virtual {v5}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getCurrentServer()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/game/a/c;-><init>(Ljava/lang/String;IDLjava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/c;->e:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getBDGameAccountHash(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mtjstatsdk/game/a/f;->a(Lcom/baidu/mtjstatsdk/game/a/c;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/c;->e:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->putBDGameAccountHash(Ljava/lang/String;Lcom/baidu/mtjstatsdk/game/a/f;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/c;->e:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
