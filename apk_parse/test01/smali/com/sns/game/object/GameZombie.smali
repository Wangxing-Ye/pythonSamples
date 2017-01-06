.class public Lcom/sns/game/object/GameZombie;
.super Lcom/sns/game/object/GameBaseZombie;
.source "GameZombie.java"


# instance fields
.field private appearGift:Z

.field private bean:Lcom/sns/game/database/bean/ZombieDataBean;

.field private cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

.field private creater:Lcom/sns/game/object/GameZombieLoader;

.field public deadFlag:Z

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

.field private disappearFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

.field private displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

.field private flipX_:Z

.field gold_scale:F

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

.field private sh:F

.field private shadow_:Lorg/cocos2d/nodes/CCSprite;

.field private spName:Lorg/cocos2d/nodes/CCSprite;

.field private zOrder_:I

.field private zombie_:Lorg/cocos2d/nodes/CCSprite;


# direct methods
.method public constructor <init>(Lcom/sns/game/object/GameZombieLoader;)V
    .locals 1
    .param p1, "loader"    # Lcom/sns/game/object/GameZombieLoader;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sns/game/object/GameBaseZombie;-><init>()V

    .line 809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sns/game/object/GameZombie;->deadFlag:Z

    .line 1130
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->gold_scale:F

    .line 67
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 68
    iput-object p1, p0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    .line 69
    return-void
.end method

