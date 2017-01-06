.class public Lcom/sns/game/object/SHGameZombie;
.super Lcom/sns/game/object/GameBaseZombie;
.source "SHGameZombie.java"


# instance fields
.field private backFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

.field private cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

.field private comeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private deadFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private defaultDistance:F

.field private endPoint:Lorg/cocos2d/types/CGPoint;

.field private existTime:F

.field private flowerLoader:Lcom/sns/game/object/FlowerCreater;

.field private from:Lorg/cocos2d/types/CGPoint;

.field private modelFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

.field private moveDistance:F

.field private moveTime:F

.field private ownBlood:F

.field private takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

.field private to:Lorg/cocos2d/types/CGPoint;

.field private zOrder_:I

.field private zombie:Lorg/cocos2d/nodes/CCSprite;

.field private zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;


# direct methods
.method public constructor <init>(Lcom/sns/game/object/SHGameZombieLoader;Lcom/sns/game/object/FlowerCreater;)V
    .locals 1
    .param p1, "zombieCreater"    # Lcom/sns/game/object/SHGameZombieLoader;
    .param p2, "flowerCreater"    # Lcom/sns/game/object/FlowerCreater;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sns/game/object/GameBaseZombie;-><init>()V

    .line 395
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/sns/game/object/SHGameZombie;->ownBlood:F

    .line 396
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/sns/game/object/SHGameZombie;->existTime:F

    .line 398
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/SHGameZombie;->endPoint:Lorg/cocos2d/types/CGPoint;

    .line 38
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/SHGameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 39
    iput-object p1, p0, Lcom/sns/game/object/SHGameZombie;->zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;

    .line 40
    iput-object p2, p0, Lcom/sns/game/object/SHGameZombie;->flowerLoader:Lcom/sns/game/object/FlowerCreater;

    .line 41
    invoke-virtual {p2}, Lcom/sns/game/object/FlowerCreater;->getFlower()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/SHGameZombie;->takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

    .line 42
    return-void
.end method

