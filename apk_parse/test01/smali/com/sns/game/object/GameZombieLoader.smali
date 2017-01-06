.class public Lcom/sns/game/object/GameZombieLoader;
.super Ljava/lang/Object;
.source "GameZombieLoader.java"


# static fields
.field public static ZombieNames:[Lorg/cocos2d/types/CGPoint;

.field private static loader:Lcom/sns/game/object/GameZombieLoader;


# instance fields
.field private actionLoader:Lorg/cocos2d/nodes/CCSprite;

.field private dynamicZmDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/ZombieDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private endLimitPosX:F

.field private endLimitPosY:F

.field private idArray:[Ljava/lang/Integer;

.field private idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private maxCount:I

.field private maxCreate:I

.field private minCount:I

.field private minCreate:I

.field private parent:Lorg/cocos2d/nodes/CCNode;

.field private startLimitPosX:F

.field private startLimitPosY:F

.field xPoints:[F

.field yPoints:[Ljava/lang/Float;

.field private zOrder:I

.field private zombieDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/ZombieDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private zombieList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sns/game/object/GameBaseZombie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x43b68000    # 365.0f

    const/high16 v4, 0x43750000    # 245.0f

    const/high16 v3, 0x43720000    # 242.0f

    .line 596
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/cocos2d/types/CGPoint;

    const/4 v1, 0x0

    .line 597
    const/high16 v2, -0x3cfb0000    # -133.0f

    invoke-static {v2, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x42f40000    # 122.0f

    invoke-static {v2, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 598
    const/high16 v2, -0x3e580000    # -21.0f

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 599
    const/high16 v2, -0x3e700000    # -18.0f

    invoke-static {v2, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v2, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 596
    sput-object v0, Lcom/sns/game/object/GameZombieLoader;->ZombieNames:[Lorg/cocos2d/types/CGPoint;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/16 v1, 0x8

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-boolean v0, Lcom/sns/game/util/DeviceManager;->isLowCpu:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sns/game/object/GameZombieLoader;->maxCount:I

    .line 45
    sget-boolean v0, Lcom/sns/game/util/DeviceManager;->isLowCpu:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/sns/game/object/GameZombieLoader;->minCount:I

    .line 46
    iput v5, p0, Lcom/sns/game/object/GameZombieLoader;->minCreate:I

    iput v6, p0, Lcom/sns/game/object/GameZombieLoader;->maxCreate:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    .line 275
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/Float;

    .line 276
    const/high16 v3, 0x433f0000    # 191.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v7

    const v3, 0x4342a000    # 194.625f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v5

    const/4 v3, 0x2

    const v4, 0x43464000    # 198.25f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x4349e000    # 201.875f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    .line 277
    const v3, 0x434d8000    # 205.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v6

    const v3, 0x43512000    # 209.125f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x6

    const v4, 0x4354c000    # 212.75f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const v4, 0x43586000    # 216.375f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v3, 0x9

    const v4, 0x435fa000    # 223.625f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const v4, 0x43634000    # 227.25f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xb

    .line 278
    const v4, 0x4366e000    # 230.875f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const v4, 0x436a8000    # 234.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const v4, 0x436e2000    # 238.125f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const v4, 0x4371c000    # 241.75f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const v4, 0x43756000    # 245.375f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const/high16 v4, 0x43790000    # 249.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const v4, 0x437ca000    # 252.625f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x12

    .line 279
    const v4, 0x43802000    # 256.25f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const v4, 0x4381f000    # 259.875f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const v4, 0x4383c000    # 263.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const v4, 0x43859000    # 267.125f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const v4, 0x43876000    # 270.75f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const v4, 0x43893000    # 274.375f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const/high16 v4, 0x438b0000    # 278.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x19

    .line 280
    const v4, 0x438cd000    # 281.625f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const v4, 0x438ea000    # 285.25f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const v4, 0x43907000    # 288.875f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    const v4, 0x43924000    # 292.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    const v4, 0x43941000    # 296.125f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    const v4, 0x4395e000    # 299.75f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    const v4, 0x4397b000    # 303.375f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x20

    .line 281
    const v4, 0x43998000    # 307.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x21

    const v4, 0x439b5000    # 310.625f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x22

    const v4, 0x439d2000    # 314.25f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x23

    const v4, 0x439ef000    # 317.875f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x24

    const v4, 0x43a0c000    # 321.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x25

    const v4, 0x43a29000    # 325.125f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x26

    const v4, 0x43a46000    # 328.75f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x27

    .line 282
    const v4, 0x43a63000    # 332.375f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x28

    const v4, 0x43b94000    # 370.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x29

    const v4, 0x43bdde00    # 379.73438f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x2a

    const v4, 0x43c27c00

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x2b

    const v4, 0x43c71a00    # 398.20312f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->yPoints:[Ljava/lang/Float;

    .line 361
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Integer;

    .line 362
    const/16 v3, 0x2711

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x2712

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    const/4 v3, 0x2

    const/16 v4, 0x2713

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const/16 v4, 0x2714

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x2715

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    const/16 v3, 0x2716

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x2717

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    .line 363
    const/16 v3, 0x2718

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2719

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x271a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x271b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x271c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x271d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x271e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->idArray:[Ljava/lang/Integer;

    .line 365
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->idArray:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->idList:Ljava/util/List;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->dynamicZmDataBeans:Ljava/util/List;

    .line 52
    invoke-direct {p0}, Lcom/sns/game/object/GameZombieLoader;->loadZombieDataBeanList()V

    .line 53
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombieLoader;->updateDymicZomDataBeans()V

    .line 54
    return-void

    .line 44
    :cond_0
    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 45
    goto/16 :goto_1
.end method

.method private createPointsByFrame(FFF)[F
    .locals 9
    .param p1, "frameSize"    # F
    .param p2, "startLimitPos"    # F
    .param p3, "endLimitPos"    # F

    .prologue
    .line 347
    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v4, p1, v8

    .local v4, "needSize":F
    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v6, v4, v8

    .line 348
    .local v6, "scaleSize":F
    add-float v7, p2, v4

    .line 349
    .local v7, "startPos":F
    sub-float v2, p3, v4

    .line 350
    .local v2, "endPos":F
    sub-float v1, v2, v7

    .line 351
    .local v1, "distance":F
    div-float v8, v1, v6

    float-to-int v0, v8

    .line 353
    .local v0, "count":I
    new-array v5, v0, [F

    .line 354
    .local v5, "posArray":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 358
    return-object v5

    .line 355
    :cond_0
    if-nez v3, :cond_1

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    mul-float/2addr v8, v4

    :goto_1
    aput v8, v5, v3

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    :cond_1
    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    mul-float/2addr v8, v6

    goto :goto_1
.end method

.method private createYPointsByFrames(FFF)[F
    .locals 10
    .param p1, "frameSize"    # F
    .param p2, "startLimitPos"    # F
    .param p3, "endLimitPos"    # F

    .prologue
    const/high16 v9, 0x3e800000    # 0.25f

    .line 331
    move v4, p1

    .line 332
    .local v4, "needSize":F
    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v8, v4

    mul-float/2addr v8, v9

    mul-float v6, v8, v9

    .line 333
    .local v6, "scaleSize":F
    add-float v7, p2, v4

    .line 334
    .local v7, "startPos":F
    sub-float v2, p3, v4

    .line 335
    .local v2, "endPos":F
    sub-float v8, v7, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 336
    .local v1, "distance":F
    div-float v8, v1, v6

    float-to-int v0, v8

    .line 338
    .local v0, "count":I
    new-array v5, v0, [F

    .line 339
    .local v5, "posArray":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 342
    invoke-static {v5}, Ljava/util/Arrays;->sort([F)V

    .line 343
    return-object v5

    .line 340
    :cond_0
    int-to-float v8, v3

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    aput v8, v5, v3

    .line 339
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private findNoExistZomBean()Lcom/sns/game/database/bean/ZombieDataBean;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 497
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, "compare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 504
    iget-object v5, p0, Lcom/sns/game/object/GameZombieLoader;->dynamicZmDataBeans:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    move-object v3, v4

    .line 514
    .end local v0    # "compare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    return-object v3

    .line 498
    .restart local v0    # "compare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sns/game/object/GameBaseZombie;

    .line 499
    .local v2, "geBaZom":Lcom/sns/game/object/GameBaseZombie;
    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {v2}, Lcom/sns/game/object/GameBaseZombie;->getTag()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    .end local v0    # "compare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "geBaZom":Lcom/sns/game/object/GameBaseZombie;
    :catch_0
    move-exception v1

    .line 513
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    move-object v3, v4

    .line 514
    goto :goto_1

    .line 504
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "compare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sns/game/database/bean/ZombieDataBean;

    .line 505
    .local v3, "zomBean":Lcom/sns/game/database/bean/ZombieDataBean;
    invoke-virtual {v3}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1
.end method

.method public static getZomNamePointByFlip(IZ)Lorg/cocos2d/types/CGPoint;
    .locals 3
    .param p0, "zomId"    # I
    .param p1, "flip"    # Z

    .prologue
    .line 604
    add-int/lit16 v0, p0, -0x271c

    .line 605
    .local v0, "index":I
    packed-switch v0, :pswitch_data_0

    .line 613
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 607
    :pswitch_0
    if-nez p1, :cond_0

    sget-object v1, Lcom/sns/game/object/GameZombieLoader;->ZombieNames:[Lorg/cocos2d/types/CGPoint;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sns/game/object/GameZombieLoader;->ZombieNames:[Lorg/cocos2d/types/CGPoint;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 609
    :pswitch_1
    if-nez p1, :cond_1

    sget-object v1, Lcom/sns/game/object/GameZombieLoader;->ZombieNames:[Lorg/cocos2d/types/CGPoint;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sns/game/object/GameZombieLoader;->ZombieNames:[Lorg/cocos2d/types/CGPoint;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    goto :goto_0

    .line 611
    :pswitch_2
    if-nez p1, :cond_2

    sget-object v1, Lcom/sns/game/object/GameZombieLoader;->ZombieNames:[Lorg/cocos2d/types/CGPoint;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sns/game/object/GameZombieLoader;->ZombieNames:[Lorg/cocos2d/types/CGPoint;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadZombieDataBeanList()V
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Lcom/sns/game/database/dao/ZombieDao;->sharedDao()Lcom/sns/game/database/dao/ZombieDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/database/dao/ZombieDao;->findAllGameZombies()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    .line 372
    return-void
.end method

.method private randomInDymicZomBean()Lcom/sns/game/database/bean/ZombieDataBean;
    .locals 6

    .prologue
    .line 409
    const/4 v3, 0x0

    .line 412
    .local v3, "targetBean":Lcom/sns/game/database/bean/ZombieDataBean;
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sns/game/object/GameZombieLoader;->dynamicZmDataBeans:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v2

    .line 413
    .local v2, "searchIdx":I
    iget-object v4, p0, Lcom/sns/game/object/GameZombieLoader;->dynamicZmDataBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sns/game/database/bean/ZombieDataBean;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 417
    .end local v2    # "searchIdx":I
    :goto_0
    return-object v4

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static sharedLoader()Lcom/sns/game/object/GameZombieLoader;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sns/game/object/GameZombieLoader;->loader:Lcom/sns/game/object/GameZombieLoader;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/sns/game/object/GameZombieLoader;

    invoke-direct {v0}, Lcom/sns/game/object/GameZombieLoader;-><init>()V

    sput-object v0, Lcom/sns/game/object/GameZombieLoader;->loader:Lcom/sns/game/object/GameZombieLoader;

    .line 61
    :cond_0
    sget-object v0, Lcom/sns/game/object/GameZombieLoader;->loader:Lcom/sns/game/object/GameZombieLoader;

    return-object v0
.end method

.method private startZombieAction([Lcom/sns/game/object/GameZombie;)V
    .locals 3
    .param p1, "zombieArray"    # [Lcom/sns/game/object/GameZombie;

    .prologue
    .line 210
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 217
    return-void

    .line 210
    :cond_0
    aget-object v0, p1, v1

    .line 212
    .local v0, "gz":Lcom/sns/game/object/GameZombie;
    invoke-virtual {v0}, Lcom/sns/game/object/GameZombie;->runAction()V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lcom/sns/game/object/GameZombieLoader;->zOrder:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method public addPoints()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 286
    iget-object v4, p0, Lcom/sns/game/object/GameZombieLoader;->xPoints:[F

    if-nez v4, :cond_0

    .line 287
    const/high16 v4, 0x42da0000    # 109.0f

    iget v6, p0, Lcom/sns/game/object/GameZombieLoader;->startLimitPosX:F

    iget v7, p0, Lcom/sns/game/object/GameZombieLoader;->endLimitPosX:F

    invoke-direct {p0, v4, v6, v7}, Lcom/sns/game/object/GameZombieLoader;->createPointsByFrame(FFF)[F

    move-result-object v4

    iput-object v4, p0, Lcom/sns/game/object/GameZombieLoader;->xPoints:[F

    .line 289
    :cond_0
    iget-object v4, p0, Lcom/sns/game/object/GameZombieLoader;->yPoints:[Ljava/lang/Float;

    if-nez v4, :cond_1

    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 294
    .local v0, "allYPoints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Float;>;"
    const/high16 v4, 0x42e80000    # 116.0f

    iget v6, p0, Lcom/sns/game/object/GameZombieLoader;->startLimitPosY:F

    iget v7, p0, Lcom/sns/game/object/GameZombieLoader;->endLimitPosY:F

    invoke-direct {p0, v4, v6, v7}, Lcom/sns/game/object/GameZombieLoader;->createYPointsByFrames(FFF)[F

    move-result-object v3

    .line 295
    .local v3, "points":[F
    array-length v6, v3

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_2

    .line 299
    const v4, 0x433c4000    # 188.25f

    iget v6, p0, Lcom/sns/game/object/GameZombieLoader;->startLimitPosY:F

    iget v7, p0, Lcom/sns/game/object/GameZombieLoader;->endLimitPosY:F

    invoke-direct {p0, v4, v6, v7}, Lcom/sns/game/object/GameZombieLoader;->createYPointsByFrames(FFF)[F

    move-result-object v3

    .line 300
    array-length v6, v3

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_3

    .line 304
    const v4, 0x4393c000    # 295.5f

    iget v6, p0, Lcom/sns/game/object/GameZombieLoader;->startLimitPosY:F

    iget v7, p0, Lcom/sns/game/object/GameZombieLoader;->endLimitPosY:F

    invoke-direct {p0, v4, v6, v7}, Lcom/sns/game/object/GameZombieLoader;->createYPointsByFrames(FFF)[F

    move-result-object v3

    .line 305
    array-length v6, v3

    move v4, v5

    :goto_2
    if-lt v4, v6, :cond_4

    .line 309
    new-array v4, v5, [Ljava/lang/Float;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Float;

    .line 310
    .local v2, "p_":[Ljava/lang/Float;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 311
    iput-object v2, p0, Lcom/sns/game/object/GameZombieLoader;->yPoints:[Ljava/lang/Float;

    .line 313
    .end local v0    # "allYPoints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Float;>;"
    .end local v2    # "p_":[Ljava/lang/Float;
    .end local v3    # "points":[F
    :cond_1
    return-void

    .line 295
    .restart local v0    # "allYPoints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Float;>;"
    .restart local v3    # "points":[F
    :cond_2
    aget v1, v3, v4

    .line 296
    .local v1, "f":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "f":F
    :cond_3
    aget v1, v3, v4

    .line 301
    .restart local v1    # "f":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 305
    .end local v1    # "f":F
    :cond_4
    aget v1, v3, v4

    .line 306
    .restart local v1    # "f":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public callBack_selector_startLoadZombies()V
    .locals 7

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombieLoader;->getCreateMaxCountByLevel()I

    move-result v1

    .line 158
    .local v1, "maxCount":I
    iget-object v5, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v1, :cond_1

    .line 159
    iget v5, p0, Lcom/sns/game/object/GameZombieLoader;->minCreate:I

    iget v6, p0, Lcom/sns/game/object/GameZombieLoader;->maxCreate:I

    invoke-static {v5, v6}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v2

    .line 160
    .local v2, "randomCount":I
    iget-object v5, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v2

    if-le v5, v1, :cond_0

    .line 161
    iget-object v5, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v2, v1, v5

    .line 165
    :cond_0
    new-array v4, v2, [Lcom/sns/game/object/GameZombie;

    .line 166
    .local v4, "zombieArray":[Lcom/sns/game/object/GameZombie;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 175
    invoke-direct {p0, v4}, Lcom/sns/game/object/GameZombieLoader;->startZombieAction([Lcom/sns/game/object/GameZombie;)V

    .line 176
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombieLoader;->startLoadZombies()V

    .line 178
    .end local v0    # "i":I
    .end local v2    # "randomCount":I
    .end local v4    # "zombieArray":[Lcom/sns/game/object/GameZombie;
    :cond_1
    return-void

    .line 168
    .restart local v0    # "i":I
    .restart local v2    # "randomCount":I
    .restart local v4    # "zombieArray":[Lcom/sns/game/object/GameZombie;
    :cond_2
    new-instance v3, Lcom/sns/game/object/GameZombie;

    invoke-direct {v3, p0}, Lcom/sns/game/object/GameZombie;-><init>(Lcom/sns/game/object/GameZombieLoader;)V

    .line 169
    .local v3, "zombie":Lcom/sns/game/object/GameZombie;
    invoke-virtual {v3}, Lcom/sns/game/object/GameZombie;->createSelf()V

    .line 171
    iget-object v5, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    aput-object v3, v4, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public callBack_selector_startReLoadZombies()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombieLoader;->getCreateMinCountByLevel()I

    move-result v0

    .line 186
    .local v0, "minCount":I
    iget-object v1, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombieLoader;->startLoadZombies()V

    .line 207
    :cond_0
    return-void
.end method

.method public declared-synchronized containsExistZom(I)Z
    .locals 5
    .param p1, "zomId"    # I

    .prologue
    const/4 v2, 0x0

    .line 481
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 490
    :goto_0
    monitor-exit p0

    return v2

    .line 481
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/object/GameBaseZombie;

    .line 482
    .local v1, "zom":Lcom/sns/game/object/GameBaseZombie;
    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v1}, Lcom/sns/game/object/GameBaseZombie;->getTag()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ne v4, p1, :cond_0

    .line 484
    const/4 v2, 0x1

    goto :goto_0

    .line 488
    .end local v1    # "zom":Lcom/sns/game/object/GameBaseZombie;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 481
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized containsZombie(I)Z
    .locals 6
    .param p1, "zombieId"    # I

    .prologue
    const/4 v3, 0x1

    .line 560
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lt v1, v4, :cond_1

    .line 580
    :goto_1
    const/4 v3, 0x0

    :cond_0
    monitor-exit p0

    return v3

    .line 562
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sns/game/object/GameBaseZombie;

    .line 563
    .local v2, "zombieObj":Lcom/sns/game/object/GameBaseZombie;
    invoke-virtual {v2}, Lcom/sns/game/object/GameBaseZombie;->getTag()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 567
    const/16 v4, 0x271c

    if-ne p1, v4, :cond_2

    .line 569
    invoke-virtual {v2}, Lcom/sns/game/object/GameBaseZombie;->getTag()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    const/16 v5, 0x271e

    if-eq v4, v5, :cond_0

    .line 560
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    .end local v2    # "zombieObj":Lcom/sns/game/object/GameBaseZombie;
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public createZombieWithBeforeActivate()Lcom/sns/game/database/bean/ZombieDataBean;
    .locals 2

    .prologue
    const/16 v1, 0x271c

    .line 472
    invoke-virtual {p0, v1}, Lcom/sns/game/object/GameZombieLoader;->containsExistZom(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0, v1}, Lcom/sns/game/object/GameZombieLoader;->getZombieDataBeanByID(I)Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sns/game/object/GameZombieLoader;->randomInDymicZomBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v0

    goto :goto_0
.end method

.method public defaultZombieDataBean()Lcom/sns/game/database/bean/ZombieDataBean;
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/ZombieDataBean;

    return-object v0
.end method

.method public getCreateMaxCountByLevel()I
    .locals 2

    .prologue
    .line 221
    sget-boolean v1, Lcom/sns/game/util/DeviceManager;->isLowCpu:Z

    if-eqz v1, :cond_0

    .line 222
    iget v1, p0, Lcom/sns/game/object/GameZombieLoader;->maxCount:I

    .line 231
    :goto_0
    return v1

    .line 224
    :cond_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v0

    .line 225
    .local v0, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 231
    iget v1, p0, Lcom/sns/game/object/GameZombieLoader;->maxCount:I

    goto :goto_0

    .line 227
    :pswitch_0
    const/4 v1, 0x6

    goto :goto_0

    .line 229
    :pswitch_1
    const/16 v1, 0xa

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCreateMinCountByLevel()I
    .locals 2

    .prologue
    .line 237
    sget-boolean v1, Lcom/sns/game/util/DeviceManager;->isLowCpu:Z

    if-eqz v1, :cond_0

    .line 238
    iget v1, p0, Lcom/sns/game/object/GameZombieLoader;->minCount:I

    .line 247
    :goto_0
    return v1

    .line 240
    :cond_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v0

    .line 241
    .local v0, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 247
    iget v1, p0, Lcom/sns/game/object/GameZombieLoader;->minCount:I

    goto :goto_0

    .line 243
    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    .line 245
    :pswitch_1
    const/4 v1, 0x5

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getParent()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public getZombieDataBeanByID(I)Lcom/sns/game/database/bean/ZombieDataBean;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 380
    iget-object v1, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    iget-object v2, p0, Lcom/sns/game/object/GameZombieLoader;->idList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/ZombieDataBean;

    .line 381
    .local v0, "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    return-object v0
.end method

.method public getZombieList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sns/game/object/GameBaseZombie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isExistZombie()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public loadZombieTextures()V
    .locals 5

    .prologue
    .line 385
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v1

    .line 386
    .local v1, "cache":Lorg/cocos2d/nodes/CCSpriteFrameCache;
    iget-object v2, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    return-void

    .line 386
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/ZombieDataBean;

    .line 388
    .local v0, "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "zombie/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getMove_res()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "zombie/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getDead_res()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    goto :goto_0
.end method

.method public makeRandomPostionByFrame(Lorg/cocos2d/nodes/CCSpriteFrame;I)Lorg/cocos2d/types/CGPoint;
    .locals 5
    .param p1, "frame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "zOrder"    # I

    .prologue
    .line 322
    :try_start_0
    iget v1, p0, Lcom/sns/game/object/GameZombieLoader;->startLimitPosX:F

    iget-object v2, p0, Lcom/sns/game/object/GameZombieLoader;->xPoints:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sns/game/object/GameZombieLoader;->xPoints:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v3

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 323
    iget-object v2, p0, Lcom/sns/game/object/GameZombieLoader;->yPoints:[Ljava/lang/Float;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 321
    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 325
    :goto_0
    return-object v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public makeRect(FFFF)V
    .locals 0
    .param p1, "startLimitPosX"    # F
    .param p2, "endLimitPosX"    # F
    .param p3, "startLimitPosY"    # F
    .param p4, "endLimitPosY"    # F

    .prologue
    .line 268
    iput p1, p0, Lcom/sns/game/object/GameZombieLoader;->startLimitPosX:F

    .line 269
    iput p2, p0, Lcom/sns/game/object/GameZombieLoader;->endLimitPosX:F

    .line 270
    iput p3, p0, Lcom/sns/game/object/GameZombieLoader;->startLimitPosY:F

    .line 271
    iput p4, p0, Lcom/sns/game/object/GameZombieLoader;->endLimitPosY:F

    .line 272
    return-void
.end method

.method public makeRect(Lorg/cocos2d/types/CGRect;)V
    .locals 2
    .param p1, "uiRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 261
    iget-object v0, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iput v0, p0, Lcom/sns/game/object/GameZombieLoader;->startLimitPosX:F

    .line 262
    iget v0, p0, Lcom/sns/game/object/GameZombieLoader;->startLimitPosX:F

    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sns/game/object/GameZombieLoader;->endLimitPosX:F

    .line 263
    iget-object v0, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iput v0, p0, Lcom/sns/game/object/GameZombieLoader;->startLimitPosY:F

    .line 264
    iget v0, p0, Lcom/sns/game/object/GameZombieLoader;->startLimitPosY:F

    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sns/game/object/GameZombieLoader;->endLimitPosY:F

    .line 265
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    return-void
.end method

.method public onLoad(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/types/CGRect;I)V
    .locals 2
    .param p1, "parentNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "uiRect"    # Lorg/cocos2d/types/CGRect;
    .param p3, "zOrder"    # I

    .prologue
    .line 65
    iput p3, p0, Lcom/sns/game/object/GameZombieLoader;->zOrder:I

    .line 66
    iput-object p1, p0, Lcom/sns/game/object/GameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    .line 67
    const-string v0, "point.png"

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    .line 68
    invoke-virtual {p0, p2}, Lcom/sns/game/object/GameZombieLoader;->makeRect(Lorg/cocos2d/types/CGRect;)V

    .line 69
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombieLoader;->addPoints()V

    .line 70
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 71
    return-void
.end method

.method public randomZombieDataBean()Lcom/sns/game/database/bean/ZombieDataBean;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    invoke-static {v4, v3}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v2

    .line 521
    .local v2, "makeTag":I
    if-nez v2, :cond_1

    .line 522
    iget-object v3, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v3}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    .line 523
    .local v1, "index":I
    iget-object v3, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    check-cast v0, Lcom/sns/game/database/bean/ZombieDataBean;

    .line 524
    .restart local v0    # "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    :goto_0
    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_appear()F

    move-result v3

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_0

    move-object v3, v0

    .line 554
    .end local v1    # "index":I
    :goto_1
    return-object v3

    .line 525
    .restart local v1    # "index":I
    :cond_0
    iget-object v3, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v3}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    .line 526
    iget-object v3, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    check-cast v0, Lcom/sns/game/database/bean/ZombieDataBean;

    .restart local v0    # "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    goto :goto_0

    .line 531
    .end local v1    # "index":I
    :cond_1
    if-ne v2, v3, :cond_5

    .line 536
    iget-object v3, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v3}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    .line 537
    .restart local v1    # "index":I
    iget-object v3, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    check-cast v0, Lcom/sns/game/database/bean/ZombieDataBean;

    .line 538
    .restart local v0    # "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    :goto_2
    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_appear()F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_2

    .line 543
    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_type()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 544
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_appear()F

    move-result v5

    float-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_4

    .line 547
    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v3

    .line 546
    invoke-virtual {p0, v3}, Lcom/sns/game/object/GameZombieLoader;->containsZombie(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 547
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombieLoader;->randomZombieDataBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v3

    goto :goto_1

    .line 539
    :cond_2
    iget-object v3, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v3}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    .line 540
    iget-object v3, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    check-cast v0, Lcom/sns/game/database/bean/ZombieDataBean;

    .restart local v0    # "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    goto :goto_2

    :cond_3
    move-object v3, v0

    .line 547
    goto :goto_1

    .line 550
    :cond_4
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombieLoader;->randomZombieDataBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v3

    goto :goto_1

    .end local v1    # "index":I
    :cond_5
    move-object v3, v0

    .line 554
    goto :goto_1
.end method

.method public removeZombie(Lcom/sns/game/object/GameBaseZombie;)Z
    .locals 2
    .param p1, "zombie"    # Lcom/sns/game/object/GameBaseZombie;

    .prologue
    .line 592
    iget-object v1, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 593
    .local v0, "remove":Z
    return v0
.end method

.method public removeZombiesByUniqueSkill_TrampleOn()I
    .locals 6

    .prologue
    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, "total":I
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v2

    .line 131
    .local v2, "multiple":I
    const/4 v2, 0x1

    .line 132
    iget-object v5, p0, Lcom/sns/game/object/GameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sns/game/object/GameBaseZombie;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sns/game/object/GameBaseZombie;>;"
    .end local v2    # "multiple":I
    .end local v3    # "total":I
    :goto_1
    return v3

    .line 136
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sns/game/object/GameBaseZombie;>;"
    .restart local v2    # "multiple":I
    .restart local v3    # "total":I
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sns/game/object/GameZombie;

    .line 137
    .local v4, "zombie":Lcom/sns/game/object/GameZombie;
    invoke-virtual {v4}, Lcom/sns/game/object/GameZombie;->getBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_score()I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v3, v5

    .line 138
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sns/game/object/GameZombie;->setDropGold(Z)V

    .line 139
    invoke-virtual {v4, v2}, Lcom/sns/game/object/GameZombie;->setDropMultiple(I)V

    .line 140
    invoke-virtual {v4}, Lcom/sns/game/object/GameZombie;->executiveToKillSelf()V

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sns/game/object/GameBaseZombie;>;"
    .end local v2    # "multiple":I
    .end local v4    # "zombie":Lcom/sns/game/object/GameZombie;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 147
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public searchZombieDataBean()Lcom/sns/game/database/bean/ZombieDataBean;
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x3

    .line 422
    const/4 v2, 0x0

    .line 425
    .local v2, "targetBean":Lcom/sns/game/database/bean/ZombieDataBean;
    :try_start_0
    iget-object v7, p0, Lcom/sns/game/object/GameZombieLoader;->dynamicZmDataBeans:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 467
    :goto_0
    return-object v6

    .line 428
    :cond_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v5

    .line 429
    .local v5, "userLevel":I
    if-ge v5, v11, :cond_3

    .line 431
    invoke-direct {p0}, Lcom/sns/game/object/GameZombieLoader;->findNoExistZomBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v2

    .line 432
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v4

    .line 433
    .local v4, "uState":Lcom/sns/game/database/bean/UserState;
    if-nez v2, :cond_2

    .line 434
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserState;->isActivateGame()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/sns/game/object/GameZombieLoader;->createZombieWithBeforeActivate()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sns/game/object/GameZombieLoader;->randomInDymicZomBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v2

    .line 435
    goto :goto_0

    .line 439
    .end local v4    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_3
    iget-object v7, p0, Lcom/sns/game/object/GameZombieLoader;->dynamicZmDataBeans:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 440
    .local v1, "searchCount":I
    :goto_1
    if-gtz v1, :cond_4

    .line 461
    if-nez v2, :cond_7

    .line 462
    invoke-virtual {p0}, Lcom/sns/game/object/GameZombieLoader;->searchZombieDataBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v6

    goto :goto_0

    .line 442
    :cond_4
    if-ne v5, v11, :cond_5

    .line 444
    invoke-direct {p0}, Lcom/sns/game/object/GameZombieLoader;->findNoExistZomBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v3

    .line 445
    .local v3, "tmpBean":Lcom/sns/game/database/bean/ZombieDataBean;
    if-eqz v3, :cond_5

    .line 446
    const/4 v1, 0x0

    .line 447
    move-object v2, v3

    move-object v6, v2

    .line 448
    goto :goto_0

    .line 452
    .end local v3    # "tmpBean":Lcom/sns/game/database/bean/ZombieDataBean;
    :cond_5
    invoke-direct {p0}, Lcom/sns/game/object/GameZombieLoader;->randomInDymicZomBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v3

    .line 453
    .restart local v3    # "tmpBean":Lcom/sns/game/database/bean/ZombieDataBean;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_appear()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    float-to-double v9, v9

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_6

    .line 454
    const/4 v1, 0x0

    .line 455
    move-object v2, v3

    move-object v6, v2

    .line 456
    goto :goto_0

    .line 458
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v3    # "tmpBean":Lcom/sns/game/database/bean/ZombieDataBean;
    :cond_7
    move-object v6, v2

    .line 462
    goto :goto_0

    .line 465
    .end local v1    # "searchCount":I
    .end local v5    # "userLevel":I
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startLoadZombies()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    .line 93
    const v1, 0x3f0ccccd    # 0.55f

    const v2, 0x3f733333    # 0.95f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v1

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 94
    const-string v4, "callBack_selector_startLoadZombies"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 92
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 97
    :cond_0
    return-void
.end method

.method public startReLoadZombies()V
    .locals 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    .line 107
    const v1, 0x3f733333    # 0.95f

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 108
    const-string v4, "callBack_selector_startReLoadZombies"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 106
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 105
    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 111
    :cond_0
    return-void
.end method

.method public stopLoadZombies()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sns/game/object/GameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 121
    :cond_0
    return-void
.end method

.method public declared-synchronized updateDymicZomDataBeans()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 395
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v3

    .line 396
    .local v3, "userLevel":I
    iget-object v6, p0, Lcom/sns/game/object/GameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 404
    monitor-exit p0

    return-void

    .line 396
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/ZombieDataBean;

    .line 397
    .local v0, "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getAppear_grade()I

    move-result v7

    if-lez v7, :cond_2

    move v1, v4

    .line 398
    .local v1, "checkAperGrade":Z
    :goto_1
    invoke-virtual {v0}, Lcom/sns/game/database/bean/ZombieDataBean;->getAppear_grade()I

    move-result v7

    if-lt v3, v7, :cond_3

    move v2, v4

    .line 399
    .local v2, "checkUserLevel":Z
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 400
    iget-object v7, p0, Lcom/sns/game/object/GameZombieLoader;->dynamicZmDataBeans:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 401
    iget-object v7, p0, Lcom/sns/game/object/GameZombieLoader;->dynamicZmDataBeans:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    .end local v0    # "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    .end local v1    # "checkAperGrade":Z
    .end local v2    # "checkUserLevel":Z
    .end local v3    # "userLevel":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "bean":Lcom/sns/game/database/bean/ZombieDataBean;
    .restart local v3    # "userLevel":I
    :cond_2
    move v1, v5

    .line 397
    goto :goto_1

    .restart local v1    # "checkAperGrade":Z
    :cond_3
    move v2, v5

    .line 398
    goto :goto_2
.end method

.method public zOrder()I
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sns/game/object/GameZombieLoader;->yPoints:[Ljava/lang/Float;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    return v0
.end method
