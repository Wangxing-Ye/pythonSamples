.class Lcom/sns/game/dialog/CCGameTopDialog$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCGameTopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/CCGameTopDialog;->updateGameRankingLglCallBack(I)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/dialog/CCGameTopDialog;

.field private final synthetic val$rankType:I


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/CCGameTopDialog;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    iput p2, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->val$rankType:I

    .line 411
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/dialog/CCGameTopDialog$1;)Lcom/sns/game/dialog/CCGameTopDialog;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    return-object v0
.end method


# virtual methods
.method public updateHandle()V
    .locals 15

    .prologue
    const/4 v11, -0x1

    const/4 v14, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 416
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    .line 417
    .local v5, "uState":Lcom/sns/game/database/bean/UserState;
    iget-object v9, v5, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v9}, Lcom/sns/game/database/bean/UserTop;->getServerId()I

    move-result v4

    .line 418
    .local v4, "serverUserId":I
    invoke-static {}, Lcom/sns/game/http/GameHttpHelper;->gHelper()Lcom/sns/game/http/GameHttpHelper;

    move-result-object v9

    iget v10, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->val$rankType:I

    invoke-virtual {v9, v4, v10}, Lcom/sns/game/http/GameHttpHelper;->doUpdateRankingWithResponse(II)Lorg/json/JSONObject;

    move-result-object v2

    .line 420
    .local v2, "jObject":Lorg/json/JSONObject;
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 421
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    invoke-virtual {v0}, Lcom/sns/game/activity/GameActivityss;->closeProgressDialog()V

    .line 423
    if-eqz v2, :cond_6

    .line 424
    const-string v9, "Test"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "rankType = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->val$rankType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v9, "Test"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "rankData = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    iget v10, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->val$rankType:I

    invoke-static {v9, v10}, Lcom/sns/game/dialog/CCGameTopDialog;->access$0(Lcom/sns/game/dialog/CCGameTopDialog;I)V

    .line 428
    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;
    invoke-static {v9}, Lcom/sns/game/dialog/CCGameTopDialog;->access$1(Lcom/sns/game/dialog/CCGameTopDialog;)Lcom/sns/game/layer/object/CCTopDataPanel;

    move-result-object v10

    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I
    invoke-static {v9}, Lcom/sns/game/dialog/CCGameTopDialog;->access$2(Lcom/sns/game/dialog/CCGameTopDialog;)I

    move-result v9

    if-ne v9, v7, :cond_2

    move v9, v7

    :goto_0
    invoke-virtual {v10, v9}, Lcom/sns/game/layer/object/CCTopDataPanel;->setVisible(Z)V

    .line 429
    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I
    invoke-static {v9}, Lcom/sns/game/dialog/CCGameTopDialog;->access$2(Lcom/sns/game/dialog/CCGameTopDialog;)I

    move-result v9

    if-ne v9, v7, :cond_0

    .line 430
    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;
    invoke-static {v9}, Lcom/sns/game/dialog/CCGameTopDialog;->access$1(Lcom/sns/game/dialog/CCGameTopDialog;)Lcom/sns/game/layer/object/CCTopDataPanel;

    move-result-object v9

    iget v10, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->val$rankType:I

    invoke-virtual {v9, v2, v10}, Lcom/sns/game/layer/object/CCTopDataPanel;->updateTopListView(Lorg/json/JSONObject;I)V

    .line 432
    :cond_0
    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;
    invoke-static {v9}, Lcom/sns/game/dialog/CCGameTopDialog;->access$3(Lcom/sns/game/dialog/CCGameTopDialog;)Lcom/sns/game/layer/object/CCTopDataPanel;

    move-result-object v10

    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I
    invoke-static {v9}, Lcom/sns/game/dialog/CCGameTopDialog;->access$2(Lcom/sns/game/dialog/CCGameTopDialog;)I

    move-result v9

    if-ne v9, v14, :cond_3

    move v9, v7

    :goto_1
    invoke-virtual {v10, v9}, Lcom/sns/game/layer/object/CCTopDataPanel;->setVisible(Z)V

    .line 433
    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I
    invoke-static {v9}, Lcom/sns/game/dialog/CCGameTopDialog;->access$2(Lcom/sns/game/dialog/CCGameTopDialog;)I

    move-result v9

    if-ne v9, v14, :cond_1

    .line 434
    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;
    invoke-static {v9}, Lcom/sns/game/dialog/CCGameTopDialog;->access$3(Lcom/sns/game/dialog/CCGameTopDialog;)Lcom/sns/game/layer/object/CCTopDataPanel;

    move-result-object v9

    iget v10, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->val$rankType:I

    invoke-virtual {v9, v2, v10}, Lcom/sns/game/layer/object/CCTopDataPanel;->updateTopListView(Lorg/json/JSONObject;I)V

    .line 437
    :cond_1
    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    const/4 v10, 0x2

    new-array v10, v10, [Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-static {v12}, Lcom/sns/game/dialog/CCGameTopDialog;->access$4(Lcom/sns/game/dialog/CCGameTopDialog;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-static {v12}, Lcom/sns/game/dialog/CCGameTopDialog;->access$5(Lcom/sns/game/dialog/CCGameTopDialog;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/sns/game/dialog/CCGameTopDialog;->updateRankBtns([Lorg/cocos2d/menus/CCMenuItemSprite;)V

    .line 438
    iget-object v10, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->gSelfPanel:Lorg/cocos2d/nodes/CCSprite;
    invoke-static {v9}, Lcom/sns/game/dialog/CCGameTopDialog;->access$6(Lcom/sns/game/dialog/CCGameTopDialog;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v11

    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I
    invoke-static {v9}, Lcom/sns/game/dialog/CCGameTopDialog;->access$2(Lcom/sns/game/dialog/CCGameTopDialog;)I

    move-result v9

    if-ne v9, v7, :cond_4

    move v9, v7

    :goto_2
    iget-object v12, v5, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v12}, Lcom/sns/game/database/bean/UserTop;->getgRankNum()I

    move-result v12

    sget-object v13, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v13}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v13

    invoke-virtual {v10, v11, v9, v12, v13}, Lcom/sns/game/dialog/CCGameTopDialog;->updateSelfTopPanel(Lorg/cocos2d/nodes/CCSprite;ZII)V

    .line 439
    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    iget-object v10, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->kSelfPanel:Lorg/cocos2d/nodes/CCSprite;
    invoke-static {v10}, Lcom/sns/game/dialog/CCGameTopDialog;->access$7(Lcom/sns/game/dialog/CCGameTopDialog;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v10

    iget-object v11, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I
    invoke-static {v11}, Lcom/sns/game/dialog/CCGameTopDialog;->access$2(Lcom/sns/game/dialog/CCGameTopDialog;)I

    move-result v11

    if-ne v11, v14, :cond_5

    :goto_3
    iget-object v8, v5, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v8}, Lcom/sns/game/database/bean/UserTop;->getkRankNum()I

    move-result v8

    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v11

    iget-object v11, v11, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v11}, Lcom/sns/game/database/bean/UserTop;->getKillNum()I

    move-result v11

    invoke-virtual {v9, v10, v7, v8, v11}, Lcom/sns/game/dialog/CCGameTopDialog;->updateSelfTopPanel(Lorg/cocos2d/nodes/CCSprite;ZII)V

    .line 441
    iget-object v7, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sns/game/dialog/CCGameTopDialog;->setIsTouchEnabled(Z)V

    .line 492
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .end local v4    # "serverUserId":I
    .end local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    :goto_4
    return-void

    .restart local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    .restart local v2    # "jObject":Lorg/json/JSONObject;
    .restart local v4    # "serverUserId":I
    .restart local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_2
    move v9, v8

    .line 428
    goto/16 :goto_0

    :cond_3
    move v9, v8

    .line 432
    goto :goto_1

    :cond_4
    move v9, v8

    .line 438
    goto :goto_2

    :cond_5
    move v7, v8

    .line 439
    goto :goto_3

    .line 446
    :cond_6
    iget-object v8, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-static {v8}, Lcom/sns/game/dialog/CCGameTopDialog;->access$4(Lcom/sns/game/dialog/CCGameTopDialog;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cocos2d/menus/CCMenuItemSprite;->getUserData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Integer;

    .line 447
    .local v6, "withData":[Ljava/lang/Integer;
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 448
    .local v3, "nowUpdateNum":I
    if-eq v3, v11, :cond_7

    .line 449
    iget-object v8, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I
    invoke-static {v8}, Lcom/sns/game/dialog/CCGameTopDialog;->access$2(Lcom/sns/game/dialog/CCGameTopDialog;)I

    move-result v8

    if-ne v8, v7, :cond_7

    iget-object v7, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/sns/game/dialog/CCGameTopDialog;->access$0(Lcom/sns/game/dialog/CCGameTopDialog;I)V

    .line 453
    :cond_7
    iget-object v7, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-static {v7}, Lcom/sns/game/dialog/CCGameTopDialog;->access$5(Lcom/sns/game/dialog/CCGameTopDialog;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cocos2d/menus/CCMenuItemSprite;->getUserData()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "withData":[Ljava/lang/Integer;
    check-cast v6, [Ljava/lang/Integer;

    .line 454
    .restart local v6    # "withData":[Ljava/lang/Integer;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 455
    if-eq v3, v11, :cond_8

    .line 456
    iget-object v7, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    # getter for: Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I
    invoke-static {v7}, Lcom/sns/game/dialog/CCGameTopDialog;->access$2(Lcom/sns/game/dialog/CCGameTopDialog;)I

    move-result v7

    if-ne v7, v14, :cond_8

    iget-object v7, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->this$0:Lcom/sns/game/dialog/CCGameTopDialog;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/sns/game/dialog/CCGameTopDialog;->access$0(Lcom/sns/game/dialog/CCGameTopDialog;I)V

    .line 462
    :cond_8
    invoke-static {}, Lcom/sns/game/http/GameHttpHelper;->gHelper()Lcom/sns/game/http/GameHttpHelper;

    move-result-object v7

    .line 464
    new-instance v8, Lcom/sns/game/dialog/CCGameTopDialog$1$1;

    invoke-direct {v8, p0}, Lcom/sns/game/dialog/CCGameTopDialog$1$1;-><init>(Lcom/sns/game/dialog/CCGameTopDialog$1;)V

    .line 475
    new-instance v9, Lcom/sns/game/dialog/CCGameTopDialog$1$2;

    iget v10, p0, Lcom/sns/game/dialog/CCGameTopDialog$1;->val$rankType:I

    invoke-direct {v9, p0, v10}, Lcom/sns/game/dialog/CCGameTopDialog$1$2;-><init>(Lcom/sns/game/dialog/CCGameTopDialog$1;I)V

    .line 462
    invoke-virtual {v7, v8, v9}, Lcom/sns/game/http/GameHttpHelper;->asu2cnDialogWithCallBack(Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v7

    .line 460
    invoke-virtual {v0, v7}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToMsg(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 489
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .end local v3    # "nowUpdateNum":I
    .end local v4    # "serverUserId":I
    .end local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    .end local v6    # "withData":[Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_4
.end method
