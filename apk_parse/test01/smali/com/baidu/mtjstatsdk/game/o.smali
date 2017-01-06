.class Lcom/baidu/mtjstatsdk/game/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:D

.field final synthetic d:D

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/o;->g:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/game/o;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/baidu/mtjstatsdk/game/o;->c:D

    iput-wide p6, p0, Lcom/baidu/mtjstatsdk/game/o;->d:D

    iput-object p8, p0, Lcom/baidu/mtjstatsdk/game/o;->e:Ljava/lang/String;

    iput-object p9, p0, Lcom/baidu/mtjstatsdk/game/o;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v0, Lcom/baidu/mtjstatsdk/game/a/a;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/o;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/baidu/mtjstatsdk/game/o;->c:D

    iget-wide v5, p0, Lcom/baidu/mtjstatsdk/game/o;->d:D

    iget-object v7, p0, Lcom/baidu/mtjstatsdk/game/o;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/baidu/mtjstatsdk/game/o;->g:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    invoke-virtual {v8}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getCurrentServer()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/baidu/mtjstatsdk/game/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/o;->g:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/o;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getBDGameAccountHash(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mtjstatsdk/game/a/f;->a(Lcom/baidu/mtjstatsdk/game/a/a;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/o;->g:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->putBDGameAccountHash(Ljava/lang/String;Lcom/baidu/mtjstatsdk/game/a/f;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/o;->g:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
