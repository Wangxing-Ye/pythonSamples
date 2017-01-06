.class Lcom/baidu/mtjstatsdk/game/f;
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

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/f;->c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/game/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/f;->c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/f;->a:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, ""

    iget-object v4, p0, Lcom/baidu/mtjstatsdk/game/f;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/f;->c:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
