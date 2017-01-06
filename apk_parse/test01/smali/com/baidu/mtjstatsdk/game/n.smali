.class Lcom/baidu/mtjstatsdk/game/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/n;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/n;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/game/n;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/baidu/mtjstatsdk/game/n;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/n;->a:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/n;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/n;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    invoke-virtual {v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getCurrentAccountID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/game/n;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mtjstatsdk/game/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->setAccountServerWithAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/n;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
