.class Lcom/baidu/mtjstatsdk/game/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/k;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/k;->a:Landroid/content/Context;

    iput p3, p0, Lcom/baidu/mtjstatsdk/game/k;->b:I

    iput-object p4, p0, Lcom/baidu/mtjstatsdk/game/k;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/k;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    invoke-virtual {v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getCurrentAccountID()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/baidu/mtjstatsdk/game/k;->b:I

    iget-object v4, p0, Lcom/baidu/mtjstatsdk/game/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->setAccountLevelWithAppKey(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/k;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    invoke-virtual {v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getCurrentAccountID()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/game/k;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->setAccountLevelTimeWithAppKey(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/k;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getBDGameAccountHash(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/f;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mtjstatsdk/game/k;->b:I

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/k;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    invoke-virtual {v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getCurrentServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mtjstatsdk/game/a/f;->b(ILjava/lang/String;J)V

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/k;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->putBDGameAccountHash(Ljava/lang/String;Lcom/baidu/mtjstatsdk/game/a/f;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/k;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
