.class public Lcom/sns/game/layer/CCNewGameLayer;
.super Lcom/sns/game/ui/CCGameLayer;
.source "CCNewGameLayer.java"


# static fields
.field private static mLayer:Lcom/sns/game/layer/CCNewGameLayer;


# instance fields
.field private background:Lorg/cocos2d/nodes/CCSprite;

.field bgIndex:I

.field bgNames:[Ljava/lang/String;

.field private btnAddGold:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnCjms:Lorg/cocos2d/menus/CCMenuItemSprite;

.field public btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnShms:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private gameStarBox:Lorg/cocos2d/nodes/CCSprite;

.field private gameStars:[Lorg/cocos2d/nodes/CCSprite;

.field ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field ggIcon:Lorg/cocos2d/nodes/CCSprite;

.field ggOffLine:Lorg/cocos2d/nodes/CCSprite;

.field private inPauseDialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

.field private jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field private jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

.field private levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field private levelBar:Lorg/cocos2d/nodes/CCSprite;

.field private levelEndBarBox:Lorg/cocos2d/nodes/CCSprite;

.field private loading:Lcom/sns/game/layer/GameLoading;

.field muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

.field muleNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field muleNumFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private rdomSystem:Lcom/sns/game/layer/RandomTaskSystem;

.field starCount:I

.field starTotal:I

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

.field private zombieLoader:Lcom/sns/game/object/GameZombieLoader;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameLayer;-><init>()V

    .line 551
    iput v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->bgIndex:I

    .line 553
    new-array v0, v4, [Ljava/lang/String;

    .line 556
    const-string v1, "background/Bg_GameScene_2.plist"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 557
    const-string v2, "Bg_GameScene_2_Frame.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 559
    const-string v2, "background/Bg_GameScene_Single.plist"

    aput-object v2, v0, v1

    .line 560
    const-string v1, "Bg_GameScene_Single_Frame.jpg"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    .line 562
    const-string v2, "background/Bg_GameScene_1.plist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 563
    const-string v2, "Bg_GameScene_1_Frame.jpg"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->bgNames:[Ljava/lang/String;

    .line 924
    new-array v0, v4, [Lorg/cocos2d/nodes/CCSprite;

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    .line 926
    iput v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->starTotal:I

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    .line 115
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/layer/CCNewGameLayer;)V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->hiddenGameStars()V

    return-void
.end method

.method static synthetic access$1(Lcom/sns/game/layer/CCNewGameLayer;)Lcom/sns/game/object/GameWeaponLoader;
    .locals 1

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sns/game/layer/CCNewGameLayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->notifyToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/sns/game/layer/CCNewGameLayer;)V
    .locals 0

    .prologue
    .line 1434
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->onBtnSkillLogical()V

    return-void
.end method

.method static synthetic access$4(Lcom/sns/game/layer/CCNewGameLayer;)Lcom/sns/game/object/GameZombieLoader;
    .locals 1

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sns/game/layer/CCNewGameLayer;)V
    .locals 0

    .prologue
    .line 1601
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->showWeaponGiftBagDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/sns/game/layer/CCNewGameLayer;)V
    .locals 0

    .prologue
    .line 1903
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->intoCjmsLogical()V

    return-void
.end method

.method static synthetic access$7(Lcom/sns/game/layer/CCNewGameLayer;)V
    .locals 0

    .prologue
    .line 1950
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->intoShmsLogical()V

    return-void
.end method

.method static synthetic access$8(Lcom/sns/game/layer/CCNewGameLayer;)Lorg/cocos2d/menus/CCMenuItemSprite;
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    return-object v0
.end method

.method static synthetic access$9(Lcom/sns/game/layer/CCNewGameLayer;Lcom/sns/game/dialog/CCInGamePauseDialog;)V
    .locals 0

    .prologue
    .line 1999
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer;->inPauseDialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    return-void
.end method

.method private activateLoading()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->loading:Lcom/sns/game/layer/GameLoading;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->loading:Lcom/sns/game/layer/GameLoading;

    invoke-virtual {v0}, Lcom/sns/game/layer/GameLoading;->createSelf()V

    .line 480
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->loading:Lcom/sns/game/layer/GameLoading;

    invoke-virtual {v0}, Lcom/sns/game/layer/GameLoading;->startLoading()V

    .line 482
    :cond_0
    return-void
.end method

.method private createUserWqkItems(I)V
    .locals 14
    .param p1, "z"    # I

    .prologue
    .line 1061
    invoke-static {}, Lcom/sns/game/database/dao/StoreItemDao;->sharedDao()Lcom/sns/game/database/dao/StoreItemDao;

    move-result-object v0

    .line 1062
    .local v0, "dao":Lcom/sns/game/database/dao/StoreItemDao;
    invoke-virtual {v0}, Lcom/sns/game/database/dao/StoreItemDao;->findAllWqkItemBeans()Ljava/util/List;

    move-result-object v6

    .line 1064
    .local v6, "simBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    const/4 v2, 0x0

    .line 1065
    .local v2, "index":I
    const v10, 0x43fe8000    # 509.0f

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v10, v11}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    .line 1066
    .local v7, "startPos":Lorg/cocos2d/types/CGPoint;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1085
    return-void

    .line 1066
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sns/game/database/bean/StoreItemBean;

    .line 1067
    .local v5, "simBean":Lcom/sns/game/database/bean/StoreItemBean;
    invoke-virtual {v5}, Lcom/sns/game/database/bean/StoreItemBean;->getId()I

    move-result v1

    .line 1068
    .local v1, "id":I
    const/16 v11, 0x271f

    if-ne v1, v11, :cond_2

    const/4 v3, 0x1

    .line 1069
    .local v3, "isWDP":Z
    :goto_1
    invoke-virtual {v5}, Lcom/sns/game/database/bean/StoreItemBean;->getItem_icon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v9

    .line 1070
    .local v9, "wqkSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v11, "Game_UI_Box_Weapon_Unselect.png"

    invoke-virtual {p0, v11}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    .line 1071
    .local v4, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v11, "targetUserWqkItem_CallBack"

    invoke-static {v4, p0, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->ccsdWqkItem(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    move-result-object v8

    .line 1072
    .local v8, "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v8, v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setWqkItemId(I)V

    .line 1073
    invoke-virtual {v8, v5}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setStoreItemBean(Lcom/sns/game/database/bean/StoreItemBean;)V

    .line 1074
    invoke-static {}, Lcom/sns/game/database/dao/WeaponDao;->sharedDao()Lcom/sns/game/database/dao/WeaponDao;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/sns/game/database/dao/WeaponDao;->cacheGet(I)Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setWeaponBean(Lcom/sns/game/database/bean/WeaponBean;)V

    .line 1075
    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v8, v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setAnchorPoint(FF)V

    .line 1076
    iget v11, v7, Lorg/cocos2d/types/CGPoint;->x:F

    const/high16 v12, 0x424c0000    # 51.0f

    int-to-float v13, v2

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iget v12, v7, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v8, v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setPosition(FF)V

    .line 1077
    const/16 v11, 0x113

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setPlaySoundEffect(I)V

    .line 1078
    invoke-virtual {v8, v9}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setWqkImage(Lorg/cocos2d/nodes/CCSprite;)V

    .line 1079
    if-eqz v3, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->updateWqkCountAtlas(Z)V

    .line 1080
    :cond_1
    invoke-direct {p0, v8}, Lcom/sns/game/layer/CCNewGameLayer;->createWqkSdLglHandle(Lorg/cocos2d/menus/CCMenuItemSprite;)Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setSelectedLogicalHandle(Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;)V

    .line 1081
    invoke-virtual {p0, v8, p1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 1082
    iget-object v11, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1068
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
    .line 1234
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/layer/CCNewGameLayer$4;-><init>(Lcom/sns/game/layer/CCNewGameLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-object v0
.end method

.method private freezeLoading()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->loading:Lcom/sns/game/layer/GameLoading;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->loading:Lcom/sns/game/layer/GameLoading;

    invoke-virtual {v0}, Lcom/sns/game/layer/GameLoading;->stopLoading()V

    .line 487
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->loading:Lcom/sns/game/layer/GameLoading;

    invoke-virtual {v0}, Lcom/sns/game/layer/GameLoading;->recycleSelf()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->loading:Lcom/sns/game/layer/GameLoading;

    .line 490
    :cond_0
    return-void
.end method

.method private hiddenGameStars()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1013
    iput v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I

    .line 1014
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v3

    iget v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserState;->setGameStarCount(I)V

    .line 1015
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->starTotal:I

    if-lt v0, v3, :cond_0

    .line 1020
    return-void

    .line 1016
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, 0x1

    .line 1017
    .local v1, "indexTop":I
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v2, v3, v1

    .line 1018
    .local v2, "topStarSp":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v2, v5}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 1015
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private intoCjmsLglWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 1911
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$11;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$11;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method private intoCjmsLogical()V
    .locals 2

    .prologue
    .line 1904
    invoke-static {}, Lcom/sns/game/layer/CCCJNewLayer;->layer()Lcom/sns/game/layer/CCCJNewLayer;

    move-result-object v0

    .line 1905
    .local v0, "toLayer":Lcom/sns/game/layer/CCCJNewLayer;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCCJNewLayer;->setUserDoCallPath(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V

    .line 1907
    return-void
.end method

.method private intoShmsLglWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 1958
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$12;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$12;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method private intoShmsLogical()V
    .locals 2

    .prologue
    .line 1951
    invoke-static {}, Lcom/sns/game/layer/CCSHNewLayer;->layer()Lcom/sns/game/layer/CCSHNewLayer;

    move-result-object v0

    .line 1952
    .local v0, "toLayer":Lcom/sns/game/layer/CCSHNewLayer;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCSHNewLayer;->setUserDoCallPath(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V

    .line 1954
    return-void
.end method

.method public static layer()Lcom/sns/game/layer/CCNewGameLayer;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/sns/game/layer/CCNewGameLayer;->mLayer:Lcom/sns/game/layer/CCNewGameLayer;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer;

    invoke-direct {v0}, Lcom/sns/game/layer/CCNewGameLayer;-><init>()V

    sput-object v0, Lcom/sns/game/layer/CCNewGameLayer;->mLayer:Lcom/sns/game/layer/CCNewGameLayer;

    .line 104
    :cond_0
    sget-object v0, Lcom/sns/game/layer/CCNewGameLayer;->mLayer:Lcom/sns/game/layer/CCNewGameLayer;

    return-object v0
.end method

.method private onBtnSkillLglWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 1444
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$5;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$5;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method private onBtnSkillLogical()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1435
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v0

    .line 1436
    .local v0, "systemScene":Lcom/sns/game/database/bean/GameSceneSystem;
    invoke-virtual {v0}, Lcom/sns/game/database/bean/GameSceneSystem;->isCurrFullExp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/sns/game/database/bean/GameSceneSystem;->setCurrSkillExp(I)V

    .line 1437
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 1438
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->stopAllActions()V

    .line 1439
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 1440
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v1

    const/16 v2, 0x50

    invoke-direct {p0, v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->releaseTrampleOn(Lorg/cocos2d/layers/CCLayer;I)V

    .line 1441
    return-void
.end method

.method public static oneSelf()Lcom/sns/game/layer/CCNewGameLayer;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/sns/game/layer/CCNewGameLayer;->mLayer:Lcom/sns/game/layer/CCNewGameLayer;

    return-object v0
.end method

.method private releaseTrampleOn(Lorg/cocos2d/layers/CCLayer;I)V
    .locals 8
    .param p1, "target"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "toZorder"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2528
    const-string v1, "point.png"

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 2529
    .local v0, "actionNode":Lorg/cocos2d/nodes/CCSprite;
    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 2533
    const-string v1, "callBack_selector_killZombie"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v1

    new-array v2, v6, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 2534
    const-string v3, "callBack_selector_trampleOn"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v6

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v7

    .line 2532
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 2531
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 2537
    return-void
.end method

.method private restoreBgbAnimLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 2109
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$15;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/layer/CCNewGameLayer$15;-><init>(Lcom/sns/game/layer/CCNewGameLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-object v0
.end method

.method private restoreTejlibaoAnimLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 2272
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$17;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/layer/CCNewGameLayer$17;-><init>(Lcom/sns/game/layer/CCNewGameLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-object v0
.end method

.method private runAddGoldAction()V
    .locals 6

    .prologue
    .line 702
    iget-object v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v4, :cond_0

    .line 703
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v2

    .line 704
    .local v2, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    const-string v4, "callBack_selector_addGold"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v1

    .line 705
    .local v1, "callFunc":Lorg/cocos2d/actions/instant/CCCallFunc;
    const/4 v4, 0x1

    new-array v4, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    .line 706
    .local v3, "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-static {v3}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v0

    .line 707
    .local v0, "action":Lorg/cocos2d/actions/base/CCRepeatForever;
    iget-object v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 709
    .end local v0    # "action":Lorg/cocos2d/actions/base/CCRepeatForever;
    .end local v1    # "callFunc":Lorg/cocos2d/actions/instant/CCCallFunc;
    .end local v2    # "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    .end local v3    # "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    :cond_0
    return-void
.end method

.method private runAddUserGoldNumAcion(I)V
    .locals 13
    .param p1, "gold"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    .line 618
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 619
    .local v3, "pos":Lorg/cocos2d/types/CGPoint;
    const-string v5, ""

    const-string v6, "UI/New_Num_x_20x39.png"

    const/16 v7, 0x14

    const/16 v8, 0x27

    const/16 v9, 0x30

    invoke-static {v5, v6, v7, v8, v9}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v2

    .line 620
    .local v2, "jumpGoldAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {v2, v10, v10}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 621
    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 622
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 623
    const v5, 0x7fffffff

    invoke-virtual {p0, v2, v5}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 625
    const/high16 v5, 0x3f400000    # 0.75f

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v0

    .line 626
    .local v0, "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    const/4 v5, 0x0

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    const/high16 v6, -0x3db80000    # -50.0f

    invoke-static {v10, v5, v6, v11}, Lorg/cocos2d/actions/interval/CCJumpBy;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v1

    .line 627
    .local v1, "jumpBy":Lorg/cocos2d/actions/interval/CCJumpBy;
    new-array v5, v11, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {v1}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v0, v5}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v4

    .line 628
    .local v4, "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    new-array v5, v11, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {}, Lcom/sns/game/actions/CCRemove;->action()Lcom/sns/game/actions/CCRemove;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 629
    return-void
.end method

.method private setBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 546
    const-string v0, "Bg_GameScene_2_Frame.jpg"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    .line 547
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 548
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 549
    return-void
.end method

.method private setBtnAddGold()V
    .locals 4

    .prologue
    .line 2035
    const-string v0, "UI/addGold.png"

    .line 2036
    .local v0, "name":Ljava/lang/String;
    const-string v1, "btnAddGold_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnAddGold:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 2037
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnAddGold:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x434f8000    # 207.5f

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 2038
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnAddGold:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 2039
    return-void
.end method

.method private setBtnCjms()V
    .locals 4

    .prologue
    .line 1872
    const-string v0, "Game_UI_Btn_Cjms.png"

    .line 1873
    .local v0, "name":Ljava/lang/String;
    const v2, 0x43c88000    # 401.0f

    const/high16 v3, 0x43e00000    # 448.0f

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 1874
    .local v1, "pnt":Lorg/cocos2d/types/CGPoint;
    const-string v2, "btnCjms_CallBack"

    const/4 v3, -0x1

    invoke-static {v0, p0, v2, v1, v3}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnCjms:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 1875
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnCjms:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 1876
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnCjms:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-direct {p0, v2, v0}, Lcom/sns/game/layer/CCNewGameLayer;->updateButtonByMode(Lorg/cocos2d/menus/CCMenuItemSprite;Ljava/lang/String;)V

    .line 1877
    return-void
.end method

.method private setBtnDouble()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    .line 813
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/database/bean/GameSceneSystem;->getSceneTag()Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    move-result-object v3

    .line 814
    .local v3, "sceneTag":Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;
    sget-object v6, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_MORE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    if-ne v3, v6, :cond_1

    move v1, v4

    .line 816
    .local v1, "isDoubleScene":Z
    :goto_0
    const-string v6, "Game_UI_Btn_Double.png"

    invoke-virtual {p0, v6}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .line 817
    .local v2, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v6, "btnDouble_CallBack"

    invoke-static {v2, p0, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v6

    iput-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 818
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v6, v11, v11}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 819
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v7, 0x43900000    # 288.0f

    const/high16 v8, 0x421c0000    # 39.0f

    invoke-virtual {v6, v7, v8}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 820
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v6, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V

    .line 821
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v6, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 822
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v6, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 823
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v6, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 824
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v6, v11}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 825
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v7, 0x112

    invoke-virtual {v6, v7}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 827
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 829
    .local v0, "btnDoubleSize":Lorg/cocos2d/types/CGSize;
    const-string v6, ""

    const-string v7, "UI/New_Num_x_22x21.png"

    const/16 v8, 0x16

    const/16 v9, 0x15

    const/16 v10, 0x30

    invoke-static {v6, v7, v8, v9, v10}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v6

    iput-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 830
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateMuleNumAtlas()V

    .line 831
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    iget-object v7, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v6, v7, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 833
    if-eqz v1, :cond_0

    .line 835
    const-string v5, "effect_3_"

    const-string v6, ".png"

    const/4 v7, 0x6

    invoke-virtual {p0, v5, v6, v4, v7}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrames(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumFrames:Ljava/util/ArrayList;

    .line 836
    const-string v5, "point.png"

    invoke-static {v5}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v5

    iput-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

    .line 837
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5, v11, v11}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 838
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

    iget v6, v0, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v6, v11

    iget v7, v0, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v7, v11

    invoke-virtual {v5, v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 839
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5, v6, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 842
    :cond_0
    return-void

    .end local v0    # "btnDoubleSize":Lorg/cocos2d/types/CGSize;
    .end local v1    # "isDoubleScene":Z
    .end local v2    # "normalSp":Lorg/cocos2d/nodes/CCSprite;
    :cond_1
    move v1, v5

    .line 814
    goto/16 :goto_0
.end method

.method private setBtnGetGod()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1627
    const-string v1, "Game_UI_Btn_TakeGold.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 1628
    .local v0, "normal":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "callBack_selector_getGold"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 1629
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v2, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 1630
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x43640000    # 228.0f

    const/high16 v3, 0x43c90000    # 402.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 1631
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 1632
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setOnlySelectedMode(Z)V

    .line 1633
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 1634
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x111

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 1635
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->onSelectedLogicalHandleByBtnGG()Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSelectedLogicalHandle(Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;)V

    .line 1637
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setGGIcon()V

    .line 1638
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setGGOffline()V

    .line 1639
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setGGAtlas()V

    .line 1641
    return-void
.end method

.method private setBtnGiftBag()V
    .locals 4

    .prologue
    .line 2058
    const-string v0, "GiftBag_UI_Icon.png"

    .line 2059
    .local v0, "name":Ljava/lang/String;
    const-string v1, "btnGiftBag_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 2060
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 2061
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x44395000    # 741.25f

    const/high16 v3, 0x43b90000    # 370.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 2062
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 2063
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->runAnimWithGiftBag()V

    .line 2064
    return-void
.end method

.method private setBtnPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 2002
    const-string v1, "Game_UI_Btn_Pause.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 2003
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnPause_CallBack"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 2004
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v2, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 2005
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x443e4000    # 761.0f

    const v3, 0x43e08000    # 449.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 2006
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 2007
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 2008
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 2009
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 2010
    return-void
.end method

.method private setBtnShms()V
    .locals 4

    .prologue
    .line 1920
    const-string v0, "Game_UI_Btn_Shms.png"

    .line 1921
    .local v0, "name":Ljava/lang/String;
    const v2, 0x4409c000    # 551.0f

    const/high16 v3, 0x43e00000    # 448.0f

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 1922
    .local v1, "pnt":Lorg/cocos2d/types/CGPoint;
    const-string v2, "btnShms_CallBack"

    const/4 v3, -0x1

    invoke-static {v0, p0, v2, v1, v3}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnShms:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 1923
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnShms:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 1924
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnShms:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-direct {p0, v2, v0}, Lcom/sns/game/layer/CCNewGameLayer;->updateButtonByMode(Lorg/cocos2d/menus/CCMenuItemSprite;Ljava/lang/String;)V

    .line 1925
    return-void
.end method

.method private setBtnSkill()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1386
    const-string v2, "Game_UI_Btn_Skill_Enabled.png"

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 1387
    .local v1, "nromalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v2, "Game_UI_Btn_Skill_Disabled.png"

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 1388
    .local v0, "disabledSp":Lorg/cocos2d/nodes/CCSprite;
    const/4 v2, 0x0

    const-string v3, "btnSkill_CallBack"

    invoke-static {v1, v2, v0, p0, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 1389
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v2, v4, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 1390
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v3, 0x443e4000    # 761.0f

    const/high16 v4, 0x42c00000    # 96.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 1391
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v2, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 1392
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 1393
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 1394
    invoke-virtual {p0, v5}, Lcom/sns/game/layer/CCNewGameLayer;->updateBtnSkill(Z)V

    .line 1395
    return-void
.end method

.method private setBtnTejlibao()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2157
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v1

    .line 2158
    .local v1, "uState":Lcom/sns/game/database/bean/UserState;
    const-string v0, "Tejlibao_Btn_xgyc.png"

    .line 2159
    .local v0, "name":Ljava/lang/String;
    const-string v2, "btnTejlibao_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v0, p0, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 2160
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v2, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 2161
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v3, 0x44344000    # 721.0f

    const/high16 v4, 0x436a0000    # 234.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 2162
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 2163
    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserState;->getMrlqTag()I

    move-result v2

    if-nez v2, :cond_0

    .line 2164
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V

    .line 2165
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->runAnimWithTejlibao()V

    .line 2169
    :goto_0
    return-void

    .line 2167
    :cond_0
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v2, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V

    goto :goto_0
.end method

.method private setGGIcon()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1663
    const-string v0, "Game_UI_Img_TakeGold.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    .line 1664
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1665
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x42830000    # 65.5f

    const/high16 v2, 0x419c0000    # 19.5f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 1666
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 1667
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGIcon()V

    .line 1668
    return-void
.end method

.method private setGGOffline()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1685
    const-string v0, "Game_UI_Img_Offline.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggOffLine:Lorg/cocos2d/nodes/CCSprite;

    .line 1686
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggOffLine:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1687
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggOffLine:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x42830000    # 65.5f

    const/high16 v2, 0x419c0000    # 19.5f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 1688
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggOffLine:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 1689
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGOffline()V

    .line 1690
    return-void
.end method

.method private setGameStars()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/high16 v14, 0x3f000000    # 0.5f

    .line 929
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v9

    .line 930
    .local v9, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v9}, Lcom/sns/game/database/bean/UserState;->getGameStarCount()I

    move-result v10

    iput v10, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I

    .line 931
    iget v10, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I

    iget v12, p0, Lcom/sns/game/layer/CCNewGameLayer;->starTotal:I

    if-ne v10, v12, :cond_0

    .line 932
    iput v11, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I

    .line 933
    invoke-virtual {v9, v11}, Lcom/sns/game/database/bean/UserState;->setGameStarCount(I)V

    .line 936
    :cond_0
    const-string v10, "Game_UI_Box_GameStar.png"

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v10

    iput-object v10, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    .line 937
    iget-object v10, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v10, v14, v14}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 938
    iget-object v10, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v12, 0x42f20000    # 121.0f

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-virtual {v10, v12, v13}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 940
    const/high16 v1, 0x42aa0000    # 85.0f

    .line 941
    .local v1, "beginPosX":F
    const/high16 v2, 0x42a00000    # 80.0f

    .line 942
    .local v2, "beginPosY":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v10, p0, Lcom/sns/game/layer/CCNewGameLayer;->starTotal:I

    if-lt v4, v10, :cond_1

    .line 962
    return-void

    .line 944
    :cond_1
    mul-int/lit8 v5, v4, 0x2

    .line 945
    .local v5, "indexEnd":I
    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v6, v10, 0x1

    .line 946
    .local v6, "indexTop":I
    invoke-static {v14, v14}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 947
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    mul-int/lit8 v10, v4, 0x23

    int-to-float v10, v10

    add-float/2addr v10, v1

    invoke-static {v10, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    .line 949
    .local v7, "starPos":Lorg/cocos2d/types/CGPoint;
    const-string v10, "Game_UI_Img_Star_End.png"

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    .line 950
    .local v3, "endStarSp":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v3, v0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 951
    invoke-virtual {v3, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 953
    const-string v10, "Game_UI_Img_Star.png"

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    .line 954
    .local v8, "topStarSp":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v8, v0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 955
    invoke-virtual {v8, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 956
    invoke-virtual {v9}, Lcom/sns/game/database/bean/UserState;->getGameStarCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-gt v4, v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v8, v10}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 958
    iget-object v10, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    aput-object v3, v10, v5

    .line 959
    iget-object v10, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    aput-object v8, v10, v6

    .line 942
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v10, v11

    .line 956
    goto :goto_1
.end method

.method private setJbbzDjsAtlas()V
    .locals 5

    .prologue
    .line 744
    const-string v0, ""

    const-string v1, "UI/New_Num_x_20x26.png"

    const/16 v2, 0x14

    const/16 v3, 0x1a

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 745
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 746
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 747
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->updateJbbzDjsAtlas(I)V

    .line 748
    return-void
.end method

.method private setJbbzDjsBox()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 728
    const-string v0, "Game_UI_Box_Djs.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    .line 729
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 730
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x43080000    # 136.0f

    const/high16 v2, 0x42240000    # 41.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 731
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->updateJbbzDjsBox(Z)V

    .line 733
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setJbbzDjsAtlas()V

    .line 735
    return-void
.end method

.method private setLevelAtlas()V
    .locals 5

    .prologue
    .line 1516
    const-string v0, ""

    const-string v1, "UI/New_Num_x_19x20.png"

    const/16 v2, 0x13

    const/16 v3, 0x14

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 1517
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelEndBarBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 1518
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateLevelAtlas()V

    .line 1519
    return-void
.end method

.method private setLevelBar()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1467
    const-string v0, "Game_UI_Box_Level.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelEndBarBox:Lorg/cocos2d/nodes/CCSprite;

    .line 1468
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelEndBarBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1469
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelEndBarBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x43100000    # 144.0f

    const/high16 v2, 0x43e00000    # 448.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 1470
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setLevelAtlas()V

    .line 1472
    const-string v0, "Game_UI_Bar_Level.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    .line 1473
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setUserData(Ljava/lang/Object;)V

    .line 1474
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->updateLevelBar(F)V

    .line 1475
    const-string v0, "updateLevelBar"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->schedule(Ljava/lang/String;)V

    .line 1476
    return-void
.end method

.method private setLoading()V
    .locals 2

    .prologue
    .line 473
    invoke-static {p0}, Lcom/sns/game/layer/GameLoading;->sharedLoading(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/layer/GameLoading;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->loading:Lcom/sns/game/layer/GameLoading;

    .line 474
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->loading:Lcom/sns/game/layer/GameLoading;

    const-string v1, "callBack_selector_loadSelf"

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/GameLoading;->setTargetSelector(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method private setUserGoldBox()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 591
    const-string v0, "Game_UI_Box_Gold.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    .line 592
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 593
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x42f00000    # 120.0f

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 595
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setUserGoldCounter()V

    .line 597
    return-void
.end method

.method private setUserGoldCounter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 600
    invoke-static {}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->create()Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    .line 601
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 602
    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserGoldCounter(I)V

    .line 603
    return-void
.end method

.method private setUserWqkItems()V
    .locals 1

    .prologue
    .line 1055
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->createUserWqkItems(I)V

    .line 1056
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserWqkItems()V

    .line 1057
    return-void
.end method

.method private setWeaponLoader()V
    .locals 2

    .prologue
    .line 2434
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    .line 2435
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v0, p0}, Lcom/sns/game/object/GameWeaponLoader;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 2436
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/sns/game/object/GameWeaponLoader;->setZorder(I)V

    .line 2437
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/object/GameWeaponLoader;->setCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V

    .line 2438
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeaponLoader;->setUseWeapon()V

    .line 2439
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->schedule(Lorg/cocos2d/actions/UpdateCallback;)V

    .line 2442
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setJbbzDjsBox()V

    .line 2444
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0x6f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 2446
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setWpnCostNodes()V

    .line 2447
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 2449
    return-void
.end method

.method private setWpnCostNodes()V
    .locals 6

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 2452
    const-string v1, "Game_UI_Box_WpnCost.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    .line 2453
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1, v2, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 2454
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v2, 0x43c80000    # 400.0f

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 2456
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v1}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v0

    .line 2457
    .local v0, "bean":Lcom/sns/game/database/bean/WeaponBean;
    const-string v1, ""

    const-string v2, "UI/New_Num_x_10x15.png"

    const/16 v3, 0xa

    const/16 v4, 0xf

    const/16 v5, 0x30

    invoke-static {v1, v2, v3, v4, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 2458
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 2459
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->updateWpnCostNodes(Lcom/sns/game/database/bean/WeaponBean;)V

    .line 2460
    return-void
.end method

.method private setZombieLoader()V
    .locals 5

    .prologue
    .line 2481
    invoke-static {}, Lcom/sns/game/object/GameZombieLoader;->sharedLoader()Lcom/sns/game/object/GameZombieLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    .line 2482
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    const/4 v1, 0x0

    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x44480000    # 800.0f

    const/high16 v4, 0x439f0000    # 318.0f

    invoke-static {v1, v2, v3, v4}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/sns/game/object/GameZombieLoader;->onLoad(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/types/CGRect;I)V

    .line 2483
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameZombieLoader;->loadZombieTextures()V

    .line 2484
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameZombieLoader;->updateDymicZomDataBeans()V

    .line 2485
    return-void
.end method

.method private showGiftBagDialog(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 2
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 2081
    invoke-static {p0}, Lcom/sns/game/dialog/CCGiftBagDialog;->ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCGiftBagDialog;

    move-result-object v0

    .line 2083
    .local v0, "dialog":Lcom/sns/game/dialog/CCGiftBagDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->setGiftBagTag(I)V

    .line 2084
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->takeGiftLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->setTakeGiftCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 2085
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->restoreBgbAnimLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 2086
    invoke-virtual {v0}, Lcom/sns/game/dialog/CCGiftBagDialog;->show()V

    .line 2087
    return-void
.end method

.method private showTejlibaoDialog(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 2
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 2186
    invoke-static {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCTejlibaoDialog;

    move-result-object v0

    .line 2187
    .local v0, "dialog":Lcom/sns/game/dialog/CCTejlibaoDialog;
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->takeTejlibaoLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCTejlibaoDialog;->setTakeGiftCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 2188
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->restoreTejlibaoAnimLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCTejlibaoDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 2189
    invoke-virtual {v0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->show()V

    .line 2190
    return-void
.end method

.method private showUpGardeDialog(Lcom/sns/game/database/bean/UserLevelBean;)V
    .locals 2
    .param p1, "bean"    # Lcom/sns/game/database/bean/UserLevelBean;

    .prologue
    .line 1541
    invoke-static {p0, p1}, Lcom/sns/game/dialog/CCUpGradeDialog;->dialog(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/database/bean/UserLevelBean;)Lcom/sns/game/dialog/CCUpGradeDialog;

    move-result-object v0

    .line 1542
    .local v0, "dialog":Lcom/sns/game/dialog/CCUpGradeDialog;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->upGradeDialogOnShowCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCUpGradeDialog;->setShowCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 1543
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->upGradeDialogOnCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCUpGradeDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 1544
    invoke-virtual {v0}, Lcom/sns/game/dialog/CCUpGradeDialog;->show()V

    .line 1545
    return-void
.end method

.method private showWeaponGiftBagDialog()V
    .locals 2

    .prologue
    .line 1603
    invoke-static {p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCWeaponGiftDialog;

    move-result-object v0

    .line 1604
    .local v0, "dialog":Lcom/sns/game/dialog/CCWeaponGiftDialog;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->onWeaponGiftBagGetCallback()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->setOnGetCallback(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 1605
    invoke-virtual {v0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->show()V

    .line 1606
    return-void
.end method

.method private showZomPlotDialog(Lcom/sns/game/database/bean/UserLevelBean;)V
    .locals 2
    .param p1, "bean"    # Lcom/sns/game/database/bean/UserLevelBean;

    .prologue
    .line 1578
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserLevelBean;->getLevel()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sns/game/dialog/CCZombiePlotDialog;->dialog(Lorg/cocos2d/layers/CCLayer;I)Lcom/sns/game/dialog/CCZombiePlotDialog;

    move-result-object v0

    .line 1579
    .local v0, "dialog":Lcom/sns/game/dialog/CCZombiePlotDialog;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->zomPlotDialogOnCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCZombiePlotDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 1580
    invoke-virtual {v0}, Lcom/sns/game/dialog/CCZombiePlotDialog;->show()V

    .line 1581
    return-void
.end method

.method private takeTejlibaoMrlq(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 8
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 2198
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v4

    .line 2200
    .local v4, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserState;->getMrlqDate()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    move v2, v5

    .line 2201
    .local v2, "isDefaultDate":Z
    :cond_0
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserState;->getLoginNetWorkTime()Ljava/lang/String;

    move-result-object v3

    .line 2202
    .local v3, "netWorkTime":Ljava/lang/String;
    if-nez v3, :cond_2

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const-string v7, "yyyy-MM-dd"

    invoke-static {v6, v7}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2205
    .local v0, "compareTime":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 2206
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserState;->getMrlqDate()Ljava/lang/String;

    move-result-object v6

    .line 2205
    invoke-static {v6, v0}, Lcom/sns/game/util/CCUtil;->daysBetween(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 2207
    :cond_1
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserState;->getMrlqTag()I

    move-result v5

    if-nez v5, :cond_3

    .line 2208
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->showTejlibaoDialog(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    .line 2240
    .end local v0    # "compareTime":Ljava/lang/String;
    .end local v2    # "isDefaultDate":Z
    .end local v3    # "netWorkTime":Ljava/lang/String;
    .end local v4    # "uState":Lcom/sns/game/database/bean/UserState;
    :goto_1
    return-void

    .restart local v2    # "isDefaultDate":Z
    .restart local v3    # "netWorkTime":Ljava/lang/String;
    .restart local v4    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_2
    move-object v0, v3

    .line 2202
    goto :goto_0

    .line 2210
    .restart local v0    # "compareTime":Ljava/lang/String;
    :cond_3
    const-string v5, "\u7279\u4ef7\u793c\u5305\u6bcf\u5929\u9650\u8d2d\u4e00\u6b21"

    invoke-static {v5}, Lcom/sns/game/util/CCUtil;->notifyToast(Ljava/lang/String;)V

    .line 2211
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setScale(F)V

    .line 2212
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 2213
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2237
    .end local v0    # "compareTime":Ljava/lang/String;
    .end local v2    # "isDefaultDate":Z
    .end local v3    # "netWorkTime":Ljava/lang/String;
    .end local v4    # "uState":Lcom/sns/game/database/bean/UserState;
    :catch_0
    move-exception v1

    .line 2238
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2219
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "compareTime":Ljava/lang/String;
    .restart local v2    # "isDefaultDate":Z
    .restart local v3    # "netWorkTime":Ljava/lang/String;
    .restart local v4    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_4
    if-nez v2, :cond_5

    .line 2220
    :try_start_1
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserState;->getMrlqDate()Ljava/lang/String;

    move-result-object v6

    .line 2219
    invoke-static {v6, v0}, Lcom/sns/game/util/CCUtil;->daysBetween(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 2221
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sns/game/database/bean/UserState;->setMrlqTag(I)V

    .line 2228
    :goto_2
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserState;->getMrlqTag()I

    move-result v5

    if-nez v5, :cond_7

    .line 2229
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->showTejlibaoDialog(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    goto :goto_1

    .line 2223
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sns/game/database/bean/UserState;->setMrlqTag(I)V

    .line 2224
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sns/game/database/bean/UserState;->setMrlqDay(I)V

    .line 2225
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sns/game/database/bean/UserState;->setMrlqDate(Ljava/lang/String;)V

    goto :goto_2

    .line 2231
    :cond_7
    const-string v5, "\u8d85\u503c\u793c\u5305\u6bcf\u5929\u9650\u9886\u4e00\u6b21"

    invoke-static {v5}, Lcom/sns/game/util/CCUtil;->notifyToast(Ljava/lang/String;)V

    .line 2232
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setScale(F)V

    .line 2233
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 2234
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 570
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    .line 571
    .local v1, "newIndex":I
    iget v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->bgIndex:I

    if-eq v1, v2, :cond_0

    .line 572
    iput v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->bgIndex:I

    .line 576
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->bgNames:[Ljava/lang/String;

    iget v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->bgIndex:I

    mul-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFramesByJPG(Ljava/lang/String;)Ljava/util/Set;

    .line 577
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->bgNames:[Ljava/lang/String;

    iget v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->bgIndex:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    .line 578
    .local v0, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v0}, Lorg/cocos2d/nodes/CCSprite;->setDisplayFrame(Lorg/cocos2d/nodes/CCSpriteFrame;)V

    .line 579
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v4, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 580
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v4, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 581
    return-void
.end method

.method private updateButtonByMode(Lorg/cocos2d/menus/CCMenuItemSprite;Ljava/lang/String;)V
    .locals 12
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1967
    const v10, 0x1314f

    :try_start_0
    invoke-virtual {p1, v10}, Lorg/cocos2d/menus/CCMenuItemSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    .line 1968
    .local v3, "existNode":Lorg/cocos2d/nodes/CCNode;
    if-eqz v3, :cond_0

    .line 1996
    .end local v3    # "existNode":Lorg/cocos2d/nodes/CCNode;
    :goto_0
    return-void

    .line 1970
    .restart local v3    # "existNode":Lorg/cocos2d/nodes/CCNode;
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v8

    .line 1971
    .local v8, "size":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0, p2}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 1972
    .local v0, "animChild":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v0, v10, v11}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1973
    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v8, v10}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 1974
    invoke-virtual {p1, v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 1976
    const/high16 v10, 0x3f400000    # 0.75f

    const/high16 v11, 0x3fa00000    # 1.25f

    invoke-static {v10, v11}, Lorg/cocos2d/actions/interval/CCScaleBy;->action(FF)Lorg/cocos2d/actions/interval/CCScaleBy;

    move-result-object v6

    .line 1977
    .local v6, "scaleBy":Lorg/cocos2d/actions/interval/CCScaleBy;
    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v10}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v4

    .line 1978
    .local v4, "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    const/4 v10, 0x1

    new-array v10, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v6, v10}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v9

    .line 1979
    .local v9, "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    invoke-static {v9}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v2

    .line 1982
    .local v2, "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    new-instance v10, Lcom/sns/game/layer/CCNewGameLayer$13;

    invoke-direct {v10, p0, v0}, Lcom/sns/game/layer/CCNewGameLayer$13;-><init>(Lcom/sns/game/layer/CCNewGameLayer;Lorg/cocos2d/nodes/CCSprite;)V

    .line 1981
    invoke-static {v10}, Lcom/sns/game/actions/CCLogicalCallBack;->action(Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/actions/CCLogicalCallBack;

    move-result-object v5

    .line 1990
    .local v5, "lglCallBack":Lcom/sns/game/actions/CCLogicalCallBack;
    const/4 v10, 0x1

    new-array v10, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v2, v10}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v7

    .line 1991
    .local v7, "seque":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-static {v7}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1993
    .end local v0    # "animChild":Lorg/cocos2d/nodes/CCSprite;
    .end local v2    # "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    .end local v3    # "existNode":Lorg/cocos2d/nodes/CCNode;
    .end local v4    # "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    .end local v5    # "lglCallBack":Lcom/sns/game/actions/CCLogicalCallBack;
    .end local v6    # "scaleBy":Lorg/cocos2d/actions/interval/CCScaleBy;
    .end local v7    # "seque":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v8    # "size":Lorg/cocos2d/types/CGSize;
    .end local v9    # "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    :catch_0
    move-exception v1

    .line 1994
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public activateLoadZombies()V
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameZombieLoader;->startLoadZombies()V

    .line 2489
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameZombieLoader;->startReLoadZombies()V

    .line 2490
    return-void
.end method

.method public activateRandomTaskSystem()V
    .locals 1

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->rdomSystem:Lcom/sns/game/layer/RandomTaskSystem;

    if-eqz v0, :cond_0

    .line 2505
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->rdomSystem:Lcom/sns/game/layer/RandomTaskSystem;

    invoke-virtual {v0}, Lcom/sns/game/layer/RandomTaskSystem;->activate()V

    .line 2506
    :cond_0
    return-void
.end method

.method public activateUpGrade(Lcom/sns/game/database/bean/UserLevelBean;)V
    .locals 4
    .param p1, "bean"    # Lcom/sns/game/database/bean/UserLevelBean;

    .prologue
    .line 1532
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->showUpGardeDialog(Lcom/sns/game/database/bean/UserLevelBean;)V

    .line 1533
    const-string v1, "LEVELUP_"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserLevelBean;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->activateUpdateBanner(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    :goto_0
    return-void

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public addTeachArrow2WpnItem(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    const/16 v5, 0xc01

    const/4 v4, 0x0

    .line 1309
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->findWqkItemByUseLevel(I)Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    move-result-object v2

    .line 1310
    .local v2, "targetWqk":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    if-eqz v2, :cond_0

    .line 1311
    invoke-virtual {v2, v5}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    .line 1312
    .local v1, "existNode":Lorg/cocos2d/nodes/CCNode;
    if-eqz v1, :cond_1

    .line 1320
    .end local v1    # "existNode":Lorg/cocos2d/nodes/CCNode;
    :cond_0
    :goto_0
    return-void

    .line 1313
    .restart local v1    # "existNode":Lorg/cocos2d/nodes/CCNode;
    :cond_1
    const-string v3, "UI/arrow_weapon.png"

    invoke-static {v3}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 1314
    .local v0, "arrow":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v2, v0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 1315
    invoke-virtual {v0, v5}, Lorg/cocos2d/nodes/CCSprite;->setTag(I)V

    .line 1316
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1317
    const/high16 v3, 0x41e80000    # 29.0f

    invoke-virtual {v0, v4, v3}, Lorg/cocos2d/nodes/CCSprite;->setPositionWithCcso(FF)V

    .line 1318
    const v3, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCBlink;->action(FI)Lorg/cocos2d/actions/interval/CCBlink;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto :goto_0
.end method

.method protected addTexturesToCache()V
    .locals 5

    .prologue
    .line 324
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/bean/GameSceneSystem;->getSceneTag()Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    move-result-object v1

    .line 325
    .local v1, "sceneTag":Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;
    sget-object v4, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_MORE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    .line 326
    .local v0, "isDoubleScene":Z
    :goto_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v2

    .line 327
    .local v2, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v3

    .line 330
    .local v3, "userLevel":I
    const-string v4, "background/Bg_GameScene_2.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFramesByJPG(Ljava/lang/String;)Ljava/util/Set;

    .line 331
    const-string v4, "UI/Game_UI.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 332
    const-string v4, "UI/Store_UI.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 333
    const-string v4, "UI/GiftBag_UI.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 334
    const-string v4, "UI/Tejlibao_UI.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 335
    const-string v4, "UI/FunnyGame_Dialog_UI.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 336
    const-string v4, "zombie/Zombie_Pao.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 337
    const-string v4, "zombie/ZombieNames.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 338
    const-string v4, "effect/effect_1.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 339
    if-eqz v0, :cond_0

    const-string v4, "effect/effect_3.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 341
    :cond_0
    const-string v4, "UI/CCPayGoldDialog.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 343
    const-string v4, "effect/effect_boss_trample_on_bomb.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 344
    const-string v4, "effect/effect_boss_trample_on_foot.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 345
    const-string v4, "effect/effect_boss_trample_on_smoke_x1.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 346
    const-string v4, "effect/effect_boss_trample_on_smoke_x2.plist"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 347
    return-void

    .line 325
    .end local v0    # "isDoubleScene":Z
    .end local v2    # "uState":Lcom/sns/game/database/bean/UserState;
    .end local v3    # "userLevel":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public batchRunAddWqkNumAction(II)V
    .locals 3
    .param p1, "bulletCount"    # I
    .param p2, "zOrder"    # I

    .prologue
    .line 1362
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1368
    :cond_0
    return-void

    .line 1363
    :cond_1
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 1364
    .local v0, "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    if-eqz v0, :cond_2

    .line 1365
    invoke-virtual {p0, v0, p1, p2}, Lcom/sns/game/layer/CCNewGameLayer;->runAddWqkNumAction(Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;II)V

    goto :goto_0
.end method

.method public btnAddGold_CallBack(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2044
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v3, v0

    .line 2045
    .local v3, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 2046
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 2047
    invoke-static {p0}, Lcom/sns/game/dialog/CCPayGoldDialog;->ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCPayGoldDialog;

    move-result-object v1

    .line 2048
    .local v1, "dialog":Lcom/sns/game/dialog/CCPayGoldDialog;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateUgLglCallBackWithObj()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/dialog/CCPayGoldDialog;->setOnGetGoldCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 2049
    invoke-virtual {v1}, Lcom/sns/game/dialog/CCPayGoldDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    .end local v1    # "dialog":Lcom/sns/game/dialog/CCPayGoldDialog;
    .end local v3    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 2050
    :catch_0
    move-exception v2

    .line 2051
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnCjms_CallBack(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1882
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v4, v0

    .line 1883
    .local v4, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 1884
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 1886
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    .line 1887
    .local v5, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserState;->isLimitPPFeeUseWithCJMS()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1888
    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserState;->saveppFeeUseNumWithCJMS()V

    .line 1889
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->intoCjmsLogical()V

    .line 1901
    .end local v4    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .end local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    :goto_0
    return-void

    .line 1893
    .restart local v4    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .restart local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_0
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v1

    .line 1894
    .local v1, "delegate":Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->intoCjmsLglWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v6

    invoke-virtual {v1, p0, v4, v6}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccWithItemSpriteCallBack(Lorg/cocos2d/layers/CCLayer;Lorg/cocos2d/menus/CCMenuItemSprite;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    move-result-object v2

    .line 1895
    .local v2, "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    const/16 v6, 0x9

    invoke-virtual {v1, v6, v2}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1898
    .end local v1    # "delegate":Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    .end local v2    # "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    .end local v4    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .end local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    :catch_0
    move-exception v3

    .line 1899
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnDouble_CallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 856
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 857
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getZOrder()I

    .line 858
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v3}, Lcom/sns/game/object/GameWeaponLoader;->isEmptyBulletInWepon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 859
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 860
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/database/bean/GameSceneSystem;->updateMultiple()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :cond_0
    :goto_0
    return-void

    .line 863
    :catch_0
    move-exception v1

    .line 864
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnGiftBag_CallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2069
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 2070
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 2071
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 2072
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->stopAllActions()V

    .line 2074
    invoke-direct {p0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->showGiftBagDialog(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2078
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 2075
    :catch_0
    move-exception v1

    .line 2076
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnPause_CallBack(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2015
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 2016
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 2017
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 2018
    invoke-static {p0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->dialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCInGamePauseDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->inPauseDialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    .line 2019
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->inPauseDialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->onPauseCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setShowCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 2020
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->inPauseDialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->onResumeCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 2021
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->inPauseDialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    invoke-virtual {v3}, Lcom/sns/game/dialog/CCInGamePauseDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 2025
    :catch_0
    move-exception v1

    .line 2026
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnShms_CallBack(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1930
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v3, v0

    .line 1931
    .local v3, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 1932
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 1934
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v4

    .line 1935
    .local v4, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserState;->isLimitPPFeeUseWithSHMS()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1936
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserState;->saveppFeeUseNumWithSHMS()V

    .line 1937
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->intoShmsLogical()V

    .line 1948
    .end local v3    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .end local v4    # "uState":Lcom/sns/game/database/bean/UserState;
    :goto_0
    return-void

    .line 1941
    .restart local v3    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .restart local v4    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_0
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v5

    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->intoShmsLglWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v6

    invoke-virtual {v5, p0, v3, v6}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccWithItemSpriteCallBack(Lorg/cocos2d/layers/CCLayer;Lorg/cocos2d/menus/CCMenuItemSprite;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    move-result-object v1

    .line 1942
    .local v1, "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1945
    .end local v1    # "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    .end local v3    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .end local v4    # "uState":Lcom/sns/game/database/bean/UserState;
    :catch_0
    move-exception v2

    .line 1946
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnSkill_CallBack(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1415
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v4, v0

    .line 1416
    .local v4, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 1418
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    .line 1419
    .local v5, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserState;->isLimitPPFeeUseWithZHJL()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1420
    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserState;->saveppFeeUseNumWithZHJL()V

    .line 1421
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->onBtnSkillLogical()V

    .line 1432
    .end local v4    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .end local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    :goto_0
    return-void

    .line 1425
    .restart local v4    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .restart local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_0
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v1

    .line 1426
    .local v1, "delegate":Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->onBtnSkillLglWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v6

    invoke-virtual {v1, p0, v4, v6}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccWithItemSpriteCallBack(Lorg/cocos2d/layers/CCLayer;Lorg/cocos2d/menus/CCMenuItemSprite;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    move-result-object v2

    .line 1427
    .local v2, "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    const/16 v6, 0xb

    invoke-virtual {v1, v6, v2}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1429
    .end local v1    # "delegate":Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    .end local v2    # "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    .end local v4    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .end local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    :catch_0
    move-exception v3

    .line 1430
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnTejlibao_CallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2174
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 2175
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 2176
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 2177
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->stopAllActions()V

    .line 2178
    invoke-direct {p0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->takeTejlibaoMrlq(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2183
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 2180
    :catch_0
    move-exception v1

    .line 2181
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_addGold()V
    .locals 3

    .prologue
    .line 714
    :try_start_0
    sget-object v1, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v1

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_0

    .line 716
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->runDjsAction()V

    .line 725
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->stopDjsAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_getGold(Ljava/lang/Object;)V
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1851
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserState;->getGGTag()I

    move-result v2

    .line 1852
    .local v2, "ggTag":I
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserState;->getKeyGetGoldTag()I

    move-result v3

    .line 1853
    .local v3, "keyTag":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    if-nez v3, :cond_0

    .line 1855
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v4

    .line 1856
    .local v4, "userLevel":I
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sns/game/database/dao/UserLevelDao;->getRewardGold(I)I

    move-result v1

    .line 1857
    .local v1, "getGoldNum":I
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserGold(IZ)V

    .line 1858
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sns/game/database/bean/UserState;->setKeyGetGoldTag(I)V

    .line 1859
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "callBack_selector_updateGold"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, p0, v7, v8}, Lcom/sns/game/database/bean/UserState;->activateToAnwtThread(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1860
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5df2\u9886\u53d6\u91d1\u5e01 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sns/game/util/CCUtil;->notifyToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    .end local v1    # "getGoldNum":I
    .end local v2    # "ggTag":I
    .end local v3    # "keyTag":I
    .end local v4    # "userLevel":I
    :cond_0
    :goto_0
    return-void

    .line 1863
    :catch_0
    move-exception v0

    .line 1864
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_killZombie(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2540
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 2543
    .local v1, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 2544
    const/4 v6, 0x0

    aget-object v6, v1, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2546
    .local v3, "indexTag":I
    packed-switch v3, :pswitch_data_0

    .line 2583
    .end local v3    # "indexTag":I
    :goto_0
    return-void

    .line 2550
    .restart local v3    # "indexTag":I
    :pswitch_0
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v6}, Lcom/sns/game/object/GameZombieLoader;->stopLoadZombies()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2580
    .end local v3    # "indexTag":I
    :catch_0
    move-exception v2

    .line 2581
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2556
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "indexTag":I
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateBackground()V

    .line 2557
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v6}, Lcom/sns/game/object/GameZombieLoader;->removeZombiesByUniqueSkill_TrampleOn()I

    move-result v5

    .line 2558
    .local v5, "totalDropGold":I
    const v6, 0x7fffff9b

    invoke-static {p0, v5, v6}, Lcom/sns/game/dialog/CCGoldGameToast;->toast(Lorg/cocos2d/layers/CCLayer;II)Lcom/sns/game/dialog/CCGoldGameToast;

    move-result-object v4

    .line 2559
    .local v4, "toast":Lcom/sns/game/dialog/CCGoldGameToast;
    new-instance v6, Lcom/sns/game/layer/CCNewGameLayer$21;

    invoke-direct {v6, p0, v5}, Lcom/sns/game/layer/CCNewGameLayer$21;-><init>(Lcom/sns/game/layer/CCNewGameLayer;I)V

    invoke-virtual {v4, v6}, Lcom/sns/game/dialog/CCGoldGameToast;->setShowCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 2566
    invoke-virtual {v4}, Lcom/sns/game/dialog/CCGoldGameToast;->show()V

    goto :goto_0

    .line 2572
    .end local v4    # "toast":Lcom/sns/game/dialog/CCGoldGameToast;
    .end local v5    # "totalDropGold":I
    :pswitch_2
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v6}, Lcom/sns/game/object/GameZombieLoader;->startLoadZombies()V

    .line 2573
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v6}, Lcom/sns/game/object/GameZombieLoader;->startReLoadZombies()V

    .line 2574
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sns/game/layer/CCNewGameLayer;->updateBtnSkill(Z)V

    .line 2575
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public callBack_selector_loadSelf(Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 496
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->addTexturesToCache()V

    .line 498
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->createSelf()V

    .line 499
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->sortChildren()V

    .line 501
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setWeaponLoader()V

    .line 502
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setZombieLoader()V

    .line 506
    invoke-static {}, Lcom/sns/game/layer/CCNewManSystem;->sharedSystem()Lcom/sns/game/layer/CCNewManSystem;

    move-result-object v1

    .line 507
    .local v1, "nmSystem":Lcom/sns/game/layer/CCNewManSystem;
    invoke-virtual {v1, p0}, Lcom/sns/game/layer/CCNewManSystem;->loadSystem(Lorg/cocos2d/layers/CCLayer;)V

    .line 509
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->freezeLoading()V

    .line 510
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->runAddGoldAction()V

    .line 511
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->getUserDoCallPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sns/game/layer/CCNewGameLayer;->activateUpdatePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->isDone(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/sns/game/layer/CCNewManSystem;->activate(ILorg/cocos2d/layers/CCLayer;)V

    .line 529
    :goto_0
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->onCreateFinishCall()V

    .line 532
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v2

    .line 533
    const/4 v3, 0x1

    const-string v4, "callBack_selector_updateGold"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, p0, v4, v5}, Lcom/sns/game/database/bean/UserState;->activateToAnwtThread(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    .end local v1    # "nmSystem":Lcom/sns/game/layer/CCNewManSystem;
    :goto_1
    return-void

    .line 515
    .restart local v1    # "nmSystem":Lcom/sns/game/layer/CCNewManSystem;
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->isDone(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 516
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Lcom/sns/game/layer/CCNewManSystem;->activate(ILorg/cocos2d/layers/CCLayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 535
    .end local v1    # "nmSystem":Lcom/sns/game/layer/CCNewManSystem;
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1

    .line 517
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "nmSystem":Lcom/sns/game/layer/CCNewManSystem;
    :cond_1
    const/4 v2, 0x7

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->isDone(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 518
    const/4 v2, 0x7

    invoke-virtual {v1, v2, p0}, Lcom/sns/game/layer/CCNewManSystem;->activate(ILorg/cocos2d/layers/CCLayer;)V

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->activateLoadZombies()V

    .line 521
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->activateRandomTaskSystem()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public callBack_selector_playTrampleOnEffect()V
    .locals 1

    .prologue
    .line 2587
    const/16 v0, 0x119

    .line 2586
    invoke-static {v0}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 2588
    return-void
.end method

.method public callBack_selector_trampleOn(Ljava/lang/Object;)V
    .locals 29
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2591
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    .line 2592
    .local v8, "data":[Ljava/lang/Object;
    const-string v14, "callBack_selector_trampleOn"

    .line 2595
    .local v14, "selector":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 2596
    const/16 v17, 0x0

    aget-object v17, v8, v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2597
    .local v11, "indexTag":I
    packed-switch v11, :pswitch_data_0

    .line 3659
    .end local v11    # "indexTag":I
    :goto_0
    return-void

    .line 2600
    .restart local v11    # "indexTag":I
    :pswitch_0
    const/16 v17, 0x1

    aget-object v3, v8, v17

    check-cast v3, Lorg/cocos2d/nodes/CCSprite;

    .line 2603
    .local v3, "actionNode":Lorg/cocos2d/nodes/CCSprite;
    const v17, 0x3dcccccd    # 0.1f

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2604
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x2

    aget-object v23, v8, v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 2605
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2602
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2601
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3656
    .end local v3    # "actionNode":Lorg/cocos2d/nodes/CCSprite;
    .end local v11    # "indexTag":I
    :catch_0
    move-exception v9

    .line 3657
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2611
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "indexTag":I
    :pswitch_1
    const/16 v17, 0x1

    :try_start_1
    aget-object v17, v8, v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2612
    .local v16, "zOrder":I
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v10

    .line 2613
    .local v10, "foot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 2614
    const/high16 v17, 0x439d0000    # 314.0f

    const/high16 v18, 0x42c00000    # 96.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 2615
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 2618
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2619
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2617
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2616
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2626
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    .end local v16    # "zOrder":I
    :pswitch_2
    const/16 v17, 0x1

    aget-object v10, v8, v17

    check-cast v10, Lorg/cocos2d/nodes/CCSprite;

    .line 2628
    .restart local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v7

    .line 2629
    .local v7, "bomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 2630
    const/high16 v17, 0x42f40000    # 122.0f

    const/high16 v18, -0x3da40000    # -55.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 2631
    invoke-virtual {v10, v7}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 2636
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2638
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2639
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2637
    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 2641
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x3dcccccd    # 0.1f

    const/16 v23, 0x0

    const/high16 v24, -0x3ee00000    # -10.0f

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 2642
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "callBack_selector_playTrampleOnEffect"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2635
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2644
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    const/16 v22, 0x2

    aput-object v7, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2634
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2633
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2651
    .end local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_3
    const/16 v17, 0x1

    aget-object v10, v8, v17

    check-cast v10, Lorg/cocos2d/nodes/CCSprite;

    .line 2652
    .restart local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v7, v8, v17

    check-cast v7, Lorg/cocos2d/nodes/CCSprite;

    .line 2657
    .restart local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0x3dcccccd    # 0.1f

    const/16 v20, 0x0

    const/high16 v21, 0x41200000    # 10.0f

    invoke-static/range {v20 .. v21}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2658
    const-string v20, ""

    const v21, 0x3dcccccd    # 0.1f

    const-string v22, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 2660
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2661
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2659
    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2656
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2664
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x5

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    const/16 v22, 0x2

    aput-object v7, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2655
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2654
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2671
    .end local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_4
    const/16 v17, 0x1

    aget-object v10, v8, v17

    check-cast v10, Lorg/cocos2d/nodes/CCSprite;

    .line 2672
    .restart local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v7, v8, v17

    check-cast v7, Lorg/cocos2d/nodes/CCSprite;

    .line 2674
    .restart local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v15

    .line 2675
    .local v15, "smoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 2676
    const/high16 v17, 0x43c30000    # 390.0f

    const/high16 v18, 0x432e0000    # 174.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 2677
    invoke-virtual {v10}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 2682
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2684
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2685
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2683
    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 2688
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2689
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2687
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2681
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2692
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    const/16 v22, 0x2

    aput-object v7, v21, v22

    const/16 v22, 0x3

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2680
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2679
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2699
    .end local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_5
    const/16 v17, 0x1

    aget-object v10, v8, v17

    check-cast v10, Lorg/cocos2d/nodes/CCSprite;

    .line 2700
    .restart local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v7, v8, v17

    check-cast v7, Lorg/cocos2d/nodes/CCSprite;

    .line 2701
    .restart local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v15, v8, v17

    check-cast v15, Lorg/cocos2d/nodes/CCSprite;

    .line 2706
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2708
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2709
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2707
    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 2712
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2713
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2711
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2705
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2716
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    const/16 v22, 0x2

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2704
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2703
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2724
    .end local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_6
    const/16 v17, 0x1

    aget-object v10, v8, v17

    check-cast v10, Lorg/cocos2d/nodes/CCSprite;

    .line 2725
    .restart local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v15, v8, v17

    check-cast v15, Lorg/cocos2d/nodes/CCSprite;

    .line 2730
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2732
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2733
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2731
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2729
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2736
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x8

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    const/16 v22, 0x2

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2728
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2727
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2743
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_7
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 2744
    .local v4, "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 2746
    .local v6, "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v5

    .line 2747
    .local v5, "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 2748
    const v17, 0x44288000    # 674.0f

    const/high16 v18, 0x43100000    # 144.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 2749
    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 2751
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v13

    .line 2752
    .local v13, "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 2753
    const/high16 v17, 0x42100000    # 36.0f

    const/high16 v18, 0x434e0000    # 206.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 2754
    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, -0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 2759
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2761
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2762
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_foot_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2760
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 2765
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2766
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2764
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 2769
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2770
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2768
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2758
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2773
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x9

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2757
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2756
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2781
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_8
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 2782
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 2783
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 2784
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 2786
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v12

    .line 2787
    .local v12, "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 2788
    const/high16 v17, 0x42f40000    # 122.0f

    const/high16 v18, -0x3da40000    # -55.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 2789
    invoke-virtual {v13, v12}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 2794
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2796
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2797
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2795
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 2800
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2802
    const v22, 0x3dcccccd    # 0.1f

    const/16 v23, 0x0

    const/high16 v24, 0x41200000    # 10.0f

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 2803
    const-string v25, ""

    const v26, 0x3dcccccd    # 0.1f

    const-string v27, "effect_boss_trample_on_foot_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2801
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2799
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 2807
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2808
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2806
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 2811
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2812
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2810
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 2815
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2816
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const v24, 0x3dcccccd    # 0.1f

    const/16 v25, 0x0

    const/high16 v26, -0x3ee00000    # -10.0f

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2814
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x5

    .line 2819
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2820
    const-string v22, "callBack_selector_playTrampleOnEffect"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2818
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2793
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2823
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0xa

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    const/16 v22, 0x5

    aput-object v12, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2792
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2791
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2830
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_9
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 2831
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 2832
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 2833
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 2834
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x5

    aget-object v12, v8, v17

    check-cast v12, Lorg/cocos2d/nodes/CCSprite;

    .line 2840
    .restart local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 2841
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x3dcccccd    # 0.1f

    const/16 v22, 0x0

    const/high16 v23, 0x41200000    # 10.0f

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v19

    aput-object v19, v17, v18

    .line 2839
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2843
    const-string v20, ""

    const v21, 0x3dcccccd    # 0.1f

    const-string v22, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 2845
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2846
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2844
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 2849
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2851
    const/high16 v22, 0x432e0000    # 174.0f

    const/high16 v23, 0x43460000    # 198.0f

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/instant/CCPlace;->action(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/instant/CCPlace;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 2852
    const-string v25, ""

    const v26, 0x3dcccccd    # 0.1f

    const-string v27, "effect_boss_trample_on_foot_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2850
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2848
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 2856
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2857
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2855
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 2860
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2861
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2859
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2838
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2864
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0xb

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    const/16 v22, 0x5

    aput-object v12, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2837
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2836
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2872
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_a
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 2873
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 2874
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 2875
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 2876
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x5

    aget-object v12, v8, v17

    check-cast v12, Lorg/cocos2d/nodes/CCSprite;

    .line 2878
    .restart local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v15

    .line 2879
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 2880
    const/high16 v17, 0x42e00000    # 112.0f

    const/high16 v18, 0x438e0000    # 284.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 2881
    invoke-virtual {v13}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 2886
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2888
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2889
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2887
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 2892
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2893
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2891
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 2896
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2897
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2895
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 2900
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2903
    const-string v22, ""

    const/high16 v23, 0x3e800000    # 0.25f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 2904
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 2905
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 2906
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2902
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    .line 2901
    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 2910
    const/high16 v22, 0x41000000    # 8.0f

    const v23, -0x3bb74000    # -803.0f

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 2911
    const v25, 0x3ecccccd    # 0.4f

    invoke-static/range {v25 .. v25}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 2912
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2909
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2899
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 2916
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2919
    const-string v22, ""

    const/high16 v23, 0x3e800000    # 0.25f

    const-string v24, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 2920
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 2921
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 2922
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2918
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    .line 2917
    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 2926
    const/high16 v22, 0x41000000    # 8.0f

    const/high16 v23, -0x3bbe0000    # -776.0f

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 2927
    const v25, 0x3ecccccd    # 0.4f

    invoke-static/range {v25 .. v25}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 2928
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2925
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2915
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2885
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2932
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0xc

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v13, v21, v22

    const/16 v22, 0x2

    aput-object v12, v21, v22

    const/16 v22, 0x3

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2884
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2883
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2940
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_b
    const/16 v17, 0x1

    aget-object v10, v8, v17

    check-cast v10, Lorg/cocos2d/nodes/CCSprite;

    .line 2941
    .restart local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v7, v8, v17

    check-cast v7, Lorg/cocos2d/nodes/CCSprite;

    .line 2942
    .restart local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v15, v8, v17

    check-cast v15, Lorg/cocos2d/nodes/CCSprite;

    .line 2947
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2949
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2950
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2948
    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 2953
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2954
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2952
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2946
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2957
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0xd

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    const/16 v22, 0x2

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2945
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2944
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2964
    .end local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_c
    const/16 v17, 0x1

    aget-object v10, v8, v17

    check-cast v10, Lorg/cocos2d/nodes/CCSprite;

    .line 2965
    .restart local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v15, v8, v17

    check-cast v15, Lorg/cocos2d/nodes/CCSprite;

    .line 2970
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2972
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2973
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 2971
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2969
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2976
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0xe

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    const/16 v22, 0x2

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2968
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2967
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 2983
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_d
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 2984
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 2986
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v5

    .line 2987
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 2988
    const/high16 v17, 0x43c60000    # 396.0f

    const/high16 v18, 0x437e0000    # 254.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 2989
    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 2991
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v13

    .line 2992
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 2993
    const/high16 v17, -0x3cb20000    # -206.0f

    const/high16 v18, 0x42c00000    # 96.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 2994
    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 2999
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3001
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3002
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_foot_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3000
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3005
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3006
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3004
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3009
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3010
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3008
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2998
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3013
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0xf

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 2997
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 2996
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3020
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_e
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 3021
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 3022
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 3023
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 3025
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v12

    .line 3026
    .restart local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 3027
    const/high16 v17, 0x42f40000    # 122.0f

    const/high16 v18, -0x3da40000    # -55.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 3028
    invoke-virtual {v13, v12}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 3033
    const v17, 0x3dcccccd    # 0.1f

    const/16 v18, 0x0

    const/high16 v19, 0x41200000    # 10.0f

    invoke-static/range {v18 .. v19}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v17

    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3034
    const-string v20, ""

    const v21, 0x3dcccccd    # 0.1f

    const-string v22, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3036
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3037
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3035
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3040
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3042
    const v22, 0x3dcccccd    # 0.1f

    const/16 v23, 0x0

    const/high16 v24, 0x41200000    # 10.0f

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3043
    const-string v25, ""

    const v26, 0x3dcccccd    # 0.1f

    const-string v27, "effect_boss_trample_on_foot_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3041
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3039
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 3047
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3048
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3046
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 3051
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3052
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3050
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x5

    .line 3055
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3056
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const v24, 0x3dcccccd    # 0.1f

    const/16 v25, 0x0

    const/high16 v26, -0x3ee00000    # -10.0f

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3054
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x6

    .line 3059
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3060
    const-string v22, "callBack_selector_playTrampleOnEffect"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3058
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3032
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3063
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x10

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    const/16 v22, 0x5

    aput-object v12, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3031
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3030
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3070
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_f
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 3071
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 3072
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 3073
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 3074
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x5

    aget-object v12, v8, v17

    check-cast v12, Lorg/cocos2d/nodes/CCSprite;

    .line 3080
    .restart local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 3081
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x3dcccccd    # 0.1f

    const/16 v22, 0x0

    const/high16 v23, 0x41200000    # 10.0f

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v19

    aput-object v19, v17, v18

    .line 3079
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3083
    const-string v20, ""

    const v21, 0x3dcccccd    # 0.1f

    const-string v22, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3085
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3086
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3084
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3089
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3091
    const/high16 v22, -0x3d300000    # -104.0f

    const/high16 v23, 0x439a0000    # 308.0f

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/instant/CCPlace;->action(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/instant/CCPlace;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3092
    const-string v25, ""

    const v26, 0x3dcccccd    # 0.1f

    const-string v27, "effect_boss_trample_on_foot_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3090
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3088
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 3096
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3097
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3095
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 3100
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3101
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3099
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3078
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3104
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x11

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    const/16 v22, 0x5

    aput-object v12, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3077
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3076
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3111
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_10
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 3112
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 3113
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 3114
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 3115
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x5

    aget-object v12, v8, v17

    check-cast v12, Lorg/cocos2d/nodes/CCSprite;

    .line 3117
    .restart local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v15

    .line 3118
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 3119
    invoke-virtual {v13}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v17, v0

    const/high16 v18, 0x42980000    # 76.0f

    add-float v17, v17, v18

    invoke-virtual {v13}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v18, v0

    const/high16 v19, 0x429c0000    # 78.0f

    add-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 3120
    invoke-virtual {v13}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 3125
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3127
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3128
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3126
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3131
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3132
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3130
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3135
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3136
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3134
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 3139
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3142
    const-string v22, ""

    const/high16 v23, 0x3e800000    # 0.25f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3143
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3144
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 3145
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3141
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    .line 3140
    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 3149
    const/high16 v22, 0x41000000    # 8.0f

    const v23, -0x3bb74000    # -803.0f

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3150
    const v25, 0x3ecccccd    # 0.4f

    invoke-static/range {v25 .. v25}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3151
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3148
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3138
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 3155
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3158
    const-string v22, ""

    const/high16 v23, 0x3e800000    # 0.25f

    const-string v24, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3159
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3160
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 3161
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3157
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    .line 3156
    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 3165
    const/high16 v22, 0x41000000    # 8.0f

    const/high16 v23, -0x3bbe0000    # -776.0f

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3166
    const v25, 0x3ecccccd    # 0.4f

    invoke-static/range {v25 .. v25}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3167
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3164
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3154
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3124
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3171
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x12

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v13, v21, v22

    const/16 v22, 0x2

    aput-object v12, v21, v22

    const/16 v22, 0x3

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3123
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3122
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3178
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_11
    const/16 v17, 0x1

    aget-object v10, v8, v17

    check-cast v10, Lorg/cocos2d/nodes/CCSprite;

    .line 3179
    .restart local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v7, v8, v17

    check-cast v7, Lorg/cocos2d/nodes/CCSprite;

    .line 3180
    .restart local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v15, v8, v17

    check-cast v15, Lorg/cocos2d/nodes/CCSprite;

    .line 3185
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3187
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3188
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3186
    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3191
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3192
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3190
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3184
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3195
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    const/16 v22, 0x2

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3183
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3182
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3202
    .end local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_12
    const/16 v17, 0x1

    aget-object v10, v8, v17

    check-cast v10, Lorg/cocos2d/nodes/CCSprite;

    .line 3203
    .restart local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v15, v8, v17

    check-cast v15, Lorg/cocos2d/nodes/CCSprite;

    .line 3208
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3210
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3211
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3209
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3207
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3214
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x14

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    const/16 v22, 0x2

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3206
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3205
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3221
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_13
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 3222
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 3224
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v5

    .line 3225
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 3226
    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v17, v0

    const/high16 v18, 0x43b40000    # 360.0f

    add-float v17, v17, v18

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v18, v0

    const/high16 v19, 0x42400000    # 48.0f

    add-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 3227
    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 3229
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v13

    .line 3230
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 3231
    const/high16 v17, -0x3c0e0000    # -484.0f

    const/high16 v18, 0x434e0000    # 206.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 3232
    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, -0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 3237
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3239
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3240
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_foot_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3238
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3243
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3244
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3242
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3247
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3248
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3246
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3236
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3251
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x15

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3235
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3234
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3258
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_14
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 3259
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 3260
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 3261
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 3263
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v12

    .line 3264
    .restart local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 3265
    const/high16 v17, 0x42f40000    # 122.0f

    const/high16 v18, -0x3da40000    # -55.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 3266
    invoke-virtual {v13, v12}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 3271
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3273
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3274
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3272
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3277
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3279
    const v22, 0x3dcccccd    # 0.1f

    const/16 v23, 0x0

    const/high16 v24, 0x41200000    # 10.0f

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3280
    const-string v25, ""

    const v26, 0x3dcccccd    # 0.1f

    const-string v27, "effect_boss_trample_on_foot_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3278
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3276
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3284
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3285
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3283
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 3288
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3289
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3287
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 3292
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3293
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const v24, 0x3dcccccd    # 0.1f

    const/16 v25, 0x0

    const/high16 v26, -0x3ee00000    # -10.0f

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3291
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x5

    .line 3296
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3297
    const-string v22, "callBack_selector_playTrampleOnEffect"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3295
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3270
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3300
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x16

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    const/16 v22, 0x5

    aput-object v12, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3269
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3268
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3307
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_15
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 3308
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 3309
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 3310
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 3311
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x5

    aget-object v12, v8, v17

    check-cast v12, Lorg/cocos2d/nodes/CCSprite;

    .line 3317
    .restart local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 3318
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x3dcccccd    # 0.1f

    const/16 v22, 0x0

    const/high16 v23, 0x41200000    # 10.0f

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v19

    aput-object v19, v17, v18

    .line 3316
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3320
    const-string v20, ""

    const v21, 0x3dcccccd    # 0.1f

    const-string v22, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3322
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3323
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3321
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3326
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3328
    const/high16 v22, -0x3c530000    # -346.0f

    const/high16 v23, 0x43460000    # 198.0f

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/instant/CCPlace;->action(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/instant/CCPlace;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3329
    const-string v25, ""

    const v26, 0x3dcccccd    # 0.1f

    const-string v27, "effect_boss_trample_on_foot_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3327
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3325
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 3333
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3334
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3332
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 3337
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3338
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3336
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3315
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3341
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x17

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    const/16 v22, 0x5

    aput-object v12, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3314
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3313
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3348
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_16
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 3349
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 3350
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 3351
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 3352
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x5

    aget-object v12, v8, v17

    check-cast v12, Lorg/cocos2d/nodes/CCSprite;

    .line 3354
    .restart local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v15

    .line 3355
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 3356
    invoke-virtual {v13}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v17, v0

    const/high16 v18, 0x42980000    # 76.0f

    add-float v17, v17, v18

    invoke-virtual {v13}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v18, v0

    const/high16 v19, 0x429c0000    # 78.0f

    add-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 3357
    invoke-virtual {v13}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 3362
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3364
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3365
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3363
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3368
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3369
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_1.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3367
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3372
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3373
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3371
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 3376
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3379
    const-string v22, ""

    const/high16 v23, 0x3e800000    # 0.25f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3380
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3381
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 3382
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3378
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    .line 3377
    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 3386
    const/high16 v22, 0x41000000    # 8.0f

    const v23, -0x3bb74000    # -803.0f

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3387
    const v25, 0x3ecccccd    # 0.4f

    invoke-static/range {v25 .. v25}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3388
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3385
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3375
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 3392
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3395
    const-string v22, ""

    const/high16 v23, 0x3e800000    # 0.25f

    const-string v24, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3396
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3397
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 3398
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3394
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    .line 3393
    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 3402
    const/high16 v22, 0x41000000    # 8.0f

    const/high16 v23, -0x3bbe0000    # -776.0f

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3403
    const v25, 0x3ecccccd    # 0.4f

    invoke-static/range {v25 .. v25}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3404
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3401
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3391
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3361
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3408
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x18

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v13, v21, v22

    const/16 v22, 0x2

    aput-object v12, v21, v22

    const/16 v22, 0x3

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3360
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3359
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3415
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_17
    const/16 v17, 0x1

    aget-object v10, v8, v17

    check-cast v10, Lorg/cocos2d/nodes/CCSprite;

    .line 3416
    .restart local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v7, v8, v17

    check-cast v7, Lorg/cocos2d/nodes/CCSprite;

    .line 3417
    .restart local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v15, v8, v17

    check-cast v15, Lorg/cocos2d/nodes/CCSprite;

    .line 3422
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3424
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3425
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_bomb_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3423
    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3428
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3429
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3427
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3421
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3432
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x19

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    const/16 v22, 0x2

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3420
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3419
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3439
    .end local v7    # "bomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_18
    const/16 v17, 0x1

    aget-object v10, v8, v17

    check-cast v10, Lorg/cocos2d/nodes/CCSprite;

    .line 3440
    .restart local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v15, v8, v17

    check-cast v15, Lorg/cocos2d/nodes/CCSprite;

    .line 3445
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_foot_2.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3447
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3448
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3446
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3444
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3451
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1a

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    const/16 v22, 0x2

    aput-object v15, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3443
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3442
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3458
    .end local v10    # "foot":Lorg/cocos2d/nodes/CCSprite;
    .end local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_19
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 3459
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 3461
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v5

    .line 3462
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 3463
    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v17, v0

    const/high16 v18, 0x43b40000    # 360.0f

    add-float v17, v17, v18

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v18, v0

    const/high16 v19, 0x42400000    # 48.0f

    add-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 3464
    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 3466
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v13

    .line 3467
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 3468
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 3469
    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 3474
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_point.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3476
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3477
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_foot_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3475
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3480
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3481
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3479
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3484
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3485
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3483
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3473
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3488
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1b

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3472
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3471
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3495
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_1a
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 3496
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 3497
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 3498
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 3500
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v12

    .line 3501
    .restart local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 3502
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 3503
    invoke-virtual {v13, v12}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 3508
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_point.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3510
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3511
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_point.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3509
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3514
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3516
    const v22, 0x3dcccccd    # 0.1f

    const/16 v23, 0x0

    const/high16 v24, 0x41200000    # 10.0f

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3517
    const-string v25, ""

    const v26, 0x3dcccccd    # 0.1f

    const-string v27, "effect_boss_trample_on_foot_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3515
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3513
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3521
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3522
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3520
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 3525
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3526
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3524
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 3529
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3530
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const v24, 0x3dcccccd    # 0.1f

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3528
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3507
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3533
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1c

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    const/16 v22, 0x5

    aput-object v12, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3506
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3505
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3540
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_1b
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 3541
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 3542
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 3543
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 3544
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x5

    aget-object v12, v8, v17

    check-cast v12, Lorg/cocos2d/nodes/CCSprite;

    .line 3550
    .restart local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 3551
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x3dcccccd    # 0.1f

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v19

    aput-object v19, v17, v18

    .line 3549
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3553
    const-string v20, ""

    const v21, 0x3dcccccd    # 0.1f

    const-string v22, "effect_boss_trample_on_point.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3555
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3556
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_point.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3554
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3559
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3561
    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v22, v0

    const/high16 v23, 0x430c0000    # 140.0f

    sub-float v22, v22, v23

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v23, v0

    const/high16 v24, 0x42cc0000    # 102.0f

    add-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/instant/CCPlace;->action(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/instant/CCPlace;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3562
    const-string v25, ""

    const v26, 0x3dcccccd    # 0.1f

    const-string v27, "effect_boss_trample_on_foot_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3560
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3558
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 3566
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3567
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3565
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 3570
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3571
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3569
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3548
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3574
    const-string v20, "callBack_selector_killZombie"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3575
    const-string v20, "callBack_selector_trampleOn"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1d

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v6, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    const/16 v22, 0x4

    aput-object v13, v21, v22

    const/16 v22, 0x5

    aput-object v12, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3547
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3546
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 3582
    .end local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    .end local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_1c
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->setPosition(FF)V

    .line 3584
    const/16 v17, 0x1

    aget-object v4, v8, v17

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 3585
    .restart local v4    # "beforeFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x2

    aget-object v6, v8, v17

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 3586
    .restart local v6    # "beforeSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x3

    aget-object v5, v8, v17

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 3587
    .restart local v5    # "beforeOfNewSmoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x4

    aget-object v13, v8, v17

    check-cast v13, Lorg/cocos2d/nodes/CCSprite;

    .line 3588
    .restart local v13    # "newFoot":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x5

    aget-object v12, v8, v17

    check-cast v12, Lorg/cocos2d/nodes/CCSprite;

    .line 3590
    .restart local v12    # "newBomb":Lorg/cocos2d/nodes/CCSprite;
    const-string v17, "point.png"

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v15

    .line 3591
    .restart local v15    # "smoke":Lorg/cocos2d/nodes/CCSprite;
    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 3592
    const/high16 v17, 0x42e00000    # 112.0f

    const/high16 v18, 0x438e0000    # 284.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 3593
    invoke-virtual {v13}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 3598
    const-string v17, ""

    const v18, 0x3dcccccd    # 0.1f

    const-string v19, "effect_boss_trample_on_point.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3600
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3601
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_point.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3599
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3604
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3605
    const-string v22, ""

    const v23, 0x3dcccccd    # 0.1f

    const-string v24, "effect_boss_trample_on_point.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3603
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 3608
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3609
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3607
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 3612
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3615
    const-string v22, ""

    const/high16 v23, 0x3e800000    # 0.25f

    const-string v24, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3616
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3617
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 3618
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3614
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    .line 3613
    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 3622
    const/high16 v22, 0x41000000    # 8.0f

    const v23, -0x3bb74000    # -803.0f

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3623
    const v25, 0x3ecccccd    # 0.4f

    invoke-static/range {v25 .. v25}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3624
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3621
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3611
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 3628
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCAction;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3631
    const-string v22, ""

    const/high16 v23, 0x3e800000    # 0.25f

    const-string v24, "effect_boss_trample_on_smoke_6.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3632
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_3.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3633
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_4.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 3634
    const-string v25, ""

    const/high16 v26, 0x3e800000    # 0.25f

    const-string v27, "effect_boss_trample_on_smoke_5.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3630
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    .line 3629
    invoke-static/range {v22 .. v22}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 3638
    const/high16 v22, 0x41000000    # 8.0f

    const/high16 v23, -0x3bbe0000    # -776.0f

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 3639
    const v25, 0x3ecccccd    # 0.4f

    invoke-static/range {v25 .. v25}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 3640
    const-string v25, "callBack_selector_killZombie"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 3641
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v25

    aput-object v25, v23, v24

    .line 3637
    invoke-static/range {v22 .. v23}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v22

    aput-object v22, v20, v21

    .line 3627
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3597
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lorg/cocos2d/nodes/CCNode;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 3645
    aput-object v12, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    invoke-static/range {v20 .. v20}, Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;->action([Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 3646
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3596
    invoke-static/range {v17 .. v18}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v17

    .line 3595
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public callBack_selector_updateDjsAtlas()V
    .locals 4

    .prologue
    .line 793
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 794
    .local v1, "second":I
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->updateJbbzDjsAtlas(I)V

    .line 795
    if-nez v1, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->stopDjsAction()V

    .line 797
    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserGold(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v1    # "second":I
    :cond_0
    :goto_0
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_updateDjsGGTime()V
    .locals 8

    .prologue
    .line 1767
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->getUserData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 1768
    .local v1, "second":I
    if-lez v1, :cond_0

    .line 1769
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGAtlas(IZ)V

    .line 1782
    .end local v1    # "second":I
    :goto_0
    return-void

    .line 1772
    .restart local v1    # "second":I
    :cond_0
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->stopAllActions()V

    .line 1773
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGAtlas(IZ)V

    .line 1775
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserState;->setKeyGetGoldTag(I)V

    .line 1776
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "callBack_selector_updateGold"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, p0, v4, v5}, Lcom/sns/game/database/bean/UserState;->activateToAnwtThread(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1779
    .end local v1    # "second":I
    :catch_0
    move-exception v0

    .line 1780
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_updateGold(Ljava/lang/Object;)V
    .locals 17
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1785
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 1788
    .local v2, "data":[Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 1789
    const/4 v13, 0x0

    aget-object v13, v2, v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1791
    .local v11, "tag":I
    invoke-virtual/range {p0 .. p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGIcon()V

    .line 1792
    invoke-virtual/range {p0 .. p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGOffline()V

    .line 1794
    const/4 v7, 0x0

    .line 1795
    .local v7, "nextGetTime":Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sns/game/database/bean/UserState;->getGetGoldTime()Ljava/lang/String;

    move-result-object v1

    .line 1796
    .local v1, "beforeGetTime":Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sns/game/database/bean/UserState;->getNetDateTime()Ljava/lang/String;

    move-result-object v9

    .line 1798
    .local v9, "nowNetTime":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 1800
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v13}, Lorg/cocos2d/nodes/CCLabelAtlas;->stopAllActions()V

    .line 1801
    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGAtlas(IZ)V

    .line 1841
    :goto_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sns/game/database/bean/UserState;->stopAnwtThread()V

    .line 1846
    .end local v1    # "beforeGetTime":Ljava/lang/String;
    .end local v7    # "nextGetTime":Ljava/lang/String;
    .end local v9    # "nowNetTime":Ljava/lang/String;
    .end local v11    # "tag":I
    :cond_0
    :goto_1
    return-void

    .line 1806
    .restart local v1    # "beforeGetTime":Ljava/lang/String;
    .restart local v7    # "nextGetTime":Ljava/lang/String;
    .restart local v9    # "nowNetTime":Ljava/lang/String;
    .restart local v11    # "tag":I
    :cond_1
    const/4 v13, 0x1

    if-ne v11, v13, :cond_2

    .line 1807
    move-object v1, v9

    .line 1808
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/sns/game/database/bean/UserState;->setGetGoldTime(Ljava/lang/String;)V

    .line 1811
    :cond_2
    if-eqz v1, :cond_0

    .line 1816
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/sns/game/database/bean/UserState;->getNextGetGoldTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1818
    invoke-static {v7}, Lcom/sns/game/util/CCUtil;->parseDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 1819
    .local v6, "nextGTDate":Ljava/util/Date;
    invoke-static {v9}, Lcom/sns/game/util/CCUtil;->parseDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 1821
    .local v8, "nowNetDate":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long v4, v13, v15

    .line 1822
    .local v4, "millis":J
    const-wide/16 v13, 0x3e8

    div-long v13, v4, v13

    long-to-int v10, v13

    .line 1824
    .local v10, "second":I
    const-string v13, "Test"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u4e0b\u6b21\u9886\u53d6\u65f6\u95f4 = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const-string v13, "Test"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u73b0\u5728\u7f51\u7edc\u65f6\u95f4 = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    const-string v13, "Test"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u95f4\u9694\u65f6\u95f4\u79d2\u6570 = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    if-gtz v10, :cond_4

    .line 1829
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v12

    .line 1830
    .local v12, "uState":Lcom/sns/game/database/bean/UserState;
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sns/game/database/bean/UserState;->setKeyGetGoldTag(I)V

    .line 1831
    invoke-virtual {v12}, Lcom/sns/game/database/bean/UserState;->modifyGGTag()V

    .line 1832
    invoke-virtual/range {p0 .. p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGIcon()V

    .line 1833
    invoke-virtual/range {p0 .. p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGOffline()V

    .line 1834
    const/4 v14, -0x1

    invoke-virtual {v12}, Lcom/sns/game/database/bean/UserState;->getKeyGetGoldTag()I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_3

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGAtlas(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1843
    .end local v1    # "beforeGetTime":Ljava/lang/String;
    .end local v4    # "millis":J
    .end local v6    # "nextGTDate":Ljava/util/Date;
    .end local v7    # "nextGetTime":Ljava/lang/String;
    .end local v8    # "nowNetDate":Ljava/util/Date;
    .end local v9    # "nowNetTime":Ljava/lang/String;
    .end local v10    # "second":I
    .end local v11    # "tag":I
    .end local v12    # "uState":Lcom/sns/game/database/bean/UserState;
    :catch_0
    move-exception v3

    .line 1844
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 1834
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "beforeGetTime":Ljava/lang/String;
    .restart local v4    # "millis":J
    .restart local v6    # "nextGTDate":Ljava/util/Date;
    .restart local v7    # "nextGetTime":Ljava/lang/String;
    .restart local v8    # "nowNetDate":Ljava/util/Date;
    .restart local v9    # "nowNetTime":Ljava/lang/String;
    .restart local v10    # "second":I
    .restart local v11    # "tag":I
    .restart local v12    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 1837
    .end local v12    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sns/game/layer/CCNewGameLayer;->startDjsGGTimeAction(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public ccTouchedUserWqkItems(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1211
    const/4 v1, 0x0

    .line 1212
    .local v1, "touched":Z
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1217
    :goto_0
    return v1

    .line 1212
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 1214
    .local v0, "node":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v0, p1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->ccTouched(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1215
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public ccTouchedUserWqkItemsByXsjc(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1222
    const/4 v1, 0x0

    .line 1223
    .local v1, "touched":Z
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1228
    :goto_0
    return v1

    .line 1223
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 1225
    .local v0, "node":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->ccTouchedByEventAction(Landroid/view/MotionEvent;I)Z

    move-result v1

    .line 1226
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 379
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 381
    .local v1, "touchPoint":Lorg/cocos2d/types/CGPoint;
    invoke-static {}, Lcom/sns/game/layer/CCNewManSystem;->sharedSystem()Lcom/sns/game/layer/CCNewManSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/layer/CCNewManSystem;->isActivate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    iget-object v3, v3, Lcom/sns/game/object/GameWeaponLoader;->weaponFireRect:Lorg/cocos2d/types/CGRect;

    .line 382
    invoke-static {v3, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sns/game/layer/CCNewGameLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z

    move-result v2

    .line 386
    .local v2, "touched":Z
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v3, p1, v1}, Lcom/sns/game/object/GameWeaponLoader;->openFire(Landroid/view/MotionEvent;Lorg/cocos2d/types/CGPoint;)V

    .line 389
    .end local v2    # "touched":Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->ccTouchedUserWqkItems(Landroid/view/MotionEvent;)Z

    .line 393
    const/4 v3, 0x7

    new-array v3, v3, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v4, 0x0

    .line 394
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 395
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnCjms:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnShms:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnAddGold:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    .line 391
    invoke-virtual {p0, p1, v3}, Lcom/sns/game/layer/CCNewGameLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 441
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 443
    .local v1, "touchPoint":Lorg/cocos2d/types/CGPoint;
    invoke-static {}, Lcom/sns/game/layer/CCNewManSystem;->sharedSystem()Lcom/sns/game/layer/CCNewManSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/layer/CCNewManSystem;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    invoke-static {}, Lcom/sns/game/layer/CCNewManSystem;->sharedSystem()Lcom/sns/game/layer/CCNewManSystem;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sns/game/layer/CCNewManSystem;->touched(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 449
    .restart local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    iget-object v3, v3, Lcom/sns/game/object/GameWeaponLoader;->weaponFireRect:Lorg/cocos2d/types/CGRect;

    .line 448
    invoke-static {v3, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sns/game/layer/CCNewGameLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z

    move-result v2

    .line 452
    .local v2, "touched":Z
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v3, p1, v1}, Lcom/sns/game/object/GameWeaponLoader;->openFire(Landroid/view/MotionEvent;Lorg/cocos2d/types/CGPoint;)V

    .line 457
    .end local v2    # "touched":Z
    :cond_1
    const/4 v3, 0x7

    new-array v3, v3, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v4, 0x0

    .line 458
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 459
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnCjms:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnShms:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnAddGold:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    .line 455
    invoke-virtual {p0, p1, v3}, Lcom/sns/game/layer/CCNewGameLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 464
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 411
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/TouchManager;->getManager()Lcom/sns/game/util/TouchManager;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/sns/game/util/TouchManager;->makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 413
    .local v1, "touchPoint":Lorg/cocos2d/types/CGPoint;
    invoke-static {}, Lcom/sns/game/layer/CCNewManSystem;->sharedSystem()Lcom/sns/game/layer/CCNewManSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/layer/CCNewManSystem;->isActivate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 415
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    iget-object v3, v3, Lcom/sns/game/object/GameWeaponLoader;->weaponFireRect:Lorg/cocos2d/types/CGRect;

    .line 414
    invoke-static {v3, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 417
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sns/game/layer/CCNewGameLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z

    move-result v2

    .line 418
    .local v2, "touched":Z
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v3, p1, v1}, Lcom/sns/game/object/GameWeaponLoader;->openFire(Landroid/view/MotionEvent;Lorg/cocos2d/types/CGPoint;)V

    .line 423
    .end local v2    # "touched":Z
    :cond_0
    const/4 v3, 0x7

    new-array v3, v3, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v4, 0x0

    .line 424
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 425
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnCjms:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnShms:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnAddGold:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    .line 421
    invoke-virtual {p0, p1, v3}, Lcom/sns/game/layer/CCNewGameLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v1    # "touchPoint":Lorg/cocos2d/types/CGPoint;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected createSelf()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setBackground()V

    .line 140
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setUserGoldBox()V

    .line 141
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setBtnDouble()V

    .line 142
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setGameStars()V

    .line 143
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setUserWqkItems()V

    .line 144
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setBtnSkill()V

    .line 145
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setLevelBar()V

    .line 146
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setBtnGetGod()V

    .line 147
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setBtnCjms()V

    .line 148
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setBtnShms()V

    .line 149
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setBtnPause()V

    .line 150
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setBtnAddGold()V

    .line 151
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setBtnGiftBag()V

    .line 152
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setBtnTejlibao()V

    .line 153
    return-void
.end method

.method public depthPauseSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 2336
    if-nez p1, :cond_1

    .line 2348
    :cond_0
    return-void

    .line 2339
    :cond_1
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2342
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 2343
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

    .line 2344
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->pauseSchedulerAndActions()V

    .line 2345
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2346
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->depthPauseSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    goto :goto_0
.end method

.method public depthResumeSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 2358
    if-nez p1, :cond_1

    .line 2370
    :cond_0
    return-void

    .line 2361
    :cond_1
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2364
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 2365
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

    .line 2366
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->resumeSchedulerAndActions()V

    .line 2367
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2368
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->depthResumeSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    goto :goto_0
.end method

.method fgdCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 1024
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$3;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$3;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method public findWqkItem(I)Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 1273
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v2

    .line 1280
    :goto_0
    return-object v1

    .line 1273
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 1274
    .local v1, "item":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWqkItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, p1, :cond_0

    goto :goto_0

    .line 1278
    .end local v1    # "item":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 1280
    goto :goto_0
.end method

.method public findWqkItemByUseLevel(I)Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 1297
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v2

    .line 1304
    :goto_0
    return-object v1

    .line 1297
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 1298
    .local v1, "item":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/bean/WeaponBean;->getUselevel()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, p1, :cond_0

    goto :goto_0

    .line 1302
    .end local v1    # "item":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 1304
    goto :goto_0
.end method

.method formatGGTime(I)Ljava/lang/String;
    .locals 11
    .param p1, "second"    # I

    .prologue
    const/16 v10, 0xa

    const/4 v7, 0x0

    .line 1713
    div-int/lit16 v4, p1, 0xe10

    .local v4, "tempM":I
    rem-int/lit16 p1, p1, 0xe10

    .line 1714
    div-int/lit8 v3, p1, 0x3c

    .local v3, "tempH":I
    rem-int/lit8 p1, p1, 0x3c

    .line 1715
    move v5, p1

    .line 1716
    .local v5, "tempS":I
    if-ge v4, v10, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gez v4, :cond_0

    move v4, v7

    .end local v4    # "tempM":I
    :cond_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1717
    .local v1, "M":Ljava/lang/String;
    :goto_0
    if-ge v3, v10, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gez v3, :cond_1

    move v3, v7

    .end local v3    # "tempH":I
    :cond_1
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1718
    .local v0, "H":Ljava/lang/String;
    :goto_1
    if-ge v5, v10, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gez v5, :cond_4

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1719
    .local v2, "S":Ljava/lang/String;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1721
    .local v6, "tempTime":Ljava/lang/String;
    return-object v6

    .line 1716
    .end local v0    # "H":Ljava/lang/String;
    .end local v1    # "M":Ljava/lang/String;
    .end local v2    # "S":Ljava/lang/String;
    .end local v6    # "tempTime":Ljava/lang/String;
    .restart local v3    # "tempH":I
    .restart local v4    # "tempM":I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1717
    .end local v4    # "tempM":I
    .restart local v1    # "M":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .end local v3    # "tempH":I
    .restart local v0    # "H":Ljava/lang/String;
    :cond_4
    move v7, v5

    .line 1718
    goto :goto_2

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public freezeRandomTaskSystem()V
    .locals 1

    .prologue
    .line 2509
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->rdomSystem:Lcom/sns/game/layer/RandomTaskSystem;

    if-eqz v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->rdomSystem:Lcom/sns/game/layer/RandomTaskSystem;

    invoke-virtual {v0}, Lcom/sns/game/layer/RandomTaskSystem;->removeSelf()V

    .line 2511
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->rdomSystem:Lcom/sns/game/layer/RandomTaskSystem;

    .line 2512
    return-void
.end method

.method public getDropUserGoldPos()Lorg/cocos2d/types/CGPoint;
    .locals 2

    .prologue
    .line 698
    const/high16 v0, 0x41ec0000    # 29.5f

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public getRdomSystem()Lcom/sns/game/layer/RandomTaskSystem;
    .locals 1

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->rdomSystem:Lcom/sns/game/layer/RandomTaskSystem;

    return-object v0
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3664
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v0

    .line 3665
    .local v0, "system":Lcom/sns/game/database/bean/GameSceneSystem;
    invoke-virtual {v0}, Lcom/sns/game/database/bean/GameSceneSystem;->getSceneTag()Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->getActionGameingName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getWqkHltSp()Lorg/cocos2d/nodes/CCSprite;
    .locals 2

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    if-nez v1, :cond_0

    .line 1331
    const-string v0, "Game_UI_Box_Weapon_Selected.png"

    .line 1332
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    .line 1334
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    return-object v1
.end method

.method public getZombieLoader()Lcom/sns/game/object/GameZombieLoader;
    .locals 1

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    return-object v0
.end method

.method public hltWqkItemById(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1350
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1359
    :goto_0
    return-void

    .line 1350
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 1351
    .local v1, "item":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWqkItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1352
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->getWqkHltSp()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->addHltImage(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1356
    .end local v1    # "item":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :catch_0
    move-exception v0

    .line 1357
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hltWqkItemToDefault()V
    .locals 5

    .prologue
    .line 1339
    const/4 v0, 0x0

    .line 1340
    .local v0, "defaultIdx":I
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 1341
    .local v2, "targetItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->getWqkHltSp()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->addHltImage(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    .end local v2    # "targetItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :goto_0
    return-void

    .line 1343
    :catch_0
    move-exception v1

    .line 1344
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected isLongTimeToLoad()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public muleNumAnim_CallBack(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 871
    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3f6147ae    # 0.88f

    :try_start_0
    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v2

    .line 872
    .local v2, "scaleTo":Lorg/cocos2d/actions/interval/CCScaleTo;
    const-string v3, "updateMuleNum_CallBack"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v1

    .line 873
    .local v1, "funcND":Lorg/cocos2d/actions/instant/CCCallFuncND;
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    .end local v1    # "funcND":Lorg/cocos2d/actions/instant/CCCallFuncND;
    .end local v2    # "scaleTo":Lorg/cocos2d/actions/interval/CCScaleTo;
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public nextGameStarPos()Lorg/cocos2d/types/CGPoint;
    .locals 5

    .prologue
    .line 1039
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->starTotal:I

    if-lt v0, v3, :cond_0

    .line 1046
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    :goto_1
    return-object v3

    .line 1040
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, 0x1

    .line 1041
    .local v1, "indexTop":I
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v2, v3, v1

    .line 1042
    .local v2, "topStarSp":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1043
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    goto :goto_1

    .line 1039
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreateFinishCall()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->setGamePause(Z)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 160
    invoke-virtual {p0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->playLayerMusic(Z)V

    .line 163
    sget-boolean v1, Lcom/sns/game/util/GameConstant;->FIRST_JiangshiJiGe:Z

    if-eqz v1, :cond_0

    .line 164
    sput-boolean v2, Lcom/sns/game/util/GameConstant;->FIRST_JiangshiJiGe:Z

    .line 165
    invoke-static {p0}, Lcom/sns/game/dialog/CCJsjgDialog;->ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCJsjgDialog;

    move-result-object v0

    .line 166
    .local v0, "dialog":Lcom/sns/game/dialog/CCJsjgDialog;
    invoke-virtual {v0}, Lcom/sns/game/dialog/CCJsjgDialog;->show()V

    .line 172
    .end local v0    # "dialog":Lcom/sns/game/dialog/CCJsjgDialog;
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreateLoadingCall()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lcom/sns/game/ui/CCGameLayer;->onCreateLoadingCall()V

    .line 127
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->activateLoading()V

    .line 128
    return-void
.end method

.method protected onExitFinishCall()V
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/sns/game/layer/CCNewGameLayer;->mLayer:Lcom/sns/game/layer/CCNewGameLayer;

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/sns/game/layer/CCNewGameLayer;->mLayer:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v0}, Lcom/sns/game/layer/CCNewGameLayer;->recycleSelf()V

    .line 354
    const/4 v0, 0x0

    sput-object v0, Lcom/sns/game/layer/CCNewGameLayer;->mLayer:Lcom/sns/game/layer/CCNewGameLayer;

    .line 356
    :cond_0
    return-void
.end method

.method public onGamePause()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2330
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->setGamePause(Z)V

    .line 2331
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->isGamePause()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 2332
    invoke-virtual {p0, p0}, Lcom/sns/game/layer/CCNewGameLayer;->depthPauseSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    .line 2333
    return-void
.end method

.method public onGamePauseWithOut()V
    .locals 2

    .prologue
    .line 2308
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->isGamePause()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2309
    invoke-static {}, Lcom/sns/game/layer/CCNewManSystem;->sharedSystem()Lcom/sns/game/layer/CCNewManSystem;

    move-result-object v0

    .line 2310
    .local v0, "system":Lcom/sns/game/layer/CCNewManSystem;
    invoke-virtual {v0}, Lcom/sns/game/layer/CCNewManSystem;->isActivate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2314
    .end local v0    # "system":Lcom/sns/game/layer/CCNewManSystem;
    :cond_0
    :goto_0
    return-void

    .line 2311
    .restart local v0    # "system":Lcom/sns/game/layer/CCNewManSystem;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->setGamePause(Z)V

    .line 2312
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->btnPause_CallBack(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onGameResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2352
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->setGamePause(Z)V

    .line 2353
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->isGamePause()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 2354
    invoke-virtual {p0, p0}, Lcom/sns/game/layer/CCNewGameLayer;->depthResumeSchedulerAndActions(Lorg/cocos2d/nodes/CCNode;)V

    .line 2355
    return-void

    .line 2353
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onGameResumeWithOut()V
    .locals 2

    .prologue
    .line 2319
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->isGamePause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->inPauseDialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    if-eqz v0, :cond_0

    .line 2321
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->onGamePause()V

    .line 2322
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->inPauseDialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    invoke-virtual {v0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->resumeSchedulerAndActions()V

    .line 2323
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->inPauseDialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->inPauseDialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    iget-object v1, v1, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->btn_CallBack(Ljava/lang/Object;)V

    .line 2326
    :cond_0
    return-void
.end method

.method public onGameStarFull_CallBack(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1004
    :try_start_0
    invoke-static {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->dialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCFunnyGameDialog;

    move-result-object v0

    .line 1005
    .local v0, "dialog":Lcom/sns/game/dialog/CCFunnyGameDialog;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->fgdCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 1006
    invoke-virtual {v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    .end local v0    # "dialog":Lcom/sns/game/dialog/CCFunnyGameDialog;
    :goto_0
    return-void

    .line 1007
    :catch_0
    move-exception v1

    .line 1008
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method onPauseCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 2395
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$19;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$19;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method onResumeCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 2417
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$20;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$20;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method onSelectedLogicalHandleByBtnGG()Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
    .locals 2

    .prologue
    .line 1644
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$10;

    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/sns/game/layer/CCNewGameLayer$10;-><init>(Lcom/sns/game/layer/CCNewGameLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-object v0
.end method

.method onWeaponGiftBagGetCallback()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 1610
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$9;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$9;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method onbdgamePauseWithCallBack(Lcom/sns/game/dialog/CCInGamePauseDialog;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "dialog"    # Lcom/sns/game/dialog/CCInGamePauseDialog;

    .prologue
    .line 2375
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$18;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/layer/CCNewGameLayer$18;-><init>(Lcom/sns/game/layer/CCNewGameLayer;Lcom/sns/game/dialog/CCInGamePauseDialog;)V

    return-object v0
.end method

.method protected playLayerMusic(Z)V
    .locals 4
    .param p1, "loop"    # Z

    .prologue
    .line 361
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v1

    .line 362
    .local v1, "system":Lcom/sns/game/database/bean/GameSceneSystem;
    invoke-virtual {v1}, Lcom/sns/game/database/bean/GameSceneSystem;->getSceneTag()Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    move-result-object v0

    .line 364
    .local v0, "sceneTag":Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;
    sget-object v2, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_SIGNLE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    if-ne v0, v2, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/sns/game/util/SoundManager;->playBackgroundSound(Lcom/sns/game/util/GameConstant$LayerTag;ZI)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    sget-object v2, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_MORE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    if-ne v0, v2, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/sns/game/util/SoundManager;->playBackgroundSound(Lcom/sns/game/util/GameConstant$LayerTag;ZI)V

    goto :goto_0
.end method

.method protected preloadSelf()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewGameLayer;->setLoading()V

    .line 134
    return-void
.end method

.method public randomDropWqkItem()Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    .locals 4

    .prologue
    .line 1286
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    .line 1287
    .local v1, "randomIdx":I
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    .end local v1    # "randomIdx":I
    :goto_0
    return-object v2

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1291
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected recycleSelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnCjms:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnCjms:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnShms:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnShms:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_6

    .line 196
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_7

    .line 199
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_8

    .line 202
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 204
    :cond_8
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggOffLine:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_9

    .line 205
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggOffLine:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 207
    :cond_9
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    if-eqz v0, :cond_a

    .line 208
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameZombieLoader;->onDestroy()V

    .line 210
    :cond_a
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_b

    .line 211
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 213
    :cond_b
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_c

    .line 214
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 216
    :cond_c
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_d

    .line 217
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 219
    :cond_d
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_e

    .line 220
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 222
    :cond_e
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelEndBarBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_f

    .line 223
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelEndBarBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 225
    :cond_f
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_10

    .line 226
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 228
    :cond_10
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_11

    .line 229
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 231
    :cond_11
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 232
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    :cond_12
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_13

    .line 235
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 237
    :cond_13
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    if-eqz v0, :cond_14

    .line 238
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeaponLoader;->recycleSelf()V

    .line 240
    :cond_14
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    if-eqz v0, :cond_15

    .line 241
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    invoke-virtual {v0}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->removeSelf()V

    .line 243
    :cond_15
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_16

    .line 244
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 246
    :cond_16
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 247
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    :cond_17
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_18

    .line 250
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 252
    :cond_18
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_19

    .line 253
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 255
    :cond_19
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_1a

    .line 256
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 259
    :cond_1a
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    .line 260
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnCjms:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 261
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 262
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 263
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 264
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnShms:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 265
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 266
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    .line 267
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 268
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    .line 269
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggOffLine:Lorg/cocos2d/nodes/CCSprite;

    .line 270
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;

    .line 272
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 273
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    .line 274
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 275
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    .line 276
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelEndBarBox:Lorg/cocos2d/nodes/CCSprite;

    .line 277
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->loading:Lcom/sns/game/layer/GameLoading;

    .line 278
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

    .line 279
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 280
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumFrames:Ljava/util/ArrayList;

    .line 282
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->wqkHltSp:Lorg/cocos2d/nodes/CCSprite;

    .line 283
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    .line 284
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    .line 285
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    .line 286
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    .line 287
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    .line 288
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 289
    iput-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostBox:Lorg/cocos2d/nodes/CCSprite;

    .line 290
    const/4 v0, 0x3

    iput v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->starTotal:I

    .line 291
    iput v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I

    .line 293
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->freezeRandomTaskSystem()V

    .line 294
    invoke-static {}, Lcom/sns/game/layer/CCNewManSystem;->sharedSystem()Lcom/sns/game/layer/CCNewManSystem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sns/game/layer/CCNewManSystem;->setActivate(Z)V

    .line 295
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->purgeCachedData()V

    .line 296
    return-void
.end method

.method public removeTeachArrowInWpnItem(Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;)V
    .locals 2
    .param p1, "targetWqk"    # Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .prologue
    .line 1323
    if-eqz p1, :cond_0

    .line 1324
    const/16 v1, 0xc01

    invoke-virtual {p1, v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    .line 1325
    .local v0, "existNode":Lorg/cocos2d/nodes/CCNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 1327
    .end local v0    # "existNode":Lorg/cocos2d/nodes/CCNode;
    :cond_0
    return-void
.end method

.method public runAddWqkNumAction(Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;II)V
    .locals 12
    .param p1, "targetWqkItem"    # Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    .param p2, "bulletCount"    # I
    .param p3, "zOrder"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    .line 1371
    const-string v4, ""

    const-string v5, "UI/New_Num_x1_20x39.png"

    const/16 v6, 0x14

    const/16 v7, 0x27

    const/16 v8, 0x30

    invoke-static {v4, v5, v6, v7, v8}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v2

    .line 1372
    .local v2, "jumpGoldAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {v2, v9, v9}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 1373
    invoke-virtual {p1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 1374
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 1375
    invoke-virtual {p0, v2, p3}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 1377
    const/high16 v4, 0x3f400000    # 0.75f

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v0

    .line 1378
    .local v0, "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    const/4 v4, 0x0

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v4, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    const/high16 v5, -0x3db80000    # -50.0f

    invoke-static {v9, v4, v5, v10}, Lorg/cocos2d/actions/interval/CCJumpBy;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v1

    .line 1379
    .local v1, "jumpBy":Lorg/cocos2d/actions/interval/CCJumpBy;
    new-array v4, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {v1}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v0, v4}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v3

    .line 1380
    .local v3, "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    new-array v4, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {}, Lcom/sns/game/actions/CCRemove;->action()Lcom/sns/game/actions/CCRemove;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1381
    return-void
.end method

.method public runAnimWithGiftBag()V
    .locals 13

    .prologue
    const v12, 0x3d99999a    # 0.075f

    const v11, 0x3f4ccccd    # 0.8f

    const v10, 0x3f1eb852    # 0.62f

    const v9, 0x3e147ae1    # 0.145f

    const v8, 0x3e0a3d71    # 0.135f

    .line 2124
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->stopAllActions()V

    .line 2125
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->numberOfRunningActions()I

    move-result v3

    if-nez v3, :cond_0

    .line 2127
    const/high16 v1, 0x40000000    # 2.0f

    .line 2129
    .local v1, "scale":F
    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    const v4, 0x3f59999a    # 0.85f

    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v3

    const/16 v4, 0xf

    new-array v4, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v5, 0x0

    .line 2130
    const/high16 v6, 0x3e000000    # 0.125f

    mul-float/2addr v6, v1

    const v7, 0x3f533333    # 0.825f

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 2132
    mul-float v6, v8, v1

    invoke-static {v6, v11}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 2133
    mul-float v6, v9, v1

    invoke-static {v6, v10}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 2134
    mul-float v6, v8, v1

    invoke-static {v6, v11}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 2135
    mul-float v6, v9, v1

    invoke-static {v6, v10}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 2136
    mul-float v6, v8, v1

    invoke-static {v6, v11}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 2137
    mul-float v6, v9, v1

    invoke-static {v6, v10}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 2138
    mul-float v6, v8, v1

    invoke-static {v6, v11}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 2139
    mul-float v6, v9, v1

    invoke-static {v6, v10}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 2140
    mul-float v6, v8, v1

    invoke-static {v6, v11}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    .line 2141
    mul-float v6, v9, v1

    invoke-static {v6, v10}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    .line 2143
    mul-float v6, v12, v1

    const/high16 v7, 0x3fe00000    # 1.75f

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    .line 2144
    mul-float v6, v12, v1

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    .line 2145
    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    .line 2146
    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {v6}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2128
    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    .line 2148
    .local v2, "seque":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-static {v2}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v0

    .line 2149
    .local v0, "out":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 2151
    .end local v0    # "out":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    .end local v1    # "scale":F
    .end local v2    # "seque":Lorg/cocos2d/actions/interval/CCSequence;
    :cond_0
    return-void
.end method

.method public runAnimWithTejlibao()V
    .locals 11

    .prologue
    const v10, 0x3f99999a    # 1.2f

    const v9, 0x3f666666    # 0.9f

    const v8, 0x3f8ccccd    # 1.1f

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3dcccccd    # 0.1f

    .line 2287
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->stopAllActions()V

    .line 2288
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->numberOfRunningActions()I

    move-result v2

    if-nez v2, :cond_0

    .line 2291
    const v2, 0x400ccccd    # 2.2f

    invoke-static {v2}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    .line 2292
    invoke-static {v6, v10}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 2293
    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 2294
    invoke-static {v6, v8, v8}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FFF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 2295
    invoke-static {v6, v10, v9}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FFF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 2296
    invoke-static {v6, v9, v8}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FFF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 2297
    invoke-static {v6, v7, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FFF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2290
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 2300
    .local v1, "seque":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-static {v1}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v0

    .line 2301
    .local v0, "out":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 2303
    .end local v0    # "out":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    .end local v1    # "seque":Lorg/cocos2d/actions/interval/CCSequence;
    :cond_0
    return-void
.end method

.method public runDjsAction()V
    .locals 6

    .prologue
    .line 761
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 762
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->updateJbbzDjsBox(Z)V

    .line 765
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    .line 766
    const-string v5, "callBack_selector_updateDjsAtlas"

    invoke-static {p0, v5}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v5

    aput-object v5, v3, v4

    .line 763
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 768
    .local v1, "seq":Lorg/cocos2d/actions/interval/CCSequence;
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {v1, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .end local v1    # "seq":Lorg/cocos2d/actions/interval/CCSequence;
    :cond_0
    :goto_0
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public runOnGameStarFullAction()V
    .locals 8

    .prologue
    .line 990
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->starTotal:I

    if-lt v4, v6, :cond_0

    .line 996
    const/high16 v6, 0x40700000    # 3.75f

    invoke-static {v6}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v2

    .line 997
    .local v2, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    const-string v6, "onGameStarFull_CallBack"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    .line 998
    .local v3, "funcNd":Lorg/cocos2d/actions/instant/CCCallFuncND;
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v2, v6}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 999
    .local v0, "action":Lorg/cocos2d/actions/interval/CCSequence;
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v6, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1000
    return-void

    .line 992
    .end local v0    # "action":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v2    # "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    .end local v3    # "funcNd":Lorg/cocos2d/actions/instant/CCCallFuncND;
    :cond_0
    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v5, v6, 0x1

    .line 993
    .local v5, "indexTop":I
    const/high16 v6, 0x40400000    # 3.0f

    const/16 v7, 0x9

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCBlink;->action(FI)Lorg/cocos2d/actions/interval/CCBlink;

    move-result-object v1

    .line 994
    .local v1, "blink":Lorg/cocos2d/actions/interval/CCBlink;
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v6, v6, v5

    invoke-virtual {v6, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 990
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setGGAtlas()V
    .locals 5

    .prologue
    .line 1707
    const-string v0, ""

    const-string v1, "UI/New_Num_x_14x17.png"

    const/16 v2, 0xe

    const/16 v3, 0x11

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 1708
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 1709
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGAtlas(IZ)V

    .line 1710
    return-void
.end method

.method public declared-synchronized setLevelBarUpdateLock(Z)V
    .locals 2
    .param p1, "lock"    # Z

    .prologue
    .line 1479
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setUserData(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    :cond_0
    monitor-exit p0

    return-void

    .line 1479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRandomTaskSystem()V
    .locals 1

    .prologue
    .line 2500
    invoke-static {p0}, Lcom/sns/game/layer/RandomTaskSystem;->sharedSystem(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/layer/RandomTaskSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->rdomSystem:Lcom/sns/game/layer/RandomTaskSystem;

    .line 2501
    return-void
.end method

.method public varargs sharedCallBack(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 682
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$2;

    invoke-direct {v0, p0, p2}, Lcom/sns/game/layer/CCNewGameLayer$2;-><init>(Lcom/sns/game/layer/CCNewGameLayer;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected sortChildren()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x64

    const/16 v3, 0x2710

    .line 301
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 302
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->userGoldBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 303
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 305
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 309
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStarBox:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 310
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v3, v0}, Lcom/sns/game/layer/CCNewGameLayer;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 311
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/cocos2d/nodes/CCNode;

    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelEndBarBox:Lorg/cocos2d/nodes/CCSprite;

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/sns/game/layer/CCNewGameLayer;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 312
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGetGod:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 313
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnCjms:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 314
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnShms:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 315
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnPause:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 316
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnAddGold:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 317
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnGiftBag:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 318
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 319
    return-void
.end method

.method public startDjsGGTimeAction(I)V
    .locals 7
    .param p1, "second"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    .line 1748
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v2, :cond_0

    .line 1749
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v2, v6}, Lorg/cocos2d/nodes/CCLabelAtlas;->getAction(I)Lorg/cocos2d/actions/base/CCAction;

    move-result-object v1

    .line 1750
    .local v1, "timeAn":Lorg/cocos2d/actions/base/CCAction;
    if-lez p1, :cond_0

    if-nez v1, :cond_0

    .line 1751
    invoke-virtual {p0, p1, v3}, Lcom/sns/game/layer/CCNewGameLayer;->updateGGAtlas(IZ)V

    .line 1754
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v2

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    .line 1755
    const-string v5, "callBack_selector_updateDjsGGTime"

    invoke-static {p0, v5}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1752
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 1757
    .local v0, "seq":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-static {v0}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    .line 1758
    invoke-virtual {v1, v6}, Lorg/cocos2d/actions/base/CCAction;->setTag(I)V

    .line 1759
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v2, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1762
    .end local v0    # "seq":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v1    # "timeAn":Lorg/cocos2d/actions/base/CCAction;
    :cond_0
    return-void
.end method

.method public stopDjsAction()V
    .locals 2

    .prologue
    .line 779
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->stopAllActions()V

    .line 781
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->updateJbbzDjsBox(Z)V

    .line 782
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->updateJbbzDjsAtlas(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public takeGiftLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 2090
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$14;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$14;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method public takeTejlibaoLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 2243
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$16;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$16;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method public targetUserWqkItem_CallBack(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1200
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    move-object v3, v0

    .line 1201
    .local v3, "target":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    iget-object v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v3}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWqkItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sns/game/object/GameWeaponLoader;->switchWeapon(I)V

    .line 1202
    iget-object v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v4}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v1

    .line 1203
    .local v1, "bean":Lcom/sns/game/database/bean/WeaponBean;
    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->updateWpnCostNodes(Lcom/sns/game/database/bean/WeaponBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    .end local v1    # "bean":Lcom/sns/game/database/bean/WeaponBean;
    .end local v3    # "target":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :goto_0
    return-void

    .line 1205
    :catch_0
    move-exception v2

    .line 1206
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method upGradeDialogOnCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 1561
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$7;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$7;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method upGradeDialogOnShowCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 1548
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$6;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$6;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method public updateBtnSkill(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const v7, 0x9c9c

    const v6, 0x3dcccccd    # 0.1f

    .line 1398
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-nez v5, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1399
    :cond_1
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->stopAllActions()V

    .line 1400
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v5, p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 1401
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v5, v7}, Lorg/cocos2d/menus/CCMenuItemSprite;->getAction(I)Lorg/cocos2d/actions/base/CCAction;

    move-result-object v1

    .line 1402
    .local v1, "existAcn":Lorg/cocos2d/actions/base/CCAction;
    if-nez v1, :cond_0

    .line 1403
    const/high16 v5, 0x3fa00000    # 1.25f

    invoke-static {v6, v5}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v2

    .line 1404
    .local v2, "scaleTo_1":Lorg/cocos2d/actions/interval/CCScaleTo;
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v3

    .line 1405
    .local v3, "scaleTo_2":Lorg/cocos2d/actions/interval/CCScaleTo;
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v2, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    .line 1406
    .local v4, "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-static {v4}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v0

    .line 1407
    .local v0, "action":Lorg/cocos2d/actions/base/CCRepeatForever;
    invoke-virtual {v0, v7}, Lorg/cocos2d/actions/base/CCRepeatForever;->setTag(I)V

    .line 1408
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->btnSkill:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v5, v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto :goto_0
.end method

.method public updateGGAtlas(IZ)V
    .locals 6
    .param p1, "second"    # I
    .param p2, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    .line 1728
    iget-object v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v4, :cond_0

    .line 1729
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserState;->getKeyGetGoldTag()I

    move-result v2

    .line 1731
    .local v2, "keyTag":I
    iget-object v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz p2, :cond_1

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-virtual {v4, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setVisible(Z)V

    .line 1732
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v3, v5, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 1733
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v4, 0x42820000    # 65.0f

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-virtual {v3, v4, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 1735
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->formatGGTime(I)Ljava/lang/String;

    move-result-object v1

    .line 1736
    .local v1, "formatTime":Ljava/lang/String;
    const-string v0, "00:00:00"

    .line 1737
    .local v0, "endedTime":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1738
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setUserData(Ljava/lang/Object;)V

    .line 1739
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v3, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 1745
    .end local v0    # "endedTime":Ljava/lang/String;
    .end local v1    # "formatTime":Ljava/lang/String;
    .end local v2    # "keyTag":I
    :cond_0
    :goto_1
    return-void

    .line 1731
    .restart local v2    # "keyTag":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1741
    .restart local v0    # "endedTime":Ljava/lang/String;
    .restart local v1    # "formatTime":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setUserData(Ljava/lang/Object;)V

    .line 1742
    iget-object v3, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v3, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public updateGGIcon()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1672
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v2, :cond_0

    .line 1673
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserState;->getGGTag()I

    move-result v1

    .line 1674
    .local v1, "tag":I
    iget-object v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    .end local v1    # "tag":I
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "tag":I
    :cond_1
    move v2, v3

    .line 1674
    goto :goto_0

    .line 1676
    .end local v1    # "tag":I
    :catch_0
    move-exception v0

    .line 1677
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1678
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v2, :cond_0

    .line 1679
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    goto :goto_1
.end method

.method public updateGGOffline()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1694
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggOffLine:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v2, :cond_0

    .line 1695
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserState;->getGGTag()I

    move-result v1

    .line 1696
    .local v1, "tag":I
    iget-object v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggOffLine:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1704
    .end local v1    # "tag":I
    :cond_0
    :goto_1
    return-void

    .line 1696
    .restart local v1    # "tag":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1698
    .end local v1    # "tag":I
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1700
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggOffLine:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v2, :cond_0

    .line 1701
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->ggOffLine:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    goto :goto_1
.end method

.method public declared-synchronized updateGameStars()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 965
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v5, :cond_1

    .line 987
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 967
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->starTotal:I

    if-lt v0, v4, :cond_2

    .line 978
    :goto_2
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v3

    .line 979
    .local v3, "uState":Lcom/sns/game/database/bean/UserState;
    iget v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserState;->setGameStarCount(I)V

    .line 980
    iget v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I

    iget v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->starTotal:I

    if-ne v4, v5, :cond_0

    .line 981
    const/4 v4, -0x1

    iput v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I

    .line 982
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sns/game/database/bean/UserState;->setGameStarCount(I)V

    .line 983
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 984
    const-string v4, "\u60a8\u5df2\u96c6\u9f503\u9897\u5c0f\u661f\u661f,\u5373\u5c06\u8fdb\u5165\u5e78\u8fd0\u5927\u62bd\u5956!"

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewGameLayer;->notifyToast(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->runOnGameStarFullAction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 965
    .end local v0    # "i":I
    .end local v3    # "uState":Lcom/sns/game/database/bean/UserState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 969
    .restart local v0    # "i":I
    :cond_2
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, 0x1

    .line 970
    .local v1, "indexTop":I
    :try_start_2
    iget-object v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->gameStars:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v2, v4, v1

    .line 971
    .local v2, "topStarSp":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getVisible()Z

    move-result v4

    if-nez v4, :cond_3

    .line 972
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 973
    iget v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sns/game/layer/CCNewGameLayer;->starCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 967
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public updateJbbzDjsAtlas(I)V
    .locals 3
    .param p1, "second"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 753
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 754
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 756
    :cond_0
    return-void
.end method

.method public updateJbbzDjsBox(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 738
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->jbbzDjsBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 741
    :cond_0
    return-void
.end method

.method public updateLevelAtlas()V
    .locals 3

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 1524
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, 0x41d80000    # 27.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 1525
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 1527
    :cond_0
    return-void
.end method

.method public declared-synchronized updateLevelBar(F)V
    .locals 18
    .param p1, "arg"    # F

    .prologue
    .line 1485
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v15, :cond_0

    .line 1486
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v15}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1487
    .local v7, "isUpdate":Z
    if-eqz v7, :cond_0

    .line 1488
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/cocos2d/nodes/CCSprite;->setUserData(Ljava/lang/Object;)V

    .line 1490
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v8

    .line 1491
    .local v8, "level":I
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sns/game/database/bean/UserState;->getCurrentExp()I

    move-result v15

    int-to-float v3, v15

    .line 1492
    .local v3, "currentExp":F
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/sns/game/database/dao/UserLevelDao;->getCurrentFullExp(I)I

    move-result v15

    int-to-float v2, v15

    .line 1493
    .local v2, "currFullExp":F
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/sns/game/database/dao/UserLevelDao;->getNextFullExp(I)I

    move-result v15

    int-to-float v9, v15

    .line 1494
    .local v9, "nextFullExp":F
    sub-float v15, v3, v2

    sub-float v16, v9, v2

    div-float v1, v15, v16

    .line 1495
    .local v1, "calcScale":F
    const/16 v15, 0x50

    if-eq v8, v15, :cond_1

    move v10, v1

    .line 1497
    .local v10, "scale":F
    :goto_0
    const-string v15, "Game_UI_Bar_Level.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sns/game/layer/CCNewGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v11

    .line 1498
    .local v11, "spriteFrame":Lorg/cocos2d/nodes/CCSpriteFrame;
    invoke-virtual {v11}, Lorg/cocos2d/nodes/CCSpriteFrame;->getRect()Lorg/cocos2d/types/CGRect;

    move-result-object v5

    .line 1499
    .local v5, "frameRect":Lorg/cocos2d/types/CGRect;
    iget-object v15, v5, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v13, v15, Lorg/cocos2d/types/CGPoint;->x:F

    .line 1500
    .local v13, "x":F
    iget-object v15, v5, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v14, v15, Lorg/cocos2d/types/CGPoint;->y:F

    .line 1501
    .local v14, "y":F
    iget-object v15, v5, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v15, v15, Lorg/cocos2d/types/CGSize;->width:F

    const/high16 v16, 0x42b40000    # 90.0f

    sub-float v12, v15, v16

    .line 1502
    .local v12, "w":F
    iget-object v15, v5, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v6, v15, Lorg/cocos2d/types/CGSize;->height:F

    .line 1504
    .local v6, "h":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v17}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1505
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v16, 0x42c00000    # 96.0f

    const/high16 v17, 0x43e60000    # 460.0f

    invoke-virtual/range {v15 .. v17}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sns/game/layer/CCNewGameLayer;->levelBar:Lorg/cocos2d/nodes/CCSprite;

    mul-float v16, v12, v10

    move/from16 v0, v16

    invoke-static {v13, v14, v0, v6}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v16

    invoke-virtual {v11}, Lorg/cocos2d/nodes/CCSpriteFrame;->getRotated()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(Lorg/cocos2d/types/CGRect;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    .end local v1    # "calcScale":F
    .end local v2    # "currFullExp":F
    .end local v3    # "currentExp":F
    .end local v5    # "frameRect":Lorg/cocos2d/types/CGRect;
    .end local v6    # "h":F
    .end local v7    # "isUpdate":Z
    .end local v8    # "level":I
    .end local v9    # "nextFullExp":F
    .end local v10    # "scale":F
    .end local v11    # "spriteFrame":Lorg/cocos2d/nodes/CCSpriteFrame;
    .end local v12    # "w":F
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 1495
    .restart local v1    # "calcScale":F
    .restart local v2    # "currFullExp":F
    .restart local v3    # "currentExp":F
    .restart local v7    # "isUpdate":Z
    .restart local v8    # "level":I
    .restart local v9    # "nextFullExp":F
    :cond_1
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1510
    .end local v1    # "calcScale":F
    .end local v2    # "currFullExp":F
    .end local v3    # "currentExp":F
    .end local v7    # "isUpdate":Z
    .end local v8    # "level":I
    .end local v9    # "nextFullExp":F
    :catch_0
    move-exception v4

    .line 1511
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1485
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15
.end method

.method updateMuleNumAtlas()V
    .locals 4

    .prologue
    .line 845
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v1, :cond_0

    .line 846
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v0

    .line 847
    .local v0, "muleNum":I
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 849
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x41f80000    # 31.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 851
    .end local v0    # "muleNum":I
    :cond_0
    return-void

    .line 847
    .restart local v0    # "muleNum":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public updateMuleNum_CallBack(Ljava/lang/Object;)V
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 881
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 883
    .local v2, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 884
    const/4 v5, 0x0

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 885
    .local v4, "indexTag":I
    packed-switch v4, :pswitch_data_0

    .line 920
    .end local v4    # "indexTag":I
    :goto_0
    return-void

    .line 888
    .restart local v4    # "indexTag":I
    :pswitch_0
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 889
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

    .line 890
    const-string v7, ""

    const v8, 0x3d4ccccd    # 0.05f

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumFrames:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v7, v8, v5}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v7

    const/16 v5, 0x8

    new-array v8, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v9, 0x0

    .line 891
    const-string v10, ""

    const v11, 0x3d4ccccd    # 0.05f

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumFrames:Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v10, v11, v5}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v5, v10}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v9, 0x1

    .line 892
    const-string v10, ""

    const v11, 0x3d4ccccd    # 0.05f

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumFrames:Ljava/util/ArrayList;

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v10, v11, v5}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v5, v10}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x2

    .line 893
    const-string v9, "updateMuleNum_CallBack"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {p0, v9, v10}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x3

    .line 894
    const-string v9, "updateMuleNum_CallBack"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {p0, v9, v10}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x4

    .line 895
    const-string v10, ""

    const v11, 0x3d4ccccd    # 0.05f

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumFrames:Ljava/util/ArrayList;

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v10, v11, v5}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v5, v10}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v9, 0x5

    .line 896
    const-string v10, ""

    const v11, 0x3d4ccccd    # 0.05f

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumFrames:Ljava/util/ArrayList;

    const/4 v12, 0x4

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v10, v11, v5}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v5, v10}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v9, 0x6

    .line 897
    const-string v10, ""

    const v11, 0x3d4ccccd    # 0.05f

    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumFrames:Ljava/util/ArrayList;

    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v10, v11, v5}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v5, v10}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x7

    .line 898
    const-string v9, "updateMuleNum_CallBack"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {p0, v9, v10}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v9

    aput-object v9, v8, v5

    .line 889
    invoke-static {v7, v8}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 917
    .end local v4    # "indexTag":I
    :catch_0
    move-exception v3

    .line 918
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 902
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "indexTag":I
    :pswitch_1
    :try_start_1
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->muleNumAnim:Lorg/cocos2d/nodes/CCSprite;

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 906
    :pswitch_2
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateMuleNumAtlas()V

    .line 907
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sns/game/database/bean/GameSceneSystem;->isCurrFullExp()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sns/game/layer/CCNewGameLayer;->updateSkillBarByWeapon_CallBack(Ljava/lang/Object;)V

    .line 908
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v5}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v1

    .line 909
    .local v1, "bean":Lcom/sns/game/database/bean/WeaponBean;
    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->updateWpnCostNodes(Lcom/sns/game/database/bean/WeaponBean;)V

    goto/16 :goto_0

    .line 913
    .end local v1    # "bean":Lcom/sns/game/database/bean/WeaponBean;
    :pswitch_3
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 885
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateSkillBarByWeapon_CallBack(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1451
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 1453
    .local v1, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 1454
    const/4 v4, 0x0

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1455
    .local v3, "updateTag":Z
    const-string v4, "Test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateSkillBar:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    .end local v3    # "updateTag":Z
    :goto_0
    return-void

    .line 1457
    :catch_0
    move-exception v2

    .line 1458
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateUgLglCallBackWithObj()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 665
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$1;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$1;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method

.method public updateUserGold(IZ)V
    .locals 4
    .param p1, "gold"    # I
    .param p2, "isRealTimeUpdate"    # Z

    .prologue
    .line 633
    :try_start_0
    sget-object v1, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v1, p1}, Lcom/sns/game/database/bean/UserData;->modifyGold(I)V

    .line 634
    if-lez p1, :cond_1

    .line 636
    sget-object v1, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserData;->modifyGet_total_gold(I)V

    .line 640
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserGoldCounter(I)V

    .line 641
    if-eqz p2, :cond_0

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update data to [userdata] is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-static {}, Lcom/sns/game/database/dao/UserDataDao;->sharedDao()Lcom/sns/game/database/dao/UserDataDao;

    move-result-object v2

    sget-object v3, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v2, v3}, Lcom/sns/game/database/dao/UserDataDao;->updateUserGold(Lcom/sns/game/database/bean/UserData;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 642
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 649
    :cond_0
    :goto_1
    return-void

    .line 638
    :cond_1
    sget-object v1, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserData;->modifyCost_total_gold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
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

    .line 606
    if-lez p1, :cond_2

    move v0, v1

    .line 607
    .local v0, "isAdd":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCNewGameLayer;->runAddUserGoldNumAcion(I)V

    .line 610
    :cond_0
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    if-eqz v2, :cond_1

    .line 611
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    invoke-virtual {v2, v3, v3}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->setAnchorPoint(FF)V

    .line 612
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    const/high16 v3, 0x42880000    # 68.0f

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->setPosition(FF)V

    .line 613
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->uGoldCounter:Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    sget-object v3, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->updateNumbers(IZ)V

    .line 615
    :cond_1
    return-void

    .line 606
    .end local v0    # "isAdd":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateUserGold_CallBack(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 654
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 655
    .local v1, "data":[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 656
    .local v3, "gold":I
    const/4 v5, 0x1

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 657
    .local v4, "isRealTimeUpdate":Z
    invoke-virtual {p0, v3, v4}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserGold(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v1    # "data":[Ljava/lang/Object;
    .end local v3    # "gold":I
    .end local v4    # "isRealTimeUpdate":Z
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v2

    .line 660
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateUserWqkItems()V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 1091
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v7

    .line 1094
    .local v7, "useLevel":I
    :try_start_0
    iget-object v12, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sns/game/database/dao/UserWeaponDao;->findUserWeaponList()Ljava/util/List;

    move-result-object v9

    .line 1098
    .local v9, "uwBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1101
    .local v0, "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1105
    iget-object v12, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

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

    .line 1106
    .local v11, "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v11}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v10

    .line 1107
    .local v10, "wpnBean":Lcom/sns/game/database/bean/WeaponBean;
    invoke-virtual {v10}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1109
    invoke-virtual {v10}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sns/game/database/bean/UserWeaponBean;

    .line 1110
    .local v8, "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v8}, Lcom/sns/game/database/bean/UserWeaponBean;->getNow_use()I

    move-result v6

    .line 1111
    .local v6, "nowUse":I
    invoke-virtual {v8}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v2

    .line 1112
    .local v2, "holdNum":I
    const/4 v12, 0x1

    if-ne v6, v12, :cond_5

    const/4 v4, 0x1

    .line 1113
    .local v4, "isUse":Z
    :goto_3
    invoke-virtual {v10, v7}, Lcom/sns/game/database/bean/WeaponBean;->isLvLimit(I)Z

    move-result v3

    .line 1114
    .local v3, "isLvLmt":Z
    invoke-virtual {v10}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v12

    const/16 v14, 0x271f

    if-ne v12, v14, :cond_6

    const/4 v5, 0x1

    .line 1115
    .local v5, "isWdp":Z
    :goto_4
    if-eqz v3, :cond_7

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setIsEnabled(Z)V

    .line 1116
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->getWqkHltSp()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->addHltImage(Lorg/cocos2d/nodes/CCSprite;)V

    .line 1117
    :cond_3
    if-nez v5, :cond_2

    .line 1118
    invoke-virtual {v11, v2}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->updateWqkCountAtlas(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1129
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

    .line 1130
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1101
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .restart local v9    # "uwBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    :cond_4
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sns/game/database/bean/UserWeaponBean;

    .line 1102
    .restart local v8    # "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v8}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1112
    .restart local v2    # "holdNum":I
    .restart local v6    # "nowUse":I
    .restart local v10    # "wpnBean":Lcom/sns/game/database/bean/WeaponBean;
    .restart local v11    # "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 1114
    .restart local v3    # "isLvLmt":Z
    .restart local v4    # "isUse":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 1115
    .restart local v5    # "isWdp":Z
    :cond_7
    const/4 v12, 0x1

    goto :goto_5

    .line 1123
    .end local v2    # "holdNum":I
    .end local v3    # "isLvLmt":Z
    .end local v4    # "isUse":Z
    .end local v5    # "isWdp":Z
    .end local v6    # "nowUse":I
    .end local v8    # "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :cond_8
    invoke-virtual {v10, v7}, Lcom/sns/game/database/bean/WeaponBean;->isLvLimit(I)Z

    move-result v3

    .line 1124
    .restart local v3    # "isLvLmt":Z
    if-eqz v3, :cond_9

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setIsEnabled(Z)V

    .line 1125
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->updateWqkCountAtlas(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1124
    :cond_9
    const/4 v12, 0x1

    goto :goto_6
.end method

.method public updateUserWqkItemsByWeapon(Lcom/sns/game/object/GameWeapon;)V
    .locals 8
    .param p1, "useGwn"    # Lcom/sns/game/object/GameWeapon;

    .prologue
    .line 1145
    if-nez p1, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1151
    invoke-virtual {p1}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v4

    .line 1152
    .local v4, "userWnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v5

    .line 1154
    .local v5, "wnBean":Lcom/sns/game/database/bean/WeaponBean;
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer;->userWqkItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 1155
    .local v3, "item":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v3}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWqkItemId()I

    move-result v2

    .line 1156
    .local v2, "id":I
    invoke-virtual {v5}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v7

    if-ne v2, v7, :cond_2

    .line 1157
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v6

    if-ltz v6, :cond_3

    .line 1158
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 1159
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    const/4 v6, 0x3

    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sns/game/activity/GameActivityss;->notifyHandler(ILjava/lang/Object;)V

    .line 1175
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    :cond_3
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->updateWqkCountAtlas(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1180
    .end local v2    # "id":I
    .end local v3    # "item":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    .end local v4    # "userWnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .end local v5    # "wnBean":Lcom/sns/game/database/bean/WeaponBean;
    :catch_0
    move-exception v1

    .line 1181
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateUserWqkItemsByWeapon_CallBack(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1188
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 1189
    .local v1, "data":[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v3, v1, v4

    check-cast v3, Lcom/sns/game/object/GameWeapon;

    .line 1190
    .local v3, "useWeapon":Lcom/sns/game/object/GameWeapon;
    invoke-virtual {p0, v3}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserWqkItemsByWeapon(Lcom/sns/game/object/GameWeapon;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    .end local v1    # "data":[Ljava/lang/Object;
    .end local v3    # "useWeapon":Lcom/sns/game/object/GameWeapon;
    :goto_0
    return-void

    .line 1192
    :catch_0
    move-exception v2

    .line 1193
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateUserWqkItems_CallBack(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1136
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserWqkItems()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :goto_0
    return-void

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateWpnCostNodes(Lcom/sns/game/database/bean/WeaponBean;)V
    .locals 5
    .param p1, "wpnbean"    # Lcom/sns/game/database/bean/WeaponBean;

    .prologue
    .line 2464
    if-nez p1, :cond_0

    .line 2472
    :goto_0
    return-void

    .line 2465
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v1

    .line 2466
    .local v1, "mul":I
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 2467
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v3, 0x42b00000    # 88.0f

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 2468
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer;->wpnCostAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {p1}, Lcom/sns/game/database/bean/WeaponBean;->getCostMoney()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2469
    .end local v1    # "mul":I
    :catch_0
    move-exception v0

    .line 2470
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method zomPlotDialogOnCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 1584
    new-instance v0, Lcom/sns/game/layer/CCNewGameLayer$8;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewGameLayer$8;-><init>(Lcom/sns/game/layer/CCNewGameLayer;)V

    return-object v0
.end method
