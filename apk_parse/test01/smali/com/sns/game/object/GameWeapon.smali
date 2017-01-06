.class public Lcom/sns/game/object/GameWeapon;
.super Ljava/lang/Object;
.source "GameWeapon.java"

# interfaces
.implements Lcom/sns/game/object/FireDelegate;


# instance fields
.field private beAttackedStartTime:J

.field private bean:Lcom/sns/game/database/bean/UserWeaponBean;

.field private bombEffectFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private bombFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

.field private bulletFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

.field private bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

.field private cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

.field fireStartTime:J

.field private gun:Lorg/cocos2d/nodes/CCSprite;

.field private light:Lorg/cocos2d/nodes/CCSprite;

.field private lightFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private loader:Lcom/sns/game/object/GameWeaponLoader;

.field private normBallistic:F

.field playEffectToAttackCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

.field playEffectToBeAttackedCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

.field private sight:Lorg/cocos2d/nodes/CCSprite;

.field private situ:Lorg/cocos2d/nodes/CCSprite;

.field private situFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private toAttackStartTime:J


# direct methods
.method public constructor <init>(Lcom/sns/game/object/GameWeaponLoader;)V
    .locals 2
    .param p1, "weaponLoader"    # Lcom/sns/game/object/GameWeaponLoader;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sns/game/object/GameWeapon;->fireStartTime:J

    .line 748
    new-instance v0, Lcom/sns/game/object/GameWeapon$1;

    invoke-direct {v0, p0}, Lcom/sns/game/object/GameWeapon$1;-><init>(Lcom/sns/game/object/GameWeapon;)V

    iput-object v0, p0, Lcom/sns/game/object/GameWeapon;->playEffectToAttackCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 756
    new-instance v0, Lcom/sns/game/object/GameWeapon$2;

    invoke-direct {v0, p0}, Lcom/sns/game/object/GameWeapon$2;-><init>(Lcom/sns/game/object/GameWeapon;)V

    iput-object v0, p0, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttackedCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 51
    iput-object p1, p0, Lcom/sns/game/object/GameWeapon;->loader:Lcom/sns/game/object/GameWeaponLoader;

    .line 52
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameWeapon;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/object/GameWeapon;)Lcom/sns/game/database/bean/UserWeaponBean;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    return-object v0
.end method