.method private addHideZombie(Lcom/sns/game/object/GameZombie;)Lorg/cocos2d/nodes/CCSprite;
    .locals 6
    .param p1, "zombie"    # Lcom/sns/game/object/GameZombie;

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1547
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 1550
    .local v2, "size":Lorg/cocos2d/types/CGSize;
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 1551
    .local v1, "hide":Lorg/cocos2d/nodes/CCSprite;
    if-nez v1, :cond_0

    .line 1552
    invoke-virtual {p1}, Lcom/sns/game/object/GameZombie;->getDisappearFrame()Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 1553
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 1554
    const/high16 v3, -0x80000000

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSprite;->setTag(I)V

    .line 1555
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getFlipX()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSprite;->setFlipX(Z)V

    .line 1556
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1557
    iget v3, v2, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v3, v5

    iget v4, v2, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 1558
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    const/16 v4, 0xa

    invoke-virtual {v3, v1, v4}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    .end local v1    # "hide":Lorg/cocos2d/nodes/CCSprite;
    :cond_0
    :goto_0
    return-object v1

    .line 1561
    :catch_0
    move-exception v0

    .line 1562
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1563
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addShowZombie(Lcom/sns/game/object/GameZombie;)Lorg/cocos2d/nodes/CCSprite;
    .locals 6
    .param p1, "zombie"    # Lcom/sns/game/object/GameZombie;

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1570
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 1573
    .local v2, "size":Lorg/cocos2d/types/CGSize;
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 1574
    .local v1, "show":Lorg/cocos2d/nodes/CCSprite;
    if-nez v1, :cond_0

    .line 1575
    invoke-virtual {p1}, Lcom/sns/game/object/GameZombie;->getDisplayFrame()Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 1576
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 1577
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSprite;->setTag(I)V

    .line 1578
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getFlipX()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSprite;->setFlipX(Z)V

    .line 1579
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1580
    iget v3, v2, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v3, v5

    iget v4, v2, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 1581
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    const/16 v4, 0xa

    invoke-virtual {v3, v1, v4}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    .end local v1    # "show":Lorg/cocos2d/nodes/CCSprite;
    :cond_0
    :goto_0
    return-object v1

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1586
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addVariationZombie()Lcom/sns/game/object/GameZombie;
    .locals 4

    .prologue
    .line 1529
    :try_start_0
    new-instance v1, Lcom/sns/game/object/GameZombie;

    iget-object v2, p0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    invoke-direct {v1, v2}, Lcom/sns/game/object/GameZombie;-><init>(Lcom/sns/game/object/GameZombieLoader;)V

    .line 1530
    .local v1, "zombieObj":Lcom/sns/game/object/GameZombie;
    iget v2, p0, Lcom/sns/game/object/GameZombie;->zOrder_:I

    invoke-virtual {v1, v2}, Lcom/sns/game/object/GameZombie;->setZorder(I)V

    .line 1531
    iget-boolean v2, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-virtual {v1, v2}, Lcom/sns/game/object/GameZombie;->setFlipX(Z)V

    .line 1532
    iget-object v2, p0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/ZombieDataBean;->getVariation_zombie_id()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sns/game/object/GameZombieLoader;->getZombieDataBeanByID(I)Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sns/game/object/GameZombie;->setBean(Lcom/sns/game/database/bean/ZombieDataBean;)V

    .line 1533
    invoke-virtual {v1}, Lcom/sns/game/object/GameZombie;->setFramesToCache()V

    .line 1534
    invoke-virtual {v1}, Lcom/sns/game/object/GameZombie;->setZombie()V

    .line 1535
    invoke-virtual {v1}, Lcom/sns/game/object/GameZombie;->getZombie()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    .end local v1    # "zombieObj":Lcom/sns/game/object/GameZombie;
    :goto_0
    return-object v1

    .line 1537
    :catch_0
    move-exception v0

    .line 1538
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1539
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addWeaponCard(Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;I)V
    .locals 7
    .param p1, "wqkItem"    # Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    .param p2, "holdCount"    # I

    .prologue
    .line 1667
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v4

    .line 1668
    .local v4, "uwDao":Lcom/sns/game/database/dao/UserWeaponDao;
    invoke-virtual {p1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getStoreItemBean()Lcom/sns/game/database/bean/StoreItemBean;

    move-result-object v1

    .line 1670
    .local v1, "simBean":Lcom/sns/game/database/bean/StoreItemBean;
    invoke-virtual {v1}, Lcom/sns/game/database/bean/StoreItemBean;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sns/game/database/dao/UserWeaponDao;->containUserWeapon(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1672
    invoke-virtual {v1}, Lcom/sns/game/database/bean/StoreItemBean;->getId()I

    move-result v5

    invoke-virtual {v4, v5, p2}, Lcom/sns/game/database/dao/UserWeaponDao;->createUserWeapon(II)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v3

    .line 1673
    .local v3, "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Insert data to [userweapons] is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/sns/game/database/dao/UserWeaponDao;->addUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 1690
    :cond_0
    :goto_0
    return-void

    .line 1676
    .end local v3    # "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :cond_1
    invoke-virtual {v1}, Lcom/sns/game/database/bean/StoreItemBean;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sns/game/database/dao/UserWeaponDao;->findUserWeaponBean(I)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v3

    .line 1677
    .restart local v3    # "uwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/database/bean/WeaponBean;->getBullet_count()I

    move-result v5

    mul-int/2addr v5, p2

    invoke-virtual {v3, v5}, Lcom/sns/game/database/bean/UserWeaponBean;->modifyUse_count(I)V

    .line 1678
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Update [userweapons] data is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/sns/game/database/dao/UserWeaponDao;->modifyUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 1680
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->selfLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v0

    .line 1681
    .local v0, "loader":Lcom/sns/game/object/GameWeaponLoader;
    invoke-virtual {v0}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v2

    .line 1682
    .local v2, "useWnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v5

    .line 1683
    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v6

    .line 1682
    if-ne v5, v6, :cond_0

    .line 1685
    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getHold_count()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sns/game/database/bean/UserWeaponBean;->setHold_count(I)V

    .line 1686
    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sns/game/database/bean/UserWeaponBean;->setUse_count(I)V

    goto :goto_0
.end method

.method private added(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    .locals 1
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sns/game/object/GameZombieLoader;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method private autoTurn()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 243
    :try_start_0
    iget-object v6, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget-object v7, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Lorg/cocos2d/nodes/CCSprite;->getAction(I)Lorg/cocos2d/actions/base/CCAction;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->stopAction(Lorg/cocos2d/actions/base/CCAction;)V

    .line 244
    iget-object v6, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget-object v7, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    const/16 v8, 0x16

    invoke-virtual {v7, v8}, Lorg/cocos2d/nodes/CCSprite;->getAction(I)Lorg/cocos2d/actions/base/CCAction;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->stopAction(Lorg/cocos2d/actions/base/CCAction;)V

    .line 247
    iget-boolean v6, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    if-eqz v6, :cond_0

    :goto_0
    invoke-virtual {p0, v4}, Lcom/sns/game/object/GameZombie;->setFlipX(Z)V

    .line 248
    const/high16 v4, 0x3fa00000    # 1.25f

    const/high16 v5, 0x3fe00000    # 1.75f

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v2

    .line 250
    .local v2, "speed":F
    iget-boolean v4, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-direct {p0, v4}, Lcom/sns/game/object/GameZombie;->calcMoveToEndPos(Z)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 254
    .local v3, "toGoToPos":Lorg/cocos2d/types/CGPoint;
    iget-boolean v4, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-static {v4}, Lorg/cocos2d/actions/instant/CCFlipX;->action(Z)Lorg/cocos2d/actions/instant/CCFlipX;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v6, 0x0

    .line 255
    const-string v7, "callBack_selector_moveTo"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p0, v7, v8}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 256
    invoke-direct {p0, v3, v2}, Lcom/sns/game/object/GameZombie;->calcMoveTime(Lorg/cocos2d/types/CGPoint;F)F

    move-result v7

    invoke-static {v7, v3}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 257
    const-string v7, "callBack_selector_moveTo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p0, v7, v8}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v7

    aput-object v7, v5, v6

    .line 253
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 258
    .local v1, "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    const/16 v4, 0x15

    invoke-virtual {v1, v4}, Lorg/cocos2d/actions/interval/CCSequence;->setTag(I)V

    .line 259
    iget-object v4, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1    # "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v2    # "speed":F
    .end local v3    # "toGoToPos":Lorg/cocos2d/types/CGPoint;
    :goto_1
    return-void

    :cond_0
    move v4, v5

    .line 247
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private calcMoveTime(Lorg/cocos2d/types/CGPoint;F)F
    .locals 3
    .param p1, "endPos"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "speed"    # F

    .prologue
    .line 1509
    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 1508
    invoke-static {v1, p1}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v1

    .line 1509
    sget-object v2, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    .line 1508
    div-float v0, v1, v2

    .line 1510
    .local v0, "scale":F
    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/ZombieDataBean;->getMove_time()F

    move-result v1

    mul-float/2addr v1, v0

    mul-float/2addr v1, p2

    return v1
.end method

.method private calcMoveToEndPos(Z)Lorg/cocos2d/types/CGPoint;
    .locals 7
    .param p1, "flipX"    # Z

    .prologue
    .line 1515
    sget-object v5, Lcom/sns/game/util/DeviceManager;->posZero_:Lorg/cocos2d/types/CGPoint;

    iget v2, v5, Lorg/cocos2d/types/CGPoint;->x:F

    .line 1516
    .local v2, "start_posX":F
    sget-object v5, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v0, v5, Lorg/cocos2d/types/CGSize;->width:F

    .line 1517
    .local v0, "end_posX":F
    iget-object v5, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v5

    iget v5, v5, Lorg/cocos2d/types/CGSize;->width:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v1, v5, v6

    .line 1519
    .local v1, "frameWidth":F
    if-eqz p1, :cond_0

    add-float v3, v0, v1

    .line 1520
    .local v3, "toPosX":F
    :goto_0
    iget-object v5, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    iget v4, v5, Lorg/cocos2d/types/CGPoint;->y:F

    .line 1522
    .local v4, "toPosY":F
    invoke-static {v3, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    return-object v5

    .line 1519
    .end local v3    # "toPosX":F
    .end local v4    # "toPosY":F
    :cond_0
    sub-float v3, v2, v1

    goto :goto_0
.end method

.method private callBack_deadAction_Logic_BLJS(I[Ljava/lang/Object;)V
    .locals 11
    .param p1, "tag"    # I
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 871
    packed-switch p1, :pswitch_data_0

    .line 914
    :goto_0
    return-void

    .line 875
    :pswitch_0
    const/4 v1, 0x0

    .line 876
    .local v1, "passNum":I
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->addVariationZombie()Lcom/sns/game/object/GameZombie;

    move-result-object v3

    .line 877
    .local v3, "variationZombie":Lcom/sns/game/object/GameZombie;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/sns/game/object/GameZombie;->callBack_selector_endOwnLife(Ljava/lang/Object;)V

    goto :goto_0

    .line 883
    .end local v1    # "passNum":I
    .end local v3    # "variationZombie":Lcom/sns/game/object/GameZombie;
    :pswitch_1
    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 884
    .restart local v1    # "passNum":I
    const/4 v4, 0x3

    aget-object v3, p2, v4

    check-cast v3, Lcom/sns/game/object/GameZombie;

    .line 885
    .restart local v3    # "variationZombie":Lcom/sns/game/object/GameZombie;
    invoke-direct {p0, p0}, Lcom/sns/game/object/GameZombie;->addHideZombie(Lcom/sns/game/object/GameZombie;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 886
    .local v0, "hide":Lorg/cocos2d/nodes/CCSprite;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 888
    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v6, 0x0

    .line 889
    const-string v7, "callBack_selector_endOwnLife"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p0, v7, v8}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 890
    const-string v7, "callBack_selector_endOwnLife"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    invoke-static {p0, v7, v8}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v7

    aput-object v7, v5, v6

    .line 887
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 896
    .end local v0    # "hide":Lorg/cocos2d/nodes/CCSprite;
    .end local v1    # "passNum":I
    .end local v3    # "variationZombie":Lcom/sns/game/object/GameZombie;
    :pswitch_2
    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 897
    .restart local v1    # "passNum":I
    const/4 v4, 0x3

    aget-object v3, p2, v4

    check-cast v3, Lcom/sns/game/object/GameZombie;

    .line 898
    .restart local v3    # "variationZombie":Lcom/sns/game/object/GameZombie;
    const/4 v4, 0x6

    if-le v1, v4, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->recycleSelf()V

    .line 900
    iget-object v4, p0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v4}, Lcom/sns/game/object/GameZombieLoader;->getZombieList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-virtual {v3}, Lcom/sns/game/object/GameZombie;->runAction()V

    goto/16 :goto_0

    .line 905
    :cond_0
    invoke-direct {p0, v3}, Lcom/sns/game/object/GameZombie;->addShowZombie(Lcom/sns/game/object/GameZombie;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .line 906
    .local v2, "show":Lorg/cocos2d/nodes/CCSprite;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 908
    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v6, 0x0

    .line 909
    const-string v7, "callBack_selector_endOwnLife"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p0, v7, v8}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 910
    const-string v7, "callBack_selector_endOwnLife"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    invoke-static {p0, v7, v8}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v7

    aput-object v7, v5, v6

    .line 907
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 871
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createPPaoNode(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 1785
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->getDisplayFrame()Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 1786
    .local v1, "size":Lorg/cocos2d/types/CGSize;
    iget-object v2, p0, Lcom/sns/game/object/GameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v2, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 1787
    .local v0, "pao":Lorg/cocos2d/nodes/CCSprite;
    const v2, 0x90909

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->setTag(I)V

    .line 1788
    invoke-virtual {v0, v3, v3}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1789
    iget v2, v1, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v2, v3

    iget v3, v1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v0, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 1790
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->getZombie()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v0, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 1791
    return-object v0
.end method

.method private destroyNode(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 1488
    if-eqz p1, :cond_0

    .line 1489
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->stopAllActions()V

    .line 1490
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 1492
    :cond_0
    return-void
.end method

.method private varargs dropGold([Ljava/lang/Object;)V
    .locals 34
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 953
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sns/game/object/GameZombie;->isDropGold:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 955
    const/16 v17, 0x0

    .line 956
    .local v17, "goldIcon":Lorg/cocos2d/nodes/CCSprite;
    const/4 v15, 0x0

    .line 957
    .local v15, "goldAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v11

    .line 958
    .local v11, "frameSize":Lorg/cocos2d/types/CGSize;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 959
    .local v4, "dropStartPos":Lorg/cocos2d/types/CGPoint;
    const/high16 v29, 0x41ec0000    # 29.5f

    const/high16 v30, 0x42280000    # 42.0f

    invoke-static/range {v29 .. v30}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 960
    .local v5, "dropStopPos":Lorg/cocos2d/types/CGPoint;
    const-string v20, "zombie/drop_gold.plist"

    .line 961
    .local v20, "goldIconPlist":Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 964
    .local v19, "goldIconFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_score()I

    move-result v26

    .line 965
    .local v26, "score":I
    invoke-virtual/range {p0 .. p0}, Lcom/sns/game/object/GameZombie;->getDropMultiple()I

    move-result v25

    .line 966
    .local v25, "muple":I
    const-string v29, ""

    const-string v30, "UI/New_Num_x_27x33.png"

    const/16 v31, 0x1b

    const/16 v32, 0x21

    const/16 v33, 0x30

    invoke-static/range {v29 .. v33}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v15

    .line 967
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, ":"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int v30, v26, v25

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 968
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setOpacity(I)V

    .line 969
    const/high16 v29, 0x3f000000    # 0.5f

    const/high16 v30, 0x3f000000    # 0.5f

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 971
    iget v0, v4, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v29, v0

    invoke-virtual {v15}, Lorg/cocos2d/nodes/CCLabelAtlas;->getContentSizeWidth()F

    move-result v30

    const/high16 v31, 0x3f000000    # 0.5f

    mul-float v30, v30, v31

    add-float v29, v29, v30

    .line 972
    iget v0, v4, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v30, v0

    .line 970
    invoke-static/range {v29 .. v30}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 976
    const-string v29, "point.png"

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v17

    .line 977
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 978
    const/high16 v29, 0x3f400000    # 0.75f

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 979
    const/high16 v29, 0x3f000000    # 0.5f

    const/high16 v30, 0x3f000000    # 0.5f

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 981
    invoke-virtual {v15}, Lorg/cocos2d/nodes/CCLabelAtlas;->getPositionRefX()F

    move-result v29

    invoke-virtual {v15}, Lorg/cocos2d/nodes/CCLabelAtlas;->getContentSizeWidth()F

    move-result v30

    sub-float v29, v29, v30

    const/high16 v30, 0x41800000    # 16.0f

    sub-float v29, v29, v30

    .line 982
    iget v0, v4, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v30, v0

    .line 980
    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 986
    const/high16 v29, 0x3f400000    # 0.75f

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 987
    const/high16 v29, 0x3f400000    # 0.75f

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setScale(F)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sns/game/object/GameZombieLoader;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v29

    const v30, 0x7fffffff

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sns/game/object/GameZombieLoader;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v29

    const v30, 0x7fffffff

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 994
    const/high16 v29, 0x3f400000    # 0.75f

    const/high16 v30, 0x3f800000    # 1.0f

    invoke-static/range {v29 .. v30}, Lcom/sns/game/util/SoundManager;->playCoinEffect(FF)V

    .line 997
    const-string v29, "dropGold_animate"

    const v30, 0x3d99999a    # 0.075f

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v18

    .line 998
    .local v18, "goldIconAnim":Lorg/cocos2d/actions/interval/CCAnimate;
    invoke-static/range {v18 .. v18}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1003
    iget v0, v11, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v29, v0

    const/high16 v30, 0x3f000000    # 0.5f

    mul-float v22, v29, v30

    .line 1004
    .local v22, "h":F
    const/high16 v29, 0x3e800000    # 0.25f

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/actions/interval/CCFadeIn;->action(F)Lorg/cocos2d/actions/interval/CCFadeIn;

    move-result-object v9

    .line 1005
    .local v9, "fadeIn":Lorg/cocos2d/actions/interval/CCFadeIn;
    const/high16 v29, 0x3f000000    # 0.5f

    const/16 v30, 0x0

    move/from16 v0, v30

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v30

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v29 .. v32}, Lorg/cocos2d/actions/interval/CCJumpBy;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v23

    .line 1006
    .local v23, "jumpBy":Lorg/cocos2d/actions/interval/CCJumpBy;
    invoke-static/range {v23 .. v23}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v7

    .line 1007
    .local v7, "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v7, v29, v30

    move-object/from16 v0, v29

    invoke-static {v9, v0}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v28

    .line 1011
    .local v28, "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    const/high16 v29, 0x3f400000    # 0.75f

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v6

    .line 1015
    .local v6, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    const-string v27, "callBack_selector_dropOut"

    .line 1016
    .local v27, "selector":Ljava/lang/String;
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v3, v0, [Ljava/lang/Object;

    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v3, v29

    const/16 v29, 0x1

    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v3, v29

    const/16 v29, 0x2

    aput-object v17, v3, v29

    const/16 v29, 0x3

    aput-object v19, v3, v29

    .line 1017
    .local v3, "data":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v13

    .line 1021
    .local v13, "funcNd_1":Lorg/cocos2d/actions/instant/CCCallFuncND;
    const/high16 v29, 0x43dc0000    # 440.0f

    const/high16 v30, 0x3f400000    # 0.75f

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v4, v5, v0, v1}, Lcom/sns/game/util/CCUtil;->ccuCalcMoveEquivalentTime(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;FF)F

    move-result v8

    .line 1022
    .local v8, "equalTime":F
    invoke-static {v8, v5}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v24

    .line 1023
    .local v24, "moveTo":Lorg/cocos2d/actions/interval/CCMoveTo;
    invoke-static/range {v24 .. v24}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v7

    .line 1027
    const-string v27, "callBack_selector_dropOut"

    .line 1028
    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v3, v0, [Ljava/lang/Object;

    .end local v3    # "data":[Ljava/lang/Object;
    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v3, v29

    const/16 v29, 0x1

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v3, v29

    const/16 v29, 0x2

    aput-object v17, v3, v29

    .line 1029
    .restart local v3    # "data":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v14

    .line 1032
    .local v14, "funcNd_2":Lorg/cocos2d/actions/instant/CCCallFuncND;
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v6, v29, v30

    const/16 v30, 0x1

    aput-object v13, v29, v30

    const/16 v30, 0x2

    aput-object v7, v29, v30

    const/16 v30, 0x3

    aput-object v14, v29, v30

    invoke-static/range {v28 .. v29}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v21

    .line 1033
    .local v21, "goldIconSeq":Lorg/cocos2d/actions/interval/CCSequence;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1038
    const/high16 v29, 0x3e800000    # 0.25f

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/actions/interval/CCFadeIn;->action(F)Lorg/cocos2d/actions/interval/CCFadeIn;

    move-result-object v9

    .line 1039
    const/high16 v29, 0x3f000000    # 0.5f

    const/16 v30, 0x0

    const/high16 v31, 0x42480000    # 50.0f

    invoke-static/range {v30 .. v31}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v30

    const/high16 v31, -0x3db80000    # -50.0f

    const/16 v32, 0x1

    invoke-static/range {v29 .. v32}, Lorg/cocos2d/actions/interval/CCJumpBy;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v23

    .line 1040
    invoke-static/range {v23 .. v23}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v7

    .line 1041
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v7, v29, v30

    move-object/from16 v0, v29

    invoke-static {v9, v0}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v28

    .line 1045
    const/high16 v29, 0x3f400000    # 0.75f

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v6

    .line 1049
    const/high16 v29, 0x3e800000    # 0.25f

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v10

    .line 1053
    .local v10, "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    const-string v27, "callBack_selector_dropOut"

    .line 1054
    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v3, v0, [Ljava/lang/Object;

    .end local v3    # "data":[Ljava/lang/Object;
    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v3, v29

    const/16 v29, 0x1

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v3, v29

    const/16 v29, 0x2

    aput-object v15, v3, v29

    .line 1055
    .restart local v3    # "data":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v12

    .line 1058
    .local v12, "funcNd":Lorg/cocos2d/actions/instant/CCCallFuncND;
    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v6, v29, v30

    const/16 v30, 0x1

    aput-object v10, v29, v30

    const/16 v30, 0x2

    aput-object v12, v29, v30

    invoke-static/range {v28 .. v29}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v16

    .line 1059
    .local v16, "goldAtlasSeq":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-virtual/range {v15 .. v16}, Lorg/cocos2d/nodes/CCLabelAtlas;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1063
    .end local v3    # "data":[Ljava/lang/Object;
    .end local v4    # "dropStartPos":Lorg/cocos2d/types/CGPoint;
    .end local v5    # "dropStopPos":Lorg/cocos2d/types/CGPoint;
    .end local v6    # "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    .end local v7    # "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    .end local v8    # "equalTime":F
    .end local v9    # "fadeIn":Lorg/cocos2d/actions/interval/CCFadeIn;
    .end local v10    # "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    .end local v11    # "frameSize":Lorg/cocos2d/types/CGSize;
    .end local v12    # "funcNd":Lorg/cocos2d/actions/instant/CCCallFuncND;
    .end local v13    # "funcNd_1":Lorg/cocos2d/actions/instant/CCCallFuncND;
    .end local v14    # "funcNd_2":Lorg/cocos2d/actions/instant/CCCallFuncND;
    .end local v15    # "goldAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    .end local v16    # "goldAtlasSeq":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v17    # "goldIcon":Lorg/cocos2d/nodes/CCSprite;
    .end local v18    # "goldIconAnim":Lorg/cocos2d/actions/interval/CCAnimate;
    .end local v19    # "goldIconFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .end local v20    # "goldIconPlist":Ljava/lang/String;
    .end local v21    # "goldIconSeq":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v22    # "h":F
    .end local v23    # "jumpBy":Lorg/cocos2d/actions/interval/CCJumpBy;
    .end local v24    # "moveTo":Lorg/cocos2d/actions/interval/CCMoveTo;
    .end local v25    # "muple":I
    .end local v26    # "score":I
    .end local v27    # "selector":Ljava/lang/String;
    .end local v28    # "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    :cond_0
    return-void
.end method

.method private varargs dropItem([Ljava/lang/Object;)V
    .locals 27
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 1066
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sns/game/object/GameZombie;->appearGift:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 1068
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v22

    .line 1069
    .local v22, "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    if-nez v22, :cond_0

    .line 1128
    .end local v22    # "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    :goto_0
    return-void

    .line 1071
    .restart local v22    # "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v20

    .line 1072
    .local v20, "startPos":Lorg/cocos2d/types/CGPoint;
    invoke-virtual/range {v22 .. v22}, Lcom/sns/game/layer/CCNewGameLayer;->nextGameStarPos()Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    .line 1074
    .local v21, "stopPos":Lorg/cocos2d/types/CGPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-object/from16 v23, v0

    const-string v24, "Game_UI_Img_Drop_Star.png"

    invoke-virtual/range {v23 .. v24}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v18

    .line 1075
    .local v18, "star":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v23, 0x3f000000    # 0.5f

    const/high16 v24, 0x3f000000    # 0.5f

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 1078
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v23

    const-string v24, "effect/effect_1.plist"

    invoke-virtual/range {v23 .. v24}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1079
    .local v7, "effectFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const-string v23, "point.png"

    invoke-static/range {v23 .. v23}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v19

    .line 1080
    .local v19, "starEffect":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v23, 0x3f000000    # 0.5f

    const/high16 v24, 0x3f000000    # 0.5f

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1081
    invoke-virtual/range {v18 .. v18}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v23

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v23, v24

    invoke-virtual/range {v18 .. v18}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v24

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v24, v24, v25

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 1082
    const/16 v23, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sns/game/object/GameZombieLoader;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v23

    const v24, 0x7fffffff

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 1086
    const/16 v23, 0x122

    invoke-static/range {v23 .. v23}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 1089
    const/high16 v23, 0x3e800000    # 0.25f

    invoke-static/range {v23 .. v23}, Lorg/cocos2d/actions/interval/CCFadeIn;->action(F)Lorg/cocos2d/actions/interval/CCFadeIn;

    move-result-object v8

    .line 1090
    .local v8, "fadeIn":Lorg/cocos2d/actions/interval/CCFadeIn;
    const/high16 v23, 0x3f000000    # 0.5f

    const/16 v24, 0x0

    const/high16 v25, 0x42480000    # 50.0f

    invoke-static/range {v24 .. v25}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v24

    const/high16 v25, -0x3db80000    # -50.0f

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lorg/cocos2d/actions/interval/CCJumpBy;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v11

    .line 1091
    .local v11, "jumpBy":Lorg/cocos2d/actions/interval/CCJumpBy;
    invoke-static {v11}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v6

    .line 1092
    .local v6, "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v6, v23, v24

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v16

    .line 1096
    .local v16, "spawn_1":Lorg/cocos2d/actions/interval/CCSpawn;
    const-string v15, "callBack_selector_dropOut"

    .line 1097
    .local v15, "selector":Ljava/lang/String;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v23, 0x0

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v4, v23

    const/16 v23, 0x1

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v4, v23

    const/16 v23, 0x2

    aput-object v19, v4, v23

    const/16 v23, 0x3

    aput-object v7, v4, v23

    .line 1098
    .local v4, "data":[Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-static {v0, v15, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v9

    .line 1102
    .local v9, "funcNd_Tag_2_0":Lorg/cocos2d/actions/instant/CCCallFuncND;
    const/high16 v23, 0x3f400000    # 0.75f

    invoke-static/range {v23 .. v23}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v5

    .line 1106
    .local v5, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    const/high16 v23, 0x43dc0000    # 440.0f

    const/high16 v24, 0x3f400000    # 0.75f

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/sns/game/util/CCUtil;->ccuCalcMoveEquivalentTime(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;FF)F

    move-result v13

    .line 1107
    .local v13, "moveToTime":F
    const/high16 v23, 0x3f400000    # 0.75f

    const v24, 0x3dcccccd    # 0.1f

    invoke-static/range {v23 .. v24}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v14

    .line 1108
    .local v14, "scaleTo":Lorg/cocos2d/actions/interval/CCScaleTo;
    move-object/from16 v0, v21

    invoke-static {v13, v0}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v12

    .line 1109
    .local v12, "moveTo":Lorg/cocos2d/actions/interval/CCMoveTo;
    invoke-static {v12}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v6

    .line 1110
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v6, v23, v24

    move-object/from16 v0, v23

    invoke-static {v14, v0}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v17

    .line 1114
    .local v17, "spawn_2":Lorg/cocos2d/actions/interval/CCSpawn;
    const-string v15, "callBack_selector_dropOut"

    .line 1115
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v4, v0, [Ljava/lang/Object;

    .end local v4    # "data":[Ljava/lang/Object;
    const/16 v23, 0x0

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v4, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v4, v23

    const/16 v23, 0x2

    aput-object v18, v4, v23

    .line 1116
    .restart local v4    # "data":[Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-static {v0, v15, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v10

    .line 1120
    .local v10, "funcNd_Tag_2_1":Lorg/cocos2d/actions/instant/CCCallFuncND;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v9, v23, v24

    const/16 v24, 0x1

    aput-object v5, v23, v24

    const/16 v24, 0x2

    aput-object v17, v23, v24

    const/16 v24, 0x3

    aput-object v10, v23, v24

    .line 1119
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 1126
    .end local v4    # "data":[Ljava/lang/Object;
    .end local v5    # "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    .end local v6    # "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    .end local v7    # "effectFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .end local v8    # "fadeIn":Lorg/cocos2d/actions/interval/CCFadeIn;
    .end local v9    # "funcNd_Tag_2_0":Lorg/cocos2d/actions/instant/CCCallFuncND;
    .end local v10    # "funcNd_Tag_2_1":Lorg/cocos2d/actions/instant/CCCallFuncND;
    .end local v11    # "jumpBy":Lorg/cocos2d/actions/interval/CCJumpBy;
    .end local v12    # "moveTo":Lorg/cocos2d/actions/interval/CCMoveTo;
    .end local v13    # "moveToTime":F
    .end local v14    # "scaleTo":Lorg/cocos2d/actions/interval/CCScaleTo;
    .end local v15    # "selector":Ljava/lang/String;
    .end local v16    # "spawn_1":Lorg/cocos2d/actions/interval/CCSpawn;
    .end local v17    # "spawn_2":Lorg/cocos2d/actions/interval/CCSpawn;
    .end local v18    # "star":Lorg/cocos2d/nodes/CCSprite;
    .end local v19    # "starEffect":Lorg/cocos2d/nodes/CCSprite;
    .end local v20    # "startPos":Lorg/cocos2d/types/CGPoint;
    .end local v21    # "stopPos":Lorg/cocos2d/types/CGPoint;
    .end local v22    # "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sns/game/object/GameZombie;->dropToWeaponCard()V

    goto/16 :goto_0
.end method

.method private dropToWeaponCard()V
    .locals 32

    .prologue
    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sns/game/database/bean/ZombieDataBean;->getWeapon_card_drop()F

    move-result v7

    .line 1594
    .local v7, "drop":F
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sns/game/database/dao/UserLevelDao;->getCurrentLevelCoefficient()F

    move-result v5

    .line 1596
    .local v5, "clct":F
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v30

    mul-float v31, v7, v5

    cmpg-float v30, v30, v31

    if-gtz v30, :cond_0

    .line 1598
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v26

    .line 1599
    .local v26, "targetLyaer":Lcom/sns/game/layer/CCNewGameLayer;
    if-nez v26, :cond_1

    .line 1663
    .end local v26    # "targetLyaer":Lcom/sns/game/layer/CCNewGameLayer;
    :cond_0
    :goto_0
    return-void

    .line 1602
    .restart local v26    # "targetLyaer":Lcom/sns/game/layer/CCNewGameLayer;
    :cond_1
    invoke-virtual/range {v26 .. v26}, Lcom/sns/game/layer/CCNewGameLayer;->randomDropWqkItem()Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    move-result-object v8

    .line 1603
    .local v8, "dropWqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    if-eqz v8, :cond_0

    .line 1606
    sget-object v30, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/sns/game/database/bean/UserData;->modifyGet_total_card(I)V

    .line 1607
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v3

    .line 1609
    .local v3, "cahce":Lorg/cocos2d/nodes/CCSpriteFrameCache;
    const-string v30, "FunnyGame_Dialog_Box_Item.png"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v28

    .line 1610
    .local v28, "wqkBox":Lorg/cocos2d/nodes/CCNode;
    const/high16 v30, 0x3f000000    # 0.5f

    const/high16 v31, 0x3f000000    # 0.5f

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->setAnchorPoint(FF)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 1613
    invoke-virtual {v8}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getStoreItemBean()Lcom/sns/game/database/bean/StoreItemBean;

    move-result-object v23

    .line 1614
    .local v23, "simBean":Lcom/sns/game/database/bean/StoreItemBean;
    invoke-virtual/range {v23 .. v23}, Lcom/sns/game/database/bean/StoreItemBean;->getItem_icon()Ljava/lang/String;

    move-result-object v17

    .line 1615
    .local v17, "imgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v29

    .line 1616
    .local v29, "wqkImg":Lorg/cocos2d/nodes/CCSprite;
    const v30, 0x3f19999a    # 0.6f

    invoke-virtual/range {v29 .. v30}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 1617
    const/high16 v30, 0x3f000000    # 0.5f

    const/high16 v31, 0x3f000000    # 0.5f

    invoke-virtual/range {v29 .. v31}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1618
    invoke-virtual/range {v28 .. v28}, Lorg/cocos2d/nodes/CCNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v30

    const/high16 v31, 0x3f000000    # 0.5f

    invoke-static/range {v30 .. v31}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 1619
    invoke-virtual/range {v28 .. v29}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 1621
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v30

    const-string v31, "effect/effect_1.plist"

    invoke-virtual/range {v30 .. v31}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1622
    .local v13, "effectFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const-string v30, "point.png"

    invoke-static/range {v30 .. v30}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v14

    .line 1623
    .local v14, "effectNode":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v30, 0x3f000000    # 0.5f

    const/high16 v31, 0x3f000000    # 0.5f

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1624
    invoke-virtual/range {v28 .. v28}, Lorg/cocos2d/nodes/CCNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v30

    const/high16 v31, 0x3f000000    # 0.5f

    invoke-static/range {v30 .. v31}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 1625
    const/16 v30, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v14, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 1627
    invoke-virtual/range {v28 .. v28}, Lorg/cocos2d/nodes/CCNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v24

    .line 1628
    .local v24, "startPos":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {v8}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v25

    .line 1629
    .local v25, "stopPos":Lorg/cocos2d/types/CGPoint;
    const/high16 v30, 0x43c80000    # 400.0f

    const/high16 v31, 0x43700000    # 240.0f

    invoke-static/range {v30 .. v31}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 1630
    .local v4, "centerPos":Lorg/cocos2d/types/CGPoint;
    const/high16 v30, 0x43dc0000    # 440.0f

    const/high16 v31, 0x3f400000    # 0.75f

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v4, v1, v2}, Lcom/sns/game/util/CCUtil;->ccuCalcMoveEquivalentTime(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;FF)F

    move-result v18

    .line 1632
    .local v18, "moveTime":F
    const/16 v30, 0x122

    invoke-static/range {v30 .. v30}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sns/game/object/GameZombieLoader;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v30

    const v31, 0x7fffffff

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 1636
    const-string v30, ""

    const v31, 0x3dcccccd    # 0.1f

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v0, v1, v13}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v30

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v12

    .line 1637
    .local v12, "effectAction":Lorg/cocos2d/actions/interval/CCAnimate;
    invoke-static {v12}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v15

    .line 1638
    .local v15, "forever":Lorg/cocos2d/actions/base/CCRepeatForever;
    invoke-virtual {v14, v15}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1643
    move/from16 v0, v18

    invoke-static {v0, v4}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v19

    .line 1644
    .local v19, "moveTo_Center":Lorg/cocos2d/actions/interval/CCMoveTo;
    invoke-static/range {v19 .. v19}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v10

    .line 1646
    .local v10, "eeout_center":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    const v30, 0x3f666666    # 0.9f

    invoke-static/range {v30 .. v30}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v9

    .line 1648
    .local v9, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    move/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v20

    .line 1649
    .local v20, "moveTo_Stop":Lorg/cocos2d/actions/interval/CCMoveTo;
    invoke-static/range {v20 .. v20}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v11

    .line 1651
    .local v11, "eeout_stop":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    const v30, 0x3ed70a3d    # 0.42f

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v21

    .line 1653
    .local v21, "scaleTo":Lorg/cocos2d/actions/interval/CCScaleTo;
    const-string v22, "callBack_selector_dropOut"

    .line 1654
    .local v22, "selector":Ljava/lang/String;
    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v6, v0, [Ljava/lang/Object;

    const/16 v30, 0x0

    const/16 v31, 0x3

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v6, v30

    const/16 v30, 0x1

    aput-object v28, v6, v30

    const/16 v30, 0x2

    aput-object v8, v6, v30

    .line 1655
    .local v6, "data":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v16

    .line 1657
    .local v16, "funcNd":Lorg/cocos2d/actions/instant/CCCallFuncND;
    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v9, v30, v31

    const/16 v31, 0x1

    aput-object v11, v30, v31

    const/16 v31, 0x2

    aput-object v21, v30, v31

    const/16 v31, 0x3

    aput-object v16, v30, v31

    move-object/from16 v0, v30

    invoke-static {v10, v0}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v27

    .line 1658
    .local v27, "wqkAcions":Lorg/cocos2d/actions/interval/CCSequence;
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0
.end method

.method private isMeetOdds(F)Z
    .locals 1
    .param p1, "odds"    # F

    .prologue
    .line 1500
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveTo(FLorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V
    .locals 11
    .param p1, "speed"    # F
    .param p2, "toGoToPos"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "toBackPos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 277
    iget-boolean v3, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lorg/cocos2d/actions/instant/CCFlipX;->action(Z)Lorg/cocos2d/actions/instant/CCFlipX;

    move-result-object v6

    new-array v7, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 278
    const-string v8, "callBack_selector_moveTo"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v4

    iget-boolean v3, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v5

    invoke-static {p0, v8, v9}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v7, v4

    .line 279
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/ZombieDataBean;->getMove_time()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-static {v3, p3}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v3

    aput-object v3, v7, v5

    .line 276
    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    .line 283
    .local v2, "toBackSequence":Lorg/cocos2d/actions/interval/CCSequence;
    const-string v3, "callBack_selector_moveTo"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    .line 282
    invoke-static {p0, v3, v6}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v0

    .line 285
    .local v0, "callFuncMoveTo":Lorg/cocos2d/actions/instant/CCCallFuncND;
    new-array v3, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 286
    .local v1, "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Lorg/cocos2d/actions/interval/CCSequence;->setTag(I)V

    .line 288
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 297
    return-void

    .end local v0    # "callFuncMoveTo":Lorg/cocos2d/actions/instant/CCCallFuncND;
    .end local v1    # "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v2    # "toBackSequence":Lorg/cocos2d/actions/interval/CCSequence;
    :cond_0
    move v3, v5

    .line 277
    goto :goto_0

    :cond_1
    move v3, v5

    .line 278
    goto :goto_1
.end method

.method private removeNodeSelf(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 1495
    if-eqz p1, :cond_0

    .line 1496
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 1497
    :cond_0
    return-void
.end method

.method private runDeadAction_DEFAULT()V
    .locals 8

    .prologue
    .line 862
    const/high16 v0, 0x40100000    # 2.25f

    .line 863
    .local v0, "animDelay":F
    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 864
    iget-boolean v2, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-static {v2}, Lorg/cocos2d/actions/instant/CCFlipX;->action(Z)Lorg/cocos2d/actions/instant/CCFlipX;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    .line 865
    const-string v5, ""

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v6, v0

    iget-object v7, p0, Lcom/sns/game/object/GameZombie;->disappearFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v5, v6, v7}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v5

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 866
    const-string v5, "dead_default_animate"

    const v6, 0x3d4ccccd    # 0.05f

    mul-float/2addr v6, v0

    iget-object v7, p0, Lcom/sns/game/object/GameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    invoke-static {v5, v6, v7}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v5

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 867
    const-string v5, "callBack_selector_recycleSelf"

    invoke-static {p0, v5}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v5

    aput-object v5, v3, v4

    .line 863
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 868
    return-void
.end method

.method private runDeadAction_LWJS()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 854
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 855
    const-string v1, "dead_lwjs_animate"

    const v2, 0x3c23d70a    # 0.01f

    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->disappearFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v1, v2, v3}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v1

    invoke-static {v1, v4}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 856
    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 857
    const-string v4, "callBack_selector_recycleSelf"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 854
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 859
    return-void
.end method

.method private runDeadActoin_BLJS()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 847
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 848
    const-string v1, "dead_bljs_animate"

    const v2, 0x3c23d70a    # 0.01f

    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->disappearFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v1, v2, v3}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v1

    invoke-static {v1, v6}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v1

    new-array v2, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 849
    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v3

    aput-object v3, v2, v6

    .line 850
    const-string v3, "callBack_selector_endOwnLife"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v7

    .line 847
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 851
    return-void
.end method

.method private runPPaoAction_1()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x3e99999a    # 0.3f

    .line 1716
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->getZombie()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    const v7, 0x90909

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1717
    const-string v2, "Zombie_Pao_1.png"

    .line 1718
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sns/game/object/GameZombie;->createPPaoNode(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    .line 1719
    .local v3, "pao":Lorg/cocos2d/nodes/CCSprite;
    const v6, 0x3f99999a    # 1.2f

    invoke-static {v8, v6}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    .line 1720
    .local v4, "scaleTo":Lorg/cocos2d/actions/interval/CCScaleTo;
    invoke-static {v8}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v1

    .line 1721
    .local v1, "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    new-array v6, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aput-object v1, v6, v9

    invoke-static {v4, v6}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v5

    .line 1722
    .local v5, "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    new-array v6, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {}, Lcom/sns/game/actions/CCRemove;->action()Lcom/sns/game/actions/CCRemove;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 1723
    .local v0, "action":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-virtual {v3, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1725
    .end local v0    # "action":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v1    # "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "pao":Lorg/cocos2d/nodes/CCSprite;
    .end local v4    # "scaleTo":Lorg/cocos2d/actions/interval/CCScaleTo;
    .end local v5    # "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    :cond_0
    return-void
.end method

.method private runPPaoAction_2()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const v11, 0x3dcccccd    # 0.1f

    const/4 v10, 0x0

    .line 1728
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->getZombie()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    const v9, 0x90909

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1729
    const-string v4, "Zombie_Pao_2.png"

    .line 1730
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sns/game/object/GameZombie;->createPPaoNode(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v5

    .line 1732
    .local v5, "pao":Lorg/cocos2d/nodes/CCSprite;
    invoke-static {v10, v12}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    invoke-static {v11, v8}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v1

    .line 1733
    .local v1, "moveBy_1":Lorg/cocos2d/actions/interval/CCMoveBy;
    const/high16 v8, -0x3fc00000    # -3.0f

    invoke-static {v10, v8}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    invoke-static {v11, v8}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v2

    .line 1734
    .local v2, "moveBy_2":Lorg/cocos2d/actions/interval/CCMoveBy;
    invoke-static {v10, v12}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    invoke-static {v11, v8}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v3

    .line 1735
    .local v3, "moveBy_3":Lorg/cocos2d/actions/interval/CCMoveBy;
    const/4 v8, 0x2

    new-array v8, v8, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aput-object v2, v8, v13

    aput-object v3, v8, v14

    invoke-static {v1, v8}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v7

    .line 1736
    .local v7, "seq":Lorg/cocos2d/actions/interval/CCSequence;
    const/4 v8, 0x2

    invoke-static {v7, v8}, Lorg/cocos2d/actions/interval/CCRepeat;->action(Lorg/cocos2d/actions/base/CCFiniteTimeAction;I)Lorg/cocos2d/actions/interval/CCRepeat;

    move-result-object v6

    .line 1737
    .local v6, "repeat":Lorg/cocos2d/actions/interval/CCRepeat;
    new-array v8, v14, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {}, Lcom/sns/game/actions/CCRemove;->action()Lcom/sns/game/actions/CCRemove;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v6, v8}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 1738
    .local v0, "action":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-virtual {v5, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1740
    .end local v0    # "action":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v1    # "moveBy_1":Lorg/cocos2d/actions/interval/CCMoveBy;
    .end local v2    # "moveBy_2":Lorg/cocos2d/actions/interval/CCMoveBy;
    .end local v3    # "moveBy_3":Lorg/cocos2d/actions/interval/CCMoveBy;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "pao":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "repeat":Lorg/cocos2d/actions/interval/CCRepeat;
    .end local v7    # "seq":Lorg/cocos2d/actions/interval/CCSequence;
    :cond_0
    return-void
.end method

.method private runPPaoAction_3()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const v9, 0x3dcccccd    # 0.1f

    .line 1743
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->getZombie()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v7

    const v8, 0x90909

    invoke-virtual {v7, v8}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1744
    const-string v1, "Zombie_Pao_3.png"

    .line 1745
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sns/game/object/GameZombie;->createPPaoNode(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .line 1747
    .local v2, "pao":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v9, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    .line 1748
    .local v4, "scaleTo_1":Lorg/cocos2d/actions/interval/CCScaleTo;
    const v7, 0x3f8ccccd    # 1.1f

    invoke-static {v9, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    .line 1749
    .local v5, "scaleTo_2":Lorg/cocos2d/actions/interval/CCScaleTo;
    new-array v7, v11, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aput-object v5, v7, v10

    invoke-static {v4, v7}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v6

    .line 1750
    .local v6, "seq":Lorg/cocos2d/actions/interval/CCSequence;
    const/4 v7, 0x3

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCRepeat;->action(Lorg/cocos2d/actions/base/CCFiniteTimeAction;I)Lorg/cocos2d/actions/interval/CCRepeat;

    move-result-object v3

    .line 1751
    .local v3, "repeat":Lorg/cocos2d/actions/interval/CCRepeat;
    new-array v7, v11, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {}, Lcom/sns/game/actions/CCRemove;->action()Lcom/sns/game/actions/CCRemove;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v3, v7}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 1752
    .local v0, "action":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-virtual {v2, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1754
    .end local v0    # "action":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "pao":Lorg/cocos2d/nodes/CCSprite;
    .end local v3    # "repeat":Lorg/cocos2d/actions/interval/CCRepeat;
    .end local v4    # "scaleTo_1":Lorg/cocos2d/actions/interval/CCScaleTo;
    .end local v5    # "scaleTo_2":Lorg/cocos2d/actions/interval/CCScaleTo;
    .end local v6    # "seq":Lorg/cocos2d/actions/interval/CCSequence;
    :cond_0
    return-void
.end method

.method private runPPaoAction_4()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/high16 v12, -0x40800000    # -1.0f

    const v11, 0x3dcccccd    # 0.1f

    const/4 v10, 0x0

    .line 1757
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->getZombie()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    const v9, 0x90909

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1758
    const-string v4, "Zombie_Pao_4.png"

    .line 1759
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sns/game/object/GameZombie;->createPPaoNode(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v5

    .line 1761
    .local v5, "pao":Lorg/cocos2d/nodes/CCSprite;
    invoke-static {v12, v10}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    invoke-static {v11, v8}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v1

    .line 1762
    .local v1, "moveBy_1":Lorg/cocos2d/actions/interval/CCMoveBy;
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v10}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    invoke-static {v11, v8}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v2

    .line 1763
    .local v2, "moveBy_2":Lorg/cocos2d/actions/interval/CCMoveBy;
    invoke-static {v12, v10}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    invoke-static {v11, v8}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v3

    .line 1764
    .local v3, "moveBy_3":Lorg/cocos2d/actions/interval/CCMoveBy;
    const/4 v8, 0x2

    new-array v8, v8, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aput-object v2, v8, v13

    aput-object v3, v8, v14

    invoke-static {v1, v8}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v7

    .line 1765
    .local v7, "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    const/4 v8, 0x2

    invoke-static {v7, v8}, Lorg/cocos2d/actions/interval/CCRepeat;->action(Lorg/cocos2d/actions/base/CCFiniteTimeAction;I)Lorg/cocos2d/actions/interval/CCRepeat;

    move-result-object v6

    .line 1766
    .local v6, "repeat":Lorg/cocos2d/actions/interval/CCRepeat;
    new-array v8, v14, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {}, Lcom/sns/game/actions/CCRemove;->action()Lcom/sns/game/actions/CCRemove;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v6, v8}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 1767
    .local v0, "action":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-virtual {v5, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1769
    .end local v0    # "action":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v1    # "moveBy_1":Lorg/cocos2d/actions/interval/CCMoveBy;
    .end local v2    # "moveBy_2":Lorg/cocos2d/actions/interval/CCMoveBy;
    .end local v3    # "moveBy_3":Lorg/cocos2d/actions/interval/CCMoveBy;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "pao":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "repeat":Lorg/cocos2d/actions/interval/CCRepeat;
    .end local v7    # "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    :cond_0
    return-void
.end method

.method private runPPaoAction_5()V
    .locals 9

    .prologue
    const v8, 0x3dcccccd    # 0.1f

    .line 1772
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->getZombie()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    const v7, 0x90909

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1773
    const-string v1, "Zombie_Pao_5.png"

    .line 1774
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sns/game/object/GameZombie;->createPPaoNode(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .line 1776
    .local v2, "pao":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v8, v6}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v3

    .line 1777
    .local v3, "scaleTo_1":Lorg/cocos2d/actions/interval/CCScaleTo;
    const v6, 0x3f333333    # 0.7f

    invoke-static {v8, v6}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    .line 1778
    .local v4, "scaleTo_2":Lorg/cocos2d/actions/interval/CCScaleTo;
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v8, v6}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    .line 1779
    .local v5, "scaleTo_3":Lorg/cocos2d/actions/interval/CCScaleTo;
    const/4 v6, 0x3

    new-array v6, v6, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/4 v7, 0x2

    invoke-static {}, Lcom/sns/game/actions/CCRemove;->action()Lcom/sns/game/actions/CCRemove;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 1780
    .local v0, "action":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-virtual {v2, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1782
    .end local v0    # "action":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "pao":Lorg/cocos2d/nodes/CCSprite;
    .end local v3    # "scaleTo_1":Lorg/cocos2d/actions/interval/CCScaleTo;
    .end local v4    # "scaleTo_2":Lorg/cocos2d/actions/interval/CCScaleTo;
    .end local v5    # "scaleTo_3":Lorg/cocos2d/actions/interval/CCScaleTo;
    :cond_0
    return-void
.end method

.method private setAppearGift(Z)V
    .locals 0
    .param p1, "appearGift"    # Z

    .prologue
    .line 1282
    iput-boolean p1, p0, Lcom/sns/game/object/GameZombie;->appearGift:Z

    .line 1283
    return-void
.end method

.method private setDeadSpriteFrames()V
    .locals 3

    .prologue
    .line 1292
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    .line 1293
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zombie/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/ZombieDataBean;->getDead_res()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1292
    iput-object v0, p0, Lcom/sns/game/object/GameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    .line 1294
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->setDisappearFrame()V

    .line 1295
    return-void
.end method

.method private setDisappearFrame()V
    .locals 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    iput-object v0, p0, Lcom/sns/game/object/GameZombie;->disappearFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 1316
    return-void
.end method

.method private setDisplayFrame()V
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    iput-object v0, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 1308
    return-void
.end method

.method private setMoveSpriteFrames()V
    .locals 3

    .prologue
    .line 1286
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    .line 1287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zombie/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/ZombieDataBean;->getMove_res()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1286
    iput-object v0, p0, Lcom/sns/game/object/GameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    .line 1288
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->setDisplayFrame()V

    .line 1289
    return-void
.end method

.method private setRandomFlipX()V
    .locals 1

    .prologue
    .line 1258
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->randomBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    .line 1259
    return-void
.end method

.method private setZorder()V
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameZombieLoader;->zOrder()I

    move-result v0

    iput v0, p0, Lcom/sns/game/object/GameZombie;->zOrder_:I

    .line 1267
    return-void
.end method

.method private updateZomNamePos()V
    .locals 8

    .prologue
    .line 1368
    iget-object v4, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v4}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v2

    .line 1369
    .local v2, "id":I
    iget-object v4, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 1370
    .local v1, "frameSize":Lorg/cocos2d/types/CGSize;
    iget-object v4, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPoint()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 1371
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    iget-boolean v4, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-static {v2, v4}, Lcom/sns/game/object/GameZombieLoader;->getZomNamePointByFlip(IZ)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 1372
    .local v3, "pos":Lorg/cocos2d/types/CGPoint;
    iget-object v4, p0, Lcom/sns/game/object/GameZombie;->spName:Lorg/cocos2d/nodes/CCSprite;

    iget v5, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget v6, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v5, v6

    iget v6, v3, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v5, v6

    iget v6, v1, Lorg/cocos2d/types/CGSize;->height:F

    iget v7, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v6, v7

    iget v7, v3, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 1373
    return-void
.end method


# virtual methods
.method public acceptedAttack()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 336
    const-string v1, "callBack_selector_acceptedAttack"

    iget-object v2, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-static {p0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 335
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 334
    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 338
    return-void
.end method

.method public acceptedAttackByWeapon(Lcom/sns/game/object/GameWeapon;)V
    .locals 1
    .param p1, "useWeapon"    # Lcom/sns/game/object/GameWeapon;

    .prologue
    .line 376
    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p1}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 383
    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/sns/game/object/GameWeapon;->weaponFire_WDP(Lcom/sns/game/object/GameBaseZombie;)V

    goto :goto_0

    .line 387
    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/sns/game/object/GameWeapon;->weaponFire_JGP(Lcom/sns/game/object/GameBaseZombie;)V

    goto :goto_0

    .line 391
    :pswitch_2
    invoke-virtual {p1, p0}, Lcom/sns/game/object/GameWeapon;->weaponFire_XRZC(Lcom/sns/game/object/GameBaseZombie;)V

    goto :goto_0

    .line 395
    :pswitch_3
    invoke-virtual {p1, p0}, Lcom/sns/game/object/GameWeapon;->weaponFire_DMG(Lcom/sns/game/object/GameBaseZombie;)V

    goto :goto_0

    .line 399
    :pswitch_4
    invoke-virtual {p1, p0}, Lcom/sns/game/object/GameWeapon;->weaponFire_XGTS(Lcom/sns/game/object/GameBaseZombie;)V

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x271f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public varargs acceptedWeapon_CGP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 684
    iget-boolean v3, p0, Lcom/sns/game/object/GameZombie;->deadFlag:Z

    if-eqz v3, :cond_0

    .line 694
    :goto_0
    return-void

    .line 686
    :cond_0
    aget-object v3, p2, v10

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 687
    .local v0, "clusterSum":F
    aget-object v3, p2, v9

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 688
    .local v2, "weightSum":F
    aget-object v1, p2, v11

    check-cast v1, Lcom/sns/game/object/GameWeapon;

    .line 689
    .local v1, "targetGameWpn":Lcom/sns/game/object/GameWeapon;
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 690
    const-string v4, "callBack_selector_Weapon_CGP"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    new-array v5, v11, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 691
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v6}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v6

    aput-object v6, v5, v10

    .line 692
    const-string v6, "callBack_selector_Weapon_CGP"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {p0, v6, v7}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v6

    aput-object v6, v5, v9

    .line 689
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto :goto_0
.end method

.method public varargs acceptedWeapon_DMG(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 587
    iget-boolean v3, p0, Lcom/sns/game/object/GameZombie;->deadFlag:Z

    if-eqz v3, :cond_0

    .line 596
    :goto_0
    return-void

    .line 589
    :cond_0
    aget-object v3, p2, v8

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 590
    .local v0, "clusterSum":F
    aget-object v3, p2, v9

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 591
    .local v2, "weightSum":F
    aget-object v1, p2, v10

    check-cast v1, Lcom/sns/game/object/GameWeapon;

    .line 592
    .local v1, "targetGameWpn":Lcom/sns/game/object/GameWeapon;
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 593
    const-string v4, "callBack_selector_Weapon_DMG"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object p1, v5, v10

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    new-array v5, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 594
    const v6, 0x3e19999a    # 0.15f

    invoke-static {v6}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v6

    aput-object v6, v5, v8

    .line 595
    const-string v6, "callBack_selector_Weapon_DMG"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {p0, v6, v7}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v6

    aput-object v6, v5, v9

    .line 592
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto :goto_0
.end method

.method public varargs acceptedWeapon_JGP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 460
    aget-object v0, p2, v6

    check-cast v0, Lcom/sns/game/object/GameWeapon;

    .line 461
    .local v0, "targetGameWpn":Lcom/sns/game/object/GameWeapon;
    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 462
    const-string v2, "callBack_selector_Weapon_JGP"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p0, v2, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v2

    new-array v3, v8, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 463
    const v4, 0x3db851ec    # 0.09f

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v3, v6

    .line 464
    const-string v4, "callBack_selector_Weapon_JGP"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v7

    .line 461
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 465
    return-void
.end method

.method public varargs acceptedWeapon_WDP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 415
    aget-object v0, p2, v6

    check-cast v0, Lcom/sns/game/object/GameWeapon;

    .line 416
    .local v0, "targetGameWpn":Lcom/sns/game/object/GameWeapon;
    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 417
    const-string v2, "callBack_selector_Weapon_WDP"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p1, v3, v8

    invoke-static {p0, v2, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v2

    new-array v3, v8, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 418
    const v4, 0x3db851ec    # 0.09f

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v3, v6

    .line 419
    const-string v4, "callBack_selector_Weapon_WDP"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v7

    .line 416
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 420
    return-void
.end method

.method public varargs acceptedWeapon_XGTS(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 636
    iget-boolean v3, p0, Lcom/sns/game/object/GameZombie;->deadFlag:Z

    if-eqz v3, :cond_0

    .line 645
    :goto_0
    return-void

    .line 638
    :cond_0
    aget-object v3, p2, v8

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 639
    .local v0, "clusterSum":F
    aget-object v3, p2, v9

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 640
    .local v2, "weightSum":F
    aget-object v1, p2, v10

    check-cast v1, Lcom/sns/game/object/GameWeapon;

    .line 641
    .local v1, "targetGameWpn":Lcom/sns/game/object/GameWeapon;
    iget-object v3, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 642
    const-string v4, "callBack_selector_Weapon_XGTS"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object p1, v5, v10

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    new-array v5, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 643
    const v6, 0x3e333333    # 0.175f

    invoke-static {v6}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v6

    aput-object v6, v5, v8

    .line 644
    const-string v6, "callBack_selector_Weapon_XGTS"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {p0, v6, v7}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v6

    aput-object v6, v5, v9

    .line 641
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto :goto_0
.end method

.method public varargs acceptedWeapon_XRZC(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 514
    aget-object v0, p2, v6

    check-cast v0, Lcom/sns/game/object/GameWeapon;

    .line 515
    .local v0, "targetGameWpn":Lcom/sns/game/object/GameWeapon;
    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 516
    const-string v2, "callBack_selector_Weapon_XRZC"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p1, v3, v8

    invoke-static {p0, v2, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v2

    new-array v3, v8, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 517
    const v4, 0x3db851ec    # 0.09f

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v3, v6

    .line 518
    const-string v4, "callBack_selector_Weapon_XRZC"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v7

    .line 515
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 519
    return-void
.end method

.method public callBack_selector_Weapon_CGP(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 698
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 702
    .local v2, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 703
    const/4 v6, 0x0

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 704
    .local v4, "tag":I
    packed-switch v4, :pswitch_data_0

    .line 722
    .end local v4    # "tag":I
    :goto_0
    return-void

    .line 707
    .restart local v4    # "tag":I
    :pswitch_0
    iget-object v6, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v7, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 708
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->runOnAcckPPaoAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    .end local v4    # "tag":I
    :catch_0
    move-exception v3

    .line 720
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 712
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "tag":I
    :pswitch_1
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 713
    .local v1, "clusterSum":F
    const/4 v6, 0x2

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 714
    .local v5, "weightSum":F
    iget-object v6, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v7, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 715
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

    invoke-virtual {p0, v6}, Lcom/sns/game/object/GameZombie;->endOwnLife([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 704
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
    .line 601
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    .line 602
    .local v3, "data":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 606
    .local v6, "useWeapon":Lcom/sns/game/object/GameWeapon;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 607
    const/4 v8, 0x0

    aget-object v8, v3, v8

    move-object v0, v8

    check-cast v0, Lcom/sns/game/object/GameWeapon;

    move-object v6, v0

    .line 608
    const/4 v8, 0x1

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 609
    .local v5, "tag":I
    packed-switch v5, :pswitch_data_0

    .line 631
    .end local v5    # "tag":I
    :goto_0
    return-void

    .line 612
    .restart local v5    # "tag":I
    :pswitch_0
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v9, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 613
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->runOnAcckPPaoAction()V

    .line 614
    const/4 v8, 0x2

    aget-object v1, v3, v8

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 615
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 616
    invoke-virtual {v6, v1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 628
    .end local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "tag":I
    :catch_0
    move-exception v4

    .line 629
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 620
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "tag":I
    :pswitch_1
    const/4 v8, 0x2

    :try_start_1
    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 621
    .local v2, "clusterSum":F
    const/4 v8, 0x3

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 622
    .local v7, "weightSum":F
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v9, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 623
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

    invoke-virtual {p0, v8}, Lcom/sns/game/object/GameZombie;->endOwnLife([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 609
    nop

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
    .line 470
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 471
    .local v2, "data":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 475
    .local v9, "useWeapon":Lcom/sns/game/object/GameWeapon;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 476
    const/4 v10, 0x0

    aget-object v10, v2, v10

    move-object v0, v10

    check-cast v0, Lcom/sns/game/object/GameWeapon;

    move-object v9, v0

    .line 477
    const/4 v10, 0x1

    aget-object v10, v2, v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 478
    .local v8, "tag":I
    packed-switch v8, :pswitch_data_0

    .line 509
    .end local v8    # "tag":I
    :goto_0
    return-void

    .line 481
    .restart local v8    # "tag":I
    :pswitch_0
    iget-object v10, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v11, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v10, v11}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 482
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->runOnAcckPPaoAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    .end local v8    # "tag":I
    :catch_0
    move-exception v3

    .line 507
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 486
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "tag":I
    :pswitch_1
    :try_start_1
    iget-object v10, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v11, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v10, v11}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 487
    const/4 v10, 0x2

    aget-object v1, v2, v10

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 488
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getRotation()F

    move-result v10

    neg-float v7, v10

    .line 489
    .local v7, "rot":F
    invoke-virtual {v1, v7}, Lorg/cocos2d/nodes/CCSprite;->setRotation(F)V

    .line 491
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v10

    iget v10, v10, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v11

    iget v11, v11, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v10, v11}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 493
    .local v4, "point_A":Lorg/cocos2d/types/CGPoint;
    const/4 v10, 0x0

    cmpl-float v10, v7, v10

    if-lez v10, :cond_0

    sget-object v10, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v10, v10, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v11

    add-float/2addr v10, v11

    .line 494
    :goto_1
    iget v11, v4, Lorg/cocos2d/types/CGPoint;->y:F

    .line 492
    invoke-static {v10, v11}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    .line 495
    .local v6, "point_C":Lorg/cocos2d/types/CGPoint;
    iget v10, v6, Lorg/cocos2d/types/CGPoint;->x:F

    .line 496
    iget v11, v4, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v4, v6}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v12

    add-float/2addr v11, v12

    .line 495
    invoke-static {v10, v11}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 498
    .local v5, "point_B":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {v9}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 499
    invoke-virtual {v9, v1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V

    .line 500
    invoke-virtual {v9, v1, v5}, Lcom/sns/game/object/GameWeapon;->shotBullet(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V

    .line 501
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lcom/sns/game/object/GameZombie;->endOwnLife([Ljava/lang/Object;)V

    goto :goto_0

    .line 494
    .end local v5    # "point_B":Lorg/cocos2d/types/CGPoint;
    .end local v6    # "point_C":Lorg/cocos2d/types/CGPoint;
    :cond_0
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    neg-float v10, v10

    goto :goto_1

    .line 478
    nop

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
    .line 425
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 426
    .local v2, "data":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 430
    .local v5, "useWeapon":Lcom/sns/game/object/GameWeapon;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 431
    const/4 v6, 0x0

    aget-object v6, v2, v6

    move-object v0, v6

    check-cast v0, Lcom/sns/game/object/GameWeapon;

    move-object v5, v0

    .line 432
    const/4 v6, 0x1

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 433
    .local v4, "tag":I
    packed-switch v4, :pswitch_data_0

    .line 454
    .end local v4    # "tag":I
    :goto_0
    return-void

    .line 436
    .restart local v4    # "tag":I
    :pswitch_0
    iget-object v6, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v7, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 437
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->runOnAcckPPaoAction()V

    .line 438
    const/4 v6, 0x2

    aget-object v1, v2, v6

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 439
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v5, v1}, Lcom/sns/game/object/GameWeapon;->destroyBullet(Lorg/cocos2d/nodes/CCSprite;)V

    .line 440
    invoke-virtual {v5}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 441
    invoke-virtual {v5, v1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    .end local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v4    # "tag":I
    :catch_0
    move-exception v3

    .line 452
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 445
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "tag":I
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v7, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 446
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/sns/game/object/GameZombie;->endOwnLife([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 433
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
    .line 649
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    .line 650
    .local v3, "data":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 654
    .local v6, "useWeapon":Lcom/sns/game/object/GameWeapon;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 655
    const/4 v8, 0x0

    aget-object v8, v3, v8

    move-object v0, v8

    check-cast v0, Lcom/sns/game/object/GameWeapon;

    move-object v6, v0

    .line 656
    const/4 v8, 0x1

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 657
    .local v5, "tag":I
    packed-switch v5, :pswitch_data_0

    .line 679
    .end local v5    # "tag":I
    :goto_0
    return-void

    .line 660
    .restart local v5    # "tag":I
    :pswitch_0
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v9, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 661
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->runOnAcckPPaoAction()V

    .line 662
    const/4 v8, 0x2

    aget-object v1, v3, v8

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 663
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 664
    invoke-virtual {v6, v1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    .end local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "tag":I
    :catch_0
    move-exception v4

    .line 677
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 668
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "tag":I
    :pswitch_1
    const/4 v8, 0x2

    :try_start_1
    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 669
    .local v2, "clusterSum":F
    const/4 v8, 0x3

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 670
    .local v7, "weightSum":F
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v9, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 671
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

    invoke-virtual {p0, v8}, Lcom/sns/game/object/GameZombie;->endOwnLife([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callBack_selector_Weapon_XRZC(Ljava/lang/Object;)V
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 525
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 526
    .local v2, "data":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 530
    .local v8, "useWeapon":Lcom/sns/game/object/GameWeapon;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 531
    const/4 v10, 0x0

    aget-object v10, v2, v10

    move-object v0, v10

    check-cast v0, Lcom/sns/game/object/GameWeapon;

    move-object v8, v0

    .line 532
    const/4 v10, 0x1

    aget-object v10, v2, v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 533
    .local v7, "tag":I
    packed-switch v7, :pswitch_data_0

    .line 582
    .end local v7    # "tag":I
    :cond_0
    :goto_0
    return-void

    .line 537
    .restart local v7    # "tag":I
    :pswitch_0
    iget-object v10, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v11, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v10, v11}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 538
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->runOnAcckPPaoAction()V

    .line 539
    const/4 v10, 0x2

    aget-object v1, v2, v10

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 540
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 541
    .local v6, "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    .line 544
    .local v9, "valueData":[Ljava/lang/Object;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 545
    .local v4, "isPlayEffect":Z
    if-eqz v4, :cond_1

    .line 547
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    .line 548
    invoke-virtual {v8}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 550
    :cond_1
    invoke-virtual {v8, v1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    .end local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v4    # "isPlayEffect":Z
    .end local v6    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v7    # "tag":I
    .end local v9    # "valueData":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 580
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 557
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "tag":I
    :pswitch_1
    :try_start_1
    iget-object v10, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v11, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v10, v11}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 562
    const/4 v10, 0x2

    aget-object v1, v2, v10

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 563
    .restart local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 564
    .restart local v6    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 566
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    .line 567
    .restart local v9    # "valueData":[Ljava/lang/Object;
    const/4 v10, 0x1

    aget-object v10, v9, v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 568
    .local v5, "isRunCapture":Z
    if-eqz v5, :cond_0

    .line 570
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    .line 571
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lcom/sns/game/object/GameZombie;->endOwnLife([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callBack_selector_acceptedAttack(Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 344
    :try_start_0
    iget-boolean v6, p0, Lcom/sns/game/object/GameZombie;->deadFlag:Z

    if-eqz v6, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeaponLoader;->getRemoveWpns()Ljava/util/List;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :try_start_1
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeaponLoader;->getRemoveWpns()Ljava/util/List;

    move-result-object v5

    .line 349
    .local v5, "wpns":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameWeapon;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 350
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 351
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sns/game/object/GameWeapon;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 347
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sns/game/object/GameWeapon;>;"
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 358
    :try_start_2
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v7

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 359
    :try_start_3
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v4

    .line 360
    .local v4, "useWeapon":Lcom/sns/game/object/GameWeapon;
    invoke-virtual {p0, v4}, Lcom/sns/game/object/GameZombie;->acceptedAttackByWeapon(Lcom/sns/game/object/GameWeapon;)V

    .line 358
    monitor-exit v7

    goto :goto_0

    .end local v4    # "useWeapon":Lcom/sns/game/object/GameWeapon;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 363
    .end local v5    # "wpns":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameWeapon;>;"
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 365
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v3

    .line 366
    .local v3, "layer":Lcom/sns/game/layer/CCNewGameLayer;
    if-eqz v3, :cond_0

    .line 367
    invoke-virtual {v3}, Lcom/sns/game/layer/CCNewGameLayer;->isTouchEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 368
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    goto :goto_0

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "layer":Lcom/sns/game/layer/CCNewGameLayer;
    .restart local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sns/game/object/GameWeapon;>;"
    .restart local v5    # "wpns":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameWeapon;>;"
    :cond_3
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/object/GameWeapon;

    .line 353
    .local v1, "gameWeapon":Lcom/sns/game/object/GameWeapon;
    invoke-virtual {p0, v1}, Lcom/sns/game/object/GameZombie;->acceptedAttackByWeapon(Lcom/sns/game/object/GameWeapon;)V

    goto :goto_1

    .line 347
    .end local v1    # "gameWeapon":Lcom/sns/game/object/GameWeapon;
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sns/game/object/GameWeapon;>;"
    .end local v5    # "wpns":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameWeapon;>;"
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public callBack_selector_drillOut(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 190
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 193
    .local v1, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 194
    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {p0, v3}, Lcom/sns/game/object/GameZombie;->removeNodeSelf(Lorg/cocos2d/nodes/CCNode;)V

    .line 195
    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->moveTo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_dropOut(Ljava/lang/Object;)V
    .locals 28
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1134
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    .line 1137
    .local v4, "data":[Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 1138
    const/16 v21, 0x0

    aget-object v21, v4, v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1139
    .local v18, "tag":I
    packed-switch v18, :pswitch_data_0

    .line 1232
    .end local v18    # "tag":I
    :cond_0
    :goto_0
    return-void

    .line 1142
    .restart local v18    # "tag":I
    :pswitch_0
    const/16 v21, 0x1

    aget-object v13, v4, v21

    check-cast v13, Lorg/cocos2d/nodes/CCNode;

    .line 1143
    .local v13, "node":Lorg/cocos2d/nodes/CCNode;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sns/game/object/GameZombie;->destroyNode(Lorg/cocos2d/nodes/CCNode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1229
    .end local v13    # "node":Lorg/cocos2d/nodes/CCNode;
    .end local v18    # "tag":I
    :catch_0
    move-exception v6

    .line 1230
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1148
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v18    # "tag":I
    :pswitch_1
    const/16 v21, 0x1

    :try_start_1
    aget-object v21, v4, v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1149
    .local v15, "smallTag":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_1

    .line 1150
    const/16 v21, 0x2

    aget-object v9, v4, v21

    check-cast v9, Lorg/cocos2d/nodes/CCSprite;

    .line 1152
    .local v9, "goldIcon":Lorg/cocos2d/nodes/CCSprite;
    const-string v21, "callBack_selector_dropOut"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    aput-object v9, v22, v23

    const/16 v23, 0x3

    const/16 v24, 0x3

    aget-object v24, v4, v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v22, v0

    .line 1151
    invoke-static/range {v21 .. v22}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1154
    .end local v9    # "goldIcon":Lorg/cocos2d/nodes/CCSprite;
    :cond_1
    if-nez v15, :cond_3

    .line 1155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sns/game/object/GameZombie;->gold_scale:F

    move/from16 v21, v0

    const v22, 0x3dcccccd    # 0.1f

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sns/game/object/GameZombie;->gold_scale:F

    .line 1156
    const/16 v21, 0x2

    aget-object v9, v4, v21

    check-cast v9, Lorg/cocos2d/nodes/CCSprite;

    .line 1157
    .restart local v9    # "goldIcon":Lorg/cocos2d/nodes/CCSprite;
    const/16 v21, 0x3

    aget-object v10, v4, v21

    check-cast v10, Ljava/util/ArrayList;

    .line 1158
    .local v10, "goldIconFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const-string v21, "point.png"

    invoke-static/range {v21 .. v21}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v12

    .line 1159
    .local v12, "newGoldIcon":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v9}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPoint()Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 1160
    invoke-virtual {v9}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 1161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sns/game/object/GameZombie;->gold_scale:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sns/game/object/GameZombie;->gold_scale:F

    move/from16 v21, v0

    :goto_1
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 1162
    invoke-virtual {v9}, Lorg/cocos2d/nodes/CCSprite;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v21

    invoke-virtual {v9}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 1164
    const-string v21, "dropGold_animate"

    const v22, 0x3d99999a    # 0.075f

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v10}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 1165
    const-string v24, "callBack_selector_dropOut"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v24

    aput-object v24, v22, v23

    .line 1163
    invoke-static/range {v21 .. v22}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 1161
    :cond_2
    const v21, 0x3dcccccd    # 0.1f

    goto :goto_1

    .line 1168
    .end local v9    # "goldIcon":Lorg/cocos2d/nodes/CCSprite;
    .end local v10    # "goldIconFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .end local v12    # "newGoldIcon":Lorg/cocos2d/nodes/CCSprite;
    :cond_3
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_4

    .line 1169
    const/16 v21, 0x2

    aget-object v9, v4, v21

    check-cast v9, Lorg/cocos2d/nodes/CCSprite;

    .line 1170
    .restart local v9    # "goldIcon":Lorg/cocos2d/nodes/CCSprite;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sns/game/object/GameZombie;->destroyNode(Lorg/cocos2d/nodes/CCNode;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_score()I

    move-result v14

    .line 1172
    .local v14, "score":I
    invoke-virtual/range {p0 .. p0}, Lcom/sns/game/object/GameZombie;->getDropMultiple()I

    move-result v11

    .line 1173
    .local v11, "muple":I
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v19

    .line 1174
    .local v19, "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    if-eqz v19, :cond_0

    .line 1175
    mul-int v21, v14, v11

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserGold(IZ)V

    goto/16 :goto_0

    .line 1183
    .end local v9    # "goldIcon":Lorg/cocos2d/nodes/CCSprite;
    .end local v11    # "muple":I
    .end local v14    # "score":I
    .end local v19    # "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    :cond_4
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v15, v0, :cond_0

    .line 1184
    const/16 v21, 0x2

    aget-object v8, v4, v21

    check-cast v8, Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 1185
    .local v8, "goldAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sns/game/object/GameZombie;->destroyNode(Lorg/cocos2d/nodes/CCNode;)V

    goto/16 :goto_0

    .line 1193
    .end local v8    # "goldAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    .end local v15    # "smallTag":I
    :pswitch_2
    const/16 v21, 0x1

    aget-object v21, v4, v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1194
    .restart local v15    # "smallTag":I
    if-nez v15, :cond_5

    .line 1195
    const/16 v21, 0x2

    aget-object v17, v4, v21

    check-cast v17, Lorg/cocos2d/nodes/CCSprite;

    .line 1196
    .local v17, "starEffect":Lorg/cocos2d/nodes/CCSprite;
    const/16 v21, 0x3

    aget-object v7, v4, v21

    check-cast v7, Ljava/util/ArrayList;

    .line 1197
    .local v7, "effectFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const-string v21, "starEffect_animate"

    const v22, 0x3d99999a    # 0.075f

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v7}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v3

    .line 1198
    .local v3, "animate":Lorg/cocos2d/actions/interval/CCAnimate;
    invoke-static {v3}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto/16 :goto_0

    .line 1201
    .end local v3    # "animate":Lorg/cocos2d/actions/interval/CCAnimate;
    .end local v7    # "effectFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .end local v17    # "starEffect":Lorg/cocos2d/nodes/CCSprite;
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_0

    .line 1202
    const/16 v21, 0x2

    aget-object v16, v4, v21

    check-cast v16, Lorg/cocos2d/nodes/CCSprite;

    .line 1203
    .local v16, "star":Lorg/cocos2d/nodes/CCSprite;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sns/game/object/GameZombie;->destroyNode(Lorg/cocos2d/nodes/CCNode;)V

    .line 1204
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v19

    .line 1205
    .restart local v19    # "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    if-eqz v19, :cond_0

    .line 1206
    invoke-virtual/range {v19 .. v19}, Lcom/sns/game/layer/CCNewGameLayer;->updateGameStars()V

    goto/16 :goto_0

    .line 1216
    .end local v15    # "smallTag":I
    .end local v16    # "star":Lorg/cocos2d/nodes/CCSprite;
    .end local v19    # "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    :pswitch_3
    const/16 v21, 0x1

    aget-object v20, v4, v21

    check-cast v20, Lorg/cocos2d/nodes/CCNode;

    .line 1217
    .local v20, "wqkBoxTarget":Lorg/cocos2d/nodes/CCNode;
    const/16 v21, 0x2

    aget-object v5, v4, v21

    check-cast v5, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 1218
    .local v5, "dropWqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sns/game/object/GameZombie;->destroyNode(Lorg/cocos2d/nodes/CCNode;)V

    .line 1219
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/sns/game/object/GameZombie;->addWeaponCard(Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;I)V

    .line 1220
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v19

    .line 1221
    .restart local v19    # "targetLayer":Lcom/sns/game/layer/CCNewGameLayer;
    if-eqz v19, :cond_0

    .line 1222
    invoke-virtual/range {v19 .. v19}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserWqkItems()V

    .line 1223
    const/16 v21, 0x14

    const/16 v22, 0x65

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->runAddWqkNumAction(Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public callBack_selector_endOwnLife(Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 918
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 921
    .local v1, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 922
    const/4 v7, 0x0

    aget-object v7, v1, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 923
    .local v5, "tag":I
    packed-switch v5, :pswitch_data_0

    .line 944
    .end local v5    # "tag":I
    :goto_0
    return-void

    .line 927
    .restart local v5    # "tag":I
    :pswitch_0
    const/4 v7, 0x1

    aget-object v3, v1, v7

    check-cast v3, Lorg/cocos2d/nodes/CCNode;

    .line 928
    .local v3, "node":Lorg/cocos2d/nodes/CCNode;
    const/4 v7, 0x2

    aget-object v7, v1, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 929
    .local v6, "visible":Z
    invoke-virtual {v3, v6}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 941
    .end local v3    # "node":Lorg/cocos2d/nodes/CCNode;
    .end local v5    # "tag":I
    .end local v6    # "visible":Z
    :catch_0
    move-exception v2

    .line 942
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 935
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "tag":I
    :pswitch_1
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v1, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 936
    .local v4, "smallTag":I
    invoke-direct {p0, v4, v1}, Lcom/sns/game/object/GameZombie;->callBack_deadAction_Logic_BLJS(I[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 923
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callBack_selector_moveTo(Ljava/lang/Object;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 301
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 304
    .local v1, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 305
    const/4 v7, 0x0

    aget-object v7, v1, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 306
    .local v4, "tag":I
    packed-switch v4, :pswitch_data_0

    .line 330
    .end local v4    # "tag":I
    :cond_0
    :goto_0
    return-void

    .line 308
    .restart local v4    # "tag":I
    :pswitch_0
    const/4 v7, 0x1

    aget-object v7, v1, v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 309
    .local v3, "speed":F
    const/4 v7, 0x2

    aget-object v6, v1, v7

    check-cast v6, Lorg/cocos2d/types/CGPoint;

    .line 310
    .local v6, "toGoToPos":Lorg/cocos2d/types/CGPoint;
    const/4 v7, 0x3

    aget-object v5, v1, v7

    check-cast v5, Lorg/cocos2d/types/CGPoint;

    .line 311
    .local v5, "toBackPos":Lorg/cocos2d/types/CGPoint;
    invoke-direct {p0, v3, v6, v5}, Lcom/sns/game/object/GameZombie;->moveTo(FLorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v3    # "speed":F
    .end local v4    # "tag":I
    .end local v5    # "toBackPos":Lorg/cocos2d/types/CGPoint;
    .end local v6    # "toGoToPos":Lorg/cocos2d/types/CGPoint;
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 315
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "tag":I
    :pswitch_1
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v1, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sns/game/object/GameZombie;->setFlipX(Z)V

    .line 316
    iget-object v7, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    iget-boolean v9, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-virtual {v8, v9}, Lcom/sns/game/database/bean/ZombieDataBean;->getShadowPos(Z)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 317
    iget-object v7, p0, Lcom/sns/game/object/GameZombie;->spName:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v7, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->updateZomNamePos()V

    goto :goto_0

    .line 323
    :pswitch_2
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->recycleSelf()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public callBack_selector_recycleSelf()V
    .locals 1

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->recycleSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public createSelf()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->setZorder()V

    .line 74
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->setRandomFlipX()V

    .line 75
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->setRandomBean()V

    .line 76
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->setHeightScale()V

    .line 77
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->setFramesToCache()V

    .line 78
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->setZombie()V

    .line 79
    return-void
.end method

.method public destroyZombie()V
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 1484
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 1485
    return-void
.end method

.method public drillOut()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 146
    const/high16 v3, -0x3db80000    # -50.0f

    .line 150
    .local v3, "sub_PosY":F
    iget-object v4, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v4}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 151
    .local v0, "clipZombie":Lorg/cocos2d/nodes/CCSprite;
    iget-object v4, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-static {v7, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 152
    iget-object v4, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 153
    iget-object v4, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getFlipX()Z

    move-result v4

    invoke-virtual {v0, v4}, Lorg/cocos2d/nodes/CCSprite;->setFlipX(Z)V

    .line 154
    iget v4, p0, Lcom/sns/game/object/GameZombie;->sh:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_0

    .line 155
    iget v4, p0, Lcom/sns/game/object/GameZombie;->sh:F

    invoke-virtual {v0, v4}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 157
    :cond_0
    iget v4, p0, Lcom/sns/game/object/GameZombie;->zOrder_:I

    invoke-direct {p0, v0, v4}, Lcom/sns/game/object/GameZombie;->added(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 160
    const-string v4, "point.png"

    invoke-static {v4}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 161
    .local v1, "soil":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1, v8, v8}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 162
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v4

    mul-float/2addr v4, v8

    invoke-virtual {v1, v4, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 163
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getFlipX()Z

    move-result v4

    invoke-virtual {v1, v4}, Lorg/cocos2d/nodes/CCSprite;->setFlipX(Z)V

    .line 164
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 166
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v5}, Lcom/sns/game/database/bean/ZombieDataBean;->getSoilRes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 172
    .local v2, "soilSpriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const/high16 v4, 0x3e800000    # 0.25f

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getTextureRect()Lorg/cocos2d/types/CGRect;

    move-result-object v5

    iget-object v5, v5, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    invoke-static {v5}, Lorg/cocos2d/types/CGSize;->make(Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGSize;

    move-result-object v5

    invoke-static {v4, v5, v9}, Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;->action(FLorg/cocos2d/types/CGSize;I)Lorg/cocos2d/actions/interval/custom/CCTextureRectClip;

    move-result-object v4

    new-array v5, v9, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 173
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v7, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    invoke-static {v8, v6, v3, v9}, Lorg/cocos2d/actions/interval/CCJumpBy;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v6

    invoke-static {v6}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v6

    aput-object v6, v5, v10

    .line 170
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v4

    new-array v5, v9, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 176
    const-string v6, "callBack_selector_drillOut"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v0, v7, v9

    .line 175
    invoke-static {p0, v6, v7}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v6

    aput-object v6, v5, v10

    .line 169
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 181
    const/high16 v4, 0x3f400000    # 0.75f

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v4

    new-array v5, v9, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 182
    const-string v6, "soil_animate"

    const v7, 0x3d99999a    # 0.075f

    invoke-static {v6, v7, v2}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v6

    invoke-static {v6}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v6

    aput-object v6, v5, v10

    .line 180
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v4

    new-array v5, v9, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 184
    const-string v6, "callBack_selector_drillOut"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v1, v7, v9

    invoke-static {p0, v6, v7}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v6

    aput-object v6, v5, v10

    .line 179
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 186
    return-void
.end method

.method public dropOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 948
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/sns/game/object/GameZombie;->dropGold([Ljava/lang/Object;)V

    .line 949
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/sns/game/object/GameZombie;->dropItem([Ljava/lang/Object;)V

    .line 950
    return-void
.end method

.method public varargs endOwnLife([Ljava/lang/Object;)V
    .locals 21
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 727
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v15

    .line 728
    .local v15, "weaponLoader":Lcom/sns/game/object/GameWeaponLoader;
    invoke-virtual {v15}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v13

    .line 729
    .local v13, "useWeapon":Lcom/sns/game/object/GameWeapon;
    invoke-virtual {v13}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v14

    .line 731
    .local v14, "weaponBean":Lcom/sns/game/database/bean/WeaponBean;
    invoke-virtual {v13}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v18

    .line 730
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/sns/game/object/GameWeaponLoader;->getCaptureRateObj(II)Lcom/sns/game/database/bean/CaptureRateBean;

    move-result-object v4

    .line 733
    .local v4, "captureRateObj":Lcom/sns/game/database/bean/CaptureRateBean;
    invoke-virtual {v14}, Lcom/sns/game/database/bean/WeaponBean;->getAttackType()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 738
    :pswitch_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 741
    invoke-virtual {v4}, Lcom/sns/game/database/bean/CaptureRateBean;->getExpect()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sns/game/database/bean/ZombieDataBean;->getIntrinsicValue()F

    move-result v18

    .line 740
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/sns/game/object/GameWeaponLoader;->getZombieCaptureRate(FF)F

    move-result v3

    .line 743
    .local v3, "captureRate":F
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v12

    .line 744
    .local v12, "level":I
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/sns/game/database/dao/UserLevelDao;->getCoefficient(I)F

    move-result v2

    .line 746
    .local v2, "captureCoefficient":F
    mul-float v8, v3, v2

    .line 747
    .local v8, "finalCapture":F
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/UserState;->isActivateGame()Z

    move-result v10

    .line 748
    .local v10, "isActivateGame":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v17

    const/16 v18, 0x271c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/4 v11, 0x1

    .line 749
    .local v11, "isZomobieOfBljs":Z
    :goto_1
    if-nez v10, :cond_1

    if-eqz v11, :cond_1

    const/high16 v8, 0x3f400000    # 0.75f

    .line 751
    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v17

    cmpg-float v17, v17, v8

    if-gtz v17, :cond_3

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/sns/game/object/GameZombie;->executiveToKillSelf()V

    goto :goto_0

    .line 748
    .end local v11    # "isZomobieOfBljs":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 756
    .restart local v11    # "isZomobieOfBljs":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_score()I

    move-result v17

    const/16 v18, 0x19

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 758
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_appear()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    cmpg-double v17, v17, v19

    if-gtz v17, :cond_0

    .line 760
    invoke-direct/range {p0 .. p0}, Lcom/sns/game/object/GameZombie;->autoTurn()V

    goto/16 :goto_0

    .line 774
    .end local v2    # "captureCoefficient":F
    .end local v3    # "captureRate":F
    .end local v8    # "finalCapture":F
    .end local v10    # "isActivateGame":Z
    .end local v11    # "isZomobieOfBljs":Z
    .end local v12    # "level":I
    :pswitch_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 776
    const/16 v17, 0x0

    aget-object v17, p1, v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 777
    .local v5, "clusterSum":F
    const/16 v17, 0x1

    aget-object v17, p1, v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v16

    .line 778
    .local v16, "weightSum":F
    invoke-virtual {v15, v5, v14}, Lcom/sns/game/object/GameWeaponLoader;->getWeaponCofficient(FLcom/sns/game/database/bean/WeaponBean;)F

    move-result v6

    .line 779
    .local v6, "cofficient":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v17, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v6, v0, v14, v1}, Lcom/sns/game/object/GameWeaponLoader;->getWeaponExpect(FFLcom/sns/game/database/bean/WeaponBean;Lcom/sns/game/database/bean/ZombieDataBean;)F

    move-result v7

    .line 780
    .local v7, "expect":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/ZombieDataBean;->getIntrinsicValue()F

    move-result v9

    .line 781
    .local v9, "intrinsicValue":F
    invoke-virtual {v15, v7, v9}, Lcom/sns/game/object/GameWeaponLoader;->getZombieCaptureRate(FF)F

    move-result v3

    .line 783
    .restart local v3    # "captureRate":F
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v12

    .line 784
    .restart local v12    # "level":I
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/sns/game/database/dao/UserLevelDao;->getCoefficient(I)F

    move-result v2

    .line 786
    .restart local v2    # "captureCoefficient":F
    mul-float v8, v3, v2

    .line 787
    .restart local v8    # "finalCapture":F
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/UserState;->isActivateGame()Z

    move-result v10

    .line 788
    .restart local v10    # "isActivateGame":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v17

    const/16 v18, 0x271c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/4 v11, 0x1

    .line 789
    .restart local v11    # "isZomobieOfBljs":Z
    :goto_2
    if-nez v10, :cond_4

    if-eqz v11, :cond_4

    const/high16 v8, 0x3f400000    # 0.75f

    .line 791
    :cond_4
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v17

    cmpg-float v17, v17, v8

    if-gtz v17, :cond_6

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/sns/game/object/GameZombie;->executiveToKillSelf()V

    goto/16 :goto_0

    .line 788
    .end local v11    # "isZomobieOfBljs":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 796
    .restart local v11    # "isZomobieOfBljs":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_score()I

    move-result v17

    const/16 v18, 0x19

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 798
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_appear()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    cmpg-double v17, v17, v19

    if-gtz v17, :cond_0

    .line 800
    invoke-direct/range {p0 .. p0}, Lcom/sns/game/object/GameZombie;->autoTurn()V

    goto/16 :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected executiveToKillSelf()V
    .locals 4

    .prologue
    .line 815
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sns/game/object/GameZombie;->deadFlag:Z

    .line 816
    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v2, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 817
    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 819
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->dropOut()V

    .line 821
    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v1

    const/16 v2, 0x271c

    if-ne v1, v2, :cond_0

    .line 822
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->runDeadActoin_BLJS()V

    .line 836
    :goto_0
    sget-object v1, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserData;->modifyKill_total_zombie(I)V

    .line 837
    const-string v1, "Test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kill zombile count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserData;->getKill_total_zombie()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :goto_1
    return-void

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v1

    const/16 v2, 0x271e

    if-ne v1, v2, :cond_1

    .line 826
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->runDeadAction_LWJS()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1

    .line 830
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->runDeadAction_DEFAULT()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getBean()Lcom/sns/game/database/bean/ZombieDataBean;
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    return-object v0
.end method

.method protected getCollisionBoundingBox()Lorg/cocos2d/types/CGRect;
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    iget-object v2, p0, Lcom/sns/game/object/GameZombie;->collisionBoundingBox_:Lorg/cocos2d/types/CGRect;

    invoke-static {v0, v1, v2}, Lcom/sns/game/util/CCUtil;->setBoundingBox(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSpriteFrame;Lorg/cocos2d/types/CGRect;)V

    .line 409
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->collisionBoundingBox_:Lorg/cocos2d/types/CGRect;

    return-object v0
.end method

.method public getDisappearFrame()Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->disappearFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    return-object v0
.end method

.method public getDisplayFrame()Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v0

    return v0
.end method

.method public getZombie()Lorg/cocos2d/nodes/CCSprite;
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method

.method public isAppearGift()Z
    .locals 1

    .prologue
    .line 1278
    iget-boolean v0, p0, Lcom/sns/game/object/GameZombie;->appearGift:Z

    return v0
.end method

.method public moveTo()V
    .locals 15

    .prologue
    .line 206
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v8, :cond_0

    .line 208
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget v9, p0, Lcom/sns/game/object/GameZombie;->zOrder_:I

    invoke-direct {p0, v8, v9}, Lcom/sns/game/object/GameZombie;->added(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 210
    const/high16 v8, 0x3fa00000    # 1.25f

    const/high16 v9, 0x3fe00000    # 1.75f

    invoke-static {v8, v9}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v5

    .line 213
    .local v5, "speed":F
    iget-boolean v8, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-direct {p0, v8}, Lcom/sns/game/object/GameZombie;->calcMoveToEndPos(Z)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    .line 214
    .local v7, "toGoToPos":Lorg/cocos2d/types/CGPoint;
    iget-boolean v8, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :goto_0
    invoke-direct {p0, v8}, Lcom/sns/game/object/GameZombie;->calcMoveToEndPos(Z)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    .line 218
    .local v6, "toBackPos":Lorg/cocos2d/types/CGPoint;
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v8}, Lcom/sns/game/database/bean/ZombieDataBean;->getSpeed_time()F

    move-result v8

    mul-float v2, v8, v5

    .line 219
    .local v2, "animTime":F
    const-string v8, "moveTo_animate"

    iget-object v9, p0, Lcom/sns/game/object/GameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    invoke-static {v8, v2, v9}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v1

    .line 220
    .local v1, "anim":Lorg/cocos2d/nodes/CCAnimation;
    const/4 v8, 0x1

    invoke-static {v1, v8}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v3

    .line 221
    .local v3, "animate":Lorg/cocos2d/actions/interval/CCAnimate;
    invoke-static {v3}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v0

    .line 223
    .local v0, "action":Lorg/cocos2d/actions/base/CCRepeatForever;
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v8, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 227
    iget-boolean v8, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-static {v8}, Lorg/cocos2d/actions/instant/CCFlipX;->action(Z)Lorg/cocos2d/actions/instant/CCFlipX;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v10, 0x0

    .line 228
    const-string v11, "callBack_selector_moveTo"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-boolean v14, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {p0, v11, v12}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 229
    invoke-direct {p0, v7, v5}, Lcom/sns/game/object/GameZombie;->calcMoveTime(Lorg/cocos2d/types/CGPoint;F)F

    move-result v11

    invoke-static {v11, v7}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 230
    const-string v11, "callBack_selector_moveTo"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v7, v12, v13

    const/4 v13, 0x3

    aput-object v6, v12, v13

    invoke-static {p0, v11, v12}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v11

    aput-object v11, v9, v10

    .line 226
    invoke-static {v8, v9}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v4

    .line 231
    .local v4, "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    const/16 v8, 0x15

    invoke-virtual {v4, v8}, Lorg/cocos2d/actions/interval/CCSequence;->setTag(I)V

    .line 232
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v8, v4}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 235
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->acceptedAttack()V

    .line 238
    .end local v0    # "action":Lorg/cocos2d/actions/base/CCRepeatForever;
    .end local v1    # "anim":Lorg/cocos2d/nodes/CCAnimation;
    .end local v2    # "animTime":F
    .end local v3    # "animate":Lorg/cocos2d/actions/interval/CCAnimate;
    .end local v4    # "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v5    # "speed":F
    .end local v6    # "toBackPos":Lorg/cocos2d/types/CGPoint;
    .end local v7    # "toGoToPos":Lorg/cocos2d/types/CGPoint;
    :cond_0
    return-void

    .line 214
    .restart local v5    # "speed":F
    .restart local v7    # "toGoToPos":Lorg/cocos2d/types/CGPoint;
    :cond_1
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public recycleSelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v0, p0}, Lcom/sns/game/object/GameZombieLoader;->removeZombie(Lcom/sns/game/object/GameBaseZombie;)Z

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->destroyZombie()V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 99
    :cond_4
    iput-object v1, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 100
    iput-object v1, p0, Lcom/sns/game/object/GameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 101
    iput-object v1, p0, Lcom/sns/game/object/GameZombie;->deadSpriteFrames:Ljava/util/ArrayList;

    .line 102
    iput-object v1, p0, Lcom/sns/game/object/GameZombie;->disappearFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 103
    iput-object v1, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 104
    iput-object v1, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    .line 105
    iput-object v1, p0, Lcom/sns/game/object/GameZombie;->moveSpriteFrames:Ljava/util/ArrayList;

    .line 106
    iput-boolean v2, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    .line 107
    iput-boolean v2, p0, Lcom/sns/game/object/GameZombie;->appearGift:Z

    .line 108
    iput v2, p0, Lcom/sns/game/object/GameZombie;->zOrder_:I

    .line 109
    return-void
.end method

.method public runAction()V
    .locals 2

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/ZombieDataBean;->getChangedMoveType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->drillOut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombie;->moveTo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected runOnAcckPPaoAction()V
    .locals 3

    .prologue
    .line 1695
    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    .line 1696
    .local v0, "index":I
    packed-switch v0, :pswitch_data_0

    .line 1713
    :goto_0
    return-void

    .line 1698
    :pswitch_0
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->runPPaoAction_1()V

    goto :goto_0

    .line 1701
    :pswitch_1
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->runPPaoAction_2()V

    goto :goto_0

    .line 1704
    :pswitch_2
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->runPPaoAction_3()V

    goto :goto_0

    .line 1707
    :pswitch_3
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->runPPaoAction_4()V

    goto :goto_0

    .line 1710
    :pswitch_4
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->runPPaoAction_5()V

    goto :goto_0

    .line 1696
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBean(Lcom/sns/game/database/bean/ZombieDataBean;)V
    .locals 0
    .param p1, "dataBean"    # Lcom/sns/game/database/bean/ZombieDataBean;

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    .line 1271
    return-void
.end method

.method public setFlipX(Z)V
    .locals 0
    .param p1, "flipX"    # Z

    .prologue
    .line 1254
    iput-boolean p1, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    .line 1255
    return-void
.end method

.method public setFramesToCache()V
    .locals 0

    .prologue
    .line 1360
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->setMoveSpriteFrames()V

    .line 1361
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->setDeadSpriteFrames()V

    .line 1362
    return-void
.end method

.method public setHeightScale()V
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1357
    :goto_0
    return-void

    .line 1324
    :pswitch_0
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->sh:F

    goto :goto_0

    .line 1327
    :pswitch_1
    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->sh:F

    goto :goto_0

    .line 1330
    :pswitch_2
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->sh:F

    goto :goto_0

    .line 1333
    :pswitch_3
    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->sh:F

    goto :goto_0

    .line 1336
    :pswitch_4
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->sh:F

    goto :goto_0

    .line 1339
    :pswitch_5
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->sh:F

    goto :goto_0

    .line 1342
    :pswitch_6
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->sh:F

    goto :goto_0

    .line 1345
    :pswitch_7
    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->sh:F

    goto :goto_0

    .line 1348
    :pswitch_8
    const/high16 v0, 0x3f600000    # 0.875f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->sh:F

    goto :goto_0

    .line 1351
    :pswitch_9
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->sh:F

    goto :goto_0

    .line 1354
    :pswitch_a
    const v0, 0x3f6ccccd    # 0.925f

    iput v0, p0, Lcom/sns/game/object/GameZombie;->sh:F

    goto :goto_0

    .line 1322
    nop

    :pswitch_data_0
    .packed-switch 0x2711
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
    .end packed-switch
.end method

.method public setRandomBean()V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    invoke-virtual {v0}, Lcom/sns/game/object/GameZombieLoader;->searchZombieDataBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    .line 1275
    return-void
.end method

.method public setZombie()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    .line 1377
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->creater:Lcom/sns/game/object/GameZombieLoader;

    .line 1378
    iget-object v9, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    iget v10, p0, Lcom/sns/game/object/GameZombie;->zOrder_:I

    invoke-virtual {v8, v9, v10}, Lcom/sns/game/object/GameZombieLoader;->makeRandomPostionByFrame(Lorg/cocos2d/nodes/CCSpriteFrame;I)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 1380
    .local v2, "drillOutPos":Lorg/cocos2d/types/CGPoint;
    iget-boolean v8, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    if-eqz v8, :cond_3

    .line 1381
    sget-object v8, Lcom/sns/game/util/DeviceManager;->posZero_:Lorg/cocos2d/types/CGPoint;

    iget v8, v8, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v9, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v9}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v9

    iget v9, v9, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v9, v11

    sub-float/2addr v8, v9

    .line 1383
    :goto_0
    iget v9, v2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 1380
    invoke-static {v8, v9}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 1385
    .local v1, "bothSidePos":Lorg/cocos2d/types/CGPoint;
    const-string v8, "point.png"

    invoke-static {v8}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    iput-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    .line 1386
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget-boolean v9, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setFlipX(Z)V

    .line 1387
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v8, v11, v14}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1389
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v8}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_type()I

    move-result v8

    if-lt v8, v13, :cond_0

    .line 1390
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 1392
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v8}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v5

    .line 1393
    .local v5, "id":I
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ZombieName_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_Frame1.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v8

    invoke-static {v8}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    iput-object v8, p0, Lcom/sns/game/object/GameZombie;->spName:Lorg/cocos2d/nodes/CCSprite;

    .line 1394
    invoke-direct {p0}, Lcom/sns/game/object/GameZombie;->updateZomNamePos()V

    .line 1395
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget-object v9, p0, Lcom/sns/game/object/GameZombie;->spName:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 1397
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1398
    .local v3, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ZombieName_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_Frame1.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ZombieName_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_Frame2.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    const-string v8, "zombieName_anim"

    const v9, 0x3dcccccd    # 0.1f

    invoke-static {v8, v9, v3}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v8

    invoke-static {v8, v12}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    .line 1401
    .local v0, "animate":Lorg/cocos2d/actions/interval/CCAnimate;
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->spName:Lorg/cocos2d/nodes/CCSprite;

    invoke-static {v0}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1403
    .end local v0    # "animate":Lorg/cocos2d/actions/interval/CCAnimate;
    .end local v3    # "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .end local v5    # "id":I
    :cond_0
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v8}, Lcom/sns/game/database/bean/ZombieDataBean;->getMove_type()I

    move-result v8

    if-ne v8, v13, :cond_4

    .line 1406
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v8, v1}, Lorg/cocos2d/nodes/CCSprite;->setPositionToUI(Lorg/cocos2d/types/CGPoint;)V

    .line 1407
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v8, v13}, Lcom/sns/game/database/bean/ZombieDataBean;->setChangedMoveType(I)V

    .line 1435
    :goto_1
    invoke-static {}, Lcom/sns/game/layer/CCNewManSystem;->sharedSystem()Lcom/sns/game/layer/CCNewManSystem;

    move-result-object v6

    .line 1436
    .local v6, "system":Lcom/sns/game/layer/CCNewManSystem;
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v7

    .line 1437
    .local v7, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v6}, Lcom/sns/game/layer/CCNewManSystem;->isAllCompleted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1438
    invoke-virtual {v7}, Lcom/sns/game/database/bean/UserState;->getActivateGameTag()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 1439
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v8}, Lcom/sns/game/database/bean/ZombieDataBean;->getGift_appear()F

    move-result v8

    invoke-direct {p0, v8}, Lcom/sns/game/object/GameZombie;->isMeetOdds(F)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1441
    invoke-direct {p0, v12}, Lcom/sns/game/object/GameZombie;->setAppearGift(Z)V

    .line 1442
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v8}, Lcom/sns/game/database/bean/ZombieDataBean;->getGiftBoxResPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    .line 1443
    .local v4, "gift_":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v4, v11, v11}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1445
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v8}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v8

    iget v8, v8, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v8, v11

    const/high16 v9, 0x40c80000    # 6.25f

    sub-float/2addr v8, v9

    .line 1446
    iget-object v9, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v9}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v9

    iget v9, v9, Lorg/cocos2d/types/CGSize;->height:F

    const/high16 v10, 0x41480000    # 12.5f

    add-float/2addr v9, v10

    .line 1444
    invoke-virtual {v4, v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 1447
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v8, v4}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 1452
    .end local v4    # "gift_":Lorg/cocos2d/nodes/CCSprite;
    :cond_1
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v8}, Lcom/sns/game/database/bean/ZombieDataBean;->getShadowResPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    iput-object v8, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    .line 1453
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v8, v11, v11}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 1454
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    iget-object v9, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    iget-boolean v10, p0, Lcom/sns/game/object/GameZombie;->flipX_:Z

    invoke-virtual {v9, v10}, Lcom/sns/game/database/bean/ZombieDataBean;->getShadowPos(Z)Lorg/cocos2d/types/CGPoint;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 1455
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget-object v9, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 1456
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v8}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_type()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1467
    :goto_2
    iget v8, p0, Lcom/sns/game/object/GameZombie;->sh:F

    cmpl-float v8, v8, v14

    if-eqz v8, :cond_2

    .line 1468
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    iget v9, p0, Lcom/sns/game/object/GameZombie;->sh:F

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 1469
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    iget-object v9, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v9}, Lorg/cocos2d/nodes/CCSprite;->getScale()F

    move-result v9

    iget v10, p0, Lcom/sns/game/object/GameZombie;->sh:F

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 1472
    :cond_2
    return-void

    .line 1382
    .end local v1    # "bothSidePos":Lorg/cocos2d/types/CGPoint;
    .end local v6    # "system":Lcom/sns/game/layer/CCNewManSystem;
    .end local v7    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_3
    sget-object v8, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v8, v8, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v9, p0, Lcom/sns/game/object/GameZombie;->displayFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v9}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v9

    iget v9, v9, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v9, v11

    add-float/2addr v8, v9

    goto/16 :goto_0

    .line 1410
    .restart local v1    # "bothSidePos":Lorg/cocos2d/types/CGPoint;
    :cond_4
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-static {v12, v13}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sns/game/database/bean/ZombieDataBean;->setChangedMoveType(I)V

    .line 1414
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->bean:Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-virtual {v8}, Lcom/sns/game/database/bean/ZombieDataBean;->getChangedMoveType()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_1

    .line 1417
    :pswitch_0
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v8, v2}, Lorg/cocos2d/nodes/CCSprite;->setPositionToUI(Lorg/cocos2d/types/CGPoint;)V

    goto/16 :goto_1

    .line 1421
    :pswitch_1
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->zombie_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v8, v1}, Lorg/cocos2d/nodes/CCSprite;->setPositionToUI(Lorg/cocos2d/types/CGPoint;)V

    goto/16 :goto_1

    .line 1458
    .restart local v6    # "system":Lcom/sns/game/layer/CCNewManSystem;
    .restart local v7    # "uState":Lcom/sns/game/database/bean/UserState;
    :pswitch_2
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v8, v11}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    goto :goto_2

    .line 1461
    :pswitch_3
    iget-object v8, p0, Lcom/sns/game/object/GameZombie;->shadow_:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    goto :goto_2

    .line 1456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 1414
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setZorder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 1262
    iput p1, p0, Lcom/sns/game/object/GameZombie;->zOrder_:I

    .line 1263
    return-void
.end method
