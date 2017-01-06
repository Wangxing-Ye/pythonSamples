.class Lcom/baidu/mtjstatsdk/game/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/l;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput p2, p0, Lcom/baidu/mtjstatsdk/game/l;->a:I

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/game/l;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/baidu/mtjstatsdk/game/l;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGender gender = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/l;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/l;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    invoke-virtual {v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getCurrentAccountID()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/baidu/mtjstatsdk/game/l;->a:I

    iget-object v4, p0, Lcom/baidu/mtjstatsdk/game/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->setAccountGenderWithAppKey(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/l;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getBDGameAccountHash(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/f;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mtjstatsdk/game/l;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/a/f;->c(I)V

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/l;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->putBDGameAccountHash(Ljava/lang/String;Lcom/baidu/mtjstatsdk/game/a/f;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/l;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
