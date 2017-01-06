.class public Lcom/sns/game/ui/RandomTaskPanel;
.super Lcom/sns/game/ui/CCGameDialog;
.source "RandomTaskPanel.java"


# instance fields
.field private bean:Lcom/sns/game/database/bean/RandomTaskBean;

.field public compleCount:I

.field private conditionAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field private isShown:Z

.field private isTimeOut:Z

.field isToRollOut:Z

.field isToRollUp:Z

.field private mark:Lorg/cocos2d/nodes/CCSprite;

.field private reward:Lorg/cocos2d/nodes/CCLabelAtlas;

.field rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

.field rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

.field private rollUpBoundBox:Lorg/cocos2d/types/CGRect;

.field private rouleauAnimFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private second:I

.field private stars:[Lorg/cocos2d/nodes/CCSprite;

.field private taskDesc:Lorg/cocos2d/nodes/CCSprite;

.field private taskHead:Lorg/cocos2d/nodes/CCSprite;

.field private taskTag:I

.field private timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;ILcom/sns/game/database/bean/RandomTaskBean;)V
    .locals 1
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "zOrder"    # I
    .param p3, "bean"    # Lcom/sns/game/database/bean/RandomTaskBean;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/sns/game/ui/CCGameDialog;-><init>(Lorg/cocos2d/layers/CCLayer;I)V

    .line 595
    const/4 v0, -0x1

    iput v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->second:I

    .line 115
    invoke-direct {p0, p3}, Lcom/sns/game/ui/RandomTaskPanel;->setBean(Lcom/sns/game/database/bean/RandomTaskBean;)V

    .line 116
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->assignedSavaValuesTo()V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->setIsTouchEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->createSelf()V

    .line 119
    return-void
.end method

.method private addMark()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 680
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getMarkSpriteFrame()Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->mark:Lorg/cocos2d/nodes/CCSprite;

    .line 681
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->mark:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 682
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->mark:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 683
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->mark:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v2, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 684
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->mark:Lorg/cocos2d/nodes/CCSprite;

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 685
    return-void
.end method

.method private assignedSavaValuesTo()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method private getMarkSpriteFrame()Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    const-string v0, "random_tasks_complete.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    .line 726
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "random_tasks_failure.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    goto :goto_0
.end method

