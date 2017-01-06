.class public Lcom/sns/game/layer/CCSHNewLayer;
.super Lcom/sns/game/ui/CCGameLayer;
.source "CCSHNewLayer.java"


# static fields
.field private static mLayer:Lcom/sns/game/layer/CCSHNewLayer;


# instance fields
.field private background:Lorg/cocos2d/nodes/CCSprite;

.field private btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private flowerLoader:Lcom/sns/game/object/FlowerCreater;

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

.field private zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameLayer;-><init>()V

    .line 455
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/cocos2d/nodes/CCSprite;

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    .line 457
    const/4 v0, 0x3

    iput v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->starTotal:I

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->userWqkItems:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/layer/CCSHNewLayer;)V
    .locals 0

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->showRewardDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/sns/game/layer/CCSHNewLayer;Lorg/cocos2d/layers/CCLayer;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCSHNewLayer;->ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V

    return-void
.end method

.method private activateLoadZombies()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/sns/game/object/SHGameZombieLoader;->startLoader(F)V

    .line 848
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
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->userWqkItems:Ljava/util/ArrayList;

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
    .line 506
    invoke-static {}, Lcom/sns/game/database/dao/StoreItemDao;->sharedDao()Lcom/sns/game/database/dao/StoreItemDao;

    move-result-object v0

    .line 507
    .local v0, "dao":Lcom/sns/game/database/dao/StoreItemDao;
    invoke-virtual {v0}, Lcom/sns/game/database/dao/StoreItemDao;->findAllWqkItemBeans()Ljava/util/List;

    move-result-object v6

    .line 509
    .local v6, "simBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    const/4 v2, 0x0

    .line 510
    .local v2, "index":I
    const v10, 0x43fe8000    # 509.0f

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v10, v11}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    .line 511
    .local v7, "startPos":Lorg/cocos2d/types/CGPoint;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 530
    return-void

    .line 511
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sns/game/database/bean/StoreItemBean;

    .line 512
    .local v5, "simBean":Lcom/sns/game/database/bean/StoreItemBean;
    invoke-virtual {v5}, Lcom/sns/game/database/bean/StoreItemBean;->getId()I

    move-result v1

    .line 513
    .local v1, "id":I
    const/16 v11, 0x271f

    if-ne v1, v11, :cond_2

    const/4 v3, 0x1

    .line 514
    .local v3, "isWDP":Z
    :goto_1
    invoke-virtual {v5}, Lcom/sns/game/database/bean/StoreItemBean;->getItem_icon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v9

    .line 515
    .local v9, "wqkSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v11, "Game_UI_Box_Weapon_Unselect.png"

    invoke-virtual {p0, v11}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    .line 516
    .local v4, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v11, "targetUserWqkItem_CallBack"

    invoke-static {v4, p0, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->ccsdWqkItem(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    move-result-object v8

    .line 517
    .local v8, "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v8, v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setWqkItemId(I)V

    .line 518
    invoke-virtual {v8, v5}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setStoreItemBean(Lcom/sns/game/database/bean/StoreItemBean;)V

    .line 519
    invoke-static {}, Lcom/sns/game/database/dao/WeaponDao;->sharedDao()Lcom/sns/game/database/dao/WeaponDao;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/sns/game/database/dao/WeaponDao;->cacheGet(I)Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setWeaponBean(Lcom/sns/game/database/bean/WeaponBean;)V

    .line 520
    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v8, v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setAnchorPoint(FF)V

    .line 521
    iget v11, v7, Lorg/cocos2d/types/CGPoint;->x:F

    const/high16 v12, 0x424c0000    # 51.0f

    int-to-float v13, v2

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iget v12, v7, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v8, v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setPosition(FF)V

    .line 522
    const/16 v11, 0x113

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setPlaySoundEffect(I)V

    .line 523
    invoke-virtual {v8, v9}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setWqkImage(Lorg/cocos2d/nodes/CCSprite;)V

    .line 524
    if-eqz v3, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->updateWqkCountAtlas(Z)V

    .line 525
    :cond_1
    invoke-direct {p0, v8}, Lcom/sns/game/layer/CCSHNewLayer;->createWqkSdLglHandle(Lorg/cocos2d/menus/CCMenuItemSprite;)Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setSelectedLogicalHandle(Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;)V

    .line 526
    invoke-virtual {p0, v8, p1}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 527
    iget-object v11, p0, Lcom/sns/game/layer/CCSHNewLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
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
    new-instance v0, Lcom/sns/game/layer/CCSHNewLayer$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/layer/CCSHNewLayer$2;-><init>(Lcom/sns/game/layer/CCSHNewLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-object v0
.end method

.method public static layer()Lcom/sns/game/layer/CCSHNewLayer;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sns/game/layer/CCSHNewLayer;->mLayer:Lcom/sns/game/layer/CCSHNewLayer;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/sns/game/layer/CCSHNewLayer;

    invoke-direct {v0}, Lcom/sns/game/layer/CCSHNewLayer;-><init>()V

    sput-object v0, Lcom/sns/game/layer/CCSHNewLayer;->mLayer:Lcom/sns/game/layer/CCSHNewLayer;

    .line 68
    :cond_0
    sget-object v0, Lcom/sns/game/layer/CCSHNewLayer;->mLayer:Lcom/sns/game/layer/CCSHNewLayer;

    return-object v0
.end method

.method public static oneSelf()Lcom/sns/game/layer/CCSHNewLayer;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/sns/game/layer/CCSHNewLayer;->mLayer:Lcom/sns/game/layer/CCSHNewLayer;

    return-object v0
.end method

.method private runAddUserGoldNumAcion(I)V
    .locals 13
    .param p1, "gold"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    .line 388
    iget-object v5, p0, Lcom/sns/game/layer/CCSHNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 389
    .local v3, "pos":Lorg/cocos2d/types/CGPoint;
    const-string v5, ""

    const-string v6, "UI/New_Num_x_20x39.png"

    const/16 v7, 0x14

    const/16 v8, 0x27

    const/16 v9, 0x30

    invoke-static {v5, v6, v7, v8, v9}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v2

    .line 390
    .local v2, "jumpGoldAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {v2, v10, v10}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 391
    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 393
    const v5, 0x7fffffff

    invoke-virtual {p0, v2, v5}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 395
    const/high16 v5, 0x3f400000    # 0.75f

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v0

    .line 396
    .local v0, "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    const/4 v5, 0x0

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    const/high16 v6, -0x3db80000    # -50.0f

    invoke-static {v10, v5, v6, v11}, Lorg/cocos2d/actions/interval/CCJumpBy;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v1

    .line 397
    .local v1, "jumpBy":Lorg/cocos2d/actions/interval/CCJumpBy;
    new-array v5, v11, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {v1}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v0, v5}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v4

    .line 398
    .local v4, "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    new-array v5, v11, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {}, Lcom/sns/game/actions/CCRemove;->action()Lcom/sns/game/actions/CCRemove;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 399
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

    .line 127
    const-string v2, "effect/effect_6.plist"

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCSHNewLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 129
    const-string v2, "effect_cometo_sh.png"

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 130
    .local v0, "comeTo":Lorg/cocos2d/nodes/CCSprite;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 131
    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 132
    const/high16 v2, 0x439b0000    # 310.0f

    invoke-virtual {v0, v6, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 133
    const v2, 0x7fffffff

    invoke-virtual {p0, v0, v2}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 135
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/types/ccColor3B;->ccBLACK:Lorg/cocos2d/types/ccColor3B;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/util/CCUtil;->asMaskOffSprite(Lorg/cocos2d/types/ccColor3B;F)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 136
    .local v1, "maskOff":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 137
    const/high16 v2, 0x43700000    # 240.0f

    invoke-virtual {v1, v6, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 138
    const v2, 0x7ffffffe

    invoke-virtual {p0, v1, v2}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 142
    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 143
    invoke-static {v7, v5}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x1

    invoke-static {v7, v8}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 144
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

    .line 145
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

    .line 146
    const/high16 v5, 0x40200000    # 2.5f

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 147
    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/cocos2d/nodes/CCNode;

    .line 148
    aput-object v0, v5, v9

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v5}, Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;->action([Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    .line 149
    const-string v5, "callBack_selector_comeTo"

    invoke-static {p0, v5}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v5

    aput-object v5, v3, v4

    .line 141
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 152
    return-void
.end method

.method private runTimeAction()V
    .locals 6

    .prologue
    .line 891
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 893
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 894
    const-string v4, "callBack_selector_timeAction"

    iget-object v5, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v2, v3

    .line 892
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 891
    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 895
    return-void
.end method

.method private setBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    const-string v0, "Bg_GameMode_SH_Frame.jpg"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    .line 351
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 352
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 353
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 354
    return-void
.end method

.method private setBtnPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 650
    const-string v1, "Game_UI_Btn_Pause.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 651
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnPause_CallBack"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 652
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v2, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 653
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x443e4000    # 761.0f

    const v3, 0x43e08000    # 449.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 654
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 655
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 656
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 657
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 658
    return-void
.end method

.method private setBtnSkill()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 626
    const-string v2, "Game_UI_Btn_Skill_Enabled.png"

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 627
    .local v1, "nromalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v2, "Game_UI_Btn_Skill_Disabled.png"

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 628
    .local v0, "disabledSp":Lorg/cocos2d/nodes/CCSprite;
    const/4 v2, 0x0

    const-string v3, "btnSkill_CallBack"

    invoke-static {v1, v2, v0, p0, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 629
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 630
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v2, v4, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 631
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v3, 0x443e4000    # 761.0f

    const/high16 v4, 0x42c00000    # 96.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 632
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 633
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 634
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 635
    return-void
.end method

.method private setFlowerLoader()V
    .locals 1

    .prologue
    .line 788
    invoke-static {}, Lcom/sns/game/object/FlowerCreater;->sharedCreater()Lcom/sns/game/object/FlowerCreater;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->flowerLoader:Lcom/sns/game/object/FlowerCreater;

    .line 789
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->flowerLoader:Lcom/sns/game/object/FlowerCreater;

    invoke-virtual {v0, p0}, Lcom/sns/game/object/FlowerCreater;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 790
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->flowerLoader:Lcom/sns/game/object/FlowerCreater;

    invoke-virtual {v0}, Lcom/sns/game/object/FlowerCreater;->createSelf()V

    .line 791
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->flowerLoader:Lcom/sns/game/object/FlowerCreater;

    invoke-virtual {v0}, Lcom/sns/game/object/FlowerCreater;->loadFlowers()V

    .line 792
    return-void
.end method

.method private setGameStars()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/high16 v14, 0x3f000000    # 0.5f

    .line 460
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v9

    .line 461
    .local v9, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v9}, Lcom/sns/game/database/bean/UserState;->getGameStarCount()I

    move-result v10

    iput v10, p0, Lcom/sns/game/layer/CCSHNewLayer;->starCount:I

    .line 462
    iget v10, p0, Lcom/sns/game/layer/CCSHNewLayer;->starCount:I

    iget v12, p0, Lcom/sns/game/layer/CCSHNewLayer;->starTotal:I

    if-ne v10, v12, :cond_0

    .line 463
    iput v11, p0, Lcom/sns/game/layer/CCSHNewLayer;->starCount:I

    .line 464
    invoke-virtual {v9, v11}, Lcom/sns/game/database/bean/UserState;->setGameStarCount(I)V

    .line 467
    :cond_0
    const-string v10, "Game_UI_Box_GameStar.png"

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v10

    iput-object v10, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    .line 468
    iget-object v10, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v10, v14, v14}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 469
    iget-object v10, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v12, 0x42f20000    # 121.0f

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-virtual {v10, v12, v13}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 471
    const/high16 v1, 0x42aa0000    # 85.0f

    .line 472
    .local v1, "beginPosX":F
    const/high16 v2, 0x42a00000    # 80.0f

    .line 473
    .local v2, "beginPosY":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v10, p0, Lcom/sns/game/layer/CCSHNewLayer;->starTotal:I

    if-lt v4, v10, :cond_1

    .line 493
    return-void

    .line 475
    :cond_1
    mul-int/lit8 v5, v4, 0x2

    .line 476
    .local v5, "indexEnd":I
    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v6, v10, 0x1

    .line 477
    .local v6, "indexTop":I
    invoke-static {v14, v14}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 478
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    mul-int/lit8 v10, v4, 0x23

    int-to-float v10, v10

    add-float/2addr v10, v1

    invoke-static {v10, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    .line 480
    .local v7, "starPos":Lorg/cocos2d/types/CGPoint;
    const-string v10, "Game_UI_Img_Star_End.png"

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    .line 481
    .local v3, "endStarSp":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v3, v0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 482
    invoke-virtual {v3, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 484
    const-string v10, "Game_UI_Img_Star.png"

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    .line 485
    .local v8, "topStarSp":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v8, v0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 486
    invoke-virtual {v8, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 487
    invoke-virtual {v9}, Lcom/sns/game/database/bean/UserState;->getGameStarCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-gt v4, v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v8, v10}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 489
    iget-object v10, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    aput-object v3, v10, v5

    .line 490
    iget-object v10, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    aput-object v8, v10, v6

    .line 473
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v10, v11

    .line 487
    goto :goto_1
.end method

.method private setMaskOff()V
    .locals 3

    .prologue
    .line 853
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/types/ccColor3B;->ccBLACK:Lorg/cocos2d/types/ccColor3B;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/util/CCUtil;->asMaskOffSprite(Lorg/cocos2d/types/ccColor3B;F)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    .line 854
    return-void
.end method

.method private setTime()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 875
    const-string v0, "Game_UI_Box_TimeMode.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    .line 876
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 877
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x43c80000    # 400.0f

    const/high16 v2, 0x43e10000    # 450.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 880
    const-string v0, ""

    const-string v1, "UI/New_Num_x_16x22.png"

    const/16 v2, 0x10

    const/16 v3, 0x16

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 881
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 883
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 884
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v1

    mul-float/2addr v1, v5

    .line 885
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v2

    mul-float/2addr v2, v5

    .line 883
    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 886
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 888
    return-void
.end method

.method private setUserGoldBox()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 361
    const-string v0, "Game_UI_Box_Gold.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    .line 362
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 363
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x42f00000    # 120.0f

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 365
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setUserGoldCounter()V

    .line 367
    return-void
.end method

.method private setUserGoldCounter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    invoke-static {}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->create()Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    .line 371
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 372
    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCSHNewLayer;->updateUserGoldCounter(I)V

    .line 373
    return-void
.end method

.method private setUserWqkItems()V
    .locals 1

    .prologue
    .line 500
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->createUserWqkItems(I)V

    .line 501
    invoke-virtual {p0}, Lcom/sns/game/layer/CCSHNewLayer;->updateUserWqkItems()V

    .line 502
    return-void
.end method

.method private setWeaponLoader()V
    .locals 2

    .prologue
    .line 799
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    .line 800
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v0, p0}, Lcom/sns/game/object/GameWeaponLoader;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 801
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/sns/game/object/GameWeaponLoader;->setZorder(I)V

    .line 802
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {p0}, Lcom/sns/game/layer/CCSHNewLayer;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/object/GameWeaponLoader;->setCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V

    .line 803
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeaponLoader;->setUseWeapon()V

    .line 804
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    const/16 v1, 0x271f

    invoke-virtual {v0, v1}, Lcom/sns/game/object/GameWeaponLoader;->switchWeapon(I)V

    .line 806
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setWpnCostNodes()V

    .line 807
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 809
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setUserWqkItems()V

    .line 810
    return-void
.end method

.method private setWpnCostNodes()V
    .locals 5

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 813
    const-string v0, "Game_UI_Box_WpnCost.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    .line 814
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 815
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x43c80000    # 400.0f

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 817
    const-string v0, ""

    const-string v1, "UI/New_Num_x_10x15.png"

    const/16 v2, 0xa

    const/16 v3, 0xf

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 818
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 819
    invoke-virtual {p0}, Lcom/sns/game/layer/CCSHNewLayer;->updateWpnCostNodes()V

    .line 820
    return-void
.end method

.method private setZombieLoader()V
    .locals 2

    .prologue
    .line 842
    invoke-static {}, Lcom/sns/game/object/SHGameZombieLoader;->sharedLoader()Lcom/sns/game/object/SHGameZombieLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;

    .line 843
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/sns/game/object/SHGameZombieLoader;->creatSelf(Lorg/cocos2d/nodes/CCNode;I)V

    .line 844
    return-void
.end method

.method private showRewardDialog()V
    .locals 4

    .prologue
    .line 905
    iget-object v3, p0, Lcom/sns/game/layer/CCSHNewLayer;->flowerLoader:Lcom/sns/game/object/FlowerCreater;

    invoke-virtual {v3}, Lcom/sns/game/object/FlowerCreater;->getFlowerCount()I

    move-result v0

    .line 906
    .local v0, "count":I
    iget-object v3, p0, Lcom/sns/game/layer/CCSHNewLayer;->flowerLoader:Lcom/sns/game/object/FlowerCreater;

    invoke-virtual {v3}, Lcom/sns/game/object/FlowerCreater;->getFlowerCount()I

    move-result v3

    mul-int/lit8 v2, v3, 0x64

    .line 907
    .local v2, "score":I
    invoke-static {p0, v2, v0}, Lcom/sns/game/ui/SHRewardDialog;->sharedDialog(Lorg/cocos2d/layers/CCLayer;II)Lcom/sns/game/ui/SHRewardDialog;

    move-result-object v1

    .line 908
    .local v1, "dialog":Lcom/sns/game/ui/SHRewardDialog;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCSHNewLayer;->rewardDialogCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sns/game/ui/SHRewardDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 909
    invoke-virtual {v1}, Lcom/sns/game/ui/SHRewardDialog;->show()V

    .line 910
    return-void
.end method


# virtual methods
.method achDialogCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 913
    new-instance v0, Lcom/sns/game/layer/CCSHNewLayer$6;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCSHNewLayer$6;-><init>(Lcom/sns/game/layer/CCSHNewLayer;)V

    return-object v0
.end method

.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 255
    const-string v0, "background/Bg_GameMode_SH.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->addSpriteFramesByJPG(Ljava/lang/String;)Ljava/util/Set;

    .line 256
    const-string v0, "UI/Game_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 257
    const-string v0, "UI/Store_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 258
    return-void
.end method

.method public btnPause_CallBack(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 663
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v3, v0

    .line 664
    .local v3, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 665
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCSHNewLayer;->setIsTouchEnabled(Z)V

    .line 666
    invoke-static {p0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->dialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCInGamePauseDialog;

    move-result-object v1

    .line 667
    .local v1, "dialog":Lcom/sns/game/dialog/CCInGamePauseDialog;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCSHNewLayer;->onPauseCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setShowCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 668
    invoke-virtual {p0}, Lcom/sns/game/layer/CCSHNewLayer;->onResumeCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 669
    invoke-virtual {v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v1    # "dialog":Lcom/sns/game/dialog/CCInGamePauseDialog;
    .end local v3    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v2

    .line 674
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnSkill_CallBack(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 640
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 641
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v1

    .line 643
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_comeTo()V
    .locals 2

    .prologue
    .line 157
    :try_start_0
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->activateLoadZombies()V

    .line 158
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->runTimeAction()V

    .line 159
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCSHNewLayer;->setIsTouchEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_timeAction(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 938
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/nodes/CCLabelAtlas;

    move-object v3, v0

    .line 939
    .local v3, "timeAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 940
    .local v2, "time":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/sns/game/layer/CCSHNewLayer;->flowerLoader:Lcom/sns/game/object/FlowerCreater;

    invoke-virtual {v4}, Lcom/sns/game/object/FlowerCreater;->isStolenAll()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 941
    :cond_0
    const-string v4, "00"

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 942
    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->stopAllActions()V

    .line 943
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCSHNewLayer;->setIsTouchEnabled(Z)V

    .line 945
    iget-object v4, p0, Lcom/sns/game/layer/CCSHNewLayer;->zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;

    invoke-virtual {v4}, Lcom/sns/game/object/SHGameZombieLoader;->stopLoader()V

    .line 946
    const v4, 0x7ffffffe

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCSHNewLayer;->showMaskOff(I)V

    .line 957
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->showRewardDialog()V

    .line 966
    .end local v2    # "time":I
    .end local v3    # "timeAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    :goto_0
    return-void

    .line 960
    .restart local v2    # "time":I
    .restart local v3    # "timeAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 963
    .end local v2    # "time":I
    .end local v3    # "timeAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    :catch_0
    move-exception v1

    .line 964
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 273
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 276
    .local v1, "touchPoint":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    iget-object v2, v2, Lcom/sns/game/object/GameWeaponLoader;->weaponFireRect:Lorg/cocos2d/types/CGRect;

    .line 275
    invoke-static {v2, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v2, p1, v1}, Lcom/sns/game/object/GameWeaponLoader;->openFire(Landroid/view/MotionEvent;Lorg/cocos2d/types/CGPoint;)V

    .line 281
    :cond_0
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCSHNewLayer;->ccTouchedUserWqkItems(Landroid/view/MotionEvent;)Z

    .line 285
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v3, 0x0

    .line 286
    iget-object v4, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    .line 283
    invoke-virtual {p0, p1, v2}, Lcom/sns/game/layer/CCSHNewLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 325
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 328
    .local v1, "touchPoint":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    iget-object v2, v2, Lcom/sns/game/object/GameWeaponLoader;->weaponFireRect:Lorg/cocos2d/types/CGRect;

    .line 327
    invoke-static {v2, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v2, p1, v1}, Lcom/sns/game/object/GameWeaponLoader;->openFire(Landroid/view/MotionEvent;Lorg/cocos2d/types/CGPoint;)V

    .line 335
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v3, 0x0

    .line 336
    iget-object v4, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    .line 333
    invoke-virtual {p0, p1, v2}, Lcom/sns/game/layer/CCSHNewLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 300
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 303
    .local v1, "touchPoint":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    iget-object v2, v2, Lcom/sns/game/object/GameWeaponLoader;->weaponFireRect:Lorg/cocos2d/types/CGRect;

    .line 302
    invoke-static {v2, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v2, p1, v1}, Lcom/sns/game/object/GameWeaponLoader;->openFire(Landroid/view/MotionEvent;Lorg/cocos2d/types/CGPoint;)V

    .line 310
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v3, 0x0

    .line 311
    iget-object v4, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    .line 308
    invoke-virtual {p0, p1, v2}, Lcom/sns/game/layer/CCSHNewLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public closeMaskOff()V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 868
    :cond_0
    return-void
.end method

.method protected createSelf()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setBackground()V

    .line 105
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setMaskOff()V

    .line 106
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setTime()V

    .line 107
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setUserGoldBox()V

    .line 108
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setGameStars()V

    .line 109
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setBtnSkill()V

    .line 110
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setBtnPause()V

    .line 112
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setFlowerLoader()V

    .line 113
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setWeaponLoader()V

    .line 114
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setZombieLoader()V

    .line 115
    return-void
.end method

.method public depthPauseSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 695
    if-nez p1, :cond_1

    .line 707
    :cond_0
    return-void

    .line 698
    :cond_1
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 701
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 702
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

    .line 703
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->pauseSchedulerAndActions()V

    .line 704
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 705
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->depthPauseSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    goto :goto_0
.end method

.method public depthResumeSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 717
    if-nez p1, :cond_1

    .line 729
    :cond_0
    return-void

    .line 720
    :cond_1
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 723
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 724
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

    .line 725
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->resumeSchedulerAndActions()V

    .line 726
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 727
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->depthResumeSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    goto :goto_0
.end method

.method public getDropUserGoldPos()Lorg/cocos2d/types/CGPoint;
    .locals 2

    .prologue
    .line 450
    const/high16 v0, 0x41ec0000    # 29.5f

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    const-string v0, "\u4e3b\u6e38\u620f_\u5b88\u62a4\u6a21\u5f0f"

    return-object v0
.end method

.method public getWqkHltSp()Lorg/cocos2d/nodes/CCSprite;
    .locals 2

    .prologue
    .line 616
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    if-nez v1, :cond_0

    .line 617
    const-string v0, "Game_UI_Box_Weapon_Selected.png"

    .line 618
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    .line 620
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    return-object v1
.end method

.method public getZombieLoader()Lcom/sns/game/object/SHGameZombieLoader;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;

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
    .line 120
    invoke-super {p0}, Lcom/sns/game/ui/CCGameLayer;->onCreateFinishCall()V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->setIsTouchEnabled(Z)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->playLayerMusic(Z)V

    .line 123
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->runComeTo()V

    .line 124
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
    .line 263
    sget-object v0, Lcom/sns/game/layer/CCSHNewLayer;->mLayer:Lcom/sns/game/layer/CCSHNewLayer;

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/sns/game/layer/CCSHNewLayer;->mLayer:Lcom/sns/game/layer/CCSHNewLayer;

    invoke-virtual {v0}, Lcom/sns/game/layer/CCSHNewLayer;->recycleSelf()V

    .line 265
    const/4 v0, 0x0

    sput-object v0, Lcom/sns/game/layer/CCSHNewLayer;->mLayer:Lcom/sns/game/layer/CCSHNewLayer;

    .line 267
    :cond_0
    return-void
.end method

.method public onGamePause()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 689
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->setGamePause(Z)V

    .line 690
    invoke-virtual {p0}, Lcom/sns/game/layer/CCSHNewLayer;->isGamePause()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->setIsTouchEnabled(Z)V

    .line 691
    invoke-virtual {p0, p0}, Lcom/sns/game/layer/CCSHNewLayer;->depthPauseSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    .line 692
    return-void
.end method

.method public onGamePauseWithOut()V
    .locals 1

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/sns/game/layer/CCSHNewLayer;->isGamePause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->setGamePause(Z)V

    .line 683
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->btnPause_CallBack(Ljava/lang/Object;)V

    .line 685
    :cond_0
    return-void
.end method

.method public onGameResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 711
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->setGamePause(Z)V

    .line 712
    invoke-virtual {p0}, Lcom/sns/game/layer/CCSHNewLayer;->isGamePause()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->setIsTouchEnabled(Z)V

    .line 713
    invoke-virtual {p0, p0}, Lcom/sns/game/layer/CCSHNewLayer;->depthResumeSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    .line 714
    return-void

    .line 712
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onPauseCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 753
    new-instance v0, Lcom/sns/game/layer/CCSHNewLayer$4;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCSHNewLayer$4;-><init>(Lcom/sns/game/layer/CCSHNewLayer;)V

    return-object v0
.end method

.method onResumeCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 774
    new-instance v0, Lcom/sns/game/layer/CCSHNewLayer$5;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCSHNewLayer$5;-><init>(Lcom/sns/game/layer/CCSHNewLayer;)V

    return-object v0
.end method

.method onbdgamePauseWithCallBack(Lcom/sns/game/dialog/CCInGamePauseDialog;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "dialog"    # Lcom/sns/game/dialog/CCInGamePauseDialog;

    .prologue
    .line 733
    new-instance v0, Lcom/sns/game/layer/CCSHNewLayer$3;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/layer/CCSHNewLayer$3;-><init>(Lcom/sns/game/layer/CCSHNewLayer;Lcom/sns/game/dialog/CCInGamePauseDialog;)V

    return-object v0
.end method

.method protected preloadSelf()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "background/Bg_GameMode_SH.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->addSpriteFramesByJPG(Ljava/lang/String;)Ljava/util/Set;

    .line 97
    invoke-direct {p0}, Lcom/sns/game/layer/CCSHNewLayer;->setBackground()V

    .line 98
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCSHNewLayer;->addPreloadNode(Lorg/cocos2d/nodes/CCNode;)V

    .line 99
    return-void
.end method

.method protected recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/SHGameZombieLoader;->recycleSelf()V

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeaponLoader;->recycleSelf()V

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    if-eqz v0, :cond_6

    .line 188
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    invoke-virtual {v0}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->removeSelf()V

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_7

    .line 191
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->userWqkItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 194
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    :cond_8
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 199
    :cond_9
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_a

    .line 200
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 202
    :cond_a
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_b

    .line 203
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 205
    :cond_b
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_c

    .line 206
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 208
    :cond_c
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_d

    .line 209
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 211
    :cond_d
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_e

    .line 212
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 215
    :cond_e
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    .line 216
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 217
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 218
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    .line 219
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;

    .line 220
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    .line 221
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    .line 222
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    .line 223
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    .line 224
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->userWqkItems:Ljava/util/ArrayList;

    .line 225
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 226
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    .line 227
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    .line 228
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    .line 229
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 230
    iput-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    .line 231
    const/4 v0, 0x3

    iput v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->starTotal:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->starCount:I

    .line 234
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->purgeCachedData()V

    .line 235
    return-void
.end method

.method rewardDialogCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 923
    new-instance v0, Lcom/sns/game/layer/CCSHNewLayer$7;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCSHNewLayer$7;-><init>(Lcom/sns/game/layer/CCSHNewLayer;)V

    return-object v0
.end method

.method public varargs sharedCallBack(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 434
    new-instance v0, Lcom/sns/game/layer/CCSHNewLayer$1;

    invoke-direct {v0, p0, p2}, Lcom/sns/game/layer/CCSHNewLayer$1;-><init>(Lcom/sns/game/layer/CCSHNewLayer;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public showMaskOff(I)V
    .locals 2
    .param p1, "zOrder"    # I

    .prologue
    .line 857
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCSHNewLayer;->containsChild(Lorg/cocos2d/nodes/CCNode;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, p1}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 862
    :goto_0
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, p1}, Lcom/sns/game/layer/CCSHNewLayer;->reorderChild(Lorg/cocos2d/nodes/CCNode;I)V

    goto :goto_0
.end method

.method protected sortChildren()V
    .locals 3

    .prologue
    const/16 v1, 0x64

    const/16 v2, 0x2710

    .line 240
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 242
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 244
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 245
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v2, v0}, Lcom/sns/game/layer/CCSHNewLayer;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 246
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->timeBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, v2}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 247
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v2}, Lcom/sns/game/layer/CCSHNewLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 249
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer;->flowerLoader:Lcom/sns/game/object/FlowerCreater;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/sns/game/object/FlowerCreater;->addFlowersTo(Lorg/cocos2d/nodes/CCNode;I)V

    .line 250
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
    iget-object v3, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v2}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWqkItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/object/GameWeaponLoader;->switchWeapon(I)V

    .line 582
    invoke-virtual {p0}, Lcom/sns/game/layer/CCSHNewLayer;->updateUserWqkItems()V
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
    .line 403
    :try_start_0
    sget-object v1, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v1, p1}, Lcom/sns/game/database/bean/UserData;->modifyGold(I)V

    .line 405
    if-lez p1, :cond_1

    sget-object v1, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserData;->modifyGet_total_gold(I)V

    .line 407
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCSHNewLayer;->updateUserGoldCounter(I)V

    .line 408
    if-eqz p2, :cond_0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update data to [userdata] is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/sns/game/database/dao/UserDataDao;->sharedDao()Lcom/sns/game/database/dao/UserDataDao;

    move-result-object v2

    sget-object v3, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v2, v3}, Lcom/sns/game/database/dao/UserDataDao;->updateUserGold(Lcom/sns/game/database/bean/UserData;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 409
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 416
    :cond_0
    :goto_1
    return-void

    .line 406
    :cond_1
    sget-object v1, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserData;->modifyCost_total_gold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
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

    .line 376
    if-lez p1, :cond_2

    move v0, v1

    .line 377
    .local v0, "isAdd":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCSHNewLayer;->runAddUserGoldNumAcion(I)V

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    if-eqz v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    invoke-virtual {v2, v3, v3}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->setAnchorPoint(FF)V

    .line 382
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    const/high16 v3, 0x42880000    # 68.0f

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->setPosition(FF)V

    .line 383
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    sget-object v3, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->updateNumbers(IZ)V

    .line 385
    :cond_1
    return-void

    .line 376
    .end local v0    # "isAdd":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateUserGold_CallBack(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 421
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 422
    .local v1, "data":[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 423
    .local v3, "gold":I
    const/4 v5, 0x1

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 424
    .local v4, "isRealTimeUpdate":Z
    invoke-virtual {p0, v3, v4}, Lcom/sns/game/layer/CCSHNewLayer;->updateUserGold(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v1    # "data":[Ljava/lang/Object;
    .end local v3    # "gold":I
    .end local v4    # "isRealTimeUpdate":Z
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v2

    .line 427
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateUserWqkItems()V
    .locals 15

    .prologue
    .line 535
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v7

    .line 538
    .local v7, "useLevel":I
    :try_start_0
    iget-object v12, p0, Lcom/sns/game/layer/CCSHNewLayer;->userWqkItems:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/sns/game/layer/CCSHNewLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sns/game/database/dao/UserWeaponDao;->findUserWeaponList()Ljava/util/List;

    move-result-object v9

    .line 542
    .local v9, "uwBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v0, "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 549
    iget-object v12, p0, Lcom/sns/game/layer/CCSHNewLayer;->userWqkItems:Ljava/util/ArrayList;

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

    .line 550
    .local v11, "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v10

    .line 551
    .local v10, "wpnBean":Lcom/sns/game/database/bean/WeaponBean;
    invoke-virtual {v10}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 553
    invoke-virtual {v10}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sns/game/database/bean/UserWeaponBean;

    .line 554
    .local v8, "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v8}, Lcom/sns/game/database/bean/UserWeaponBean;->getNow_use()I

    move-result v6

    .line 555
    .local v6, "nowUse":I
    invoke-virtual {v8}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v2

    .line 556
    .local v2, "holdNum":I
    const/4 v12, 0x1

    if-ne v6, v12, :cond_5

    const/4 v4, 0x1

    .line 557
    .local v4, "isUse":Z
    :goto_3
    invoke-virtual {v10, v7}, Lcom/sns/game/database/bean/WeaponBean;->isLvLimit(I)Z

    move-result v3

    .line 558
    .local v3, "isLvLmt":Z
    invoke-virtual {v10}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v12

    const/16 v14, 0x271f

    if-ne v12, v14, :cond_6

    const/4 v5, 0x1

    .line 559
    .local v5, "isWdp":Z
    :goto_4
    if-eqz v3, :cond_7

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setIsEnabled(Z)V

    .line 560
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sns/game/layer/CCSHNewLayer;->getWqkHltSp()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->addHltImage(Lorg/cocos2d/nodes/CCSprite;)V

    .line 561
    :cond_3
    if-nez v5, :cond_2

    .line 562
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setIsEnabled(Z)V

    .line 563
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

    .line 545
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .restart local v9    # "uwBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    :cond_4
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sns/game/database/bean/UserWeaponBean;

    .line 546
    .restart local v8    # "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v8}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 556
    .restart local v2    # "holdNum":I
    .restart local v6    # "nowUse":I
    .restart local v10    # "wpnBean":Lcom/sns/game/database/bean/WeaponBean;
    .restart local v11    # "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 558
    .restart local v3    # "isLvLmt":Z
    .restart local v4    # "isUse":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 559
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

    goto/16 :goto_2
.end method

.method public updateWpnCostNodes()V
    .locals 5

    .prologue
    .line 824
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    .line 825
    invoke-virtual {v2}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getCostMoney()I

    move-result v0

    .line 826
    .local v0, "cost":I
    const/4 v0, 0x0

    .line 827
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 828
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v3, 0x42bc0000    # 94.0f

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 829
    iget-object v2, p0, Lcom/sns/game/layer/CCSHNewLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    .end local v0    # "cost":I
    :goto_0
    return-void

    .line 830
    :catch_0
    move-exception v1

    .line 831
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
