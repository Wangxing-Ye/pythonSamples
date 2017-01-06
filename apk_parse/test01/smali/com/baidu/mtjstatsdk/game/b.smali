.class Lcom/baidu/mtjstatsdk/game/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/b;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/game/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mtjstatsdk/game/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/game/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->setAccountIDWithAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/b;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getBDGameAccountHash(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/a/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/b;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->putBDGameAccountHash(Ljava/lang/String;Lcom/baidu/mtjstatsdk/game/a/f;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/b;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
