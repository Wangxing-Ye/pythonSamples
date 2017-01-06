.class public Lcom/sns/game/dialog/CCFunnyGameDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCFunnyGameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    }
.end annotation


# instance fields
.field private activityPoints:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lorg/cocos2d/nodes/CCSprite;",
            ">;"
        }
    .end annotation
.end field

.field private bigStarSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

.field private bigStars:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lorg/cocos2d/nodes/CCSprite;",
            ">;"
        }
    .end annotation
.end field

.field private btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

.field contentSpace:Lorg/cocos2d/types/CGPoint;

.field private currentTurnsItemIndex:I

.field private firstAyPointIndex:I

.field private hltBox:Lorg/cocos2d/nodes/CCSprite;

.field hltBoxColorNames:[Ljava/lang/String;

.field private itemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field private itemList:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lorg/cocos2d/nodes/CCSprite;",
            ">;"
        }
    .end annotation
.end field

.field private redPointSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

.field private rewardBox:Lorg/cocos2d/nodes/CCSprite;

.field private rewardCard:Lorg/cocos2d/nodes/CCSprite;

.field private slowSpeed:F

.field private startTurnsItemIndex:I

.field private stillnessPoints:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lorg/cocos2d/nodes/CCSprite;",
            ">;"
        }
    .end annotation
.end field

.field private turnsCycleCount:I

.field private turnsCycleNum:I

.field private turnsDirection:I

.field private turnsSlowCount:I

.field private turnsSlowNum:I