.method private added(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;
    .locals 1
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->loader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v0, p1}, Lcom/sns/game/object/GameWeaponLoader;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method private added(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    .locals 1
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->loader:Lcom/sns/game/object/GameWeaponLoader;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->loader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sns/game/object/GameWeaponLoader;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    .line 733
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBulletBornPos()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method private getBulletEndPos(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "touch"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "rot"    # F

    .prologue
    .line 710
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/WeaponBean;->getShotType()I

    move-result v0

    .line 711
    .local v0, "shotType":I
    packed-switch v0, :pswitch_data_0

    .line 718
    const/4 p2, 0x0

    .end local p2    # "touch":Lorg/cocos2d/types/CGPoint;
    :goto_0
    :pswitch_0
    return-object p2

    .line 713
    .restart local p2    # "touch":Lorg/cocos2d/types/CGPoint;
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sns/game/object/GameWeapon;->calcBulletEndPoint(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object p2

    goto :goto_0

    .line 711
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSafePlayBeAttacked(F)Z
    .locals 8
    .param p1, "s"    # F

    .prologue
    .line 781
    iget-object v4, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v3

    .line 782
    .local v3, "wpnId":I
    sget-object v4, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 783
    .local v0, "limitTime":F
    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v0

    float-to-long v1, v4

    .line 784
    .local v1, "safeResponseTime":J
    long-to-float v4, v1

    mul-float/2addr v4, p1

    float-to-long v1, v4

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sns/game/object/GameWeapon;->beAttackedStartTime:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v1

    if-ltz v4, :cond_0

    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sns/game/object/GameWeapon;->beAttackedStartTime:J

    .line 787
    const/4 v4, 0x1

    .line 789
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSafePlayToAttack(F)Z
    .locals 8
    .param p1, "s"    # F

    .prologue
    .line 767
    iget-object v4, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v3

    .line 768
    .local v3, "wpnId":I
    sget-object v4, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 769
    .local v0, "limitTime":F
    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v0

    float-to-long v1, v4

    .line 770
    .local v1, "safeResponseTime":J
    long-to-float v4, v1

    mul-float/2addr v4, p1

    float-to-long v1, v4

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sns/game/object/GameWeapon;->toAttackStartTime:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v1

    if-ltz v4, :cond_0

    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sns/game/object/GameWeapon;->toAttackStartTime:J

    .line 773
    const/4 v4, 0x1

    .line 775
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private loadBullet(F)Lorg/cocos2d/nodes/CCSprite;
    .locals 4
    .param p1, "rot"    # F

    .prologue
    .line 622
    const/4 v0, 0x0

    .line 625
    .local v0, "bullet":Lorg/cocos2d/nodes/CCSprite;
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bulletFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 626
    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v2

    const/16 v3, 0x2724

    if-ne v2, v3, :cond_0

    .line 627
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 631
    :goto_0
    invoke-direct {p0}, Lcom/sns/game/object/GameWeapon;->getBulletBornPos()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 632
    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setRotation(F)V

    .line 633
    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v2, v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    move-object v2, v0

    .line 639
    :goto_1
    return-object v2

    .line 629
    :cond_0
    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getBulletAnchor()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v1

    .line 636
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 637
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private runGunAction()V
    .locals 6

    .prologue
    const v5, 0x3e4ccccd    # 0.2f

    .line 114
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    .line 117
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v5, v1}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 118
    const v4, 0x3f7d70a4    # 0.99f

    invoke-static {v5, v4}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 119
    const v4, 0x3f8147ae    # 1.01f

    invoke-static {v5, v4}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    aput-object v4, v2, v3

    .line 116
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 115
    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 121
    :cond_0
    return-void
.end method

.method private runSituAction()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->situ:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->situ:Lorg/cocos2d/nodes/CCSprite;

    .line 126
    const-string v1, ""

    const v2, 0x3e4ccccd    # 0.2f

    iget-object v3, p0, Lcom/sns/game/object/GameWeapon;->situFrames:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v1

    .line 125
    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 128
    :cond_0
    return-void
.end method

.method private setBean(Lcom/sns/game/database/bean/UserWeaponBean;)V
    .locals 0
    .param p1, "bean"    # Lcom/sns/game/database/bean/UserWeaponBean;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    .line 560
    return-void
.end method

.method private setBullet()V
    .locals 4

    .prologue
    .line 611
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->bulletFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSpriteSheet;->spriteSheet(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 612
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/sns/game/object/GameWeapon;->added(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 615
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 617
    .local v0, "pos":Lorg/cocos2d/types/CGPoint;
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    sget-object v2, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v3, p0, Lcom/sns/game/object/GameWeapon;->bulletFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 616
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v1

    iput v1, p0, Lcom/sns/game/object/GameWeapon;->normBallistic:F

    .line 619
    return-void
.end method

.method private setFramesToCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/WeaponBean;->getShotPlist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 565
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->loader:Lcom/sns/game/object/GameWeaponLoader;

    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/WeaponBean;->getShotPlist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/object/GameWeaponLoader;->getBulletFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameWeapon;->bulletFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 566
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    const-string v1, "shot/leaves_shot.plist"

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameWeapon;->situFrames:Ljava/util/ArrayList;

    .line 567
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    const-string v1, "shot/light_shot.plist"

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameWeapon;->lightFrames:Ljava/util/ArrayList;

    .line 569
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/database/bean/WeaponBean;->getBombEffect_plist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/WeaponBean;->getBombEffect_plist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 570
    iput-object v0, p0, Lcom/sns/game/object/GameWeapon;->bombEffectFrames:Ljava/util/ArrayList;

    .line 572
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bombEffectFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    iput-object v0, p0, Lcom/sns/game/object/GameWeapon;->bombFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 577
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    const-string v1, "bullet/wd_bullet_effect.plist"

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameWeapon;->bombEffectFrames:Ljava/util/ArrayList;

    .line 575
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bombEffectFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    iput-object v0, p0, Lcom/sns/game/object/GameWeapon;->bombFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    goto :goto_0
.end method

.method private setWeapon()V
    .locals 3

    .prologue
    .line 580
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/WeaponBean;->getShotPlist()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "shotPlist":Ljava/lang/String;
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->loader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v1, v0}, Lcom/sns/game/object/GameWeaponLoader;->getGunFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    .line 583
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getWeaponPos()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 584
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getWeaponAnchor()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 587
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->loader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v1, v0}, Lcom/sns/game/object/GameWeaponLoader;->getSightFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->sight:Lorg/cocos2d/nodes/CCSprite;

    .line 588
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->sight:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getSightPos()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 589
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->sight:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getWeaponAnchor()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 592
    const-string v1, "point.png"

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->situ:Lorg/cocos2d/nodes/CCSprite;

    .line 593
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->situ:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getSituPos()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 594
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->situ:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getSituAnchor()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 597
    const-string v1, "point.png"

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->light:Lorg/cocos2d/nodes/CCSprite;

    .line 598
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->light:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getLightPos()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 599
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->light:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getLightAnchor()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 602
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->situ:Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {p0, v1}, Lcom/sns/game/object/GameWeapon;->added(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 603
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {p0, v1}, Lcom/sns/game/object/GameWeapon;->added(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 604
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->light:Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {p0, v1}, Lcom/sns/game/object/GameWeapon;->added(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 605
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->sight:Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {p0, v1}, Lcom/sns/game/object/GameWeapon;->added(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 607
    return-void
.end method


# virtual methods
.method public varargs acceptedWeaponFire_CLUSTER(Lcom/sns/game/object/GameBaseZombie;Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "zombie"    # Lcom/sns/game/object/GameBaseZombie;
    .param p2, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p3, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 498
    :goto_0
    return-void

    .line 487
    :pswitch_0
    invoke-virtual {p1, p2, p3}, Lcom/sns/game/object/GameBaseZombie;->acceptedWeapon_DMG(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V

    goto :goto_0

    .line 491
    :pswitch_1
    invoke-virtual {p1, p2, p3}, Lcom/sns/game/object/GameBaseZombie;->acceptedWeapon_XGTS(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V

    goto :goto_0

    .line 495
    :pswitch_2
    invoke-virtual {p1, p2, p3}, Lcom/sns/game/object/GameBaseZombie;->acceptedWeapon_CGP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x2722
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public calcBulletEndPoint(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "touch"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "rotation"    # F

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->loader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-direct {p0}, Lcom/sns/game/object/GameWeapon;->getBulletBornPos()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/sns/game/object/GameWeaponLoader;->endPoint(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public callBack_selector_bombEffect(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 302
    .local v1, "bombEffect":Lorg/cocos2d/nodes/CCSprite;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    move-object v1, v0

    .line 303
    invoke-virtual {p0, v1}, Lcom/sns/game/object/GameWeapon;->destroyBombEffect(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_bullet(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 250
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 253
    .local v2, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 254
    const/4 v5, 0x0

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 255
    .local v4, "tag":I
    const/4 v5, 0x1

    aget-object v1, v2, v5

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 256
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    packed-switch v4, :pswitch_data_0

    .line 277
    .end local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v4    # "tag":I
    :cond_0
    :goto_0
    return-void

    .line 260
    .restart local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .restart local v4    # "tag":I
    :pswitch_0
    sget-object v5, Lcom/sns/game/util/DeviceManager;->defaultRect_:Lorg/cocos2d/types/CGRect;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    .line 259
    invoke-static {v5, v6}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 261
    invoke-virtual {p0, v1}, Lcom/sns/game/object/GameWeapon;->destroyBullet(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    .end local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v4    # "tag":I
    :catch_0
    move-exception v3

    .line 275
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 265
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .restart local v4    # "tag":I
    :pswitch_1
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v5}, Lcom/sns/game/object/GameWeapon;->weaponFire_CGP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/sns/game/object/GameWeapon;->destroyBullet(Lorg/cocos2d/nodes/CCSprite;)V

    .line 270
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public createSelf(Lcom/sns/game/database/bean/UserWeaponBean;)V
    .locals 0
    .param p1, "bean"    # Lcom/sns/game/database/bean/UserWeaponBean;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sns/game/object/GameWeapon;->setBean(Lcom/sns/game/database/bean/UserWeaponBean;)V

    .line 57
    invoke-direct {p0}, Lcom/sns/game/object/GameWeapon;->setFramesToCache()V

    .line 58
    invoke-direct {p0}, Lcom/sns/game/object/GameWeapon;->setWeapon()V

    .line 59
    invoke-direct {p0}, Lcom/sns/game/object/GameWeapon;->setBullet()V

    .line 60
    return-void
.end method

.method public destroyAllBullet(Lorg/cocos2d/nodes/CCSpriteSheet;)V
    .locals 4
    .param p1, "bulletSheet"    # Lorg/cocos2d/nodes/CCSpriteSheet;

    .prologue
    .line 656
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 662
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeSelf()V

    .line 663
    return-void

    .line 656
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCNode;

    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v0, v1

    .line 657
    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 658
    .local v0, "bullet":Lorg/cocos2d/nodes/CCSprite;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 659
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 660
    invoke-virtual {p0, v0}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V

    goto :goto_0
.end method

.method public destroyBombEffect(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 1
    .param p1, "bombEffect"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 682
    if-eqz p1, :cond_0

    .line 683
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 684
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 686
    :cond_0
    return-void
.end method

.method public destroyBullet(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 1
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 643
    if-eqz p1, :cond_0

    .line 644
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 645
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 646
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 652
    :cond_0
    return-void
.end method

.method public getBean()Lcom/sns/game/database/bean/UserWeaponBean;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    return-object v0
.end method

.method public getBulletSheet()Lorg/cocos2d/nodes/CCSpriteSheet;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    return-object v0
.end method

.method public getSight()Lorg/cocos2d/nodes/CCSprite;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->sight:Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method

.method public getWeapon()Lorg/cocos2d/nodes/CCSprite;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method

.method public isAngle(F)Z
    .locals 1
    .param p1, "rot"    # F

    .prologue
    .line 702
    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSafeToOpenFire()Z
    .locals 9

    .prologue
    .line 690
    const/4 v3, 0x0

    .line 691
    .local v3, "safe":Z
    iget-object v5, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/database/bean/WeaponBean;->getShootInterval()F

    move-result v4

    .line 692
    .local v4, "time":F
    const/high16 v5, 0x40a00000    # 5.0f

    mul-float v2, v4, v5

    .line 693
    .local v2, "onLowCpuTime":F
    sget-boolean v5, Lcom/sns/game/util/DeviceManager;->isLowCpu:Z

    if-eqz v5, :cond_1

    .end local v2    # "onLowCpuTime":F
    :goto_0
    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v2

    float-to-long v0, v5

    .line 694
    .local v0, "allow":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sns/game/object/GameWeapon;->fireStartTime:J

    sub-long/2addr v5, v7

    cmp-long v5, v5, v0

    if-ltz v5, :cond_0

    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sns/game/object/GameWeapon;->fireStartTime:J

    .line 696
    const/4 v3, 0x1

    .line 698
    :cond_0
    return v3

    .end local v0    # "allow":J
    .restart local v2    # "onLowCpuTime":F
    :cond_1
    move v2, v4

    .line 693
    goto :goto_0
.end method

.method public loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;
    .locals 3
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 666
    const/4 v0, 0x0

    .line 669
    .local v0, "bombEffect":Lorg/cocos2d/nodes/CCSprite;
    :try_start_0
    const-string v2, "point.png"

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 670
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 671
    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getBombEffectAnchor()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 672
    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/sns/game/object/GameWeapon;->added(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 678
    :goto_0
    return-object v2

    .line 674
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 676
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public playEffectToAttack()V
    .locals 3

    .prologue
    .line 795
    const/high16 v1, 0x3e800000    # 0.25f

    :try_start_0
    invoke-direct {p0, v1}, Lcom/sns/game/object/GameWeapon;->isSafePlayToAttack(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    sget-object v1, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 796
    invoke-static {v1}, Lcom/sns/game/util/SoundManager;->playEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public playEffectToBeAttacked()V
    .locals 3

    .prologue
    .line 813
    const v1, 0x3ecccccd    # 0.4f

    :try_start_0
    invoke-direct {p0, v1}, Lcom/sns/game/object/GameWeapon;->isSafePlayBeAttacked(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    sget-object v1, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 814
    invoke-static {v1, v2}, Lcom/sns/game/util/SoundManager;->playEffect(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bombEffectFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bombEffectFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeSelf()V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->situFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->situFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->light:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->light:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->lightFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->lightFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->situ:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_6

    .line 85
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->situ:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 87
    :cond_6
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->sight:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_7

    .line 88
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->sight:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 92
    :cond_7
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->bombEffectFrames:Ljava/util/ArrayList;

    .line 93
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->bombFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 94
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->bulletFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 95
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 96
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 97
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->situFrames:Ljava/util/ArrayList;

    .line 98
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    .line 99
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->light:Lorg/cocos2d/nodes/CCSprite;

    .line 100
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->lightFrames:Ljava/util/ArrayList;

    .line 101
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->loader:Lcom/sns/game/object/GameWeaponLoader;

    .line 102
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->situ:Lorg/cocos2d/nodes/CCSprite;

    .line 103
    iput-object v1, p0, Lcom/sns/game/object/GameWeapon;->sight:Lorg/cocos2d/nodes/CCSprite;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/sns/game/object/GameWeapon;->normBallistic:F

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sns/game/object/GameWeapon;->fireStartTime:J

    .line 106
    return-void
.end method

.method public runAction()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sns/game/object/GameWeapon;->runGunAction()V

    .line 110
    invoke-direct {p0}, Lcom/sns/game/object/GameWeapon;->runSituAction()V

    .line 111
    return-void
.end method

.method public runAntiShockAction(F)V
    .locals 9
    .param p1, "rot"    # F

    .prologue
    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v2, -0x3e800000    # -16.0f

    .line 142
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v3, :cond_0

    .line 144
    const/high16 v3, -0x3ee00000    # -10.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 145
    .local v1, "moveByX":F
    :goto_0
    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    .line 146
    const v3, 0x3d99999a    # 0.075f

    const/high16 v4, -0x3e800000    # -16.0f

    invoke-static {v1, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/actions/ease/CCEaseExponentialIn;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialIn;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v5, 0x0

    .line 147
    const v6, 0x3d99999a    # 0.075f

    neg-float v7, v1

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v7, v8}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v6

    invoke-static {v6}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 148
    iget-object v6, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v6}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/database/bean/WeaponBean;->getWeaponPos()Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    invoke-static {v6}, Lorg/cocos2d/actions/instant/CCPlace;->action(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/instant/CCPlace;

    move-result-object v6

    aput-object v6, v4, v5

    .line 145
    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1    # "moveByX":F
    :cond_0
    :goto_1
    return-void

    .line 144
    :cond_1
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 4
    .param p1, "bombEffect"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    const/4 v3, 0x1

    .line 280
    if-eqz p1, :cond_0

    .line 282
    const-string v0, "bombEffect_animate"

    const v1, 0x3d4ccccd    # 0.05f

    iget-object v2, p0, Lcom/sns/game/object/GameWeapon;->bombEffectFrames:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    new-array v1, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v2, 0x0

    .line 283
    const-string v3, "callBack_selector_bombEffect"

    invoke-static {p0, v3, p1}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v1, v2

    .line 281
    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 285
    :cond_0
    return-void
.end method

.method public runBulletAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "endPos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v1, 0x1

    .line 187
    iget-object v0, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 190
    :pswitch_0
    sget-object v0, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v0, v1}, Lcom/sns/game/database/bean/UserData;->modifyUse_total_weapon_cgp(I)V

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/sns/game/object/GameWeapon;->runBulletPointAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 195
    :pswitch_1
    sget-object v0, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v0, v1}, Lcom/sns/game/database/bean/UserData;->modifyUse_total_weapon_wdss(I)V

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/sns/game/object/GameWeapon;->runBulletMoveAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 200
    :pswitch_2
    sget-object v0, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v0, v1}, Lcom/sns/game/database/bean/UserData;->modifyUse_total_weapon_jgp(I)V

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/sns/game/object/GameWeapon;->runBulletMoveAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 205
    :pswitch_3
    sget-object v0, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v0, v1}, Lcom/sns/game/database/bean/UserData;->modifyUse_total_weapon_xrzc(I)V

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/sns/game/object/GameWeapon;->runBulletMoveAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 210
    :pswitch_4
    sget-object v0, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v0, v1}, Lcom/sns/game/database/bean/UserData;->modifyUse_total_weapon_dmg(I)V

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/sns/game/object/GameWeapon;->runBulletMoveAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 215
    :pswitch_5
    sget-object v0, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v0, v1}, Lcom/sns/game/database/bean/UserData;->modifyUse_total_weapon_xgts(I)V

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/sns/game/object/GameWeapon;->runBulletMoveAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x271f
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public runBulletMoveAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V
    .locals 7
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "endPos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 222
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iget v2, p0, Lcom/sns/game/object/GameWeapon;->normBallistic:F

    iget-object v3, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/database/bean/WeaponBean;->getFlyTime()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    .line 223
    invoke-static {v1, p2, v2, v3}, Lcom/sns/game/util/CCUtil;->ccuCalcMoveEquivalentTime(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;FF)F

    move-result v0

    .line 225
    .local v0, "time":F
    invoke-static {v0, p2}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 227
    const-string v1, "callBack_selector_bullet"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {p0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v1

    new-array v2, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 226
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 229
    .end local v0    # "time":F
    :cond_0
    return-void
.end method

.method public runBulletPointAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V
    .locals 8
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "endPos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 232
    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iget v2, p0, Lcom/sns/game/object/GameWeapon;->normBallistic:F

    iget-object v3, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/database/bean/WeaponBean;->getFlyTime()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    .line 233
    invoke-static {v1, p2, v2, v3}, Lcom/sns/game/util/CCUtil;->ccuCalcMoveEquivalentTime(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;FF)F

    move-result v0

    .line 236
    .local v0, "time":F
    invoke-static {v0, p2}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v1

    new-array v2, v7, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 237
    const-string v3, "callBack_selector_bullet"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v6

    .line 235
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 239
    .end local v0    # "time":F
    :cond_0
    return-void
.end method

.method public runBulletRotateAction(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 7
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 242
    if-eqz p1, :cond_0

    .line 244
    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v1, 0x44e10000    # 1800.0f

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCRotateTo;->action(FF)Lorg/cocos2d/actions/interval/CCRotateTo;

    move-result-object v0

    new-array v1, v6, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 245
    const-string v2, "callBack_selector_bullet"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {p0, v2, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v2

    aput-object v2, v1, v5

    .line 243
    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 247
    :cond_0
    return-void
.end method

.method public runLightAction()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v6, 0x3dcccccd    # 0.1f

    .line 131
    const/high16 v0, 0x3e800000    # 0.25f

    .line 132
    .local v0, "scale":F
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->light:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->numberOfRunningActions()I

    move-result v1

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/sns/game/object/GameWeapon;->light:Lorg/cocos2d/nodes/CCSprite;

    .line 134
    mul-float v2, v6, v0

    invoke-static {v2}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v2

    new-array v3, v8, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    .line 135
    const-string v5, ""

    mul-float/2addr v6, v0

    iget-object v7, p0, Lcom/sns/game/object/GameWeapon;->lightFrames:Ljava/util/ArrayList;

    invoke-static {v5, v6, v7}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v5

    invoke-static {v5, v8}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v5

    aput-object v5, v3, v4

    .line 133
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 137
    :cond_0
    return-void
.end method

.method public shotBullet(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V
    .locals 3
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "rotPos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 175
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 177
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 178
    .local v0, "nodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Lcom/sns/game/object/GameWeapon;->runBulletRotateAction(Lorg/cocos2d/nodes/CCSprite;)V

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sns/game/object/GameWeapon;->runBulletAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0
.end method

.method public shotBullet(Lorg/cocos2d/types/CGPoint;)V
    .locals 4
    .param p1, "touch"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sns/game/object/GameWeapon;->getBulletBornPos()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/cocos2d/types/CGPoint;->ccpCalcRotate(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v2

    .line 159
    .local v2, "rot":F
    invoke-virtual {p0, v2}, Lcom/sns/game/object/GameWeapon;->isAngle(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-direct {p0, v2}, Lcom/sns/game/object/GameWeapon;->loadBullet(F)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 161
    .local v0, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-direct {p0, v0, p1, v2}, Lcom/sns/game/object/GameWeapon;->getBulletEndPos(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 163
    .local v1, "endPos":Lorg/cocos2d/types/CGPoint;
    iget-object v3, p0, Lcom/sns/game/object/GameWeapon;->gun:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3, v2}, Lorg/cocos2d/nodes/CCSprite;->setRotation(F)V

    .line 164
    iget-object v3, p0, Lcom/sns/game/object/GameWeapon;->light:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3, v2}, Lorg/cocos2d/nodes/CCSprite;->setRotation(F)V

    .line 166
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeapon;->playEffectToAttack()V

    .line 167
    invoke-virtual {p0, v2}, Lcom/sns/game/object/GameWeapon;->runAntiShockAction(F)V

    .line 168
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeapon;->runLightAction()V

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/sns/game/object/GameWeapon;->runBulletAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;)V

    .line 171
    .end local v0    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v1    # "endPos":Lorg/cocos2d/types/CGPoint;
    :cond_0
    return-void
.end method

.method public varargs weaponFire_CGP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 464
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v3

    .line 465
    .local v3, "mple":I
    invoke-virtual {p0, p1}, Lcom/sns/game/object/GameWeapon;->destroyBullet(Lorg/cocos2d/nodes/CCSprite;)V

    .line 467
    const/16 v2, 0xc

    .line 468
    .local v2, "maxCatchNum":I
    invoke-virtual {p0, p1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 469
    .local v0, "bombEffect":Lorg/cocos2d/nodes/CCSprite;
    const v6, 0x438b8000    # 279.0f

    const/high16 v7, 0x43790000    # 249.0f

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v5

    .line 471
    .local v5, "size":Lorg/cocos2d/types/CGSize;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefX()F

    move-result v6

    iget v7, v5, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointX()F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 472
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefY()F

    move-result v7

    iget v8, v5, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointY()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 470
    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 473
    .local v4, "origin":Lorg/cocos2d/types/CGPoint;
    invoke-static {v4, v5}, Lorg/cocos2d/types/CGRect;->make(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 475
    .local v1, "bombRange":Lorg/cocos2d/types/CGRect;
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 476
    invoke-virtual {p0, v0}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V

    .line 477
    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/sns/game/object/GameWeapon;->weaponFire_CLUSTER(Ljava/util/List;[Ljava/lang/Object;)V

    .line 478
    return-void
.end method

.method public varargs weaponFire_CLUSTER(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 17
    .param p2, "objs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/object/GameBaseZombie;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "zombieList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameBaseZombie;>;"
    const/4 v5, 0x0

    .line 504
    .local v5, "catchCount":I
    const/4 v6, 0x0

    .line 505
    .local v6, "clusterSum":F
    const/4 v11, 0x0

    .line 506
    .local v11, "weightSum":F
    const/4 v10, -0x1

    .line 510
    .local v10, "muple":I
    const/4 v13, 0x1

    :try_start_0
    aget-object v13, p2, v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 511
    .local v9, "maxCatchNum":I
    const/4 v13, 0x0

    aget-object v2, p2, v13

    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    .line 512
    .local v2, "bullet":Lorg/cocos2d/nodes/CCSprite;
    const/4 v13, 0x2

    aget-object v1, p2, v13

    check-cast v1, Lorg/cocos2d/types/CGRect;

    .line 513
    .local v1, "bombRange":Lorg/cocos2d/types/CGRect;
    move-object/from16 v0, p2

    array-length v13, v0

    const/4 v14, 0x3

    if-le v13, v14, :cond_0

    const/4 v13, 0x3

    aget-object v13, p2, v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 514
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v4, "capturedZombieList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameBaseZombie;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sns/game/object/GameWeapon;->loader:Lcom/sns/game/object/GameWeaponLoader;

    invoke-virtual {v13}, Lcom/sns/game/object/GameWeaponLoader;->getZombieList()Ljava/util/ArrayList;

    move-result-object v8

    .line 517
    .local v8, "exitingZombieList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameBaseZombie;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 530
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_4

    .line 540
    .end local v1    # "bombRange":Lorg/cocos2d/types/CGRect;
    .end local v2    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v4    # "capturedZombieList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameBaseZombie;>;"
    .end local v8    # "exitingZombieList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameBaseZombie;>;"
    .end local v9    # "maxCatchNum":I
    :goto_2
    return-void

    .line 517
    .restart local v1    # "bombRange":Lorg/cocos2d/types/CGRect;
    .restart local v2    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .restart local v4    # "capturedZombieList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameBaseZombie;>;"
    .restart local v8    # "exitingZombieList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameBaseZombie;>;"
    .restart local v9    # "maxCatchNum":I
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sns/game/object/GameBaseZombie;

    .line 518
    .local v12, "zombie":Lcom/sns/game/object/GameBaseZombie;
    if-eq v5, v9, :cond_2

    .line 520
    invoke-virtual {v12}, Lcom/sns/game/object/GameBaseZombie;->getCollisionBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v14

    .line 519
    invoke-static {v14, v1}, Lorg/cocos2d/types/CGRect;->intersects(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGRect;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sns/game/object/GameWeapon;->loader:Lcom/sns/game/object/GameWeaponLoader;

    .line 522
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v15}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v15

    invoke-virtual {v12}, Lcom/sns/game/object/GameBaseZombie;->getTag()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lcom/sns/game/object/GameWeaponLoader;->getCaptureRateObj(II)Lcom/sns/game/database/bean/CaptureRateBean;

    move-result-object v3

    .line 523
    .local v3, "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    add-int/lit8 v5, v5, 0x1

    .line 524
    invoke-virtual {v3}, Lcom/sns/game/database/bean/CaptureRateBean;->getCluster()F

    move-result v14

    add-float/2addr v6, v14

    .line 525
    invoke-virtual {v3}, Lcom/sns/game/database/bean/CaptureRateBean;->getWeight()F

    move-result v14

    add-float/2addr v11, v14

    .line 526
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    .end local v1    # "bombRange":Lorg/cocos2d/types/CGRect;
    .end local v2    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v3    # "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    .end local v4    # "capturedZombieList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameBaseZombie;>;"
    .end local v8    # "exitingZombieList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameBaseZombie;>;"
    .end local v9    # "maxCatchNum":I
    .end local v12    # "zombie":Lcom/sns/game/object/GameBaseZombie;
    :catch_0
    move-exception v7

    .line 538
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_2

    .line 530
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "bombRange":Lorg/cocos2d/types/CGRect;
    .restart local v2    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .restart local v4    # "capturedZombieList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameBaseZombie;>;"
    .restart local v8    # "exitingZombieList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameBaseZombie;>;"
    .restart local v9    # "maxCatchNum":I
    :cond_4
    :try_start_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sns/game/object/GameBaseZombie;

    .line 532
    .restart local v12    # "zombie":Lcom/sns/game/object/GameBaseZombie;
    invoke-virtual {v12, v10}, Lcom/sns/game/object/GameBaseZombie;->setDropMultiple(I)V

    .line 533
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object p0, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2, v14}, Lcom/sns/game/object/GameWeapon;->acceptedWeaponFire_CLUSTER(Lcom/sns/game/object/GameBaseZombie;Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public weaponFire_DMG(Lcom/sns/game/object/GameBaseZombie;)V
    .locals 13
    .param p1, "zombie"    # Lcom/sns/game/object/GameBaseZombie;

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    .line 409
    iget-object v9, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v9}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 431
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCNode;

    .local v5, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v2, v5

    .line 410
    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    .line 411
    .local v2, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {p1}, Lcom/sns/game/object/GameBaseZombie;->getCollisionBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v8

    .line 413
    .local v8, "zombieBox":Lorg/cocos2d/types/CGRect;
    invoke-static {v2, v12}, Lcom/sns/game/util/CCUtil;->makeOriginX(Lorg/cocos2d/nodes/CCSprite;F)F

    move-result v10

    .line 414
    invoke-static {v2, v12}, Lcom/sns/game/util/CCUtil;->makeOriginY(Lorg/cocos2d/nodes/CCSprite;F)F

    move-result v11

    .line 412
    invoke-virtual {v8, v10, v11}, Lorg/cocos2d/types/CGRect;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 416
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v4

    .line 417
    .local v4, "mple":I
    invoke-virtual {p1, v4}, Lcom/sns/game/object/GameBaseZombie;->setDropMultiple(I)V

    .line 418
    invoke-virtual {p0, v2}, Lcom/sns/game/object/GameWeapon;->destroyBullet(Lorg/cocos2d/nodes/CCSprite;)V

    .line 419
    const/4 v3, 0x6

    .line 420
    .local v3, "maxCatchNum":I
    const/high16 v9, 0x43000000    # 128.0f

    const/high16 v10, 0x42ee0000    # 119.0f

    invoke-static {v9, v10}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v7

    .line 421
    .local v7, "size":Lorg/cocos2d/types/CGSize;
    iget-object v9, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v9}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sns/game/database/bean/WeaponBean;->getBombEffectAnchor()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 423
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefX()F

    move-result v9

    iget v10, v7, Lorg/cocos2d/types/CGSize;->width:F

    iget v11, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    .line 424
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefY()F

    move-result v10

    iget v11, v7, Lorg/cocos2d/types/CGSize;->height:F

    iget v12, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    .line 422
    invoke-static {v9, v10}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    .line 425
    .local v6, "origin":Lorg/cocos2d/types/CGPoint;
    invoke-static {v6, v7}, Lorg/cocos2d/types/CGRect;->make(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 426
    .local v1, "bombRange":Lorg/cocos2d/types/CGRect;
    invoke-virtual {p1}, Lcom/sns/game/object/GameBaseZombie;->runOnAcckPPaoAction()V

    .line 427
    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v1, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/sns/game/object/GameWeapon;->weaponFire_CLUSTER(Ljava/util/List;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public weaponFire_JGP(Lcom/sns/game/object/GameBaseZombie;)V
    .locals 8
    .param p1, "zombie"    # Lcom/sns/game/object/GameBaseZombie;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 330
    iget-object v4, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 364
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCNode;

    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v0, v1

    .line 331
    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 332
    .local v0, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {p1}, Lcom/sns/game/object/GameBaseZombie;->getCollisionBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v3

    .line 334
    .local v3, "zombieBox":Lorg/cocos2d/types/CGRect;
    invoke-static {v0, v7}, Lcom/sns/game/util/CCUtil;->makeOriginX(Lorg/cocos2d/nodes/CCSprite;F)F

    move-result v5

    .line 335
    invoke-static {v0, v7}, Lcom/sns/game/util/CCUtil;->makeOriginY(Lorg/cocos2d/nodes/CCSprite;F)F

    move-result v6

    .line 333
    invoke-virtual {v3, v5, v6}, Lorg/cocos2d/types/CGRect;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, "nodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 340
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "nodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 341
    .restart local v2    # "nodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->setUserData(Ljava/lang/Object;)V

    .line 347
    :goto_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_1

    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/sns/game/object/GameBaseZombie;->setDropMultiple(I)V

    .line 350
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {p1, v0, v4}, Lcom/sns/game/object/GameBaseZombie;->acceptedWeapon_JGP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    :cond_3
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "nodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    check-cast v2, Ljava/util/Set;

    .restart local v2    # "nodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method public weaponFire_WDP(Lcom/sns/game/object/GameBaseZombie;)V
    .locals 7
    .param p1, "zombie"    # Lcom/sns/game/object/GameBaseZombie;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 313
    iget-object v3, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 324
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCNode;

    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v0, v1

    .line 314
    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 315
    .local v0, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {p1}, Lcom/sns/game/object/GameBaseZombie;->getCollisionBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    .line 317
    .local v2, "zombieBox":Lorg/cocos2d/types/CGRect;
    invoke-static {v0, v6}, Lcom/sns/game/util/CCUtil;->makeOriginX(Lorg/cocos2d/nodes/CCSprite;F)F

    move-result v4

    .line 318
    invoke-static {v0, v6}, Lcom/sns/game/util/CCUtil;->makeOriginY(Lorg/cocos2d/nodes/CCSprite;F)F

    move-result v5

    .line 316
    invoke-virtual {v2, v4, v5}, Lorg/cocos2d/types/CGRect;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sns/game/object/GameBaseZombie;->setDropMultiple(I)V

    .line 320
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {p1, v0, v3}, Lcom/sns/game/object/GameBaseZombie;->acceptedWeapon_WDP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public weaponFire_XGTS(Lcom/sns/game/object/GameBaseZombie;)V
    .locals 13
    .param p1, "zombie"    # Lcom/sns/game/object/GameBaseZombie;

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    .line 436
    iget-object v9, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v9}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 459
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCNode;

    .local v5, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v2, v5

    .line 437
    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    .line 438
    .local v2, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {p1}, Lcom/sns/game/object/GameBaseZombie;->getCollisionBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v8

    .line 440
    .local v8, "zombieBox":Lorg/cocos2d/types/CGRect;
    invoke-static {v2, v12}, Lcom/sns/game/util/CCUtil;->makeOriginX(Lorg/cocos2d/nodes/CCSprite;F)F

    move-result v10

    .line 441
    invoke-static {v2, v12}, Lcom/sns/game/util/CCUtil;->makeOriginY(Lorg/cocos2d/nodes/CCSprite;F)F

    move-result v11

    .line 439
    invoke-virtual {v8, v10, v11}, Lorg/cocos2d/types/CGRect;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 443
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v4

    .line 444
    .local v4, "mple":I
    invoke-virtual {p1, v4}, Lcom/sns/game/object/GameBaseZombie;->setDropMultiple(I)V

    .line 445
    invoke-virtual {p0, v2}, Lcom/sns/game/object/GameWeapon;->destroyBullet(Lorg/cocos2d/nodes/CCSprite;)V

    .line 446
    const/16 v3, 0x8

    .line 448
    .local v3, "maxCatchNum":I
    const/high16 v9, 0x43020000    # 130.0f

    const/high16 v10, 0x430c0000    # 140.0f

    invoke-static {v9, v10}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v7

    .line 449
    .local v7, "size":Lorg/cocos2d/types/CGSize;
    iget-object v9, p0, Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-virtual {v9}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sns/game/database/bean/WeaponBean;->getBombEffectAnchor()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 451
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefX()F

    move-result v9

    iget v10, v7, Lorg/cocos2d/types/CGSize;->width:F

    iget v11, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    .line 452
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefY()F

    move-result v10

    iget v11, v7, Lorg/cocos2d/types/CGSize;->height:F

    iget v12, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    .line 450
    invoke-static {v9, v10}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    .line 453
    .local v6, "origin":Lorg/cocos2d/types/CGPoint;
    invoke-static {v6, v7}, Lorg/cocos2d/types/CGRect;->make(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 455
    .local v1, "bombRange":Lorg/cocos2d/types/CGRect;
    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v1, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/sns/game/object/GameWeapon;->weaponFire_CLUSTER(Ljava/util/List;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public weaponFire_XRZC(Lcom/sns/game/object/GameBaseZombie;)V
    .locals 12
    .param p1, "zombie"    # Lcom/sns/game/object/GameBaseZombie;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, "hitCount":I
    iget-object v5, p0, Lcom/sns/game/object/GameWeapon;->bulletSheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 404
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCNode;

    .local v3, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v0, v3

    .line 372
    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 373
    .local v0, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {p1}, Lcom/sns/game/object/GameBaseZombie;->getCollisionBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v4

    .line 375
    .local v4, "zombieBox":Lorg/cocos2d/types/CGRect;
    if-eq v1, v11, :cond_1

    .line 377
    invoke-static {v0, v9}, Lcom/sns/game/util/CCUtil;->makeOriginX(Lorg/cocos2d/nodes/CCSprite;F)F

    move-result v6

    .line 378
    invoke-static {v0, v9}, Lcom/sns/game/util/CCUtil;->makeOriginY(Lorg/cocos2d/nodes/CCSprite;F)F

    move-result v7

    .line 376
    invoke-virtual {v4, v6, v7}, Lorg/cocos2d/types/CGRect;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 380
    const/4 v2, 0x0

    .line 382
    .local v2, "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 384
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 385
    .restart local v2    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->setUserData(Ljava/lang/Object;)V

    .line 391
    :goto_1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gt v5, v11, :cond_3

    .line 392
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 399
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sns/game/object/GameBaseZombie;->setDropMultiple(I)V

    .line 400
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v10

    invoke-virtual {p1, v0, v5}, Lcom/sns/game/object/GameBaseZombie;->acceptedWeapon_XRZC(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V

    goto :goto_0

    .line 388
    :cond_4
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    check-cast v2, Ljava/util/HashMap;

    .restart local v2    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    goto :goto_1
.end method