.method private added(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    .locals 1
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sns/game/object/SHGameZombieLoader;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method private runDeadAction()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const v7, 0x3dcccccd    # 0.1f

    .line 346
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 347
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v2

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->deadFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v2, v7, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v2

    const/4 v0, 0x7

    new-array v3, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 348
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v4

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->deadFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v4, v7, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v6

    .line 349
    const-string v0, "callBack_selector_endOwnLife"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p0, v0, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v0

    aput-object v0, v3, v8

    .line 350
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v4

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->deadFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v4, v7, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v9

    .line 351
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v4

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->deadFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v4, v7, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v10

    const/4 v4, 0x4

    .line 352
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v5

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->deadFrames:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v5, v7, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v4, 0x5

    .line 353
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v5

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->deadFrames:Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v5, v7, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x6

    .line 354
    const-string v4, "callBack_selector_recycleSelf"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v3, v0

    .line 346
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 355
    return-void
.end method

.method private setEndPoint()V
    .locals 3

    .prologue
    .line 451
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->endPoint:Lorg/cocos2d/types/CGPoint;

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->endPoint:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->to:Lorg/cocos2d/types/CGPoint;

    invoke-static {v0, v2}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->to:Lorg/cocos2d/types/CGPoint;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    .line 452
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->from:Lorg/cocos2d/types/CGPoint;

    goto :goto_0
.end method

.method private setFramesToCache()V
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    .line 408
    const-string v1, "zombie/guardian_zombie.plist"

    .line 407
    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    .line 409
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    .line 410
    const-string v1, "zombie/specialmode_zombie_dead.plist"

    .line 409
    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/SHGameZombie;->deadFrames:Ljava/util/ArrayList;

    .line 412
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    iput-object v0, p0, Lcom/sns/game/object/SHGameZombie;->modelFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 413
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    iput-object v0, p0, Lcom/sns/game/object/SHGameZombie;->backFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 414
    return-void
.end method

.method private setZombie()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 418
    const-string v1, "point.png"

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 419
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 420
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 421
    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefX()F

    move-result v2

    .line 422
    sget-object v3, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    .line 423
    iget-object v4, p0, Lcom/sns/game/object/SHGameZombie;->modelFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v4

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    .line 422
    add-float/2addr v3, v4

    .line 423
    iget-object v4, p0, Lcom/sns/game/object/SHGameZombie;->takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v4

    .line 422
    add-float/2addr v3, v4

    .line 420
    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 424
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    iget v2, p0, Lcom/sns/game/object/SHGameZombie;->zOrder_:I

    invoke-direct {p0, v1, v2}, Lcom/sns/game/object/SHGameZombie;->added(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 427
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->zombieLoader:Lcom/sns/game/object/SHGameZombieLoader;

    invoke-virtual {v1}, Lcom/sns/game/object/SHGameZombieLoader;->sharedRopeTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 428
    .local v0, "liftingRope":Lorg/cocos2d/nodes/CCSprite;
    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 429
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->modelFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v1, v5

    .line 430
    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->modelFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v2, v5

    .line 429
    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 431
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 434
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/object/SHGameZombie;->from:Lorg/cocos2d/types/CGPoint;

    .line 436
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefX()F

    move-result v1

    .line 437
    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefY()F

    move-result v2

    iget-object v3, p0, Lcom/sns/game/object/SHGameZombie;->takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v3

    const v4, 0x3fa66666    # 1.3f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 435
    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/object/SHGameZombie;->to:Lorg/cocos2d/types/CGPoint;

    .line 439
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->from:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, v2}, Lcom/sns/game/object/SHGameZombie;->calcMoveDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/nodes/CCSprite;)F

    move-result v1

    iput v1, p0, Lcom/sns/game/object/SHGameZombie;->moveDistance:F

    .line 440
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->from:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->flowerLoader:Lcom/sns/game/object/FlowerCreater;

    invoke-virtual {v2}, Lcom/sns/game/object/FlowerCreater;->firstPoint()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v1

    iput v1, p0, Lcom/sns/game/object/SHGameZombie;->defaultDistance:F

    .line 441
    const/high16 v1, 0x3fa00000    # 1.25f

    iget v2, p0, Lcom/sns/game/object/SHGameZombie;->moveDistance:F

    iget v3, p0, Lcom/sns/game/object/SHGameZombie;->defaultDistance:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sns/game/object/SHGameZombie;->moveTime:F

    .line 442
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/sns/game/object/SHGameZombie;->existTime:F

    .line 444
    return-void
.end method

.method private setZorder()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v0

    iput v0, p0, Lcom/sns/game/object/SHGameZombie;->zOrder_:I

    .line 404
    return-void
.end method


