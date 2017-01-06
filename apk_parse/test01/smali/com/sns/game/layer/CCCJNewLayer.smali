.class public Lcom/sns/game/layer/CCCJNewLayer;
.super Lcom/sns/game/ui/CCGameLayer;
.source "CCCJNewLayer.java"


# static fields
.field private static mLayer:Lcom/sns/game/layer/CCCJNewLayer;


# instance fields
.field private background:Lorg/cocos2d/nodes/CCSprite;

.field private btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private bubbleLoader:Lcom/sns/game/object/BubbleLoader;

.field private gameStarBox:Lorg/cocos2d/nodes/CCSprite;

.field private gameStars:[Lorg/cocos2d/nodes/CCSprite;

.field private maskOff_:Lorg/cocos2d/nodes/CCSprite;

.field starCount:I

.field starTotal:I

.field private timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field private timeBox:Lorg/cocos2d/nodes/CCSprite;

.field private uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

.field private userGoldBox:Lorg/cocos2d/nodes/CCSprite;

.field private userWqkItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;",
            ">;"
        }
    .end annotation
.end field

.field private weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

.field private wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field private wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

.field wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

.field private zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameLayer;-><init>()V

    .line 458
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/cocos2d/nodes/CCSprite;

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    .line 460
    const/4 v0, 0x3

    iput v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->starTotal:I

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->userWqkItems:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/layer/CCCJNewLayer;)Lcom/sns/game/object/GameWeaponLoader;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sns/game/layer/CCCJNewLayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCCJNewLayer;->notifyToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sns/game/layer/CCCJNewLayer;)V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->showRewardDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/sns/game/layer/CCCJNewLayer;Lorg/cocos2d/layers/CCLayer;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCCJNewLayer;->ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V

    return-void
.end method

