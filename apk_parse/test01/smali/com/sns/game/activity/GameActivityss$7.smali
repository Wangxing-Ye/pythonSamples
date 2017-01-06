.class Lcom/sns/game/activity/GameActivityss$7;
.super Ljava/lang/Object;
.source "GameActivityss.java"

# interfaces
.implements Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss;->exitGameAnOnce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/activity/GameActivityss;


# direct methods
.method constructor <init>(Lcom/sns/game/activity/GameActivityss;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$7;->this$0:Lcom/sns/game/activity/GameActivityss;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 495
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v1, Lcom/sns/game/activity/GameActivityss;

    .line 496
    .local v1, "app":Lcom/sns/game/activity/GameActivityss;
    const-string v4, "\u9000\u51fa\u6e38\u620f"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 497
    sget-object v4, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserData;->getUserActionData()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "actionData":Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/util/CCUtil;->findRunningGameLayerUserDoPath()Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "userDoPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    move-object v2, v3

    .line 500
    .local v2, "inPathName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BANNER_\u9000\u51fa_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v2, v4, v5}, Lcom/sns/game/util/GameConstant;->userActionToUpdateBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v4, "\u9000\u51fa\u6e38\u620f"

    invoke-static {v2, v4}, Lcom/sns/game/util/GameConstant;->userActionToUpdatePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v4, p0, Lcom/sns/game/activity/GameActivityss$7;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v4}, Lcom/sns/game/activity/GameActivityss;->onDestroyGame()V

    .line 504
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 505
    return-void

    .line 499
    .end local v2    # "inPathName":Ljava/lang/String;
    :cond_0
    const-string v2, "\u9000\u51fa\u6e38\u620f"

    goto :goto_0
.end method