# virtual methods
.method public acceptedAttack()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 197
    const-string v1, "callBack_selector_acceptedAttack"

    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    invoke-static {p0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 196
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 195
    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 199
    return-void
.end method

.method public varargs acceptedWeapon_CGP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 315
    return-void
.end method

.method public varargs acceptedWeapon_DMG(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 291
    return-void
.end method

.method public varargs acceptedWeapon_JGP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 267
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

    .line 225
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 226
    const-string v1, "callBack_selector_Weapon_WDP"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p1, v2, v6

    invoke-static {p0, v1, v2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v1

    new-array v2, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 227
    const v3, 0x3db851ec    # 0.09f

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v3

    aput-object v3, v2, v7

    .line 228
    const-string v3, "callBack_selector_Weapon_WDP"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v6

    .line 225
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 229
    return-void
.end method

.method public varargs acceptedWeapon_XGTS(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 303
    return-void
.end method

.method public varargs acceptedWeapon_XRZC(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 279
    return-void
.end method

.method public calcMoveDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/nodes/CCSprite;)F
    .locals 4
    .param p1, "from"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "firstFlower"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 456
    .line 457
    invoke-virtual {p2}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefX()F

    move-result v0

    .line 458
    invoke-virtual {p2}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefY()F

    move-result v1

    invoke-virtual {p2}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v2

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 456
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 455
    invoke-static {p1, v0}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v0

    return v0
.end method

.method public callBack_selector_Weapon_CGP(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 321
    return-void
.end method

.method public callBack_selector_Weapon_DMG(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 297
    return-void
.end method

.method public callBack_selector_Weapon_JGP(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 273
    return-void
.end method

.method public callBack_selector_Weapon_WDP(Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 234
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 235
    .local v2, "data":[Ljava/lang/Object;
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v5

    .line 239
    .local v5, "useWeapon":Lcom/sns/game/object/GameWeapon;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 240
    const/4 v6, 0x0

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 241
    .local v4, "tag":I
    packed-switch v4, :pswitch_data_0

    .line 261
    .end local v4    # "tag":I
    :goto_0
    return-void

    .line 244
    .restart local v4    # "tag":I
    :pswitch_0
    iget-object v6, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    sget-object v7, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 245
    const/4 v6, 0x1

    aget-object v1, v2, v6

    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 246
    .local v1, "bullet":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v5, v1}, Lcom/sns/game/object/GameWeapon;->destroyBullet(Lorg/cocos2d/nodes/CCSprite;)V

    .line 247
    invoke-virtual {v5}, Lcom/sns/game/object/GameWeapon;->playEffectToBeAttacked()V

    .line 248
    invoke-virtual {v5, v1}, Lcom/sns/game/object/GameWeapon;->loadBombEffect(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sns/game/object/GameWeapon;->runBombEffectAction(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v1    # "bullet":Lorg/cocos2d/nodes/CCSprite;
    .end local v4    # "tag":I
    :catch_0
    move-exception v3

    .line 259
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 252
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "tag":I
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    sget-object v7, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 253
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/sns/game/object/SHGameZombie;->endOwnLife([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callBack_selector_Weapon_XGTS(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 309
    return-void
.end method

.method public callBack_selector_Weapon_XRZC(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 285
    return-void
.end method

.method public callBack_selector_acceptedAttack(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 206
    :try_start_0
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v1

    .line 207
    .local v1, "useWeapon":Lcom/sns/game/object/GameWeapon;
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 219
    .end local v1    # "useWeapon":Lcom/sns/game/object/GameWeapon;
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v1    # "useWeapon":Lcom/sns/game/object/GameWeapon;
    :pswitch_0
    invoke-virtual {v1, p0}, Lcom/sns/game/object/GameWeapon;->weaponFire_WDP(Lcom/sns/game/object/GameBaseZombie;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v1    # "useWeapon":Lcom/sns/game/object/GameWeapon;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x271f
        :pswitch_0
    .end packed-switch
.end method

.method public callBack_selector_endOwnLife(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 360
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 363
    .local v1, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 364
    const/4 v5, 0x0

    aget-object v4, v1, v5

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 365
    .local v4, "zombie":Lorg/cocos2d/nodes/CCSprite;
    const/4 v5, 0x1

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 366
    .local v3, "visible":Z
    invoke-virtual {v4, v3}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v3    # "visible":Z
    .end local v4    # "zombie":Lorg/cocos2d/nodes/CCSprite;
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v2

    .line 369
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_moveTo(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 152
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 155
    .local v2, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 156
    const/4 v6, 0x0

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 157
    .local v5, "tag":I
    packed-switch v5, :pswitch_data_0

    .line 190
    .end local v5    # "tag":I
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local v5    # "tag":I
    :pswitch_0
    iget-object v6, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 161
    invoke-virtual {p0}, Lcom/sns/game/object/SHGameZombie;->runSuspensionAction()V

    .line 162
    invoke-virtual {p0}, Lcom/sns/game/object/SHGameZombie;->acceptedAttack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v5    # "tag":I
    :catch_0
    move-exception v4

    .line 188
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 166
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "tag":I
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/sns/game/object/SHGameZombie;->takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/sns/game/object/SHGameZombie;->recycleSelf()V

    goto :goto_0

    .line 171
    :pswitch_2
    const/4 v6, 0x1

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 172
    .local v1, "byPosY":F
    iget-object v6, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    iget-object v7, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v7}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v8, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v8}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    iget v8, v8, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v8, v1

    invoke-virtual {v6, v7, v8}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    goto :goto_0

    .line 176
    .end local v1    # "byPosY":F
    :pswitch_3
    const/4 v6, 0x1

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 177
    .local v3, "dealy":F
    iget v6, p0, Lcom/sns/game/object/SHGameZombie;->existTime:F

    sub-float/2addr v6, v3

    iput v6, p0, Lcom/sns/game/object/SHGameZombie;->existTime:F

    .line 178
    iget v6, p0, Lcom/sns/game/object/SHGameZombie;->existTime:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 179
    iget-object v6, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 180
    iget-object v6, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    sget-object v7, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 181
    invoke-virtual {p0}, Lcom/sns/game/object/SHGameZombie;->moveTo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public callBack_selector_recycleSelf()V
    .locals 1

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/object/SHGameZombie;->recycleSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public createSelf()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sns/game/object/SHGameZombie;->setZorder()V

    .line 49
    invoke-direct {p0}, Lcom/sns/game/object/SHGameZombie;->setFramesToCache()V

    .line 50
    invoke-direct {p0}, Lcom/sns/game/object/SHGameZombie;->setZombie()V

    .line 51
    return-void
.end method

.method public varargs endOwnLife([Ljava/lang/Object;)V
    .locals 6
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 327
    const/high16 v0, 0x42c80000    # 100.0f

    .line 328
    .local v0, "finalBlood":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v5, v0

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v3

    .line 329
    .local v3, "minLoseBlood":F
    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v0

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v2

    .line 330
    .local v2, "maxLoaeBlood":F
    invoke-static {v3, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v1

    .line 331
    .local v1, "loseBlood":F
    iget v4, p0, Lcom/sns/game/object/SHGameZombie;->ownBlood:F

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/sns/game/object/SHGameZombie;->ownBlood:F

    .line 332
    iget v4, p0, Lcom/sns/game/object/SHGameZombie;->ownBlood:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/sns/game/object/SHGameZombie;->executiveToKillSelf()V

    .line 335
    :cond_0
    return-void
.end method

.method protected executiveToKillSelf()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    sget-object v1, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 341
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 342
    invoke-direct {p0}, Lcom/sns/game/object/SHGameZombie;->runDeadAction()V

    .line 343
    return-void
.end method

.method public getCollisionBoundingBox()Lorg/cocos2d/types/CGRect;
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->modelFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->collisionBoundingBox_:Lorg/cocos2d/types/CGRect;

    invoke-static {v0, v1, v2}, Lcom/sns/game/util/CCUtil;->setBoundingBox(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSpriteFrame;Lorg/cocos2d/types/CGRect;)V

    .line 377
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->collisionBoundingBox_:Lorg/cocos2d/types/CGRect;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public moveTo()V
    .locals 7

    .prologue
    const v3, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 101
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/sns/game/object/SHGameZombie;->setEndPoint()V

    .line 105
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->endPoint:Lorg/cocos2d/types/CGPoint;

    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->to:Lorg/cocos2d/types/CGPoint;

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 107
    const-string v1, ""

    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    invoke-static {v1, v3, v2}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v1

    .line 106
    invoke-static {v1, v5}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 108
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 109
    iget v1, p0, Lcom/sns/game/object/SHGameZombie;->moveTime:F

    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->endPoint:Lorg/cocos2d/types/CGPoint;

    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v1

    new-array v2, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 110
    const-string v3, "callBack_selector_moveTo"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v6

    .line 108
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->endPoint:Lorg/cocos2d/types/CGPoint;

    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->from:Lorg/cocos2d/types/CGPoint;

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 115
    const-string v1, ""

    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->backFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v1, v3, v2}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v1

    .line 114
    invoke-static {v1, v5}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 116
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 117
    iget v1, p0, Lcom/sns/game/object/SHGameZombie;->moveTime:F

    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->endPoint:Lorg/cocos2d/types/CGPoint;

    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v1

    new-array v2, v5, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 118
    const-string v3, "callBack_selector_moveTo"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v6

    .line 116
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 119
    invoke-static {}, Lcom/sns/game/object/FlowerCreater;->sharedCreater()Lcom/sns/game/object/FlowerCreater;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/object/SHGameZombie;->takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

    iget v3, p0, Lcom/sns/game/object/SHGameZombie;->moveTime:F

    iget-object v4, p0, Lcom/sns/game/object/SHGameZombie;->endPoint:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sns/game/object/FlowerCreater;->startFlowerAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSprite;FLorg/cocos2d/types/CGPoint;)V

    goto :goto_0
.end method

.method public recycleSelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-static {}, Lcom/sns/game/object/SHGameZombieLoader;->sharedLoader()Lcom/sns/game/object/SHGameZombieLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sns/game/object/SHGameZombieLoader;->removeZombie(Lcom/sns/game/object/SHGameZombie;)V

    .line 57
    invoke-static {}, Lcom/sns/game/object/FlowerCreater;->sharedCreater()Lcom/sns/game/object/FlowerCreater;

    move-result-object v0

    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->takeAwarFlower:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1}, Lcom/sns/game/object/FlowerCreater;->removeFlowerIndex(Lorg/cocos2d/nodes/CCSprite;)V

    .line 58
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->deadFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->deadFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    :cond_2
    iput-object v2, p0, Lcom/sns/game/object/SHGameZombie;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 70
    iput-object v2, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 71
    iput-object v2, p0, Lcom/sns/game/object/SHGameZombie;->modelFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 72
    iput-object v2, p0, Lcom/sns/game/object/SHGameZombie;->backFrame:Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 73
    iput-object v2, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    .line 74
    iput-object v2, p0, Lcom/sns/game/object/SHGameZombie;->deadFrames:Ljava/util/ArrayList;

    .line 75
    iput-object v2, p0, Lcom/sns/game/object/SHGameZombie;->from:Lorg/cocos2d/types/CGPoint;

    .line 76
    iput-object v2, p0, Lcom/sns/game/object/SHGameZombie;->to:Lorg/cocos2d/types/CGPoint;

    .line 77
    iput-object v2, p0, Lcom/sns/game/object/SHGameZombie;->endPoint:Lorg/cocos2d/types/CGPoint;

    .line 78
    return-void
.end method

.method public runAction()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/sns/game/object/SHGameZombie;->moveTo()V

    .line 96
    return-void
.end method

.method public runSuspensionAction()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const v8, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x0

    .line 127
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 129
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v2

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v2, v8, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v2

    const/16 v0, 0xc

    new-array v3, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 130
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v4

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v4, v8, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v7

    .line 131
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v4

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v4, v8, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v9

    .line 132
    const-string v0, "callBack_selector_moveTo"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {p0, v0, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v0

    aput-object v0, v3, v10

    .line 133
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v4

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v4, v8, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v11

    const/4 v0, 0x4

    .line 134
    const-string v4, "callBack_selector_moveTo"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x5

    .line 135
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v5

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v5, v8, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x6

    .line 136
    const-string v4, "callBack_selector_moveTo"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x7

    .line 137
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v5

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v5, v8, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v0, 0x8

    .line 138
    const-string v4, "callBack_selector_moveTo"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p0, v4, v5}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v4, 0x9

    .line 139
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v5

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v5, v8, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v4, 0xa

    .line 140
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v5

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v5, v8, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v4, 0xb

    .line 141
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v5

    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->comeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v5, v8, v0}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    .line 128
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 143
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombie;->zombie:Lorg/cocos2d/nodes/CCSprite;

    .line 144
    iget v1, p0, Lcom/sns/game/object/SHGameZombie;->existTime:F

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    new-array v2, v9, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 145
    const-string v3, "callBack_selector_moveTo"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/sns/game/object/SHGameZombie;->existTime:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {p0, v3, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v7

    .line 143
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 147
    :cond_0
    return-void
.end method