.method private getTaskTime(I)Ljava/lang/String;
    .locals 4
    .param p1, "second"    # I

    .prologue
    .line 672
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ss"

    invoke-static {v2, v3}, Lcom/sns/game/util/CCUtil;->parseDateTime(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 673
    .local v0, "date":Ljava/util/Date;
    const-string v2, "mm:ss"

    invoke-static {v0, v2}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "dateTime":Ljava/lang/String;
    const-string v2, ":"

    const-string v3, ";"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setBean(Lcom/sns/game/database/bean/RandomTaskBean;)V
    .locals 1
    .param p1, "bean"    # Lcom/sns/game/database/bean/RandomTaskBean;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    .line 56
    invoke-static {}, Lcom/sns/game/database/dao/RandomTaskDao;->sharedDao()Lcom/sns/game/database/dao/RandomTaskDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sns/game/database/dao/RandomTaskDao;->indexOf(Lcom/sns/game/database/bean/RandomTaskBean;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->setTaskTag(I)V

    .line 57
    return-void
.end method

.method private setConditionAtlas()V
    .locals 5

    .prologue
    .line 550
    const-string v0, ""

    const-string v1, "UI/New_Num_x_10x12.png"

    const/16 v2, 0xa

    const/16 v3, 0xc

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->conditionAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 551
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->conditionAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setVisible(Z)V

    .line 552
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->updateConditionAtlas()V

    .line 553
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->conditionAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 554
    return-void
.end method

.method private setReward()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 585
    const-string v0, ""

    const-string v1, "UI/New_Num_x_10x12.png"

    const/16 v2, 0xa

    const/16 v3, 0xc

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->reward:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 586
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->reward:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setVisible(Z)V

    .line 587
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->reward:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 588
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->reward:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x43160000    # 150.0f

    const/high16 v2, 0x429c0000    # 78.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 589
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->reward:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 590
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/RandomTaskBean;->getReward()I

    move-result v1

    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v2

    mul-int/2addr v1, v2

    .line 589
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->reward:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 592
    return-void
.end method

.method private setRollOutActions()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    .line 432
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 434
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    aput-object v1, v0, v5

    .line 435
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const-string v2, ""

    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rouleauAnimFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v2, v4, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v1, v6

    .line 436
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const-string v2, ""

    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rouleauAnimFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v2, v4, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v1, v7

    .line 437
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v2, 0x3

    .line 438
    const-string v3, ""

    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rouleauAnimFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v3, v4, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    new-array v3, v6, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 439
    iget-object v4, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;->action(Ljava/util/List;)Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;

    move-result-object v4

    aput-object v4, v3, v5

    .line 437
    invoke-static {v0, v3}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v0

    aput-object v0, v1, v2

    .line 441
    return-void
.end method

.method private setRollUpActions()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const v6, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    .line 419
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 421
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {v6}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    aput-object v1, v0, v5

    .line 422
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const-string v2, ""

    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rouleauAnimFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v2, v6, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v1, v8

    .line 423
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v2, 0x3

    const-string v3, ""

    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rouleauAnimFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v3, v6, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v1, v2

    .line 424
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 425
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/actions/instant/extensions/CCHideTargetSequence;->action(Ljava/util/List;)Lorg/cocos2d/actions/instant/extensions/CCHideTargetSequence;

    move-result-object v2

    new-array v3, v7, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 426
    const-string v4, ""

    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rouleauAnimFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v4, v6, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v5

    .line 424
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v0

    aput-object v0, v1, v7

    .line 428
    return-void
.end method

.method private setRollUpBoundBox()V
    .locals 5

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .line 95
    .local v0, "layerBoundBox":Lorg/cocos2d/types/CGRect;
    iget-object v1, v0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, v0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    const/high16 v3, 0x42b00000    # 88.0f

    const/high16 v4, 0x434e0000    # 206.0f

    .line 94
    invoke-static {v1, v2, v3, v4}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpBoundBox:Lorg/cocos2d/types/CGRect;

    .line 96
    return-void
.end method

.method private setRouleauAnimFrames()V
    .locals 4

    .prologue
    .line 492
    const-string v0, "random_tasks_box_frame_"

    const-string v1, ".png"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sns/game/ui/RandomTaskPanel;->getSpriteFrames(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rouleauAnimFrames:Ljava/util/ArrayList;

    .line 493
    return-void
.end method

.method private setStarts()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 498
    const/high16 v2, 0x430a0000    # 138.0f

    const/high16 v3, 0x432b0000    # 171.0f

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 499
    .local v1, "startPos":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/RandomTaskBean;->getDifficulty()I

    move-result v2

    new-array v2, v2, [Lorg/cocos2d/nodes/CCSprite;

    iput-object v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->stars:[Lorg/cocos2d/nodes/CCSprite;

    .line 500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/RandomTaskBean;->getDifficulty()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 508
    return-void

    .line 502
    :cond_0
    iget-object v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->stars:[Lorg/cocos2d/nodes/CCSprite;

    const-string v3, "random_tasks_star.png"

    invoke-virtual {p0, v3}, Lcom/sns/game/ui/RandomTaskPanel;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    aput-object v3, v2, v0

    .line 503
    iget-object v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->stars:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 504
    iget-object v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->stars:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6, v6}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 505
    iget-object v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->stars:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v2, v2, v0

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->x:F

    int-to-float v4, v0

    const/high16 v5, 0x41880000    # 17.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 506
    iget-object v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->stars:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setTaskDesc()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 576
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/RandomTaskBean;->getDesc_icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskDesc:Lorg/cocos2d/nodes/CCSprite;

    .line 577
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskDesc:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 578
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskDesc:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v2, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 579
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskDesc:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x42e40000    # 114.0f

    const/high16 v2, 0x42e20000    # 113.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 580
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskDesc:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 581
    return-void
.end method

.method private setTaskHead()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/RandomTaskBean;->getIcon_head()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskHead:Lorg/cocos2d/nodes/CCSprite;

    .line 568
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskHead:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 569
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskHead:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 570
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskHead:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x432d0000    # 173.0f

    const/high16 v2, 0x431b0000    # 155.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 571
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskHead:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 572
    return-void
.end method

.method private setTimeAtlas()V
    .locals 5

    .prologue
    .line 615
    const-string v0, ""

    const-string v1, "UI/New_Num_x_10x12.png"

    const/16 v2, 0xa

    const/16 v3, 0xc

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 616
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    iget v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->second:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->second:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setUserData(Ljava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setVisible(Z)V

    .line 618
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->updateTimeAtlas()V

    .line 619
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 620
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/RandomTaskBean;->getTask_time()I

    move-result v0

    goto :goto_0
.end method

.method public static sharedPanel(Lorg/cocos2d/layers/CCLayer;ILcom/sns/game/database/bean/RandomTaskBean;)Lcom/sns/game/ui/RandomTaskPanel;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p1, "zOrder"    # I
    .param p2, "bean"    # Lcom/sns/game/database/bean/RandomTaskBean;

    .prologue
    .line 108
    new-instance v0, Lcom/sns/game/ui/RandomTaskPanel;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/ui/RandomTaskPanel;-><init>(Lorg/cocos2d/layers/CCLayer;ILcom/sns/game/database/bean/RandomTaskBean;)V

    .line 109
    .local v0, "panel":Lcom/sns/game/ui/RandomTaskPanel;
    return-object v0
.end method


# virtual methods
.method public activateMarkAction()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    .line 688
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->mark:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->mark:Lorg/cocos2d/nodes/CCSprite;

    .line 691
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v4, v1}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 692
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 693
    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 694
    const-string v4, "callBack_selector_cancel"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 690
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 697
    :cond_0
    return-void
.end method

.method public varargs activateRollOut([Ljava/lang/Object;)V
    .locals 13
    .param p1, "objData"    # [Ljava/lang/Object;

    .prologue
    const/4 v12, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 460
    iget-boolean v4, p0, Lcom/sns/game/ui/RandomTaskPanel;->isShown:Z

    if-nez v4, :cond_1

    .line 462
    iget-object v4, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v4, :cond_1

    .line 464
    const/4 v2, 0x1

    .line 465
    .local v2, "shown":Z
    const/4 v3, 0x1

    .line 466
    .local v3, "touchEnabled":Z
    const/4 v0, 0x0

    .line 467
    .local v0, "invoked":Z
    const/4 v1, 0x0

    .line 469
    .local v1, "mark":Z
    if-eqz p1, :cond_0

    array-length v4, p1

    if-eqz v4, :cond_0

    .line 471
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 472
    :goto_0
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 473
    :goto_1
    aget-object v4, p1, v10

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    aget-object v4, p1, v10

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 474
    :goto_2
    aget-object v4, p1, v12

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    aget-object v4, p1, v12

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 478
    :cond_0
    :goto_3
    const/16 v4, 0x116

    .line 477
    invoke-static {v4}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 479
    iget-object v7, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    .line 480
    iget-object v4, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v8, v4, v6

    const/4 v4, 0x6

    new-array v9, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget-object v4, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v4, v4, v5

    aput-object v4, v9, v6

    iget-object v4, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v4, v4, v10

    aput-object v4, v9, v5

    iget-object v4, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v4, v4, v12

    aput-object v4, v9, v10

    .line 481
    const-string v4, "callBack_selector_setShown"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {p0, v4, v10}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v9, v12

    const/4 v4, 0x4

    .line 482
    const-string v10, "callBack_selector_setIsTouchEnabled"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {p0, v10, v11}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v10, 0x5

    .line 483
    if-eqz v0, :cond_6

    const-string v4, "callBack_selector_activateMark"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v5, v6

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    :goto_4
    aput-object v4, v9, v10

    .line 479
    invoke-static {v8, v9}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 487
    .end local v0    # "invoked":Z
    .end local v1    # "mark":Z
    .end local v2    # "shown":Z
    .end local v3    # "touchEnabled":Z
    :cond_1
    return-void

    .restart local v0    # "invoked":Z
    .restart local v1    # "mark":Z
    .restart local v2    # "shown":Z
    .restart local v3    # "touchEnabled":Z
    :cond_2
    move v2, v5

    .line 471
    goto/16 :goto_0

    :cond_3
    move v3, v5

    .line 472
    goto :goto_1

    :cond_4
    move v0, v6

    .line 473
    goto :goto_2

    :cond_5
    move v1, v6

    .line 474
    goto :goto_3

    .line 483
    :cond_6
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public activateRollUp()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 445
    iget-boolean v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->isShown:Z

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 449
    const/16 v0, 0x116

    .line 448
    invoke-static {v0}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 450
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    .line 451
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v1, v1, v7

    const/4 v2, 0x5

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v3, v3, v6

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v3, v3, v4

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v3, v3, v8

    aput-object v3, v2, v4

    .line 452
    const-string v3, "callBack_selector_setShown"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x4

    .line 453
    const-string v4, "callBack_selector_setIsTouchEnabled"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v2, v3

    .line 450
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 457
    :cond_0
    return-void
.end method

.method protected addFramesToCache()V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Lcom/sns/game/ui/CCGameDialog;->addFramesToCache()V

    .line 254
    const-string v0, "UI/random_tasks.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 255
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->setRouleauAnimFrames()V

    .line 256
    return-void
.end method

.method public callBack_selector_activateMark(Ljava/lang/Object;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 700
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 703
    .local v2, "data":[Ljava/lang/Object;
    :try_start_0
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->addMark()V

    .line 704
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->activateMarkAction()V

    .line 705
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 706
    const/4 v6, 0x0

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 707
    .local v1, "complete":Z
    if-eqz v1, :cond_0

    .line 709
    iget-object v6, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-virtual {v6}, Lcom/sns/game/database/bean/RandomTaskBean;->getReward()I

    move-result v6

    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v7

    mul-int v4, v6, v7

    .line 710
    .local v4, "reward":I
    const-string v5, "updateUserGold_CallBack"

    .line 711
    .local v5, "selector":Ljava/lang/String;
    iget-object v6, p0, Lcom/sns/game/ui/RandomTaskPanel;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v5, v7}, Lcom/sns/game/util/CCUtil;->invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u606d\u559c\u5b8c\u6210\u4efb\u52a1,\u83b7\u5f97\u5956\u52b1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sns/game/ui/RandomTaskPanel;->notifyShowToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v1    # "complete":Z
    .end local v4    # "reward":I
    .end local v5    # "selector":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v3

    .line 716
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_activateTimeAction()V
    .locals 5

    .prologue
    .line 633
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 635
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 636
    const-string v4, "callBack_selector_countdown"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 635
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 634
    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 639
    :cond_0
    return-void
.end method

.method public callBack_selector_cancel()V
    .locals 1

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_countdown()V
    .locals 7

    .prologue
    .line 644
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->getUserData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 645
    .local v2, "oldSec":I
    add-int/lit8 v1, v2, -0x1

    .line 646
    .local v1, "newSec":I
    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setUserData(Ljava/lang/Object;)V

    .line 647
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->updateTimeAtlas()V

    .line 648
    invoke-virtual {p0, v1}, Lcom/sns/game/ui/RandomTaskPanel;->setSecond(I)V

    .line 649
    if-nez v1, :cond_0

    .line 651
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sns/game/ui/RandomTaskPanel;->setTimeOut(Z)V

    .line 652
    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->stopAllActions()V

    .line 653
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 655
    iget-boolean v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->isShown:Z

    if-nez v3, :cond_1

    .line 657
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sns/game/ui/RandomTaskPanel;->activateRollOut([Ljava/lang/Object;)V

    .line 668
    .end local v1    # "newSec":I
    .end local v2    # "oldSec":I
    :cond_0
    :goto_0
    return-void

    .line 660
    .restart local v1    # "newSec":I
    .restart local v2    # "oldSec":I
    :cond_1
    const-string v3, "callBack_selector_activateMark"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 659
    invoke-virtual {p0, p0, v3, v4}, Lcom/sns/game/ui/RandomTaskPanel;->invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    .end local v1    # "newSec":I
    .end local v2    # "oldSec":I
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_setIsTouchEnabled(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 271
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 274
    .local v1, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 275
    const/4 v4, 0x0

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 276
    .local v3, "enabled":Z
    invoke-virtual {p0, v3}, Lcom/sns/game/ui/RandomTaskPanel;->setIsTouchEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v3    # "enabled":Z
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_setShown(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 77
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 78
    .local v1, "data":[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 79
    .local v3, "shown":Z
    invoke-virtual {p0, v3}, Lcom/sns/game/ui/RandomTaskPanel;->setShown(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1    # "data":[Ljava/lang/Object;
    .end local v3    # "shown":Z
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/sns/game/ui/CCGameDialog;->cancel()V

    .line 148
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 305
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v1

    .line 306
    .local v1, "tManager":Lcom/sns/game/util/TouchManager;
    const/4 v0, 0x0

    .line 308
    .local v0, "kEventTag":Z
    iget-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isShown:Z

    if-eqz v2, :cond_1

    .line 310
    iget-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollUp:Z

    if-nez v2, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    .line 312
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 311
    invoke-static {v2, v3}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {p0, v4}, Lcom/sns/game/ui/RandomTaskPanel;->setToRollUp(Z)V

    .line 315
    const/4 v0, 0x1

    .line 330
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollOut:Z

    if-nez v2, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getRollUpBoundBox()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    .line 322
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 321
    invoke-static {v2, v3}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {p0, v4}, Lcom/sns/game/ui/RandomTaskPanel;->setToRollOut(Z)V

    .line 325
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 367
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v1

    .line 368
    .local v1, "tManager":Lcom/sns/game/util/TouchManager;
    const/4 v0, 0x0

    .line 370
    .local v0, "kEventTag":Z
    iget-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isShown:Z

    if-eqz v2, :cond_1

    .line 372
    iget-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollUp:Z

    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {p0, v4}, Lcom/sns/game/ui/RandomTaskPanel;->setToRollUp(Z)V

    .line 374
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    .line 375
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 374
    invoke-static {v2, v3}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {p0, v4}, Lcom/sns/game/ui/RandomTaskPanel;->setIsTouchEnabled(Z)V

    .line 378
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->activateRollUp()V

    .line 379
    const/4 v0, 0x1

    .line 395
    :cond_0
    :goto_0
    return v0

    .line 384
    :cond_1
    iget-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollOut:Z

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {p0, v4}, Lcom/sns/game/ui/RandomTaskPanel;->setToRollOut(Z)V

    .line 386
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getRollUpBoundBox()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    .line 387
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 386
    invoke-static {v2, v3}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {p0, v4}, Lcom/sns/game/ui/RandomTaskPanel;->setIsTouchEnabled(Z)V

    .line 390
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/sns/game/ui/RandomTaskPanel;->activateRollOut([Ljava/lang/Object;)V

    .line 391
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 336
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v1

    .line 337
    .local v1, "tManager":Lcom/sns/game/util/TouchManager;
    const/4 v0, 0x0

    .line 339
    .local v0, "kEventTag":Z
    iget-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isShown:Z

    if-eqz v2, :cond_1

    .line 341
    iget-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollUp:Z

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    .line 343
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 342
    invoke-static {v2, v3}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    invoke-virtual {p0, v4}, Lcom/sns/game/ui/RandomTaskPanel;->setToRollUp(Z)V

    .line 346
    const/4 v0, 0x1

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    iget-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollOut:Z

    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getRollUpBoundBox()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    .line 353
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 352
    invoke-static {v2, v3}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    invoke-virtual {p0, v4}, Lcom/sns/game/ui/RandomTaskPanel;->setToRollOut(Z)V

    .line 356
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createSelf()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->addFramesToCache()V

    .line 186
    const-string v0, "random_tasks_box_frame_1.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->setBackgroundBox(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->setStarts()V

    .line 188
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->setConditionAtlas()V

    .line 189
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->setTaskHead()V

    .line 190
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->setTaskDesc()V

    .line 191
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->setReward()V

    .line 192
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->setTimeAtlas()V

    .line 193
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->setRollUpActions()V

    .line 194
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->setRollOutActions()V

    .line 195
    return-void
.end method

.method public getBean()Lcom/sns/game/database/bean/RandomTaskBean;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    return-object v0
.end method

.method public getCompleCount()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->compleCount:I

    return v0
.end method

.method public getRollUpBoundBox()Lorg/cocos2d/types/CGRect;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpBoundBox:Lorg/cocos2d/types/CGRect;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->second:I

    return v0
.end method

.method public getTaskTag()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskTag:I

    return v0
.end method

.method public declared-synchronized isComplete()Z
    .locals 2

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->compleCount:I

    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/RandomTaskBean;->getKill_count()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEffective(I)Z
    .locals 1
    .param p1, "targetZombieId"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/RandomTaskBean;->getZombie_id()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->isShown:Z

    return v0
.end method

.method public declared-synchronized isTimeOut()Z
    .locals 1

    .prologue
    .line 599
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->isTimeOut:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isToRollOut()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollOut:Z

    return v0
.end method

.method public isToRollUp()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollUp:Z

    return v0
.end method

.method protected onEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->removeSelf()V

    .line 178
    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    .line 179
    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    .line 180
    return-void
.end method

.method protected recycleSelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->conditionAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->conditionAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskHead:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskHead:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskDesc:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskDesc:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rouleauAnimFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->rouleauAnimFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->mark:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->mark:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->reward:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->reward:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 222
    :cond_6
    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 223
    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->conditionAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 224
    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskHead:Lorg/cocos2d/nodes/CCSprite;

    .line 225
    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskDesc:Lorg/cocos2d/nodes/CCSprite;

    .line 226
    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->stars:[Lorg/cocos2d/nodes/CCSprite;

    .line 227
    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rouleauAnimFrames:Ljava/util/ArrayList;

    .line 228
    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->mark:Lorg/cocos2d/nodes/CCSprite;

    .line 229
    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->reward:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 230
    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 231
    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 232
    iput-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpBoundBox:Lorg/cocos2d/types/CGRect;

    .line 233
    iput-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollUp:Z

    .line 234
    iput-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollOut:Z

    .line 235
    iput-boolean v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->isShown:Z

    .line 236
    iput v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskTag:I

    .line 241
    return-void
.end method

.method protected registerWithTouchDispatcher()V
    .locals 3

    .prologue
    .line 261
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    const v1, -0x7fffffff

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lorg/cocos2d/events/CCTouchDispatcher;->addTargetedDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;IZ)V

    .line 262
    return-void
.end method

.method public removeSelf()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Lcom/sns/game/ui/CCGameDialog;->removeSelf()V

    .line 247
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->recycleSelf()V

    .line 248
    return-void
.end method

.method protected setBackgroundBox(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 401
    invoke-virtual {p0, p1}, Lcom/sns/game/ui/RandomTaskPanel;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    .line 402
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 403
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 405
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 406
    invoke-virtual {p0, v1, v1}, Lcom/sns/game/ui/RandomTaskPanel;->setAnchorPoint(FF)V

    .line 407
    const/high16 v0, 0x43490000    # 201.0f

    invoke-virtual {p0, v1, v0}, Lcom/sns/game/ui/RandomTaskPanel;->setPosition(FF)V

    .line 408
    const/high16 v0, 0x43640000    # 228.0f

    const/high16 v1, 0x434e0000    # 206.0f

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 409
    invoke-direct {p0}, Lcom/sns/game/ui/RandomTaskPanel;->setRollUpBoundBox()V

    .line 411
    return-void
.end method

.method public setCompleCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 518
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "count":I
    :cond_0
    iput p1, p0, Lcom/sns/game/ui/RandomTaskPanel;->compleCount:I

    .line 519
    return-void
.end method

.method public setIsTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameDialog;->setIsTouchEnabled(Z)V

    .line 268
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .param p1, "sec"    # I

    .prologue
    .line 611
    iput p1, p0, Lcom/sns/game/ui/RandomTaskPanel;->second:I

    .line 612
    return-void
.end method

.method public setShown(Z)V
    .locals 0
    .param p1, "isShown"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sns/game/ui/RandomTaskPanel;->isShown:Z

    .line 71
    return-void
.end method

.method public setTaskTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/sns/game/ui/RandomTaskPanel;->taskTag:I

    .line 50
    return-void
.end method

.method public declared-synchronized setTimeOut(Z)V
    .locals 1
    .param p1, "isTimeOut"    # Z

    .prologue
    .line 603
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sns/game/ui/RandomTaskPanel;->isTimeOut:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    monitor-exit p0

    return-void

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setToRollOut(Z)V
    .locals 0
    .param p1, "isToRollOut"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollOut:Z

    .line 300
    return-void
.end method

.method public setToRollUp(Z)V
    .locals 0
    .param p1, "isToRollUp"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/sns/game/ui/RandomTaskPanel;->isToRollUp:Z

    .line 292
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->zOrder_:I

    invoke-virtual {v0, p0, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 125
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->showStartAnimation()V

    .line 127
    const/16 v0, 0x116

    .line 126
    invoke-static {v0}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 128
    return-void
.end method

.method protected showCancelAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 163
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    .line 166
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v1, v1, v7

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v3, v3, v6

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v3, v3, v4

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollUpActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v3, v3, v8

    aput-object v3, v2, v4

    .line 167
    const-string v3, "callBack_selector_setShown"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x4

    .line 168
    const-string v4, "callBack_selector_setIsTouchEnabled"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 169
    const-string v4, "callback_selector_showCancelAnimation"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 165
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 172
    :cond_0
    return-void
.end method

.method protected showStartAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 133
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    .line 136
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v1, v1, v7

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v3, v3, v6

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v3, v3, v4

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/sns/game/ui/RandomTaskPanel;->rollOutActions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v3, v3, v8

    aput-object v3, v2, v4

    .line 137
    const-string v3, "callBack_selector_setShown"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x4

    .line 138
    const-string v4, "callBack_selector_setIsTouchEnabled"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 139
    const-string v4, "callBack_selector_activateTimeAction"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 135
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 142
    :cond_0
    return-void
.end method

.method public declared-synchronized updateCompleCount(I)V
    .locals 4
    .param p1, "addCount"    # I

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->compleCount:I

    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/RandomTaskBean;->getKill_count()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 532
    iget v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->compleCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->compleCount:I

    .line 533
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->updateConditionAtlas()V

    .line 534
    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sns/game/ui/RandomTaskPanel;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->setTimeOut(Z)V

    .line 537
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->stopAllActions()V

    .line 538
    iget-boolean v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->isShown:Z

    if-nez v0, :cond_1

    .line 540
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->activateRollOut([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 543
    :cond_1
    :try_start_1
    const-string v0, "callBack_selector_activateMark"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 542
    invoke-virtual {p0, p0, v0, v1}, Lcom/sns/game/ui/RandomTaskPanel;->invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateConditionAtlas()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 557
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->conditionAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->conditionAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->compleCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sns/game/ui/RandomTaskPanel;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/RandomTaskBean;->getKill_count()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->conditionAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v3, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 561
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->conditionAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x42fe0000    # 127.0f

    const/high16 v2, 0x43050000    # 133.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 563
    :cond_0
    return-void
.end method

.method public updateTimeAtlas()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 623
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_0

    .line 625
    iget-object v1, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 626
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sns/game/ui/RandomTaskPanel;->getTaskTime(I)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v2, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 628
    iget-object v0, p0, Lcom/sns/game/ui/RandomTaskPanel;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x42fc0000    # 126.0f

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 630
    :cond_0
    return-void
.end method
