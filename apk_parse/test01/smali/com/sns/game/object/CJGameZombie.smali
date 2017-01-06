.class public Lcom/sns/game/object/CJGameZombie;
.super Lcom/sns/game/object/GameBaseZombie;
.source "CJGameZombie.java"


# instance fields
.field private bean:Lcom/sns/game/database/bean/ZombieDataBean;

.field private cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

.field private deadSpriteFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

.field private flipX_:Z

.field private moveSpriteFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

.field private toBackPosX:F

.field private toGoToPosX:F

.field private zOrder_:I

.field private zombie_:Lorg/cocos2d/nodes/CCSprite;


# direct methods
.method public constructor <init>(Lcom/sns/game/object/CJGameZombieLoader;)V
    .locals 1
    .param p1, "loader"    # Lcom/sns/game/object/CJGameZombieLoader;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sns/game/object/GameBaseZombie;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    .line 50
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/CJGameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 51
    return-void
.end method

.method private added(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    .locals 1
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I

    .prologue
    .line 845
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sns/game/object/CJGameZombieLoader;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method private destroyNode(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 849
    if-eqz p1, :cond_0

    .line 850
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->stopAllActions()V

    .line 851
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 853
    :cond_0
    return-void
.end method

.method private varargs dropGold([Ljava/lang/Object;)V
    .locals 32
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 612
    const/16 v16, 0x0

    .line 613
    .local v16, "goldIcon":Lorg/cocos2d/nodes/CCSprite;
    const/4 v14, 0x0

    .line 614
    .local v14, "goldAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/CJGameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v11

    .line 615
    .local v11, "frameSize":Lorg/cocos2d/types/CGSize;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 616
    .local v4, "dropStartPos":Lorg/cocos2d/types/CGPoint;
    const/high16 v27, 0x41ec0000    # 29.5f

    const/high16 v28, 0x42280000    # 42.0f

    invoke-static/range {v27 .. v28}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 617
    .local v5, "dropStopPos":Lorg/cocos2d/types/CGPoint;
    const-string v19, "zombie/drop_gold.plist"

    .line 618
    .local v19, "goldIconPlist":Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 621
    .local v18, "goldIconFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_score()I

    move-result v24

    .line 622
    .local v24, "score":I
    const/16 v23, 0x1

    .line 623
    .local v23, "muple":I
    const-string v27, ""

    const-string v28, "UI/New_Num_x_27x33.png"

    const/16 v29, 0x1b

    const/16 v30, 0x21

    const/16 v31, 0x30

    invoke-static/range {v27 .. v31}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v14

    .line 624
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, ":"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int v28, v24, v23

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 625
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setOpacity(I)V

    .line 626
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f000000    # 0.5f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 628
    iget v0, v4, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v27, v0

    invoke-virtual {v14}, Lorg/cocos2d/nodes/CCLabelAtlas;->getContentSizeWidth()F

    move-result v28

    const/high16 v29, 0x3f000000    # 0.5f

    mul-float v28, v28, v29

    add-float v27, v27, v28

    .line 629
    iget v0, v4, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v28, v0

    iget v0, v11, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v29, v0

    const/high16 v30, 0x3f000000    # 0.5f

    mul-float v29, v29, v30

    add-float v28, v28, v29

    .line 627
    invoke-static/range {v27 .. v28}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 633
    const-string v27, "point.png"

    invoke-static/range {v27 .. v27}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v16

    .line 634
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 635
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f000000    # 0.5f

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 637
    invoke-virtual {v14}, Lorg/cocos2d/nodes/CCLabelAtlas;->getPositionRefX()F

    move-result v27

    invoke-virtual {v14}, Lorg/cocos2d/nodes/CCLabelAtlas;->getContentSizeWidth()F

    move-result v28

    sub-float v27, v27, v28

    const/high16 v28, 0x41800000    # 16.0f

    sub-float v27, v27, v28

    .line 638
    iget v0, v4, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v28, v0

    iget v0, v11, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v29, v0

    const/high16 v30, 0x3f000000    # 0.5f

    mul-float v29, v29, v30

    add-float v28, v28, v29

    .line 636
    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sns/game/object/CJGameZombieLoader;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v27

    const v28, 0x7fffffff

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sns/game/object/CJGameZombieLoader;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v27

    const v28, 0x7fffffff

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v14, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 648
    const/high16 v27, 0x3f400000    # 0.75f

    const/high16 v28, 0x3f800000    # 1.0f

    invoke-static/range {v27 .. v28}, Lcom/sns/game/util/SoundManager;->playCoinEffect(FF)V

    .line 651
    const-string v27, "dropGold_animate"

    const v28, 0x3d99999a    # 0.075f

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    .line 652
    .local v17, "goldIconAnim":Lorg/cocos2d/actions/interval/CCAnimate;
    invoke-static/range {v17 .. v17}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 657
    const/high16 v27, 0x3e800000    # 0.25f

    invoke-static/range {v27 .. v27}, Lorg/cocos2d/actions/interval/CCFadeIn;->action(F)Lorg/cocos2d/actions/interval/CCFadeIn;

    move-result-object v9

    .line 658
    .local v9, "fadeIn":Lorg/cocos2d/actions/interval/CCFadeIn;
    const/high16 v27, 0x3f000000    # 0.5f

    const/16 v28, 0x0

    const/high16 v29, 0x42480000    # 50.0f

    invoke-static/range {v28 .. v29}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v28

    const/high16 v29, -0x3db80000    # -50.0f

    const/16 v30, 0x1

    invoke-static/range {v27 .. v30}, Lorg/cocos2d/actions/interval/CCJumpBy;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v21

    .line 659
    .local v21, "jumpBy":Lorg/cocos2d/actions/interval/CCJumpBy;
    invoke-static/range {v21 .. v21}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v7

    .line 660
    .local v7, "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v7, v27, v28

    move-object/from16 v0, v27

    invoke-static {v9, v0}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v26

    .line 664
    .local v26, "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    const/high16 v27, 0x3f400000    # 0.75f

    invoke-static/range {v27 .. v27}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v6

    .line 668
    .local v6, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    const/high16 v27, 0x43dc0000    # 440.0f

    const/high16 v28, 0x3f400000    # 0.75f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v4, v5, v0, v1}, Lcom/sns/game/util/CCUtil;->ccuCalcMoveEquivalentTime(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;FF)F

    move-result v8

    .line 669
    .local v8, "equalTime":F
    invoke-static {v8, v5}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v22

    .line 670
    .local v22, "moveTo":Lorg/cocos2d/actions/interval/CCMoveTo;
    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v7

    .line 674
    const-string v25, "callBack_selector_dropOut"

    .line 675
    .local v25, "selector":Ljava/lang/String;
    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v3, v0, [Ljava/lang/Object;

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v3, v27

    const/16 v27, 0x1

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v3, v27

    const/16 v27, 0x2

    aput-object v16, v3, v27

    .line 676
    .local v3, "data":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v13

    .line 679
    .local v13, "funcNd_2":Lorg/cocos2d/actions/instant/CCCallFuncND;
    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v6, v27, v28

    const/16 v28, 0x1

    aput-object v7, v27, v28

    const/16 v28, 0x2

    aput-object v13, v27, v28

    invoke-static/range {v26 .. v27}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v20

    .line 680
    .local v20, "goldIconSeq":Lorg/cocos2d/actions/interval/CCSequence;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 685
    const/high16 v27, 0x3e800000    # 0.25f

    invoke-static/range {v27 .. v27}, Lorg/cocos2d/actions/interval/CCFadeIn;->action(F)Lorg/cocos2d/actions/interval/CCFadeIn;

    move-result-object v9

    .line 686
    const/high16 v27, 0x3f000000    # 0.5f

    const/16 v28, 0x0

    const/high16 v29, 0x42480000    # 50.0f

    invoke-static/range {v28 .. v29}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v28

    const/high16 v29, -0x3db80000    # -50.0f

    const/16 v30, 0x1

    invoke-static/range {v27 .. v30}, Lorg/cocos2d/actions/interval/CCJumpBy;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v21

    .line 687
    invoke-static/range {v21 .. v21}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v7

    .line 688
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v7, v27, v28

    move-object/from16 v0, v27

    invoke-static {v9, v0}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v26

    .line 692
    const/high16 v27, 0x3f400000    # 0.75f

    invoke-static/range {v27 .. v27}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v6

    .line 696
    const/high16 v27, 0x3e800000    # 0.25f

    invoke-static/range {v27 .. v27}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v10

    .line 700
    .local v10, "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    const-string v25, "callBack_selector_dropOut"

    .line 701
    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v3, v0, [Ljava/lang/Object;

    .end local v3    # "data":[Ljava/lang/Object;
    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v3, v27

    const/16 v27, 0x1

    const/16 v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v3, v27

    const/16 v27, 0x2

    aput-object v14, v3, v27

    .line 702
    .restart local v3    # "data":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v12

    .line 705
    .local v12, "funcNd":Lorg/cocos2d/actions/instant/CCCallFuncND;
    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v6, v27, v28

    const/16 v28, 0x1

    aput-object v10, v27, v28

    const/16 v28, 0x2

    aput-object v12, v27, v28

    invoke-static/range {v26 .. v27}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v15

    .line 706
    .local v15, "goldAtlasSeq":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-virtual {v14, v15}, Lorg/cocos2d/nodes/CCLabelAtlas;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 709
    return-void
.end method

.method private randomSpeed()F
    .locals 3

    .prologue
    .line 857
    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    .line 858
    .local v0, "speed":F
    return v0
.end method

.method private runDeadAction()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const v8, 0x3dcccccd    # 0.1f

    const/4 v7, 0x1

    .line 578
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 579
    const-string v2, ""

    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v2, v8, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v2

    const/4 v0, 0x7

    new-array v3, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 580
    const-string v4, ""

    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v4, v8, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v6

    .line 581
    const-string v0, "callBack_selector_endOwnLife"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p0, v0, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v0

    aput-object v0, v3, v7

    .line 582
    const-string v4, ""

    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v4, v8, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v9

    .line 583
    const-string v4, ""

    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v4, v8, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v10

    const/4 v4, 0x4

    .line 584
    const-string v5, ""

    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v5, v8, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v4, 0x5

    .line 585
    const-string v5, ""

    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v5, v8, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x6

    .line 586
    const-string v4, "callBack_selector_recycleSelf"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v3, v0

    .line 578
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 587
    return-void
.end method

.method private setDeadSpriteFrames()V
    .locals 3

    .prologue
    .line 779
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zombie/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/ZombieDataBean;->getDead_res()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 779
    iput-object v0, p0, Lcom/sns/game/object/CJGameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    .line 781
    return-void
.end method

.method private setDisplayFrame()V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    iput-object v0, p0, Lcom/sns/game/object/CJGameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 789
    return-void
.end method

.method private setMoveSpriteFrames()V
    .locals 3

    .prologue
    .line 773
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zombie/handsel_mode/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/ZombieDataBean;->getMove_res()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 773
    iput-object v0, p0, Lcom/sns/game/object/CJGameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    .line 775
    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombie;->setDisplayFrame()V

    .line 776
    return-void
.end method

.method private setRandomFlipX()V
    .locals 1

    .prologue
    .line 796
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->randomBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sns/game/object/CJGameZombie;->flipX_:Z

    .line 797
    return-void
.end method

.method private setToEndPosX()V
    .locals 3

    .prologue
    .line 800
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    iget-boolean v2, p0, Lcom/sns/game/object/CJGameZombie;->flipX_:Z

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/object/CJGameZombieLoader;->toGoToPosX(Lorg/cocos2d/nodes/CCSpriteFrame;Z)F

    move-result v0

    iput v0, p0, Lcom/sns/game/object/CJGameZombie;->toGoToPosX:F

    .line 801
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    iget-boolean v2, p0, Lcom/sns/game/object/CJGameZombie;->flipX_:Z

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/object/CJGameZombieLoader;->toBackPosX(Lorg/cocos2d/nodes/CCSpriteFrame;Z)F

    move-result v0

    iput v0, p0, Lcom/sns/game/object/CJGameZombie;->toBackPosX:F

    .line 802
    return-void
.end method

.method private setZombie()V
    .locals 5

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 825
    const-string v0, "point.png"

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 826
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget-boolean v1, p0, Lcom/sns/game/object/CJGameZombie;->flipX_:Z

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setFlipX(Z)V

    .line 827
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v2, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 828
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    iget-object v2, p0, Lcom/sns/game/object/CJGameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    iget v3, p0, Lcom/sns/game/object/CJGameZombie;->zOrder_:I

    iget-boolean v4, p0, Lcom/sns/game/object/CJGameZombie;->flipX_:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/sns/game/object/CJGameZombieLoader;->randomPosition(Lorg/cocos2d/nodes/CCSpriteFrame;IZ)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPositionToUI(Lorg/cocos2d/types/CGPoint;)V

    .line 829
    return-void
.end method

.method private setZorder()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v0, v1}, Lcom/sns/game/object/CJGameZombieLoader;->zOrder(Lorg/cocos2d/nodes/CCSpriteFrame;)I

    move-result v0

    iput v0, p0, Lcom/sns/game/object/CJGameZombie;->zOrder_:I

    .line 810
    return-void
.end method


# virtual methods
.method public acceptedAttack()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 164
    const-string v1, "callBack_selector_acceptedAttack"

    iget-object v2, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-static {p0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 163
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 162
    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 166
    return-void
.end method

.method public varargs acceptedWeapon_CGP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 472
    aget-object v2, p2, v9

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 473
    .local v0, "clusterSum":F
    aget-object v2, p2, v8

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 474
    .local v1, "weightSum":F
    iget-object v2, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 475
    const-string v3, "callBack_selector_Weapon_CGP"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    new-array v4, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 476
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v5

    aput-object v5, v4, v9

    .line 477
    const-string v5, "callBack_selector_Weapon_CGP"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {p0, v5, v6}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v5

    aput-object v5, v4, v8

    .line 474
    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 479
    return-void
.end method

.method public varargs acceptedWeapon_DMG(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 385
    aget-object v2, p2, v9

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 386
    .local v0, "clusterSum":F
    aget-object v2, p2, v8

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 387
    .local v1, "weightSum":F
    iget-object v2, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 388
    const-string v3, "callBack_selector_Weapon_DMG"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object p1, v4, v8

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    new-array v4, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 389
    const v5, 0x3e19999a    # 0.15f

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v5

    aput-object v5, v4, v9

    .line 390
    const-string v5, "callBack_selector_Weapon_DMG"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {p0, v5, v6}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v5

    aput-object v5, v4, v8

    .line 387
    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 391
    return-void
.end method

.method public varargs acceptedWeapon_JGP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 266
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 267
    const-string v1, "callBack_selector_Weapon_JGP"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v1

    new-array v2, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 268
    const v3, 0x3db851ec    # 0.09f

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v3

    aput-object v3, v2, v7

    .line 269
    const-string v3, "callBack_selector_Weapon_JGP"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p1, v4, v6

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v6

    .line 266
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 270
    return-void
.end method

.method public varargs acceptedWeapon_WDP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 224
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 225
    const-string v1, "callBack_selector_Weapon_WDP"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p1, v2, v6

    invoke-static {p0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v1

    new-array v2, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 226
    const v3, 0x3db851ec    # 0.09f

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v3

    aput-object v3, v2, v7

    .line 227
    const-string v3, "callBack_selector_Weapon_WDP"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v6

    .line 224
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 228
    return-void
.end method

.method public varargs acceptedWeapon_XGTS(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 429
    aget-object v2, p2, v9

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 430
    .local v0, "clusterSum":F
    aget-object v2, p2, v8

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 431
    .local v1, "weightSum":F
    iget-object v2, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 432
    const-string v3, "callBack_selector_Weapon_XGTS"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object p1, v4, v8

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    new-array v4, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 433
    const v5, 0x3e333333    # 0.175f

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v5

    aput-object v5, v4, v9

    .line 434
    const-string v5, "callBack_selector_Weapon_XGTS"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {p0, v5, v6}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v5

    aput-object v5, v4, v8

    .line 431
    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 435
    return-void
.end method

.method public varargs acceptedWeapon_XRZC(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 317
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 318
    const-string v1, "callBack_selector_Weapon_XRZC"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p1, v2, v6

    invoke-static {p0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v1

    new-array v2, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 319
    const v3, 0x3db851ec    # 0.09f

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v3

    aput-object v3, v2, v7

    .line 320
    const-string v3, "callBack_selector_Weapon_XRZC"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p1, v4, v6

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v6

    .line 317
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 321
    return-void
.end method

.method public callBack_selector_Weapon_CGP(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 483
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 487
    .local v2, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 488
    const/4 v6, 0x0

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 489
    .local v4, "tag":I
    packed-switch v4, :pswitch_data_0

    .line 506
    .end local v4    # "tag":I
    :goto_0
    return-void

    .line 492
    .restart local v4    # "tag":I
    :pswitch_0
    iget-object v6, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v7, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    .end local v4    # "tag":I
    :catch_0
    move-exception v3

    .line 504
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 496
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "tag":I
    :pswitch_1
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 497
    .local v1, "clusterSum":F
    const/4 v6, 0x2

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 498
    .local v5, "weightSum":F
    iget-object v6, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v7, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 499
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/sns/game/object/CJGameZombie;->endOwnLife([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callBack_selector_Weapon_DMG(Ljava/lang/Object;)V
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 396
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    .line 397
    .local v3, "data":[Ljava/lang/Object;
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v6

    .line 401
    .local v6, "useWeapon":Lcom/sns/game/object/GameWeapon;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 402
    const/4 v8, 0x0

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 403
    .local v5, "tag":I
    packed-switch v5, :pswitch_data_0

    .line 424
    .end local v5    # "tag":I
    :goto_0
    return-void

    .line 406
    .restart local v5    # "tag":I
    :pswitch_0
    iget-object v8, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v9, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 407
    const/4 v8, 0x1

    aget-object v1, v3, v8

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 408
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 409
    invoke-virtual {v6, v1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    .end local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "tag":I
    :catch_0
    move-exception v4

    .line 422
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 413
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "tag":I
    :pswitch_1
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 414
    .local v2, "clusterSum":F
    const/4 v8, 0x2

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 415
    .local v7, "weightSum":F
    iget-object v8, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v9, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 416
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sns/game/object/CJGameZombie;->endOwnLife([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callBack_selector_Weapon_JGP(Ljava/lang/Object;)V
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 275
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 276
    .local v2, "data":[Ljava/lang/Object;
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v9

    .line 280
    .local v9, "useWeapon":Lcom/sns/game/object/GameWeapon;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 281
    const/4 v10, 0x0

    aget-object v10, v2, v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 282
    .local v8, "tag":I
    packed-switch v8, :pswitch_data_0

    .line 312
    .end local v8    # "tag":I
    :goto_0
    return-void

    .line 285
    .restart local v8    # "tag":I
    :pswitch_0
    iget-object v10, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v11, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v10, v11}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    .end local v8    # "tag":I
    :catch_0
    move-exception v3

    .line 310
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 289
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "tag":I
    :pswitch_1
    :try_start_1
    iget-object v10, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v11, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v10, v11}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 290
    const/4 v10, 0x1

    aget-object v1, v2, v10

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 291
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getRotation()F

    move-result v10

    neg-float v7, v10

    .line 292
    .local v7, "rot":F
    invoke-virtual {v1, v7}, Lorg/cocos2d/nodes/CCSprite;->setRotation(F)V

    .line 294
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v10

    iget v10, v10, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v11

    iget v11, v11, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v10, v11}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 296
    .local v4, "point_A":Lorg/cocos2d/types/CGPoint;
    const/4 v10, 0x0

    cmpl-float v10, v7, v10

    if-lez v10, :cond_0

    sget-object v10, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v10, v10, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v11

    add-float/2addr v10, v11

    .line 297
    :goto_1
    iget v11, v4, Lorg/cocos2d/types/CGPoint;->y:F

    .line 295
    invoke-static {v10, v11}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    .line 298
    .local v6, "point_C":Lorg/cocos2d/types/CGPoint;
    iget v10, v6, Lorg/cocos2d/types/CGPoint;->x:F

    .line 299
    iget v11, v4, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v4, v6}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v12

    add-float/2addr v11, v12

    .line 298
    invoke-static {v10, v11}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 301
    .local v5, "point_B":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {v9}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 302
    invoke-virtual {v9, v1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V

    .line 303
    invoke-virtual {v9, v1, v5}, Lcom/sns/game/object/GameWeapon;->shotBullet(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V

    .line 304
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lcom/sns/game/object/CJGameZombie;->endOwnLife([Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    .end local v5    # "point_B":Lorg/cocos2d/types/CGPoint;
    .end local v6    # "point_C":Lorg/cocos2d/types/CGPoint;
    :cond_0
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    neg-float v10, v10

    goto :goto_1

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callBack_selector_Weapon_WDP(Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 233
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 234
    .local v2, "data":[Ljava/lang/Object;
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v5

    .line 238
    .local v5, "useWeapon":Lcom/sns/game/object/GameWeapon;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 239
    const/4 v6, 0x0

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 240
    .local v4, "tag":I
    packed-switch v4, :pswitch_data_0

    .line 260
    .end local v4    # "tag":I
    :goto_0
    return-void

    .line 243
    .restart local v4    # "tag":I
    :pswitch_0
    iget-object v6, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v7, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 244
    const/4 v6, 0x1

    aget-object v1, v2, v6

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 245
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v5, v1}, Lcom/sns/game/object/GameWeapon;->destroyBullet(Lorg/cocos2d/nodes/CCSprite;)V

    .line 246
    invoke-virtual {v5}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 247
    invoke-virtual {v5, v1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v4    # "tag":I
    :catch_0
    move-exception v3

    .line 258
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 251
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "tag":I
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v7, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 252
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/sns/game/object/CJGameZombie;->endOwnLife([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callBack_selector_Weapon_XGTS(Ljava/lang/Object;)V
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 439
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    .line 440
    .local v3, "data":[Ljava/lang/Object;
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v6

    .line 444
    .local v6, "useWeapon":Lcom/sns/game/object/GameWeapon;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 445
    const/4 v8, 0x0

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 446
    .local v5, "tag":I
    packed-switch v5, :pswitch_data_0

    .line 467
    .end local v5    # "tag":I
    :goto_0
    return-void

    .line 449
    .restart local v5    # "tag":I
    :pswitch_0
    iget-object v8, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v9, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 450
    const/4 v8, 0x1

    aget-object v1, v3, v8

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 451
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 452
    invoke-virtual {v6, v1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    .end local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "tag":I
    :catch_0
    move-exception v4

    .line 465
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 456
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "tag":I
    :pswitch_1
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 457
    .local v2, "clusterSum":F
    const/4 v8, 0x2

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 458
    .local v7, "weightSum":F
    iget-object v8, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v9, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 459
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sns/game/object/CJGameZombie;->endOwnLife([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callBack_selector_Weapon_XRZC(Ljava/lang/Object;)V
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 327
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 328
    .local v2, "data":[Ljava/lang/Object;
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v7

    .line 332
    .local v7, "useWeapon":Lcom/sns/game/object/GameWeapon;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 333
    const/4 v9, 0x0

    aget-object v9, v2, v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 334
    .local v6, "tag":I
    packed-switch v6, :pswitch_data_0

    .line 380
    .end local v6    # "tag":I
    :cond_0
    :goto_0
    return-void

    .line 337
    .restart local v6    # "tag":I
    :pswitch_0
    iget-object v9, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v10, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v9, v10}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 338
    const/4 v9, 0x1

    aget-object v1, v2, v9

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 339
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 340
    .local v5, "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 343
    .local v8, "valueData":[Ljava/lang/Object;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 344
    .local v4, "isPlayEffect":Z
    if-eqz v4, :cond_1

    .line 346
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 347
    invoke-virtual {v7}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 349
    :cond_1
    invoke-virtual {v7, v1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v4    # "isPlayEffect":Z
    .end local v5    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6    # "tag":I
    .end local v8    # "valueData":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 378
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 354
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "tag":I
    :pswitch_1
    :try_start_1
    iget-object v9, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v10, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v9, v10}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 355
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/sns/game/object/CJGameZombie;->endOwnLife([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callBack_selector_acceptedAttack(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v1

    .line 175
    .local v1, "useWeapon":Lcom/sns/game/object/GameWeapon;
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 203
    .end local v1    # "useWeapon":Lcom/sns/game/object/GameWeapon;
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local v1    # "useWeapon":Lcom/sns/game/object/GameWeapon;
    :pswitch_0
    invoke-virtual {v1, p0}, Lcom/sns/game/object/GameWeapon;->weaponFire_WDP(Lcom/sns/game/object/GameBaseZombie;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v1    # "useWeapon":Lcom/sns/game/object/GameWeapon;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "useWeapon":Lcom/sns/game/object/GameWeapon;
    :pswitch_1
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/sns/game/object/GameWeapon;->weaponFire_JGP(Lcom/sns/game/object/GameBaseZombie;)V

    goto :goto_0

    .line 187
    :pswitch_2
    invoke-virtual {v1, p0}, Lcom/sns/game/object/GameWeapon;->weaponFire_XRZC(Lcom/sns/game/object/GameBaseZombie;)V

    goto :goto_0

    .line 191
    :pswitch_3
    invoke-virtual {v1, p0}, Lcom/sns/game/object/GameWeapon;->weaponFire_DMG(Lcom/sns/game/object/GameBaseZombie;)V

    goto :goto_0

    .line 195
    :pswitch_4
    invoke-virtual {v1, p0}, Lcom/sns/game/object/GameWeapon;->weaponFire_XGTS(Lcom/sns/game/object/GameBaseZombie;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x271f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public callBack_selector_dropOut(Ljava/lang/Object;)V
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 713
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 716
    .local v1, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 717
    const/4 v10, 0x0

    aget-object v10, v1, v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 718
    .local v8, "tag":I
    packed-switch v8, :pswitch_data_0

    .line 747
    .end local v8    # "tag":I
    :cond_0
    :goto_0
    return-void

    .line 722
    .restart local v8    # "tag":I
    :pswitch_0
    const/4 v10, 0x1

    aget-object v10, v1, v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 723
    .local v7, "smallTag":I
    if-ne v7, v12, :cond_1

    .line 724
    const/4 v10, 0x2

    aget-object v4, v1, v10

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 725
    .local v4, "goldIcon":Lorg/cocos2d/nodes/CCSprite;
    invoke-direct {p0, v4}, Lcom/sns/game/object/CJGameZombie;->destroyNode(Lorg/cocos2d/nodes/CCNode;)V

    .line 726
    iget-object v10, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v10}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_score()I

    move-result v6

    .line 727
    .local v6, "score":I
    const/4 v5, 0x1

    .line 728
    .local v5, "muple":I
    invoke-static {}, Lcom/sns/game/layer/CCCJNewLayer;->oneSelf()Lcom/sns/game/layer/CCCJNewLayer;

    move-result-object v9

    .line 729
    .local v9, "targetLayer":Lcom/sns/game/layer/CCCJNewLayer;
    if-eqz v9, :cond_0

    .line 730
    mul-int v10, v6, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sns/game/layer/CCCJNewLayer;->updateUserGold(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    .end local v4    # "goldIcon":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "muple":I
    .end local v6    # "score":I
    .end local v7    # "smallTag":I
    .end local v8    # "tag":I
    .end local v9    # "targetLayer":Lcom/sns/game/layer/CCCJNewLayer;
    :catch_0
    move-exception v2

    .line 745
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 734
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "smallTag":I
    .restart local v8    # "tag":I
    :cond_1
    if-ne v7, v11, :cond_0

    .line 735
    const/4 v10, 0x2

    :try_start_1
    aget-object v3, v1, v10

    check-cast v3, Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 736
    .local v3, "goldAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-direct {p0, v3}, Lcom/sns/game/object/CJGameZombie;->destroyNode(Lorg/cocos2d/nodes/CCNode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public callBack_selector_endOwnLife(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 592
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 595
    .local v1, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 596
    const/4 v5, 0x0

    aget-object v4, v1, v5

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 597
    .local v4, "zombie":Lorg/cocos2d/nodes/CCSprite;
    const/4 v5, 0x1

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 598
    .local v3, "visible":Z
    invoke-virtual {v4, v3}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .end local v3    # "visible":Z
    .end local v4    # "zombie":Lorg/cocos2d/nodes/CCSprite;
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v2

    .line 601
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_moveTo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 152
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sns/game/object/CJGameZombie;->setFlipX(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_recycleSelf()V
    .locals 1

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombie;->recycleSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public createSelf()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombie;->setRandomBean()V

    .line 57
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombie;->setFramesToCache()V

    .line 58
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombie;->setPoints()V

    .line 59
    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombie;->setZorder()V

    .line 60
    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombie;->setRandomFlipX()V

    .line 61
    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombie;->setToEndPosX()V

    .line 62
    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombie;->setZombie()V

    .line 63
    return-void
.end method

.method public destroyZombie()V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 833
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 834
    return-void
.end method

.method public dropOut()V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/sns/game/object/CJGameZombie;->dropGold([Ljava/lang/Object;)V

    .line 609
    return-void
.end method

.method public varargs endOwnLife([Ljava/lang/Object;)V
    .locals 12
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 511
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v8

    .line 512
    .local v8, "weaponLoader":Lcom/sns/game/object/GameWeaponLoader;
    invoke-virtual {v8}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v6

    .line 513
    .local v6, "useWeapon":Lcom/sns/game/object/GameWeapon;
    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v7

    .line 515
    .local v7, "weaponBean":Lcom/sns/game/database/bean/WeaponBean;
    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v10

    iget-object v11, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v11}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v11

    .line 514
    invoke-virtual {v8, v10, v11}, Lcom/sns/game/object/GameWeaponLoader;->getCaptureRateObj(II)Lcom/sns/game/database/bean/CaptureRateBean;

    move-result-object v1

    .line 517
    .local v1, "captureRateObj":Lcom/sns/game/database/bean/CaptureRateBean;
    invoke-virtual {v7}, Lcom/sns/game/database/bean/WeaponBean;->getAttackType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 522
    :pswitch_0
    array-length v10, p1

    if-nez v10, :cond_0

    .line 525
    invoke-virtual {v1}, Lcom/sns/game/database/bean/CaptureRateBean;->getExpect()F

    move-result v10

    iget-object v11, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v11}, Lcom/sns/game/database/bean/ZombieDataBean;->getIntrinsicValue()F

    move-result v11

    .line 524
    invoke-virtual {v8, v10, v11}, Lcom/sns/game/object/GameWeaponLoader;->getZombieCaptureRate(FF)F

    move-result v0

    .line 527
    .local v0, "captureRate":F
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v10

    cmpg-float v10, v10, v0

    if-gtz v10, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombie;->executiveToKillSelf()V

    goto :goto_0

    .line 537
    .end local v0    # "captureRate":F
    :pswitch_1
    array-length v10, p1

    if-eqz v10, :cond_0

    .line 539
    const/4 v10, 0x0

    aget-object v10, p1, v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 540
    .local v2, "clusterSum":F
    const/4 v10, 0x1

    aget-object v10, p1, v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 541
    .local v9, "weightSum":F
    invoke-virtual {v8, v2, v7}, Lcom/sns/game/object/GameWeaponLoader;->getWeaponCofficient(FLcom/sns/game/database/bean/WeaponBean;)F

    move-result v3

    .line 542
    .local v3, "cofficient":F
    iget-object v10, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v8, v3, v9, v7, v10}, Lcom/sns/game/object/GameWeaponLoader;->getWeaponExpect(FFLcom/sns/game/database/bean/WeaponBean;Lcom/sns/game/database/bean/ZombieDataBean;)F

    move-result v4

    .line 543
    .local v4, "expect":F
    iget-object v10, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v10}, Lcom/sns/game/database/bean/ZombieDataBean;->getIntrinsicValue()F

    move-result v5

    .line 544
    .local v5, "intrinsicValue":F
    invoke-virtual {v8, v4, v5}, Lcom/sns/game/object/GameWeaponLoader;->getZombieCaptureRate(FF)F

    move-result v0

    .line 546
    .restart local v0    # "captureRate":F
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v10

    cmpg-float v10, v10, v0

    if-gtz v10, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombie;->executiveToKillSelf()V

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected executiveToKillSelf()V
    .locals 3

    .prologue
    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    if-nez v1, :cond_0

    .line 575
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v2, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 563
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 565
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    invoke-virtual {v1}, Lcom/sns/game/object/CJGameZombieLoader;->isActionLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombie;->dropOut()V

    .line 570
    :cond_1
    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombie;->runDeadAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getBean()Lcom/sns/game/database/bean/ZombieDataBean;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    return-object v0
.end method

.method protected getCollisionBoundingBox()Lorg/cocos2d/types/CGRect;
    .locals 4

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/object/CJGameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    iget-object v3, p0, Lcom/sns/game/object/CJGameZombie;->collisionBoundingBox_:Lorg/cocos2d/types/CGRect;

    invoke-static {v1, v2, v3}, Lcom/sns/game/util/CCUtil;->setBoundingBox(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSpriteFrame;Lorg/cocos2d/types/CGRect;)V

    .line 212
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->collisionBoundingBox_:Lorg/cocos2d/types/CGRect;

    .line 217
    :goto_0
    return-object v1

    .line 214
    :cond_0
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 217
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayFrame()Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v0

    return v0
.end method

.method public getZombie()Lorg/cocos2d/nodes/CCSprite;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method

.method public moveTo()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 116
    iget-object v3, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget v6, p0, Lcom/sns/game/object/CJGameZombie;->zOrder_:I

    invoke-direct {p0, v3, v6}, Lcom/sns/game/object/CJGameZombie;->added(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 120
    const/high16 v3, 0x3e800000    # 0.25f

    const v6, 0x3eb33333    # 0.35f

    invoke-static {v3, v6}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    .line 122
    .local v0, "speed":F
    iget v3, p0, Lcom/sns/game/object/CJGameZombie;->toGoToPosX:F

    iget-object v6, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefY()F

    move-result v6

    invoke-static {v3, v6}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 123
    .local v2, "toGoToPos":Lorg/cocos2d/types/CGPoint;
    iget v3, p0, Lcom/sns/game/object/CJGameZombie;->toBackPosX:F

    iget-object v6, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefY()F

    move-result v6

    invoke-static {v3, v6}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 126
    .local v1, "toBackPos":Lorg/cocos2d/types/CGPoint;
    iget-object v3, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 128
    const-string v6, "CjZombie_moveTo_animate"

    iget-object v7, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v7}, Lcom/sns/game/database/bean/ZombieDataBean;->getSpeed_time()F

    move-result v7

    iget-object v8, p0, Lcom/sns/game/object/CJGameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    .line 127
    invoke-static {v6, v7, v8}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v6

    .line 126
    invoke-static {v6}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 131
    iget-object v6, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 133
    iget-boolean v3, p0, Lcom/sns/game/object/CJGameZombie;->flipX_:Z

    invoke-static {v3}, Lorg/cocos2d/actions/instant/CCFlipX;->action(Z)Lorg/cocos2d/actions/instant/CCFlipX;

    move-result-object v7

    const/4 v3, 0x5

    new-array v8, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 134
    const-string v3, "callBack_selector_moveTo"

    iget-boolean v9, p0, Lcom/sns/game/object/CJGameZombie;->flipX_:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {p0, v3, v9}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v8, v4

    .line 135
    iget-object v3, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/ZombieDataBean;->getMove_time()F

    move-result v3

    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombie;->randomSpeed()F

    move-result v9

    mul-float/2addr v3, v9

    invoke-static {v3, v2}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v3

    aput-object v3, v8, v5

    const/4 v9, 0x2

    .line 136
    iget-boolean v3, p0, Lcom/sns/game/object/CJGameZombie;->flipX_:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Lorg/cocos2d/actions/instant/CCFlipX;->action(Z)Lorg/cocos2d/actions/instant/CCFlipX;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v3, 0x3

    .line 137
    const-string v9, "callBack_selector_moveTo"

    iget-boolean v10, p0, Lcom/sns/game/object/CJGameZombie;->flipX_:Z

    if-eqz v10, :cond_2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v9, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x4

    .line 138
    iget-object v4, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v4}, Lcom/sns/game/database/bean/ZombieDataBean;->getMove_time()F

    move-result v4

    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombie;->randomSpeed()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4, v1}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v4

    aput-object v4, v8, v3

    .line 132
    invoke-static {v7, v8}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    .line 131
    invoke-static {v3}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 141
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombie;->acceptedAttack()V

    .line 144
    .end local v0    # "speed":F
    .end local v1    # "toBackPos":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "toGoToPos":Lorg/cocos2d/types/CGPoint;
    :cond_0
    return-void

    .restart local v0    # "speed":F
    .restart local v1    # "toBackPos":Lorg/cocos2d/types/CGPoint;
    .restart local v2    # "toGoToPos":Lorg/cocos2d/types/CGPoint;
    :cond_1
    move v3, v5

    .line 136
    goto :goto_0

    :cond_2
    move v4, v5

    .line 137
    goto :goto_1
.end method

.method public recycleSelf()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/CJGameZombieLoader;->isActionLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    invoke-virtual {v0, p0}, Lcom/sns/game/object/CJGameZombieLoader;->removeZombie(Lcom/sns/game/object/GameBaseZombie;)Z

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombie;->destroyZombie()V

    .line 73
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/object/CJGameZombieLoader;->modifyDestroyNum(I)V

    .line 74
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_score()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sns/game/object/CJGameZombieLoader;->modifyRewardScore(I)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    :cond_3
    iput-object v2, p0, Lcom/sns/game/object/CJGameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 84
    iput-object v2, p0, Lcom/sns/game/object/CJGameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    .line 85
    iput-object v2, p0, Lcom/sns/game/object/CJGameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 86
    iput-object v2, p0, Lcom/sns/game/object/CJGameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 87
    iput-object v2, p0, Lcom/sns/game/object/CJGameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    .line 88
    iput v3, p0, Lcom/sns/game/object/CJGameZombie;->toBackPosX:F

    .line 89
    iput v3, p0, Lcom/sns/game/object/CJGameZombie;->toGoToPosX:F

    .line 90
    iput v4, p0, Lcom/sns/game/object/CJGameZombie;->zOrder_:I

    .line 91
    iput-boolean v4, p0, Lcom/sns/game/object/CJGameZombie;->flipX_:Z

    .line 93
    return-void
.end method

.method public runAction()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombie;->moveTo()V

    .line 111
    return-void
.end method

.method public setBean(Lcom/sns/game/database/bean/ZombieDataBean;)V
    .locals 0
    .param p1, "dataBean"    # Lcom/sns/game/database/bean/ZombieDataBean;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    .line 818
    return-void
.end method

.method public setFlipX(Z)V
    .locals 0
    .param p1, "flipX"    # Z

    .prologue
    .line 792
    iput-boolean p1, p0, Lcom/sns/game/object/CJGameZombie;->flipX_:Z

    .line 793
    return-void
.end method

.method public setFramesToCache()V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombie;->setMoveSpriteFrames()V

    .line 769
    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombie;->setDeadSpriteFrames()V

    .line 770
    return-void
.end method

.method public setPoints()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    iget-object v1, p0, Lcom/sns/game/object/CJGameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v0, v1}, Lcom/sns/game/object/CJGameZombieLoader;->addPoints(Lorg/cocos2d/nodes/CCSpriteFrame;)V

    .line 814
    return-void
.end method

.method public setRandomBean()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombie;->sharedLoader:Lcom/sns/game/object/CJGameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/CJGameZombieLoader;->randomZombieDataBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/CJGameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    .line 822
    return-void
.end method

.method public setZorder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 805
    iput p1, p0, Lcom/sns/game/object/CJGameZombie;->zOrder_:I

    .line 806
    return-void
.end method