.field private turnsSpeed:F


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 5
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x42bc0000    # 94.0f

    .line 56
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 219
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 220
    const-string v1, "FunnyGame_Dialog_Box_Blue.png"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "FunnyGame_Dialog_Box_Blue.png"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 221
    const-string v2, "FunnyGame_Dialog_Box_Green.png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FunnyGame_Dialog_Box_Green.png"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 222
    const-string v2, "FunnyGame_Dialog_Box_Green.png"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "FunnyGame_Dialog_Box_Yellow.png"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 223
    const-string v2, "FunnyGame_Dialog_Box_Yellow.png"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FunnyGame_Dialog_Box_Yellow.png"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 224
    const-string v2, "FunnyGame_Dialog_Box_Purple.png"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FunnyGame_Dialog_Box_Purple.png"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 225
    const-string v2, "FunnyGame_Dialog_Box_Purple.png"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "FunnyGame_Dialog_Box_Blue.png"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->hltBoxColorNames:[Ljava/lang/String;

    .line 279
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->activityPoints:Lcom/badlogic/gdx/utils/Array;

    .line 280
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    .line 281
    iput v4, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->firstAyPointIndex:I

    .line 282
    invoke-static {v3, v3}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    .line 630
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSpeed:F

    .line 631
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->slowSpeed:F

    .line 634
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    .line 57
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->onCreateCall()V

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/dialog/CCFunnyGameDialog;Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0, p1, p2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->dropWithWpnItem(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V

    return-void
.end method

.method static synthetic access$1(Lcom/sns/game/dialog/CCFunnyGameDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->activateUpdateBanner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sns/game/dialog/CCFunnyGameDialog;Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0, p1, p2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->dropWithGoldItem(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V

    return-void
.end method

.method private addStillnessPoints()V
    .locals 3

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->redPointSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSpriteSheet;->addChildren(Ljava/lang/Iterable;I)V

    .line 809
    return-void
.end method

.method private clearActivityPoints(Z)V
    .locals 1
    .param p1, "cleanUp"    # Z

    .prologue
    .line 812
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->activityPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->removeChildren(Ljava/lang/Iterable;)V

    .line 813
    if-eqz p1, :cond_0

    .line 814
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->activityPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 816
    :cond_0
    return-void
.end method

.method private clearStillnessPoints(Z)V
    .locals 1
    .param p1, "cleanUp"    # Z

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->removeChildren(Ljava/lang/Iterable;)V

    .line 821
    if-eqz p1, :cond_0

    .line 822
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 824
    :cond_0
    return-void
.end method

.method private clearStoreItemList(Z)V
    .locals 1
    .param p1, "cleanUp"    # Z

    .prologue
    .line 827
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->removeChildren(Ljava/lang/Iterable;)V

    .line 828
    if-eqz p1, :cond_0

    .line 829
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 831
    :cond_0
    return-void
.end method

.method private createRewardItem(Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)Lorg/cocos2d/nodes/CCSprite;
    .locals 6
    .param p1, "data"    # Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 704
    iget-object v3, p1, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->boxName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCFunnyGameDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 705
    .local v1, "itemNode":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1, v4, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 707
    iget-object v3, p1, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->imgName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCFunnyGameDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 708
    .local v0, "itemImg":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v0, v4, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 709
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 710
    iget v3, p1, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->tag:I

    if-eq v3, v5, :cond_0

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v3}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 711
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 713
    iget v3, p1, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->tag:I

    if-eq v3, v5, :cond_1

    .line 714
    iget-object v3, p1, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->descName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCFunnyGameDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .line 715
    .local v2, "numValueImg":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v2, v4, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 716
    const/high16 v3, 0x421c0000    # 39.0f

    const/high16 v4, 0x41b80000    # 23.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 717
    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 720
    .end local v2    # "numValueImg":Lorg/cocos2d/nodes/CCSprite;
    :cond_1
    invoke-virtual {v1, p1}, Lorg/cocos2d/nodes/CCSprite;->setUserData(Ljava/lang/Object;)V

    .line 722
    return-object v1
.end method

.method public static dialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCFunnyGameDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 51
    new-instance v0, Lcom/sns/game/dialog/CCFunnyGameDialog;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 52
    .local v0, "dialog":Lcom/sns/game/dialog/CCFunnyGameDialog;
    return-object v0
.end method

.method private dropWithGoldItem(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V
    .locals 5
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "dropItemData"    # Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    .prologue
    const/4 v4, 0x1

    .line 618
    const-string v1, "updateUserGold_CallBack"

    .line 619
    .local v1, "selector":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p2, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->gold:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v4

    .line 620
    .local v0, "data":[Ljava/lang/Object;
    invoke-static {p1, v1, v0}, Lcom/sns/game/util/CCUtil;->invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    return-void
.end method

.method private dropWithWpnItem(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V
    .locals 8
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "dropItemData"    # Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    .prologue
    .line 583
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v4

    .line 584
    .local v4, "uwDao":Lcom/sns/game/database/dao/UserWeaponDao;
    sget-object v6, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sns/game/database/bean/UserData;->modifyGet_total_card(I)V

    .line 585
    iget v6, p2, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->wpnId:I

    invoke-virtual {v4, v6}, Lcom/sns/game/database/dao/UserWeaponDao;->containUserWeapon(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 586
    iget v6, p2, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->wpnId:I

    iget v7, p2, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->holdCount:I

    invoke-virtual {v4, v6, v7}, Lcom/sns/game/database/dao/UserWeaponDao;->createUserWeapon(II)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v3

    .line 587
    .local v3, "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Insert data to [userweapons] is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/sns/game/database/dao/UserWeaponDao;->addUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 596
    :goto_0
    const-string v6, "updateUserWqkItems_CallBack"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1, v6, v7}, Lcom/sns/game/util/CCUtil;->invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->selfLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v0

    .line 599
    .local v0, "loader":Lcom/sns/game/object/GameWeaponLoader;
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v2

    .line 602
    .local v2, "useWnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v6

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 603
    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getHold_count()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sns/game/database/bean/UserWeaponBean;->setHold_count(I)V

    .line 604
    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sns/game/database/bean/UserWeaponBean;->setUse_count(I)V

    .line 608
    .end local v2    # "useWnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :cond_0
    instance-of v6, p1, Lcom/sns/game/layer/CCNewGameLayer;

    if-eqz v6, :cond_1

    move-object v1, p1

    .line 609
    check-cast v1, Lcom/sns/game/layer/CCNewGameLayer;

    .line 610
    .local v1, "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    iget v6, p2, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->wpnId:I

    invoke-virtual {v1, v6}, Lcom/sns/game/layer/CCNewGameLayer;->findWqkItem(I)Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    move-result-object v5

    .line 611
    .local v5, "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v1}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserWqkItems()V

    .line 612
    iget v6, p2, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->holdCount:I

    mul-int/lit8 v6, v6, 0x14

    const/16 v7, 0x65

    invoke-virtual {v1, v5, v6, v7}, Lcom/sns/game/layer/CCNewGameLayer;->runAddWqkNumAction(Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;II)V

    .line 615
    .end local v1    # "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    .end local v5    # "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :cond_1
    return-void

    .line 590
    .end local v0    # "loader":Lcom/sns/game/object/GameWeaponLoader;
    .end local v3    # "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :cond_2
    iget v6, p2, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->wpnId:I

    invoke-virtual {v4, v6}, Lcom/sns/game/database/dao/UserWeaponDao;->findUserWeaponBean(I)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v3

    .line 591
    .restart local v3    # "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    iget v6, p2, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->holdCount:I

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sns/game/database/bean/WeaponBean;->getBullet_count()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/sns/game/database/bean/UserWeaponBean;->modifyUse_count(I)V

    .line 592
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Update [userweapons] data is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/sns/game/database/dao/UserWeaponDao;->modifyUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTurnRunning()Z
    .locals 2

    .prologue
    .line 790
    iget v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowNum:I

    iget v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lineToNodes(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIFFFFFZ)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "direction"    # I
    .param p4, "count"    # I
    .param p5, "startX"    # F
    .param p6, "startY"    # F
    .param p7, "interval"    # F
    .param p8, "rot"    # F
    .param p9, "scale"    # F
    .param p10, "bool"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lorg/cocos2d/nodes/CCSprite;",
            ">;",
            "Ljava/lang/String;",
            "IIFFFFFZ)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lorg/cocos2d/nodes/CCSprite;>;"
    const/4 v0, 0x0

    .line 838
    .local v0, "currentIndex":I
    if-eqz p10, :cond_0

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 839
    .local v3, "space":F
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, p4, :cond_1

    .line 860
    return-void

    .line 838
    .end local v1    # "i":I
    .end local v3    # "space":F
    :cond_0
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    neg-float v3, v4

    goto :goto_0

    .line 840
    .restart local v1    # "i":I
    .restart local v3    # "space":F
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .line 841
    .local v2, "spNode":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v4, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 842
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 844
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getRotation()F

    move-result v4

    cmpl-float v4, v4, p8

    if-eqz v4, :cond_2

    .line 845
    invoke-virtual {v2, p8}, Lorg/cocos2d/nodes/CCSprite;->setRotation(F)V

    .line 847
    :cond_2
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getScale()F

    move-result v4

    cmpl-float v4, v4, p9

    if-eqz v4, :cond_3

    .line 848
    invoke-virtual {v2, p9}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 850
    :cond_3
    packed-switch p3, :pswitch_data_0

    .line 858
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 852
    :pswitch_0
    int-to-float v4, v0

    mul-float/2addr v4, v3

    add-float/2addr v4, p5

    invoke-virtual {v2, v4, p6}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    goto :goto_2

    .line 855
    :pswitch_1
    int-to-float v4, v0

    mul-float/2addr v4, v3

    add-float/2addr v4, p6

    invoke-virtual {v2, p5, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    goto :goto_2

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private modifyCurrentItemIndex()V
    .locals 2

    .prologue
    .line 765
    iget v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsDirection:I

    packed-switch v0, :pswitch_data_0

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 767
    :pswitch_0
    iget v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    .line 768
    iget v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v0, v1, :cond_0

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    goto :goto_0

    .line 772
    :pswitch_1
    iget v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    .line 773
    iget v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    if-gez v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    goto :goto_0

    .line 765
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private modifyTurnsCycleNum()V
    .locals 2

    .prologue
    .line 780
    iget v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    iget v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->startTurnsItemIndex:I

    if-ne v0, v1, :cond_0

    .line 781
    iget v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsCycleNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsCycleNum:I

    .line 783
    :cond_0
    return-void
.end method

.method private modifyTurnsSlowNum()V
    .locals 1

    .prologue
    .line 786
    iget v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowNum:I

    .line 787
    return-void
.end method

.method private posNodesToLine(Lcom/badlogic/gdx/utils/Array;IIIFFFZ)V
    .locals 5
    .param p2, "direction"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "startX"    # F
    .param p6, "startY"    # F
    .param p7, "interval"    # F
    .param p8, "bool"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lorg/cocos2d/nodes/CCSprite;",
            ">;IIIFFFZ)V"
        }
    .end annotation

    .prologue
    .line 865
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lorg/cocos2d/nodes/CCSprite;>;"
    const/4 v0, 0x0

    .line 866
    .local v0, "currentIndex":I
    if-eqz p8, :cond_0

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 867
    .local v3, "space":F
    :goto_0
    move v1, p3

    .local v1, "i":I
    :goto_1
    if-le v1, p4, :cond_1

    .line 879
    return-void

    .line 866
    .end local v1    # "i":I
    .end local v3    # "space":F
    :cond_0
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    neg-float v3, v4

    goto :goto_0

    .line 868
    .restart local v1    # "i":I
    .restart local v3    # "space":F
    :cond_1
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCNode;

    .line 869
    .local v2, "itemNode":Lorg/cocos2d/nodes/CCNode;
    packed-switch p2, :pswitch_data_0

    .line 877
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 867
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 871
    :pswitch_0
    int-to-float v4, v0

    mul-float/2addr v4, v3

    add-float/2addr v4, p5

    invoke-virtual {v2, v4, p6}, Lorg/cocos2d/nodes/CCNode;->setPosition(FF)V

    goto :goto_2

    .line 874
    :pswitch_1
    int-to-float v4, v0

    mul-float/2addr v4, v3

    add-float/2addr v4, p6

    invoke-virtual {v2, p5, v4}, Lorg/cocos2d/nodes/CCNode;->setPosition(FF)V

    goto :goto_2

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private randomTurnsCycleCount(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 757
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsCycleCount:I

    .line 758
    return-void
.end method

.method private randomTurnsDirection()V
    .locals 2

    .prologue
    .line 748
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsDirection:I

    .line 749
    return-void
.end method

.method private randomTurnsSlowCount(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 761
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowCount:I

    .line 762
    return-void
.end method

.method private randomTurnsStartItemIndex(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 752
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->startTurnsItemIndex:I

    .line 753
    iget v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->startTurnsItemIndex:I

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    .line 754
    return-void
.end method

.method private runActivityPointsAction()V
    .locals 5

    .prologue
    .line 318
    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->redPointSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    if-nez v3, :cond_0

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_0
    const v3, 0x3a83126f    # 0.001f

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v0

    .line 320
    .local v0, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    const-string v3, "activityPoints_CallBack"

    invoke-static {p0, v3}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v1

    .line 321
    .local v1, "func":Lorg/cocos2d/actions/instant/CCCallFunc;
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    .line 322
    .local v2, "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->redPointSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-static {v2}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSpriteSheet;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto :goto_0
.end method

.method private runBatchBigStarAction()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStars:Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_1

    .line 268
    :cond_0
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStars:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 267
    .local v0, "starSp":Lorg/cocos2d/nodes/CCSprite;
    invoke-direct {p0, v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->runBigStarAction(Lorg/cocos2d/nodes/CCNode;)V

    goto :goto_0
.end method

.method private runBigStarAction(Lorg/cocos2d/nodes/CCNode;)V
    .locals 5
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const v4, 0x3dcccccd    # 0.1f

    .line 271
    if-nez p1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v2

    .line 273
    .local v2, "scaleTo_100":Lorg/cocos2d/actions/interval/CCScaleTo;
    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v4, v3}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v1

    .line 274
    .local v1, "scaleTo_075":Lorg/cocos2d/actions/interval/CCScaleTo;
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 275
    .local v0, "action":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-static {v0}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/cocos2d/nodes/CCNode;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto :goto_0
.end method

.method private varargs runDropItemAction([Ljava/lang/Object;)V
    .locals 26
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 499
    const/16 v24, 0x0

    :try_start_0
    aget-object v17, p1, v24

    check-cast v17, Lorg/cocos2d/nodes/CCSprite;

    .line 500
    .local v17, "rewardItem":Lorg/cocos2d/nodes/CCSprite;
    const/16 v24, 0x1

    aget-object v22, p1, v24

    check-cast v22, Lcom/sns/game/layer/CCNewGameLayer;

    .line 502
    .local v22, "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v24

    const-string v25, "effect/effect_1.plist"

    invoke-virtual/range {v24 .. v25}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 503
    .local v9, "effectFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const-string v24, "point.png"

    invoke-static/range {v24 .. v24}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v10

    .line 504
    .local v10, "effectNode":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v24, 0x3f000000    # 0.5f

    const/high16 v25, 0x3f000000    # 0.5f

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 505
    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v24

    const/high16 v25, 0x3f000000    # 0.5f

    invoke-static/range {v24 .. v25}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 506
    const/16 v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 508
    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v20

    .line 509
    .local v20, "startPos":Lorg/cocos2d/types/CGPoint;
    const/16 v24, 0x2

    aget-object v21, p1, v24

    check-cast v21, Lorg/cocos2d/types/CGPoint;

    .line 510
    .local v21, "stopPos":Lorg/cocos2d/types/CGPoint;
    const/high16 v24, 0x43c80000    # 400.0f

    const/high16 v25, 0x43700000    # 240.0f

    invoke-static/range {v24 .. v25}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 511
    .local v3, "centerPos":Lorg/cocos2d/types/CGPoint;
    const/high16 v24, 0x43dc0000    # 440.0f

    const/high16 v25, 0x3f400000    # 0.75f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v3, v1, v2}, Lcom/sns/game/util/CCUtil;->ccuCalcMoveEquivalentTime(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;FF)F

    move-result v13

    .line 513
    .local v13, "moveTime":F
    const/16 v24, 0x122

    invoke-static/range {v24 .. v24}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 514
    const v24, 0x7fffffff

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 518
    const-string v24, ""

    const v25, 0x3dcccccd    # 0.1f

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v9}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v24

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v8

    .line 519
    .local v8, "effectAction":Lorg/cocos2d/actions/interval/CCAnimate;
    invoke-static {v8}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v11

    .line 520
    .local v11, "forever":Lorg/cocos2d/actions/base/CCRepeatForever;
    invoke-virtual {v10, v11}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 525
    invoke-static {v13, v3}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v14

    .line 526
    .local v14, "moveTo_Center":Lorg/cocos2d/actions/interval/CCMoveTo;
    invoke-static {v14}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v6

    .line 528
    .local v6, "eeout_center":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    const v24, 0x3f666666    # 0.9f

    invoke-static/range {v24 .. v24}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    .line 530
    .local v4, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    move-object/from16 v0, v21

    invoke-static {v13, v0}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v15

    .line 531
    .local v15, "moveTo_Stop":Lorg/cocos2d/actions/interval/CCMoveTo;
    invoke-static {v15}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v7

    .line 533
    .local v7, "eeout_stop":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    const v24, 0x3ed70a3d    # 0.42f

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v18

    .line 535
    .local v18, "scaleTo":Lorg/cocos2d/actions/interval/CCScaleTo;
    const-string v19, "dropItem_CallBack"

    .line 536
    .local v19, "selector":Ljava/lang/String;
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v24, 0x0

    aput-object v17, v16, v24

    const/16 v24, 0x1

    aput-object v22, v16, v24

    .line 537
    .local v16, "passData":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v12

    .line 539
    .local v12, "funcNd":Lorg/cocos2d/actions/instant/CCCallFuncND;
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v4, v24, v25

    const/16 v25, 0x1

    aput-object v7, v24, v25

    const/16 v25, 0x2

    aput-object v18, v24, v25

    const/16 v25, 0x3

    aput-object v12, v24, v25

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v23

    .line 540
    .local v23, "wqkAcions":Lorg/cocos2d/actions/interval/CCSequence;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v3    # "centerPos":Lorg/cocos2d/types/CGPoint;
    .end local v4    # "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    .end local v6    # "eeout_center":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    .end local v7    # "eeout_stop":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    .end local v8    # "effectAction":Lorg/cocos2d/actions/interval/CCAnimate;
    .end local v9    # "effectFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .end local v10    # "effectNode":Lorg/cocos2d/nodes/CCSprite;
    .end local v11    # "forever":Lorg/cocos2d/actions/base/CCRepeatForever;
    .end local v12    # "funcNd":Lorg/cocos2d/actions/instant/CCCallFuncND;
    .end local v13    # "moveTime":F
    .end local v14    # "moveTo_Center":Lorg/cocos2d/actions/interval/CCMoveTo;
    .end local v15    # "moveTo_Stop":Lorg/cocos2d/actions/interval/CCMoveTo;
    .end local v16    # "passData":[Ljava/lang/Object;
    .end local v17    # "rewardItem":Lorg/cocos2d/nodes/CCSprite;
    .end local v18    # "scaleTo":Lorg/cocos2d/actions/interval/CCScaleTo;
    .end local v19    # "selector":Ljava/lang/String;
    .end local v20    # "startPos":Lorg/cocos2d/types/CGPoint;
    .end local v21    # "stopPos":Lorg/cocos2d/types/CGPoint;
    .end local v22    # "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    .end local v23    # "wqkAcions":Lorg/cocos2d/actions/interval/CCSequence;
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v5

    .line 546
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private runHltBoxAction()V
    .locals 6

    .prologue
    .line 234
    iget-object v4, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->hltBox:Lorg/cocos2d/nodes/CCSprite;

    if-nez v4, :cond_0

    .line 242
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v4, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->hltBoxColorNames:[Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sns/game/dialog/CCFunnyGameDialog;->getSpriteFrames([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 238
    .local v3, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const-string v4, ""

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v4, v5, v3}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v1

    .line 239
    .local v1, "anim":Lorg/cocos2d/nodes/CCAnimation;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v2

    .line 240
    .local v2, "animate":Lorg/cocos2d/actions/interval/CCAnimate;
    invoke-static {v2}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v0

    .line 241
    .local v0, "action":Lorg/cocos2d/actions/base/CCRepeatForever;
    iget-object v4, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->hltBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto :goto_0
.end method

.method private runItemMoveAction(F)V
    .locals 5
    .param p1, "speed"    # F

    .prologue
    .line 361
    iget-object v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->redPointSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    if-nez v2, :cond_0

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-static {p1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v0

    .line 363
    .local v0, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    const-string v2, "itemMove_CallBack"

    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-static {p0, v2, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v1

    .line 364
    .local v1, "funcNd":Lorg/cocos2d/actions/instant/CCCallFuncND;
    iget-object v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->redPointSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSpriteSheet;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto :goto_0
.end method

.method private setActivityPoints()V
    .locals 10

    .prologue
    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 302
    const/16 v2, 0xa

    .local v2, "index":I
    const/16 v0, 0xa

    .line 303
    .local v0, "count":I
    const v3, 0x3dcccccd    # 0.1f

    .line 304
    .local v3, "opacityScale":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 315
    return-void

    .line 305
    :cond_0
    const-string v5, "FunnyGame_Dialog_Img_RedPoint.png"

    invoke-virtual {p0, v5}, Lcom/sns/game/dialog/CCFunnyGameDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    .line 306
    .local v4, "redPoint":Lorg/cocos2d/nodes/CCSprite;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 307
    invoke-virtual {v4, v8, v8}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 308
    iget-object v5, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v5, v9

    const/high16 v6, 0x43f00000    # 480.0f

    iget-object v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v6, v7

    sub-float/2addr v6, v9

    invoke-virtual {v4, v5, v6}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 309
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 310
    iget-object v5, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->activityPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 311
    iget-object v5, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->redPointSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    const v6, 0x7fffffff

    sub-int/2addr v6, v2

    invoke-virtual {v5, v4, v6}, Lorg/cocos2d/nodes/CCSpriteSheet;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 312
    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v5

    .line 313
    add-int/lit8 v2, v2, -0x1

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setBigStarSheet()V
    .locals 5

    .prologue
    .line 248
    const-string v1, "FunnyGame_Dialog_Img_BigStar.png"

    .line 249
    .local v1, "textureName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSpriteFrame;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    .line 250
    .local v0, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    invoke-static {v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->spriteSheet(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStarSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 251
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setBigStars()V

    .line 252
    iget-object v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStarSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStars:Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCSpriteSheet;->addChildren(Ljava/lang/Iterable;I)V

    .line 253
    return-void
.end method

.method private setBigStars()V
    .locals 11

    .prologue
    .line 256
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStars:Lcom/badlogic/gdx/utils/Array;

    .line 257
    const-string v2, "FunnyGame_Dialog_Img_BigStar.png"

    .line 258
    .local v2, "frameName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStars:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/high16 v5, 0x42340000    # 45.0f

    const/high16 v6, 0x439f0000    # 318.0f

    const/high16 v7, 0x42a00000    # 80.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f400000    # 0.75f

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/sns/game/dialog/CCFunnyGameDialog;->lineToNodes(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIFFFFFZ)V

    .line 259
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStars:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const v5, 0x443cc000    # 755.0f

    const/high16 v6, 0x439f0000    # 318.0f

    const/high16 v7, 0x42a00000    # 80.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f400000    # 0.75f

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/sns/game/dialog/CCFunnyGameDialog;->lineToNodes(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIFFFFFZ)V

    .line 260
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStars:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/high16 v5, 0x42980000    # 76.0f

    const v6, 0x43d98000    # 435.0f

    const/high16 v7, 0x42a00000    # 80.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x3f400000    # 0.75f

    const/4 v10, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/sns/game/dialog/CCFunnyGameDialog;->lineToNodes(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIFFFFFZ)V

    .line 261
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStars:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/high16 v5, 0x42980000    # 76.0f

    const/high16 v6, 0x42300000    # 44.0f

    const/high16 v7, 0x42a00000    # 80.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x3f400000    # 0.75f

    const/4 v10, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/sns/game/dialog/CCFunnyGameDialog;->lineToNodes(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIFFFFFZ)V

    .line 262
    return-void
.end method

.method private setBtnStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 192
    const-string v1, "FunnyGame_Dialog_Btn_Start.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 193
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnStart_CallBack"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 194
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v3, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 195
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 196
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 197
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 198
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 199
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 200
    return-void
.end method

.method private setHltBox()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 228
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->hltBoxColorNames:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->hltBox:Lorg/cocos2d/nodes/CCSprite;

    .line 229
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->hltBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v2, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 230
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->hltBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 231
    return-void
.end method

.method private setItemData()V
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    const/16 v5, 0x64

    const/16 v4, 0x3c

    .line 644
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createNothingImData()Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const-string v1, "Jbk_3"

    invoke-virtual {p0, v6, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createGoldItemData(ILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createNothingImData()Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const-string v1, "Jbk_1"

    invoke-virtual {p0, v5, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createGoldItemData(ILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const/16 v1, 0x2723

    const/16 v2, 0x28

    const-string v3, "Xgtskp"

    invoke-virtual {p0, v1, v2, v3}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createWpnItemData(IILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const/16 v1, 0x1f4

    const-string v2, "Jbk_2"

    invoke-virtual {p0, v1, v2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createGoldItemData(ILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const/16 v1, 0x2724

    const/16 v2, 0x14

    const-string v3, "Cgpkp"

    invoke-virtual {p0, v1, v2, v3}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createWpnItemData(IILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const/16 v1, 0xc8

    const-string v2, "Jbk_1"

    invoke-virtual {p0, v1, v2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createGoldItemData(ILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createNothingImData()Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const-string v1, "Jbk_3"

    invoke-virtual {p0, v6, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createGoldItemData(ILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createNothingImData()Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const/16 v1, 0x2722

    const-string v2, "Dmgkp"

    invoke-virtual {p0, v1, v4, v2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createWpnItemData(IILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const-string v1, "Jbk_1"

    invoke-virtual {p0, v5, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createGoldItemData(ILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const/16 v1, 0x2721

    const-string v2, "Xrzckp"

    invoke-virtual {p0, v1, v4, v2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createWpnItemData(IILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const/16 v1, 0x32

    const-string v2, "Jbk_1"

    invoke-virtual {p0, v1, v2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createGoldItemData(ILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    const/16 v1, 0x2720

    const-string v2, "Jgpkp"

    invoke-virtual {p0, v1, v4, v2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createWpnItemData(IILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    return-void
.end method

.method private setItemList()V
    .locals 13

    .prologue
    const/high16 v12, 0x42740000    # 61.0f

    .line 728
    :try_start_0
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setItemData()V

    .line 730
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setTurnsParams()V

    .line 737
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    const/high16 v5, 0x426e0000    # 59.5f

    add-float/2addr v5, v0

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    const/high16 v6, 0x43650000    # 229.0f

    add-float/2addr v6, v0

    const/high16 v7, 0x42a80000    # 84.0f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sns/game/dialog/CCFunnyGameDialog;->posNodesToLine(Lcom/badlogic/gdx/utils/Array;IIIFFFZ)V

    .line 738
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    const/high16 v5, 0x43110000    # 145.0f

    add-float/2addr v5, v0

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    add-float v6, v0, v12

    const/high16 v7, 0x42a70000    # 83.5f

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sns/game/dialog/CCFunnyGameDialog;->posNodesToLine(Lcom/badlogic/gdx/utils/Array;IIIFFFZ)V

    .line 739
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/16 v4, 0xa

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    const v5, 0x440d4000    # 565.0f

    add-float/2addr v5, v0

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    add-float v6, v0, v12

    const/high16 v7, 0x42a80000    # 84.0f

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sns/game/dialog/CCFunnyGameDialog;->posNodesToLine(Lcom/badlogic/gdx/utils/Array;IIIFFFZ)V

    .line 740
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/16 v4, 0xf

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    const v5, 0x43ef8000    # 479.0f

    add-float/2addr v5, v0

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    const/high16 v6, 0x43650000    # 229.0f

    add-float/2addr v6, v0

    const/high16 v7, 0x42a70000    # 83.5f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sns/game/dialog/CCFunnyGameDialog;->posNodesToLine(Lcom/badlogic/gdx/utils/Array;IIIFFFZ)V

    .line 745
    :goto_1
    return-void

    .line 730
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    .line 731
    .local v9, "data":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    const-string v1, "FunnyGame_Dialog_Box_Item.png"

    iput-object v1, v9, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->boxName:Ljava/lang/String;

    .line 732
    invoke-direct {p0, v9}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createRewardItem(Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v11

    .line 733
    .local v11, "itemNode":Lorg/cocos2d/nodes/CCSprite;
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 742
    .end local v9    # "data":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    .end local v11    # "itemNode":Lorg/cocos2d/nodes/CCSprite;
    :catch_0
    move-exception v10

    .line 743
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private setRedPointSheet()V
    .locals 3

    .prologue
    .line 285
    const-string v1, "FunnyGame_Dialog_Img_RedPoint.png"

    .line 286
    .local v1, "textureName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSpriteFrame;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    .line 287
    .local v0, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    invoke-static {v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->spriteSheet(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->redPointSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 288
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setActivityPoints()V

    .line 289
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setStillnessPoints()V

    .line 290
    return-void
.end method

.method private setRewardBox()V
    .locals 3

    .prologue
    const/high16 v2, 0x421a0000    # 38.5f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 638
    const-string v0, "FunnyGame_Dialog_Box_Hlt.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardBox:Lorg/cocos2d/nodes/CCSprite;

    .line 639
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 640
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v2, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 641
    return-void
.end method

.method private setStillnessPoints()V
    .locals 11

    .prologue
    .line 293
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    .line 294
    const-string v2, "FunnyGame_Dialog_Img_RedPoint.png"

    .line 295
    .local v2, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    const/16 v4, 0x12

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    const/high16 v5, 0x41200000    # 10.0f

    add-float/2addr v5, v0

    const/high16 v0, 0x43f00000    # 480.0f

    iget-object v6, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v0, v6

    const/high16 v6, 0x41200000    # 10.0f

    sub-float v6, v0, v6

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/sns/game/dialog/CCFunnyGameDialog;->lineToNodes(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIFFFFFZ)V

    .line 296
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x0

    const/16 v4, 0x24

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    const/high16 v5, 0x41e00000    # 28.0f

    add-float/2addr v5, v0

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    const/high16 v6, 0x41200000    # 10.0f

    add-float/2addr v6, v0

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/sns/game/dialog/CCFunnyGameDialog;->lineToNodes(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIFFFFFZ)V

    .line 297
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    const/16 v4, 0x12

    const/high16 v0, 0x44480000    # 800.0f

    iget-object v5, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v0, v5

    const/high16 v5, 0x41200000    # 10.0f

    sub-float v5, v0, v5

    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    const/high16 v6, 0x41200000    # 10.0f

    add-float/2addr v6, v0

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/sns/game/dialog/CCFunnyGameDialog;->lineToNodes(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIFFFFFZ)V

    .line 298
    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x0

    const/16 v4, 0x24

    const/high16 v0, 0x44480000    # 800.0f

    iget-object v5, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v0, v5

    const/high16 v5, 0x41e00000    # 28.0f

    sub-float v5, v0, v5

    const/high16 v0, 0x43f00000    # 480.0f

    iget-object v6, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v0, v6

    const/high16 v6, 0x41200000    # 10.0f

    sub-float v6, v0, v6

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/sns/game/dialog/CCFunnyGameDialog;->lineToNodes(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIFFFFFZ)V

    .line 299
    return-void
.end method

.method private setTurnsParams()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 794
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSpeed:F

    .line 795
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->slowSpeed:F

    .line 796
    iput v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsCycleNum:I

    .line 797
    iput v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowNum:I

    .line 798
    iput v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->firstAyPointIndex:I

    .line 800
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->randomTurnsDirection()V

    .line 801
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->randomTurnsStartItemIndex(II)V

    .line 802
    const/16 v0, 0xc

    invoke-direct {p0, v2, v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->randomTurnsCycleCount(II)V

    .line 803
    const/16 v0, 0xf

    invoke-direct {p0, v2, v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->randomTurnsSlowCount(II)V

    .line 804
    return-void
.end method


# virtual methods
.method public activityPoints_CallBack()V
    .locals 9

    .prologue
    .line 327
    :try_start_0
    iget-object v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->activityPoints:Lcom/badlogic/gdx/utils/Array;

    iget v6, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 328
    .local v6, "size":I
    iget-object v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->activityPoints:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v7, -0x1

    .line 329
    .local v0, "ayIndex":I
    iget-object v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v5, v7, -0x1

    .line 331
    .local v5, "lastIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_1

    .line 350
    iget v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->firstAyPointIndex:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->firstAyPointIndex:I

    .line 351
    iget v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->firstAyPointIndex:I

    iget-object v8, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ne v7, v8, :cond_0

    .line 352
    const/4 v7, 0x0

    iput v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->firstAyPointIndex:I

    .line 358
    .end local v0    # "ayIndex":I
    .end local v3    # "i":I
    .end local v5    # "lastIndex":I
    .end local v6    # "size":I
    :cond_0
    :goto_1
    return-void

    .line 332
    .restart local v0    # "ayIndex":I
    .restart local v3    # "i":I
    .restart local v5    # "lastIndex":I
    .restart local v6    # "size":I
    :cond_1
    iget-object v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->activityPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 333
    .local v1, "ayPoint":Lorg/cocos2d/nodes/CCSprite;
    iget v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->firstAyPointIndex:I

    sub-int v4, v7, v3

    .line 334
    .local v4, "index":I
    if-lez v4, :cond_4

    .line 335
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getVisible()Z

    move-result v7

    if-nez v7, :cond_2

    .line 336
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 339
    :cond_2
    iget-object v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v7}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    .line 338
    invoke-virtual {v1, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 347
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 331
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    :cond_4
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 343
    iget-object v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v7}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    .line 342
    invoke-virtual {v1, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 355
    .end local v0    # "ayIndex":I
    .end local v1    # "ayPoint":Lorg/cocos2d/nodes/CCSprite;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "lastIndex":I
    .end local v6    # "size":I
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "UI/FunnyGame_Dialog_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 73
    const-string v0, "background/Bg_FunnyGame_Dailog.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->addSpriteFramesByJPG(Ljava/lang/String;)Ljava/util/Set;

    .line 74
    return-void
.end method

.method public btnStart_CallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 205
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 206
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V

    .line 207
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setIsTouchEnabled(Z)V

    .line 208
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->runHltBoxAction()V

    .line 209
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->runBatchBigStarAction()V

    .line 210
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->runActivityPointsAction()V

    .line 211
    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {p0, v3}, Lcom/sns/game/dialog/CCFunnyGameDialog;->runItemMoveAction(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 0

    .prologue
    .line 443
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 444
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 424
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->cancel()V

    .line 425
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesBegan(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 172
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesEnded(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 186
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesMoved(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 179
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method createGoldItemData(ILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    .locals 3
    .param p1, "gold"    # I
    .param p2, "imgCenter"    # Ljava/lang/String;

    .prologue
    .line 677
    new-instance v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;-><init>(Lcom/sns/game/dialog/CCFunnyGameDialog;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V

    .line 678
    .local v0, "data":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    const/4 v1, 0x2

    iput v1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->tag:I

    .line 679
    iput p1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->gold:I

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FunnyGame_Dialog_Img_Gold_x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->descName:Ljava/lang/String;

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StoreUI_Item_Icon_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->imgName:Ljava/lang/String;

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91d1\u5e01x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->itemName:Ljava/lang/String;

    .line 683
    return-object v0
.end method

.method createNothingImData()Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    .locals 2

    .prologue
    .line 687
    new-instance v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;-><init>(Lcom/sns/game/dialog/CCFunnyGameDialog;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V

    .line 688
    .local v0, "data":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    const/4 v1, 0x3

    iput v1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->tag:I

    .line 689
    const-string v1, "FunnyGame_Dialog_Img_Nothing.png"

    iput-object v1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->imgName:Ljava/lang/String;

    .line 690
    return-object v0
.end method

.method protected createSelf()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "Bg_FunnyGame_Dailog_Frame.jpg"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setHltBox()V

    .line 81
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setBigStarSheet()V

    .line 82
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setRedPointSheet()V

    .line 83
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setRewardBox()V

    .line 84
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setItemList()V

    .line 85
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setBtnStart()V

    .line 86
    return-void
.end method

.method createWpnItemData(IILjava/lang/String;)Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    .locals 3
    .param p1, "wpnId"    # I
    .param p2, "bulletCount"    # I
    .param p3, "imgCenter"    # Ljava/lang/String;

    .prologue
    .line 666
    new-instance v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;-><init>(Lcom/sns/game/dialog/CCFunnyGameDialog;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V

    .line 667
    .local v0, "data":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    const/4 v1, 0x1

    iput v1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->tag:I

    .line 668
    iput p1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->wpnId:I

    .line 669
    div-int/lit8 v1, p2, 0x14

    iput v1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->holdCount:I

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FunnyGame_Dialog_Img_Bullet_+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->descName:Ljava/lang/String;

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StoreUI_Item_Icon_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->imgName:Ljava/lang/String;

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sns/game/database/dao/WeaponDao;->sharedDao()Lcom/sns/game/database/dao/WeaponDao;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sns/game/database/dao/WeaponDao;->cacheGet(I)Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->itemName:Ljava/lang/String;

    .line 673
    return-object v0
.end method

.method public dropItem(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 471
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 472
    .local v2, "data":[Ljava/lang/Object;
    const/4 v7, 0x0

    aget-object v6, v2, v7

    check-cast v6, Lorg/cocos2d/nodes/CCSprite;

    .line 473
    .local v6, "rewardItem":Lorg/cocos2d/nodes/CCSprite;
    const/4 v7, 0x1

    aget-object v1, v2, v7

    check-cast v1, Lcom/sns/game/layer/CCNewGameLayer;

    .line 474
    .local v1, "caller":Lcom/sns/game/layer/CCNewGameLayer;
    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    .line 476
    .local v5, "itmData":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    iget v7, v5, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->tag:I

    packed-switch v7, :pswitch_data_0

    .line 494
    .end local v1    # "caller":Lcom/sns/game/layer/CCNewGameLayer;
    .end local v2    # "data":[Ljava/lang/Object;
    .end local v5    # "itmData":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    .end local v6    # "rewardItem":Lorg/cocos2d/nodes/CCSprite;
    :goto_0
    return-void

    .line 478
    .restart local v1    # "caller":Lcom/sns/game/layer/CCNewGameLayer;
    .restart local v2    # "data":[Ljava/lang/Object;
    .restart local v5    # "itmData":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    .restart local v6    # "rewardItem":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_0
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 479
    iget v7, v5, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->wpnId:I

    invoke-virtual {v1, v7}, Lcom/sns/game/layer/CCNewGameLayer;->findWqkItem(I)Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 480
    .local v3, "dropEndPos":Lorg/cocos2d/types/CGPoint;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    invoke-direct {p0, v7}, Lcom/sns/game/dialog/CCFunnyGameDialog;->runDropItemAction([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    .end local v1    # "caller":Lcom/sns/game/layer/CCNewGameLayer;
    .end local v2    # "data":[Ljava/lang/Object;
    .end local v3    # "dropEndPos":Lorg/cocos2d/types/CGPoint;
    .end local v5    # "itmData":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    .end local v6    # "rewardItem":Lorg/cocos2d/nodes/CCSprite;
    :catch_0
    move-exception v4

    .line 492
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 483
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "caller":Lcom/sns/game/layer/CCNewGameLayer;
    .restart local v2    # "data":[Ljava/lang/Object;
    .restart local v5    # "itmData":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    .restart local v6    # "rewardItem":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_1
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1, v7}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 484
    invoke-virtual {v1}, Lcom/sns/game/layer/CCNewGameLayer;->getDropUserGoldPos()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 485
    .restart local v3    # "dropEndPos":Lorg/cocos2d/types/CGPoint;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    invoke-direct {p0, v7}, Lcom/sns/game/dialog/CCFunnyGameDialog;->runDropItemAction([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dropItem_CallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 553
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 554
    .local v1, "data":[Ljava/lang/Object;
    new-instance v3, Lcom/sns/game/dialog/CCFunnyGameDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog$1;-><init>(Lcom/sns/game/dialog/CCFunnyGameDialog;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCFunnyGameDialog;->handleLogicalToMsg(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v1    # "data":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v2

    .line 577
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    const-string v0, "\u5c0f\u6e38\u620f"

    return-object v0
.end method

.method public itemMove_CallBack(Ljava/lang/Object;)V
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x2

    const v8, 0x3ccccccd    # 0.025f

    const v11, 0x3f666666    # 0.9f

    .line 368
    const/4 v6, 0x0

    .line 370
    .local v6, "rewardBox":Lorg/cocos2d/nodes/CCSprite;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    move-object v6, v0

    .line 371
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->isTurnRunning()Z

    move-result v7

    if-nez v7, :cond_2

    .line 373
    iget-object v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardCard:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v7}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    .line 374
    .local v5, "itmData":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    iget v7, v5, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->tag:I

    if-ne v7, v9, :cond_1

    iget v7, v5, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->gold:I

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_1

    .line 376
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_1

    .line 377
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    .line 378
    iget v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowNum:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowNum:I

    .line 379
    iget v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->slowSpeed:F

    div-float/2addr v7, v11

    iput v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->slowSpeed:F

    invoke-direct {p0, v7}, Lcom/sns/game/dialog/CCFunnyGameDialog;->runItemMoveAction(F)V

    .line 419
    .end local v5    # "itmData":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    :cond_0
    :goto_0
    return-void

    .line 385
    .restart local v5    # "itmData":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    :cond_1
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sns/game/dialog/CCFunnyGameDialog;->clearActivityPoints(Z)V

    .line 386
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->addStillnessPoints()V

    .line 387
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x5

    invoke-static {v7, v8}, Lorg/cocos2d/actions/interval/CCBlink;->action(FI)Lorg/cocos2d/actions/interval/CCBlink;

    move-result-object v1

    .line 388
    .local v1, "blink":Lorg/cocos2d/actions/interval/CCBlink;
    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v2

    .line 389
    .local v2, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    const-string v7, "reward_CallBack"

    iget-object v8, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardCard:Lorg/cocos2d/nodes/CCSprite;

    invoke-static {p0, v7, v8}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    .line 390
    .local v4, "funcNd":Lorg/cocos2d/actions/instant/CCCallFuncND;
    const/4 v7, 0x2

    new-array v7, v7, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v1, v7}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    .end local v1    # "blink":Lorg/cocos2d/actions/interval/CCBlink;
    .end local v2    # "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    .end local v4    # "funcNd":Lorg/cocos2d/actions/instant/CCCallFuncND;
    .end local v5    # "itmData":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    :catch_0
    move-exception v3

    .line 417
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 395
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->isTurnRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 396
    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 397
    iget-object v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    iget v9, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/cocos2d/nodes/CCSprite;

    iput-object v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardCard:Lorg/cocos2d/nodes/CCSprite;

    .line 398
    iget-object v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardCard:Lorg/cocos2d/nodes/CCSprite;

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 399
    const/16 v7, 0x112

    invoke-static {v7}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 401
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->modifyCurrentItemIndex()V

    .line 403
    iget v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsCycleNum:I

    iget v9, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsCycleCount:I

    if-ge v7, v9, :cond_4

    .line 404
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->modifyTurnsCycleNum()V

    .line 405
    iget v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSpeed:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    iget v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSpeed:F

    mul-float/2addr v7, v11

    iput v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSpeed:F

    :goto_1
    invoke-direct {p0, v7}, Lcom/sns/game/dialog/CCFunnyGameDialog;->runItemMoveAction(F)V

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_1

    .line 408
    :cond_4
    iget v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowNum:I

    iget v8, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowCount:I

    if-ge v7, v8, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->modifyTurnsSlowNum()V

    .line 410
    iget v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->slowSpeed:F

    div-float/2addr v7, v11

    iput v7, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->slowSpeed:F

    invoke-direct {p0, v7}, Lcom/sns/game/dialog/CCFunnyGameDialog;->runItemMoveAction(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->addTexturesToCache()V

    .line 65
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createSelf()V

    .line 66
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->sortChildren()V

    .line 67
    return-void
.end method

.method protected onEnd()V
    .locals 5

    .prologue
    .line 449
    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardCard:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    .line 450
    .local v1, "rItmData":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    invoke-direct {p0, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog;->createRewardItem(Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .line 451
    .local v2, "rewardItem":Lorg/cocos2d/nodes/CCSprite;
    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardCard:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 452
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    .line 453
    .local v0, "caller":Lorg/cocos2d/layers/CCLayer;
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->onEnd()V

    .line 454
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCFunnyGameDialog;->onCancelFinishHandleObj([Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method protected recycleSelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->activityPoints:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->activityPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStars:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStars:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 143
    :cond_4
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->activityPoints:Lcom/badlogic/gdx/utils/Array;

    .line 144
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStarSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 145
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStars:Lcom/badlogic/gdx/utils/Array;

    .line 146
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 147
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->contentSpace:Lorg/cocos2d/types/CGPoint;

    .line 148
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->stillnessPoints:Lcom/badlogic/gdx/utils/Array;

    .line 149
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardCard:Lorg/cocos2d/nodes/CCSprite;

    .line 150
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->hltBox:Lorg/cocos2d/nodes/CCSprite;

    .line 151
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->hltBoxColorNames:[Ljava/lang/String;

    .line 152
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemDataList:Ljava/util/List;

    .line 153
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    .line 154
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->redPointSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 155
    iput-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->rewardBox:Lorg/cocos2d/nodes/CCSprite;

    .line 156
    iput v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->firstAyPointIndex:I

    .line 157
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->slowSpeed:F

    .line 158
    iput v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->startTurnsItemIndex:I

    .line 159
    iput v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->currentTurnsItemIndex:I

    .line 160
    iput v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsCycleCount:I

    .line 161
    iput v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsCycleNum:I

    .line 162
    iput v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsDirection:I

    .line 163
    iput v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowCount:I

    .line 164
    iput v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSlowNum:I

    .line 165
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->turnsSpeed:F

    .line 166
    return-void
.end method

.method public reward_CallBack(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 460
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog;->setIsTouchEnabled(Z)V

    .line 461
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCFunnyGameDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->show()V

    .line 92
    const/16 v0, 0x115

    invoke-static {v0}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 93
    return-void
.end method

.method protected showCancelAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 430
    iget-object v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v4}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 433
    :cond_0
    iget-object v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v2, :cond_1

    .line 434
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/sns/game/actions/CCDepthFadeOut;->action(F)Lcom/sns/game/actions/CCDepthFadeOut;

    move-result-object v0

    .line 435
    .local v0, "depthFadeOut":Lcom/sns/game/actions/CCDepthFadeOut;
    const-string v2, "callback_selector_showCancelAnimation"

    invoke-static {p0, v2}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v1

    .line 436
    .local v1, "func":Lorg/cocos2d/actions/instant/CCCallFunc;
    iget-object v2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 438
    .end local v0    # "depthFadeOut":Lcom/sns/game/actions/CCDepthFadeOut;
    .end local v1    # "func":Lorg/cocos2d/actions/instant/CCCallFunc;
    :cond_1
    return-void
.end method

.method protected sortChildren()V
    .locals 3

    .prologue
    const/16 v2, 0x5a

    .line 98
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->hltBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 99
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->redPointSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 100
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->itemList:Lcom/badlogic/gdx/utils/Array;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChildren(Ljava/lang/Iterable;I)V

    .line 101
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->bigStarSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 102
    iget-object v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog;->btnStart:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 103
    return-void
.end method
