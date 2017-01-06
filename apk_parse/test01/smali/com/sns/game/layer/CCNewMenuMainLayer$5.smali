.class Lcom/sns/game/layer/CCNewMenuMainLayer$5;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewMenuMainLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewMenuMainLayer;->uploadGameScoreLglCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

.field private final synthetic val$successCallBack:Lcom/sns/game/util/LogicalHandleCallBack;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewMenuMainLayer;Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

    iput-object p2, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5;->val$successCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 512
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/layer/CCNewMenuMainLayer$5;)Lcom/sns/game/layer/CCNewMenuMainLayer;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

    return-object v0
.end method


# virtual methods
.method public updateHandle()V
    .locals 11

    .prologue
    .line 517
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v6

    .line 518
    .local v6, "uState":Lcom/sns/game/database/bean/UserState;
    iget-object v7, v6, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v7}, Lcom/sns/game/database/bean/UserTop;->getServerId()I

    move-result v5

    .line 519
    .local v5, "serverUserId":I
    sget-object v7, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v7}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v3

    .line 520
    .local v3, "nowGold":I
    sget-object v7, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v7}, Lcom/sns/game/database/bean/UserData;->getKill_total_zombie()I

    move-result v4

    .line 523
    .local v4, "nowKill":I
    invoke-static {}, Lcom/sns/game/http/GameHttpHelper;->gHelper()Lcom/sns/game/http/GameHttpHelper;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v5, v8, v3, v9}, Lcom/sns/game/http/GameHttpHelper;->doUpLoadScoreWithResponse(IIII)Z

    move-result v2

    .line 524
    .local v2, "isUpLoad":Z
    const-string v7, "Test"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "upload gold is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    if-eqz v2, :cond_0

    .line 527
    invoke-static {}, Lcom/sns/game/http/GameHttpHelper;->gHelper()Lcom/sns/game/http/GameHttpHelper;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-virtual {v7, v5, v8, v4, v9}, Lcom/sns/game/http/GameHttpHelper;->doUpLoadScoreWithResponse(IIII)Z

    move-result v2

    .line 528
    :cond_0
    const-string v7, "Test"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "upload kill is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 532
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    invoke-virtual {v0}, Lcom/sns/game/activity/GameActivityss;->closeProgressDialog()V

    .line 533
    iget-object v7, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

    invoke-virtual {v7, v2}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 534
    if-eqz v2, :cond_1

    .line 535
    iget-object v7, v6, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v7, v3}, Lcom/sns/game/database/bean/UserTop;->setGoldNum(I)V

    .line 536
    iget-object v7, v6, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v7, v4}, Lcom/sns/game/database/bean/UserTop;->setKillNum(I)V

    .line 537
    invoke-virtual {v6}, Lcom/sns/game/database/bean/UserState;->saveSelfUserTop()V

    .line 538
    iget-object v7, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5;->val$successCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v7}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 541
    :cond_1
    if-nez v2, :cond_2

    .line 545
    invoke-static {}, Lcom/sns/game/http/GameHttpHelper;->gHelper()Lcom/sns/game/http/GameHttpHelper;

    move-result-object v7

    .line 547
    new-instance v8, Lcom/sns/game/layer/CCNewMenuMainLayer$5$1;

    invoke-direct {v8, p0}, Lcom/sns/game/layer/CCNewMenuMainLayer$5$1;-><init>(Lcom/sns/game/layer/CCNewMenuMainLayer$5;)V

    .line 557
    new-instance v9, Lcom/sns/game/layer/CCNewMenuMainLayer$5$2;

    iget-object v10, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$5;->val$successCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-direct {v9, p0, v10}, Lcom/sns/game/layer/CCNewMenuMainLayer$5$2;-><init>(Lcom/sns/game/layer/CCNewMenuMainLayer$5;Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 545
    invoke-virtual {v7, v8, v9}, Lcom/sns/game/http/GameHttpHelper;->asu2cnDialogWithCallBack(Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v7

    .line 543
    invoke-virtual {v0, v7}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToMsg(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    .end local v2    # "isUpLoad":Z
    .end local v3    # "nowGold":I
    .end local v4    # "nowKill":I
    .end local v5    # "serverUserId":I
    .end local v6    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_2
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