.method private ccTouchedUserWqkItems(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 590
    const/4 v1, 0x0

    .line 591
    .local v1, "touched":Z
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 596
    :goto_0
    return v1

    .line 591
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 593
    .local v0, "node":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v0, p1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->ccTouched(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 594
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private createUserWqkItems(I)V
    .locals 14
    .param p1, "z"    # I

    .prologue
    .line 509
    invoke-static {}, Lcom/sns/game/database/dao/StoreItemDao;->sharedDao()Lcom/sns/game/database/dao/StoreItemDao;

    move-result-object v0

    .line 510
    .local v0, "dao":Lcom/sns/game/database/dao/StoreItemDao;
    invoke-virtual {v0}, Lcom/sns/game/database/dao/StoreItemDao;->findAllWqkItemBeans()Ljava/util/List;

    move-result-object v6

    .line 512
    .local v6, "simBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    const/4 v2, 0x0

    .line 513
    .local v2, "index":I
    const v10, 0x43fe8000    # 509.0f

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v10, v11}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    .line 514
    .local v7, "startPos":Lorg/cocos2d/types/CGPoint;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 533
    return-void

    .line 514
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sns/game/database/bean/StoreItemBean;

    .line 515
    .local v5, "simBean":Lcom/sns/game/database/bean/StoreItemBean;
    invoke-virtual {v5}, Lcom/sns/game/database/bean/StoreItemBean;->getId()I

    move-result v1

    .line 516
    .local v1, "id":I
    const/16 v11, 0x271f

    if-ne v1, v11, :cond_2

    const/4 v3, 0x1

    .line 517
    .local v3, "isWDP":Z
    :goto_1
    invoke-virtual {v5}, Lcom/sns/game/database/bean/StoreItemBean;->getItem_icon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v9

    .line 518
    .local v9, "wqkSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v11, "Game_UI_Box_Weapon_Unselect.png"

    invoke-virtual {p0, v11}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    .line 519
    .local v4, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v11, "targetUserWqkItem_CallBack"

    invoke-static {v4, p0, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->ccsdWqkItem(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    move-result-object v8

    .line 520
    .local v8, "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v8, v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setWqkItemId(I)V

    .line 521
    invoke-virtual {v8, v5}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setStoreItemBean(Lcom/sns/game/database/bean/StoreItemBean;)V

    .line 522
    invoke-static {}, Lcom/sns/game/database/dao/WeaponDao;->sharedDao()Lcom/sns/game/database/dao/WeaponDao;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/sns/game/database/dao/WeaponDao;->cacheGet(I)Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setWeaponBean(Lcom/sns/game/database/bean/WeaponBean;)V

    .line 523
    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v8, v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setAnchorPoint(FF)V

    .line 524
    iget v11, v7, Lorg/cocos2d/types/CGPoint;->x:F

    const/high16 v12, 0x424c0000    # 51.0f

    int-to-float v13, v2

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iget v12, v7, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v8, v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setPosition(FF)V

    .line 525
    const/16 v11, 0x113

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setPlaySoundEffect(I)V

    .line 526
    invoke-virtual {v8, v9}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setWqkImage(Lorg/cocos2d/nodes/CCSprite;)V

    .line 527
    if-eqz v3, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->updateWqkCountAtlas(Z)V

    .line 528
    :cond_1
    invoke-direct {p0, v8}, Lcom/sns/game/layer/CCCJNewLayer;->createWqkSdLglHandle(Lorg/cocos2d/menus/CCMenuItemSprite;)Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setSelectedLogicalHandle(Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;)V

    .line 529
    invoke-virtual {p0, v8, p1}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 530
    iget-object v11, p0, Lcom/sns/game/layer/CCCJNewLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .end local v3    # "isWDP":Z
    .end local v4    # "normalSp":Lorg/cocos2d/nodes/CCSprite;
    .end local v8    # "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    .end local v9    # "wqkSp":Lorg/cocos2d/nodes/CCSprite;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private createWqkSdLglHandle(Lorg/cocos2d/menus/CCMenuItemSprite;)Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
    .locals 1
    .param p1, "itemSp"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 602
    new-instance v0, Lcom/sns/game/layer/CCCJNewLayer$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/layer/CCCJNewLayer$2;-><init>(Lcom/sns/game/layer/CCCJNewLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-object v0
.end method

.method public static layer()Lcom/sns/game/layer/CCCJNewLayer;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sns/game/layer/CCCJNewLayer;->mLayer:Lcom/sns/game/layer/CCCJNewLayer;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/sns/game/layer/CCCJNewLayer;

    invoke-direct {v0}, Lcom/sns/game/layer/CCCJNewLayer;-><init>()V

    sput-object v0, Lcom/sns/game/layer/CCCJNewLayer;->mLayer:Lcom/sns/game/layer/CCCJNewLayer;

    .line 68
    :cond_0
    sget-object v0, Lcom/sns/game/layer/CCCJNewLayer;->mLayer:Lcom/sns/game/layer/CCCJNewLayer;

    return-object v0
.end method

.method public static oneSelf()Lcom/sns/game/layer/CCCJNewLayer;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/sns/game/layer/CCCJNewLayer;->mLayer:Lcom/sns/game/layer/CCCJNewLayer;

    return-object v0
.end method

.method private runAddUserGoldNumAcion(I)V
    .locals 13
    .param p1, "gold"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    .line 391
    iget-object v5, p0, Lcom/sns/game/layer/CCCJNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 392
    .local v3, "pos":Lorg/cocos2d/types/CGPoint;
    const-string v5, ""

    const-string v6, "UI/New_Num_x_20x39.png"

    const/16 v7, 0x14

    const/16 v8, 0x27

    const/16 v9, 0x30

    invoke-static {v5, v6, v7, v8, v9}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v2

    .line 393
    .local v2, "jumpGoldAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {v2, v10, v10}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 394
    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 395
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 396
    const v5, 0x7fffffff

    invoke-virtual {p0, v2, v5}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 398
    const/high16 v5, 0x3f400000    # 0.75f

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v0

    .line 399
    .local v0, "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    const/4 v5, 0x0

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    const/high16 v6, -0x3db80000    # -50.0f

    invoke-static {v10, v5, v6, v11}, Lorg/cocos2d/actions/interval/CCJumpBy;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v1

    .line 400
    .local v1, "jumpBy":Lorg/cocos2d/actions/interval/CCJumpBy;
    new-array v5, v11, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {v1}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v0, v5}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v4

    .line 401
    .local v4, "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    new-array v5, v11, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {}, Lcom/sns/game/actions/CCRemove;->action()Lcom/sns/game/actions/CCRemove;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 402
    return-void
.end method

.method private runComeTo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v6, 0x43c80000    # 400.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3d99999a    # 0.075f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 128
    const-string v2, "effect/effect_5.plist"

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCCJNewLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 130
    const-string v2, "effect_cometo_cj.png"

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 131
    .local v0, "comeTo":Lorg/cocos2d/nodes/CCSprite;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 132
    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 133
    const/high16 v2, 0x439b0000    # 310.0f

    invoke-virtual {v0, v6, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 134
    const v2, 0x7fffffff

    invoke-virtual {p0, v0, v2}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 136
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/types/ccColor3B;->ccBLACK:Lorg/cocos2d/types/ccColor3B;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/util/CCUtil;->asMaskOffSprite(Lorg/cocos2d/types/ccColor3B;F)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 137
    .local v1, "maskOff":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 138
    const/high16 v2, 0x43700000    # 240.0f

    invoke-virtual {v1, v6, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 139
    const v2, 0x7ffffffe

    invoke-virtual {p0, v1, v2}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 143
    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 144
    invoke-static {v7, v5}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x1

    invoke-static {v7, v8}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 145
    const v5, 0x3d4ccccd    # 0.05f

    const/high16 v6, 0x3fa00000    # 1.25f

    invoke-static {v5, v6}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v7, v8}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 146
    const v5, 0x3d8f5c29    # 0.07f

    const v6, 0x3f89999a    # 1.075f

    invoke-static {v5, v6}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v7, v8}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 147
    const/high16 v5, 0x40200000    # 2.5f

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 148
    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/cocos2d/nodes/CCNode;

    .line 149
    aput-object v0, v5, v9

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v5}, Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;->action([Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    .line 150
    const-string v5, "callBack_selector_comeTo"

    invoke-static {p0, v5}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v5

    aput-object v5, v3, v4

    .line 142
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 153
    return-void
.end method

.method private runTimeAction()V
    .locals 6

    .prologue
    .line 911
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 913
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 914
    const-string v4, "callBack_selector_timeAction"

    iget-object v5, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v2, v3

    .line 912
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 911
    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 915
    return-void
.end method

.method private setBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    const-string v0, "Bg_GameMode_CJ_Frame.jpg"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    .line 354
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 355
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 356
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 357
    return-void
.end method

.method private setBtnPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 671
    const-string v1, "Game_UI_Btn_Pause.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 672
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnPause_CallBack"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 673
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v2, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 674
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x443e4000    # 761.0f

    const v3, 0x43e08000    # 449.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 675
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 676
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 677
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 678
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 679
    return-void
.end method

.method private setBtnSkill()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 647
    const-string v2, "Game_UI_Btn_Skill_Enabled.png"

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 648
    .local v1, "nromalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v2, "Game_UI_Btn_Skill_Disabled.png"

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 649
    .local v0, "disabledSp":Lorg/cocos2d/nodes/CCSprite;
    const/4 v2, 0x0

    const-string v3, "btnSkill_CallBack"

    invoke-static {v1, v2, v0, p0, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 650
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 651
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v2, v4, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 652
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v3, 0x443e4000    # 761.0f

    const/high16 v4, 0x42c00000    # 96.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 653
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 654
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 655
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 656
    return-void
.end method

.method private setBubbleLoader()V
    .locals 2

    .prologue
    .line 809
    invoke-static {}, Lcom/sns/game/object/BubbleLoader;->sharedLoader()Lcom/sns/game/object/BubbleLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->bubbleLoader:Lcom/sns/game/object/BubbleLoader;

    .line 810
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->bubbleLoader:Lcom/sns/game/object/BubbleLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sns/game/object/BubbleLoader;->onEnter(Lorg/cocos2d/nodes/CCNode;I)V

    .line 811
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->bubbleLoader:Lcom/sns/game/object/BubbleLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/BubbleLoader;->startLoader()V

    .line 812
    return-void
.end method

.method private setGameStars()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/high16 v14, 0x3f000000    # 0.5f

    .line 463
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v9

    .line 464
    .local v9, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v9}, Lcom/sns/game/database/bean/UserState;->getGameStarCount()I

    move-result v10

    iput v10, p0, Lcom/sns/game/layer/CCCJNewLayer;->starCount:I

    .line 465
    iget v10, p0, Lcom/sns/game/layer/CCCJNewLayer;->starCount:I

    iget v12, p0, Lcom/sns/game/layer/CCCJNewLayer;->starTotal:I

    if-ne v10, v12, :cond_0

    .line 466
    iput v11, p0, Lcom/sns/game/layer/CCCJNewLayer;->starCount:I

    .line 467
    invoke-virtual {v9, v11}, Lcom/sns/game/database/bean/UserState;->setGameStarCount(I)V

    .line 470
    :cond_0
    const-string v10, "Game_UI_Box_GameStar.png"

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v10

    iput-object v10, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    .line 471
    iget-object v10, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v10, v14, v14}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 472
    iget-object v10, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v12, 0x42f20000    # 121.0f

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-virtual {v10, v12, v13}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 474
    const/high16 v1, 0x42aa0000    # 85.0f

    .line 475
    .local v1, "beginPosX":F
    const/high16 v2, 0x42a00000    # 80.0f

    .line 476
    .local v2, "beginPosY":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v10, p0, Lcom/sns/game/layer/CCCJNewLayer;->starTotal:I

    if-lt v4, v10, :cond_1

    .line 496
    return-void

    .line 478
    :cond_1
    mul-int/lit8 v5, v4, 0x2

    .line 479
    .local v5, "indexEnd":I
    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v6, v10, 0x1

    .line 480
    .local v6, "indexTop":I
    invoke-static {v14, v14}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 481
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    mul-int/lit8 v10, v4, 0x23

    int-to-float v10, v10

    add-float/2addr v10, v1

    invoke-static {v10, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    .line 483
    .local v7, "starPos":Lorg/cocos2d/types/CGPoint;
    const-string v10, "Game_UI_Img_Star_End.png"

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    .line 484
    .local v3, "endStarSp":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v3, v0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 485
    invoke-virtual {v3, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 487
    const-string v10, "Game_UI_Img_Star.png"

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    .line 488
    .local v8, "topStarSp":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v8, v0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 489
    invoke-virtual {v8, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 490
    invoke-virtual {v9}, Lcom/sns/game/database/bean/UserState;->getGameStarCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-gt v4, v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v8, v10}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 492
    iget-object v10, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    aput-object v3, v10, v5

    .line 493
    iget-object v10, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    aput-object v8, v10, v6

    .line 476
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v10, v11

    .line 490
    goto :goto_1
.end method

.method private setMaskOff()V
    .locals 3

    .prologue
    .line 873
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/types/ccColor3B;->ccBLACK:Lorg/cocos2d/types/ccColor3B;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/util/CCUtil;->asMaskOffSprite(Lorg/cocos2d/types/ccColor3B;F)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    .line 874
    return-void
.end method

.method private setTime()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 895
    const-string v0, "Game_UI_Box_TimeMode.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    .line 896
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 897
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x43c80000    # 400.0f

    const/high16 v2, 0x43e10000    # 450.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 900
    const-string v0, ""

    const-string v1, "UI/New_Num_x_16x22.png"

    const/16 v2, 0x10

    const/16 v3, 0x16

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 901
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 902
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 903
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 904
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v1

    mul-float/2addr v1, v5

    .line 905
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v2

    mul-float/2addr v2, v5

    .line 903
    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 906
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 908
    return-void
.end method

.method private setUserGoldBox()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 364
    const-string v0, "Game_UI_Box_Gold.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    .line 365
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 366
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x42f00000    # 120.0f

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 368
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setUserGoldCounter()V

    .line 370
    return-void
.end method

.method private setUserGoldCounter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    invoke-static {}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->create()Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    .line 374
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 375
    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCCJNewLayer;->updateUserGoldCounter(I)V

    .line 376
    return-void
.end method

.method private setUserWqkItems()V
    .locals 1

    .prologue
    .line 503
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->createUserWqkItems(I)V

    .line 504
    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->updateUserWqkItems()V

    .line 505
    return-void
.end method

.method private setWeaponLoader()V
    .locals 2

    .prologue
    .line 819
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    .line 820
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v0, p0}, Lcom/sns/game/object/GameWeaponLoader;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 821
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/sns/game/object/GameWeaponLoader;->setZorder(I)V

    .line 822
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/object/GameWeaponLoader;->setCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V

    .line 823
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeaponLoader;->setUseWeapon()V

    .line 826
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setWpnCostNodes()V

    .line 827
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 828
    return-void
.end method

.method private setWpnCostNodes()V
    .locals 5

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 831
    const-string v0, "Game_UI_Box_WpnCost.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    .line 832
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 833
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x43c80000    # 400.0f

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 835
    const-string v0, ""

    const-string v1, "UI/New_Num_x_10x15.png"

    const/16 v2, 0xa

    const/16 v3, 0xf

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 836
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 837
    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->updateWpnCostNodes()V

    .line 838
    return-void
.end method

.method private setZombieLoader()V
    .locals 5

    .prologue
    .line 860
    invoke-static {}, Lcom/sns/game/object/CJGameZombieLoader;->sharedLoader()Lcom/sns/game/object/CJGameZombieLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    .line 861
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/sns/game/object/CJGameZombieLoader;->createSelf(Lorg/cocos2d/nodes/CCNode;I)V

    .line 862
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    const/4 v1, 0x0

    const/high16 v2, 0x44480000    # 800.0f

    const/high16 v3, 0x42960000    # 75.0f

    const/high16 v4, 0x439f0000    # 318.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sns/game/object/CJGameZombieLoader;->setLimitPos(FFFF)V

    .line 863
    return-void
.end method

.method private showRewardDialog()V
    .locals 4

    .prologue
    .line 925
    iget-object v3, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    invoke-virtual {v3}, Lcom/sns/game/object/CJGameZombieLoader;->getDestroyNum()I

    move-result v0

    .line 926
    .local v0, "count":I
    iget-object v3, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    invoke-virtual {v3}, Lcom/sns/game/object/CJGameZombieLoader;->getRewardScore()I

    move-result v2

    .line 927
    .local v2, "score":I
    invoke-static {p0, v2, v0}, Lcom/sns/game/ui/CJRewardDialog;->sharedDialog(Lorg/cocos2d/layers/CCLayer;II)Lcom/sns/game/ui/CJRewardDialog;

    move-result-object v1

    .line 928
    .local v1, "dialog":Lcom/sns/game/ui/CJRewardDialog;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->rewardDialogCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sns/game/ui/CJRewardDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 929
    invoke-virtual {v1}, Lcom/sns/game/ui/CJRewardDialog;->show()V

    .line 930
    return-void
.end method


# virtual methods
.method achDialogCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 933
    new-instance v0, Lcom/sns/game/layer/CCCJNewLayer$6;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCCJNewLayer$6;-><init>(Lcom/sns/game/layer/CCCJNewLayer;)V

    return-object v0
.end method

.method public activateLoadZombies()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/CJGameZombieLoader;->startZombiesLoader()V

    .line 867
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/CJGameZombieLoader;->reStartZomobiesLoader()V

    .line 868
    return-void
.end method

.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 258
    const-string v0, "background/Bg_GameMode_CJ.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->addSpriteFramesByJPG(Ljava/lang/String;)Ljava/util/Set;

    .line 259
    const-string v0, "UI/Game_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 260
    const-string v0, "UI/Store_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 261
    return-void
.end method

.method public btnPause_CallBack(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 684
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v3, v0

    .line 685
    .local v3, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 686
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCCJNewLayer;->setIsTouchEnabled(Z)V

    .line 687
    invoke-static {p0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->dialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCInGamePauseDialog;

    move-result-object v1

    .line 688
    .local v1, "dialog":Lcom/sns/game/dialog/CCInGamePauseDialog;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->onPauseCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setShowCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 689
    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->onResumeCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 690
    invoke-virtual {v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .end local v1    # "dialog":Lcom/sns/game/dialog/CCInGamePauseDialog;
    .end local v3    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v2

    .line 695
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnSkill_CallBack(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 661
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 662
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_comeTo()V
    .locals 2

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->activateLoadZombies()V

    .line 159
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->runTimeAction()V

    .line 160
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCCJNewLayer;->setIsTouchEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_timeAction(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 958
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/nodes/CCLabelAtlas;

    move-object v3, v0

    .line 959
    .local v3, "timeAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 960
    .local v2, "time":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 961
    const-string v4, "00"

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 962
    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->stopAllActions()V

    .line 964
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCCJNewLayer;->setIsTouchEnabled(Z)V

    .line 965
    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    invoke-virtual {v4}, Lcom/sns/game/object/CJGameZombieLoader;->stopZombiesLoader()V

    .line 966
    const v4, 0x7ffffffe

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCCJNewLayer;->showMaskOff(I)V

    .line 978
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->showRewardDialog()V

    .line 987
    .end local v2    # "time":I
    .end local v3    # "timeAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    :goto_0
    return-void

    .line 981
    .restart local v2    # "time":I
    .restart local v3    # "timeAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 984
    .end local v2    # "time":I
    .end local v3    # "timeAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    :catch_0
    move-exception v1

    .line 985
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 276
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 279
    .local v1, "touchPoint":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    iget-object v2, v2, Lcom/sns/game/object/GameWeaponLoader;->weaponFireRect:Lorg/cocos2d/types/CGRect;

    .line 278
    invoke-static {v2, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v2, p1, v1}, Lcom/sns/game/object/GameWeaponLoader;->openFire(Landroid/view/MotionEvent;Lorg/cocos2d/types/CGPoint;)V

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCCJNewLayer;->ccTouchedUserWqkItems(Landroid/view/MotionEvent;)Z

    .line 288
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v3, 0x0

    .line 289
    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    .line 286
    invoke-virtual {p0, p1, v2}, Lcom/sns/game/layer/CCCJNewLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 328
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 331
    .local v1, "touchPoint":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    iget-object v2, v2, Lcom/sns/game/object/GameWeaponLoader;->weaponFireRect:Lorg/cocos2d/types/CGRect;

    .line 330
    invoke-static {v2, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v2, p1, v1}, Lcom/sns/game/object/GameWeaponLoader;->openFire(Landroid/view/MotionEvent;Lorg/cocos2d/types/CGPoint;)V

    .line 338
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v3, 0x0

    .line 339
    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    .line 336
    invoke-virtual {p0, p1, v2}, Lcom/sns/game/layer/CCCJNewLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 303
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 306
    .local v1, "touchPoint":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    iget-object v2, v2, Lcom/sns/game/object/GameWeaponLoader;->weaponFireRect:Lorg/cocos2d/types/CGRect;

    .line 305
    invoke-static {v2, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v2, p1, v1}, Lcom/sns/game/object/GameWeaponLoader;->openFire(Landroid/view/MotionEvent;Lorg/cocos2d/types/CGPoint;)V

    .line 313
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v3, 0x0

    .line 314
    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    .line 311
    invoke-virtual {p0, p1, v2}, Lcom/sns/game/layer/CCCJNewLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public closeMaskOff()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 888
    :cond_0
    return-void
.end method

.method protected createSelf()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setBackground()V

    .line 105
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setMaskOff()V

    .line 106
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setTime()V

    .line 107
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setUserGoldBox()V

    .line 108
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setGameStars()V

    .line 109
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setUserWqkItems()V

    .line 110
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setBtnSkill()V

    .line 111
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setBtnPause()V

    .line 113
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setBubbleLoader()V

    .line 114
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setWeaponLoader()V

    .line 115
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setZombieLoader()V

    .line 116
    return-void
.end method

.method public depthPauseSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 716
    if-nez p1, :cond_1

    .line 728
    :cond_0
    return-void

    .line 719
    :cond_1
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 722
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 723
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 724
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->pauseSchedulerAndActions()V

    .line 725
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 726
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->depthPauseSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    goto :goto_0
.end method

.method public depthResumeSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 738
    if-nez p1, :cond_1

    .line 750
    :cond_0
    return-void

    .line 741
    :cond_1
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 744
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 745
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 746
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->resumeSchedulerAndActions()V

    .line 747
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 748
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->depthResumeSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    goto :goto_0
.end method

.method public getDropUserGoldPos()Lorg/cocos2d/types/CGPoint;
    .locals 2

    .prologue
    .line 453
    const/high16 v0, 0x41ec0000    # 29.5f

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 992
    const-string v0, "\u4e3b\u6e38\u620f_\u5f69\u91d1\u6a21\u5f0f"

    return-object v0
.end method

.method public getWqkHltSp()Lorg/cocos2d/nodes/CCSprite;
    .locals 2

    .prologue
    .line 637
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    if-nez v1, :cond_0

    .line 638
    const-string v0, "Game_UI_Box_Weapon_Selected.png"

    .line 639
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    .line 641
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    return-object v1
.end method

.method public getZombieLoader()Lcom/sns/game/object/CJGameZombieLoader;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    return-object v0
.end method

.method protected isLongTimeToLoad()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateFinishCall()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/sns/game/ui/CCGameLayer;->onCreateFinishCall()V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->setIsTouchEnabled(Z)V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->playLayerMusic(Z)V

    .line 124
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->runComeTo()V

    .line 125
    return-void
.end method

.method protected onCreateLoadingCall()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/sns/game/ui/CCGameLayer;->onCreateLoadingCall()V

    .line 91
    return-void
.end method

.method protected onExitFinishCall()V
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/sns/game/layer/CCCJNewLayer;->mLayer:Lcom/sns/game/layer/CCCJNewLayer;

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/sns/game/layer/CCCJNewLayer;->mLayer:Lcom/sns/game/layer/CCCJNewLayer;

    invoke-virtual {v0}, Lcom/sns/game/layer/CCCJNewLayer;->recycleSelf()V

    .line 268
    const/4 v0, 0x0

    sput-object v0, Lcom/sns/game/layer/CCCJNewLayer;->mLayer:Lcom/sns/game/layer/CCCJNewLayer;

    .line 270
    :cond_0
    return-void
.end method

.method public onGamePause()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 710
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->setGamePause(Z)V

    .line 711
    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->isGamePause()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->setIsTouchEnabled(Z)V

    .line 712
    invoke-virtual {p0, p0}, Lcom/sns/game/layer/CCCJNewLayer;->depthPauseSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    .line 713
    return-void
.end method

.method public onGamePauseWithOut()V
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->isGamePause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->setGamePause(Z)V

    .line 704
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->btnPause_CallBack(Ljava/lang/Object;)V

    .line 706
    :cond_0
    return-void
.end method

.method public onGameResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 732
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->setGamePause(Z)V

    .line 733
    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->isGamePause()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->setIsTouchEnabled(Z)V

    .line 734
    invoke-virtual {p0, p0}, Lcom/sns/game/layer/CCCJNewLayer;->depthResumeSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    .line 735
    return-void

    .line 733
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onPauseCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 774
    new-instance v0, Lcom/sns/game/layer/CCCJNewLayer$4;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCCJNewLayer$4;-><init>(Lcom/sns/game/layer/CCCJNewLayer;)V

    return-object v0
.end method

.method onResumeCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 795
    new-instance v0, Lcom/sns/game/layer/CCCJNewLayer$5;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCCJNewLayer$5;-><init>(Lcom/sns/game/layer/CCCJNewLayer;)V

    return-object v0
.end method

.method onbdgamePauseWithCallBack(Lcom/sns/game/dialog/CCInGamePauseDialog;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "dialog"    # Lcom/sns/game/dialog/CCInGamePauseDialog;

    .prologue
    .line 754
    new-instance v0, Lcom/sns/game/layer/CCCJNewLayer$3;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/layer/CCCJNewLayer$3;-><init>(Lcom/sns/game/layer/CCCJNewLayer;Lcom/sns/game/dialog/CCInGamePauseDialog;)V

    return-object v0
.end method

.method protected preloadSelf()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "background/Bg_GameMode_CJ.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->addSpriteFramesByJPG(Ljava/lang/String;)Ljava/util/Set;

    .line 97
    invoke-direct {p0}, Lcom/sns/game/layer/CCCJNewLayer;->setBackground()V

    .line 98
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCCJNewLayer;->addPreloadNode(Lorg/cocos2d/nodes/CCNode;)V

    .line 99
    return-void
.end method

.method protected recycleSelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    invoke-virtual {v0, v2}, Lcom/sns/game/object/CJGameZombieLoader;->recycleSelf(Z)V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeaponLoader;->recycleSelf()V

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    if-eqz v0, :cond_6

    .line 189
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    invoke-virtual {v0}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->removeSelf()V

    .line 191
    :cond_6
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_7

    .line 192
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 194
    :cond_7
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->userWqkItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 195
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    :cond_8
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_9

    .line 198
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 200
    :cond_9
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_a

    .line 201
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 203
    :cond_a
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_b

    .line 204
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 206
    :cond_b
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->bubbleLoader:Lcom/sns/game/object/BubbleLoader;

    if-eqz v0, :cond_c

    .line 207
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->bubbleLoader:Lcom/sns/game/object/BubbleLoader;

    invoke-virtual {v0, v2}, Lcom/sns/game/object/BubbleLoader;->onExit(Z)V

    .line 209
    :cond_c
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_d

    .line 210
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 212
    :cond_d
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_e

    .line 213
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 215
    :cond_e
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_f

    .line 216
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 219
    :cond_f
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    .line 220
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 221
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 222
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    .line 223
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->zombieLoader:Lcom/sns/game/object/CJGameZombieLoader;

    .line 224
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    .line 225
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    .line 226
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    .line 227
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    .line 228
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->userWqkItems:Ljava/util/ArrayList;

    .line 229
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 230
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    .line 231
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    .line 232
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->bubbleLoader:Lcom/sns/game/object/BubbleLoader;

    .line 233
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    .line 234
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 235
    iput-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    .line 236
    const/4 v0, 0x3

    iput v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->starTotal:I

    .line 237
    iput v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->starCount:I

    .line 239
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->purgeCachedData()V

    .line 240
    return-void
.end method

.method rewardDialogCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 943
    new-instance v0, Lcom/sns/game/layer/CCCJNewLayer$7;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCCJNewLayer$7;-><init>(Lcom/sns/game/layer/CCCJNewLayer;)V

    return-object v0
.end method

.method public varargs sharedCallBack(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 437
    new-instance v0, Lcom/sns/game/layer/CCCJNewLayer$1;

    invoke-direct {v0, p0, p2}, Lcom/sns/game/layer/CCCJNewLayer$1;-><init>(Lcom/sns/game/layer/CCCJNewLayer;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public showMaskOff(I)V
    .locals 2
    .param p1, "zOrder"    # I

    .prologue
    .line 877
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCCJNewLayer;->containsChild(Lorg/cocos2d/nodes/CCNode;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, p1}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, p1}, Lcom/sns/game/layer/CCCJNewLayer;->reorderChild(Lorg/cocos2d/nodes/CCNode;I)V

    goto :goto_0
.end method

.method protected sortChildren()V
    .locals 3

    .prologue
    const/16 v1, 0x64

    const/16 v2, 0x2710

    .line 245
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 247
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 249
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 250
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v2, v0}, Lcom/sns/game/layer/CCCJNewLayer;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 251
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, v2}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 252
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v2}, Lcom/sns/game/layer/CCCJNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 253
    return-void
.end method

.method public targetUserWqkItem_CallBack(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 580
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    move-object v2, v0

    .line 581
    .local v2, "target":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    iget-object v3, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v2}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWqkItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/object/GameWeaponLoader;->switchWeapon(I)V

    .line 582
    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->updateWpnCostNodes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v2    # "target":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v1

    .line 585
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateUserGold(IZ)V
    .locals 4
    .param p1, "gold"    # I
    .param p2, "isRealTimeUpdate"    # Z

    .prologue
    .line 406
    :try_start_0
    sget-object v1, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v1, p1}, Lcom/sns/game/database/bean/UserData;->modifyGold(I)V

    .line 408
    if-lez p1, :cond_1

    sget-object v1, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserData;->modifyGet_total_gold(I)V

    .line 410
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCCJNewLayer;->updateUserGoldCounter(I)V

    .line 411
    if-eqz p2, :cond_0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update data to [userdata] is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/sns/game/database/dao/UserDataDao;->sharedDao()Lcom/sns/game/database/dao/UserDataDao;

    move-result-object v2

    sget-object v3, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v2, v3}, Lcom/sns/game/database/dao/UserDataDao;->updateUserGold(Lcom/sns/game/database/bean/UserData;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 419
    :cond_0
    :goto_1
    return-void

    .line 409
    :cond_1
    sget-object v1, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserData;->modifyCost_total_gold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public updateUserGoldCounter(I)V
    .locals 5
    .param p1, "gold"    # I

    .prologue
    const/4 v1, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 379
    if-lez p1, :cond_2

    move v0, v1

    .line 380
    .local v0, "isAdd":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCCJNewLayer;->runAddUserGoldNumAcion(I)V

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    invoke-virtual {v2, v3, v3}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->setAnchorPoint(FF)V

    .line 385
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    const/high16 v3, 0x42880000    # 68.0f

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->setPosition(FF)V

    .line 386
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    sget-object v3, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->updateNumbers(IZ)V

    .line 388
    :cond_1
    return-void

    .line 379
    .end local v0    # "isAdd":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateUserGold_CallBack(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 424
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 425
    .local v1, "data":[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 426
    .local v3, "gold":I
    const/4 v5, 0x1

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 427
    .local v4, "isRealTimeUpdate":Z
    invoke-virtual {p0, v3, v4}, Lcom/sns/game/layer/CCCJNewLayer;->updateUserGold(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v1    # "data":[Ljava/lang/Object;
    .end local v3    # "gold":I
    .end local v4    # "isRealTimeUpdate":Z
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateUserWqkItems()V
    .locals 15

    .prologue
    .line 538
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v7

    .line 541
    .local v7, "useLevel":I
    :try_start_0
    iget-object v12, p0, Lcom/sns/game/layer/CCCJNewLayer;->userWqkItems:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/sns/game/layer/CCCJNewLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sns/game/database/dao/UserWeaponDao;->findUserWeaponList()Ljava/util/List;

    move-result-object v9

    .line 545
    .local v9, "uwBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 547
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 548
    .local v0, "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 552
    iget-object v12, p0, Lcom/sns/game/layer/CCCJNewLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 553
    .local v11, "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v10

    .line 554
    .local v10, "wpnBean":Lcom/sns/game/database/bean/WeaponBean;
    invoke-virtual {v10}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 556
    invoke-virtual {v10}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sns/game/database/bean/UserWeaponBean;

    .line 557
    .local v8, "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v8}, Lcom/sns/game/database/bean/UserWeaponBean;->getNow_use()I

    move-result v6

    .line 558
    .local v6, "nowUse":I
    invoke-virtual {v8}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v2

    .line 559
    .local v2, "holdNum":I
    const/4 v12, 0x1

    if-ne v6, v12, :cond_5

    const/4 v4, 0x1

    .line 560
    .local v4, "isUse":Z
    :goto_3
    invoke-virtual {v10, v7}, Lcom/sns/game/database/bean/WeaponBean;->isLvLimit(I)Z

    move-result v3

    .line 561
    .local v3, "isLvLmt":Z
    invoke-virtual {v10}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v12

    const/16 v14, 0x271f

    if-ne v12, v14, :cond_6

    const/4 v5, 0x1

    .line 562
    .local v5, "isWdp":Z
    :goto_4
    if-eqz v3, :cond_7

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setIsEnabled(Z)V

    .line 563
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sns/game/layer/CCCJNewLayer;->getWqkHltSp()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->addHltImage(Lorg/cocos2d/nodes/CCSprite;)V

    .line 564
    :cond_3
    if-nez v5, :cond_2

    invoke-virtual {v11, v2}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->updateWqkCountAtlas(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 572
    .end local v0    # "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .end local v2    # "holdNum":I
    .end local v3    # "isLvLmt":Z
    .end local v4    # "isUse":Z
    .end local v5    # "isWdp":Z
    .end local v6    # "nowUse":I
    .end local v8    # "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .end local v9    # "uwBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .end local v10    # "wpnBean":Lcom/sns/game/database/bean/WeaponBean;
    .end local v11    # "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :catch_0
    move-exception v1

    .line 573
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 548
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .restart local v9    # "uwBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    :cond_4
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sns/game/database/bean/UserWeaponBean;

    .line 549
    .restart local v8    # "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v8}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 559
    .restart local v2    # "holdNum":I
    .restart local v6    # "nowUse":I
    .restart local v10    # "wpnBean":Lcom/sns/game/database/bean/WeaponBean;
    .restart local v11    # "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 561
    .restart local v3    # "isLvLmt":Z
    .restart local v4    # "isUse":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 562
    .restart local v5    # "isWdp":Z
    :cond_7
    const/4 v12, 0x1

    goto :goto_5

    .line 567
    .end local v2    # "holdNum":I
    .end local v3    # "isLvLmt":Z
    .end local v4    # "isUse":Z
    .end local v5    # "isWdp":Z
    .end local v6    # "nowUse":I
    .end local v8    # "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setIsEnabled(Z)V

    .line 568
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->updateWqkCountAtlas(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public updateWpnCostNodes()V
    .locals 5

    .prologue
    .line 842
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    .line 843
    invoke-virtual {v2}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getCostMoney()I

    move-result v0

    .line 844
    .local v0, "cost":I
    const/4 v0, 0x0

    .line 845
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 846
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v3, 0x42bc0000    # 94.0f

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 847
    iget-object v2, p0, Lcom/sns/game/layer/CCCJNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    .end local v0    # "cost":I
    :goto_0
    return-void

    .line 848
    :catch_0
    move-exception v1

    .line 849
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
