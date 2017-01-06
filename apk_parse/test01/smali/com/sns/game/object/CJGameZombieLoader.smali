.class public Lcom/sns/game/object/CJGameZombieLoader;
.super Ljava/lang/Object;
.source "CJGameZombieLoader.java"


# static fields
.field private static loader:Lcom/sns/game/object/CJGameZombieLoader;


# instance fields
.field private actionLoader:Lorg/cocos2d/nodes/CCSprite;

.field private actionLoading:Z

.field private destroyNum:I

.field private endLimitPosX:F

.field private endLimitPosY:F

.field private limitPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            "[[F>;"
        }
    .end annotation
.end field

.field private maxCount:I

.field private maxCreate:I

.field private minCount:I

.field private minCreate:I

.field private parent:Lorg/cocos2d/nodes/CCNode;

.field private rewardScore:I

.field private startLimitPosX:F

.field private startLimitPosY:F

.field private zOrder_:I

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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    .line 57
    const/16 v0, 0x18

    iput v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->maxCount:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->minCount:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->minCreate:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->maxCreate:I

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->limitPoints:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    .line 35
    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombieLoader;->setZombieDataBeanList()V

    .line 36
    return-void
.end method

.method private createPointsToX(Lorg/cocos2d/nodes/CCSpriteFrame;FF)[F
    .locals 3
    .param p1, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "startLimitPosX"    # F
    .param p3, "endLimitPosX"    # F

    .prologue
    .line 319
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    sub-float v2, p2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 321
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v2, p3

    aput v2, v0, v1

    .line 319
    return-object v0
.end method

.method private createPointsToY(Lorg/cocos2d/nodes/CCSpriteFrame;FF)[F
    .locals 10
    .param p1, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "startLimitPosY"    # F
    .param p3, "endLimitPosY"    # F

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 325
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v8

    iget v8, v8, Lorg/cocos2d/types/CGSize;->height:F

    mul-float v4, v8, v9

    .line 326
    .local v4, "needSize":F
    mul-float v8, v4, v9

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float v6, v8, v9

    .line 327
    .local v6, "scaleSize":F
    add-float v7, p2, v4

    .line 328
    .local v7, "startPosY":F
    sub-float v2, p3, v4

    .line 329
    .local v2, "endPosY":F
    sub-float v8, v2, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 330
    .local v1, "distance":F
    div-float v8, v1, v6

    float-to-int v0, v8

    .line 332
    .local v0, "count":I
    new-array v5, v0, [F

    .line 333
    .local v5, "posArray":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 337
    return-object v5

    .line 334
    :cond_0
    int-to-float v8, v3

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    aput v8, v5, v3

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private onceCount()I
    .locals 3

    .prologue
    .line 199
    iget v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->minCreate:I

    iget v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->maxCreate:I

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    .line 200
    .local v0, "onceCount":I
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->maxCount:I

    if-le v1, v2, :cond_0

    .line 201
    iget v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->maxCount:I

    iget-object v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v0, v1, v2

    .line 203
    :cond_0
    return v0
.end method

.method private varargs runRemoveZombiesAction(F[Ljava/lang/Object;)V
    .locals 7
    .param p1, "time"    # F
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    .line 137
    invoke-static {p1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    new-array v2, v6, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 139
    const-string v3, "callBack_selector_removeZombies"

    .line 140
    if-eqz p2, :cond_0

    array-length v4, p2

    if-nez v4, :cond_1

    .line 141
    :cond_0
    new-array p2, v6, [Ljava/lang/Object;

    .end local p2    # "objs":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v5

    .line 138
    :cond_1
    invoke-static {p0, v3, p2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v5

    .line 136
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 142
    return-void
.end method

.method private setActionLoader()V
    .locals 3

    .prologue
    .line 219
    const-string v0, "point.png"

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    .line 220
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombieLoader;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    iget-object v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 221
    return-void
.end method

.method private setParent(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "parent"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sns/game/object/CJGameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    .line 216
    return-void
.end method

.method private setZOrder_(I)V
    .locals 0
    .param p1, "zOrder_"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/sns/game/object/CJGameZombieLoader;->zOrder_:I

    .line 342
    return-void
.end method

.method private setZombieDataBeanList()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/sns/game/database/dao/ZombieDao;->sharedDao()Lcom/sns/game/database/dao/ZombieDao;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sns/game/database/dao/ZombieDao;->findZombiesByType(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    .line 42
    return-void
.end method

.method public static sharedLoader()Lcom/sns/game/object/CJGameZombieLoader;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sns/game/object/CJGameZombieLoader;->loader:Lcom/sns/game/object/CJGameZombieLoader;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/sns/game/object/CJGameZombieLoader;

    invoke-direct {v0}, Lcom/sns/game/object/CJGameZombieLoader;-><init>()V

    sput-object v0, Lcom/sns/game/object/CJGameZombieLoader;->loader:Lcom/sns/game/object/CJGameZombieLoader;

    .line 31
    :cond_0
    sget-object v0, Lcom/sns/game/object/CJGameZombieLoader;->loader:Lcom/sns/game/object/CJGameZombieLoader;

    return-object v0
.end method

.method private xPoints(Lorg/cocos2d/nodes/CCSpriteFrame;)[F
    .locals 3
    .param p1, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->limitPoints:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-object v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private yPoints(Lorg/cocos2d/nodes/CCSpriteFrame;)[F
    .locals 3
    .param p1, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->limitPoints:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    const/4 v2, 0x1

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->zOrder_:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method public addPoints(Lorg/cocos2d/nodes/CCSpriteFrame;)V
    .locals 5
    .param p1, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 255
    iget-object v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->limitPoints:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 256
    iget v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->startLimitPosX:F

    iget v3, p0, Lcom/sns/game/object/CJGameZombieLoader;->endLimitPosX:F

    invoke-direct {p0, p1, v2, v3}, Lcom/sns/game/object/CJGameZombieLoader;->createPointsToX(Lorg/cocos2d/nodes/CCSpriteFrame;FF)[F

    move-result-object v0

    .line 257
    .local v0, "xPoints":[F
    iget v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->startLimitPosY:F

    iget v3, p0, Lcom/sns/game/object/CJGameZombieLoader;->endLimitPosY:F

    invoke-direct {p0, p1, v2, v3}, Lcom/sns/game/object/CJGameZombieLoader;->createPointsToY(Lorg/cocos2d/nodes/CCSpriteFrame;FF)[F

    move-result-object v1

    .line 258
    .local v1, "yPoints":[F
    iget-object v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->limitPoints:Ljava/util/Map;

    const/4 v3, 0x2

    new-array v3, v3, [[F

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v0    # "xPoints":[F
    .end local v1    # "yPoints":[F
    :cond_0
    return-void
.end method

.method public callBack_selector_loadZombies()V
    .locals 6

    .prologue
    .line 163
    iget-object v4, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/sns/game/object/CJGameZombieLoader;->maxCount:I

    if-ge v4, v5, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombieLoader;->onceCount()I

    move-result v2

    .line 165
    .local v2, "loadCount":I
    new-array v1, v2, [I

    .line 166
    .local v1, "indexArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 173
    invoke-virtual {p0, v1}, Lcom/sns/game/object/CJGameZombieLoader;->startZombieAction(Ljava/lang/Object;)V

    .line 174
    const v4, 0x3d4ccccd    # 0.05f

    invoke-virtual {p0, v4}, Lcom/sns/game/object/CJGameZombieLoader;->startZombiesLoader(F)V

    .line 176
    .end local v0    # "i":I
    .end local v1    # "indexArray":[I
    .end local v2    # "loadCount":I
    :cond_0
    return-void

    .line 167
    .restart local v0    # "i":I
    .restart local v1    # "indexArray":[I
    .restart local v2    # "loadCount":I
    :cond_1
    new-instance v3, Lcom/sns/game/object/CJGameZombie;

    invoke-direct {v3, p0}, Lcom/sns/game/object/CJGameZombie;-><init>(Lcom/sns/game/object/CJGameZombieLoader;)V

    .line 168
    .local v3, "zombie":Lcom/sns/game/object/CJGameZombie;
    invoke-virtual {v3}, Lcom/sns/game/object/CJGameZombie;->createSelf()V

    .line 170
    iget-object v4, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v4, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    aput v4, v1, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public callBack_selector_reloadZombies()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->minCount:I

    if-ge v0, v1, :cond_0

    .line 180
    const v0, 0x3d4ccccd    # 0.05f

    invoke-virtual {p0, v0}, Lcom/sns/game/object/CJGameZombieLoader;->startZombiesLoader(F)V

    .line 182
    :cond_0
    return-void
.end method

.method public callBack_selector_removeZombies(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 145
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    .line 148
    .local v2, "data":[Ljava/lang/Object;
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 149
    const/4 v5, 0x0

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 150
    .local v4, "zombieIndex":I
    if-ltz v4, :cond_0

    .line 151
    iget-object v5, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/object/GameBaseZombie;

    .line 152
    .local v1, "baseZombie":Lcom/sns/game/object/GameBaseZombie;
    invoke-virtual {v1}, Lcom/sns/game/object/GameBaseZombie;->executiveToKillSelf()V

    .line 153
    const v5, 0x3ccccccd    # 0.025f

    const v6, 0x3d4ccccd    # 0.05f

    invoke-static {v5, v6}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v5

    .line 154
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 153
    invoke-direct {p0, v5, v6}, Lcom/sns/game/object/CJGameZombieLoader;->runRemoveZombiesAction(F[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1    # "baseZombie":Lcom/sns/game/object/GameBaseZombie;
    .end local v4    # "zombieIndex":I
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public createSelf(Lorg/cocos2d/nodes/CCNode;I)V
    .locals 0
    .param p1, "parent"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "zOrder"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sns/game/object/CJGameZombieLoader;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 68
    invoke-direct {p0, p2}, Lcom/sns/game/object/CJGameZombieLoader;->setZOrder_(I)V

    .line 69
    invoke-direct {p0}, Lcom/sns/game/object/CJGameZombieLoader;->setActionLoader()V

    .line 70
    return-void
.end method

.method public destroy(Z)V
    .locals 4
    .param p1, "cleanUp"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->limitPoints:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->limitPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    :cond_2
    iput-object v3, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    .line 91
    iput-object v3, p0, Lcom/sns/game/object/CJGameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    .line 92
    iput v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->endLimitPosY:F

    .line 93
    iput v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->endLimitPosX:F

    .line 94
    iput v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->rewardScore:I

    .line 95
    iput v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->startLimitPosX:F

    .line 96
    iput v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->startLimitPosY:F

    .line 97
    iput v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->zOrder_:I

    .line 98
    iput v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->destroyNum:I

    .line 99
    iput-boolean v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoading:Z

    .line 100
    return-void
.end method

.method public endPositionX(Lorg/cocos2d/nodes/CCSpriteFrame;)F
    .locals 2
    .param p1, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/sns/game/object/CJGameZombieLoader;->xPoints(Lorg/cocos2d/nodes/CCSpriteFrame;)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getDestroyNum()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->destroyNum:I

    return v0
.end method

.method public getParent()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public getRewardScore()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->rewardScore:I

    return v0
.end method

.method public getZOrder_()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->zOrder_:I

    return v0
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
    .line 350
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isActionLoading()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoading:Z

    return v0
.end method

.method public modifyDestroyNum(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 236
    iget v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->destroyNum:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->destroyNum:I

    .line 237
    return-void
.end method

.method public modifyRewardScore(I)V
    .locals 1
    .param p1, "score"    # I

    .prologue
    .line 244
    iget v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->rewardScore:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->rewardScore:I

    .line 245
    return-void
.end method

.method public randomFoundZombiePos(I)Lorg/cocos2d/types/CGPoint;
    .locals 4
    .param p1, "zombieId"    # I

    .prologue
    const/4 v3, 0x0

    .line 358
    iget-object v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    .line 359
    .local v0, "index":I
    iget-object v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/object/CJGameZombie;

    .line 360
    .local v1, "zombie":Lcom/sns/game/object/CJGameZombie;
    :goto_0
    invoke-virtual {v1}, Lcom/sns/game/object/CJGameZombie;->getBean()Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 364
    invoke-virtual {v1}, Lcom/sns/game/object/CJGameZombie;->getZombie()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    return-object v2

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    .line 362
    iget-object v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "zombie":Lcom/sns/game/object/CJGameZombie;
    check-cast v1, Lcom/sns/game/object/CJGameZombie;

    .restart local v1    # "zombie":Lcom/sns/game/object/CJGameZombie;
    goto :goto_0
.end method

.method public randomPosition(Lorg/cocos2d/nodes/CCSpriteFrame;IZ)Lorg/cocos2d/types/CGPoint;
    .locals 5
    .param p1, "displayFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "zOrder"    # I
    .param p3, "flipX"    # Z

    .prologue
    .line 268
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sns/game/object/CJGameZombieLoader;->xPoints(Lorg/cocos2d/nodes/CCSpriteFrame;)[F

    move-result-object v1

    .line 269
    .local v1, "xPoints":[F
    invoke-direct {p0, p1}, Lcom/sns/game/object/CJGameZombieLoader;->yPoints(Lorg/cocos2d/nodes/CCSpriteFrame;)[F

    move-result-object v2

    .line 271
    .local v2, "yPoints":[F
    if-eqz p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    aget v3, v1, v3

    .line 272
    aget v4, v2, p2

    .line 270
    invoke-static {v3, v4}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 274
    .end local v1    # "xPoints":[F
    .end local v2    # "yPoints":[F
    :goto_1
    return-object v3

    .line 271
    .restart local v1    # "xPoints":[F
    .restart local v2    # "yPoints":[F
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "xPoints":[F
    .end local v2    # "yPoints":[F
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public randomZombieDataBean()Lcom/sns/game/database/bean/ZombieDataBean;
    .locals 3

    .prologue
    .line 45
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    .line 46
    .local v0, "index":I
    iget-object v1, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieDataBeanList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/database/bean/ZombieDataBean;

    return-object v1
.end method

.method public reStartZomobiesLoader()V
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    .line 122
    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 123
    const-string v4, "callBack_selector_reloadZombies"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 121
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 125
    :cond_0
    return-void
.end method

.method public recycleSelf(Z)V
    .locals 0
    .param p1, "cleanUp"    # Z

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/sns/game/object/CJGameZombieLoader;->destroy(Z)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/sns/game/object/CJGameZombieLoader;->cleanUp()V

    .line 77
    :cond_0
    return-void
.end method

.method public removeZombie(Lcom/sns/game/object/GameBaseZombie;)Z
    .locals 1
    .param p1, "zombieObj"    # Lcom/sns/game/object/GameBaseZombie;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setActionLoading(Z)V
    .locals 0
    .param p1, "actionLoading"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoading:Z

    .line 229
    return-void
.end method

.method public setLimitPos(FFFF)V
    .locals 0
    .param p1, "startLimitPosX"    # F
    .param p2, "endLimitPosX"    # F
    .param p3, "startLimitPosY"    # F
    .param p4, "endLimitPosY"    # F

    .prologue
    .line 248
    iput p1, p0, Lcom/sns/game/object/CJGameZombieLoader;->startLimitPosX:F

    .line 249
    iput p2, p0, Lcom/sns/game/object/CJGameZombieLoader;->endLimitPosX:F

    .line 250
    iput p3, p0, Lcom/sns/game/object/CJGameZombieLoader;->startLimitPosY:F

    .line 251
    iput p4, p0, Lcom/sns/game/object/CJGameZombieLoader;->endLimitPosY:F

    .line 252
    return-void
.end method

.method public startPositionX(Lorg/cocos2d/nodes/CCSpriteFrame;)F
    .locals 2
    .param p1, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/sns/game/object/CJGameZombieLoader;->xPoints(Lorg/cocos2d/nodes/CCSpriteFrame;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public startZombieAction(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 185
    const/4 v3, 0x0

    check-cast v3, [I

    .line 188
    .local v3, "indexArray":[I
    :try_start_0
    move-object v0, p1

    check-cast v0, [I

    move-object v3, v0

    .line 189
    array-length v6, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_0

    .line 196
    :goto_1
    return-void

    .line 189
    :cond_0
    aget v2, v3, v5

    .line 190
    .local v2, "index":I
    iget-object v4, p0, Lcom/sns/game/object/CJGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sns/game/object/GameBaseZombie;

    invoke-virtual {v4}, Lcom/sns/game/object/GameBaseZombie;->runAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 193
    .end local v2    # "index":I
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public startZombiesLoader()V
    .locals 1

    .prologue
    .line 107
    const v0, 0x3f733333    # 0.95f

    invoke-virtual {p0, v0}, Lcom/sns/game/object/CJGameZombieLoader;->startZombiesLoader(F)V

    .line 108
    return-void
.end method

.method public startZombiesLoader(F)V
    .locals 5
    .param p1, "time"    # F

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, v2}, Lcom/sns/game/object/CJGameZombieLoader;->setActionLoading(Z)V

    .line 113
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    .line 114
    invoke-static {p1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 115
    const-string v4, "callBack_selector_loadZombies"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 113
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 117
    :cond_0
    return-void
.end method

.method public stopZombiesLoader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, v2}, Lcom/sns/game/object/CJGameZombieLoader;->setActionLoading(Z)V

    .line 130
    iget-object v0, p0, Lcom/sns/game/object/CJGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 131
    const v0, 0x3ccccccd    # 0.025f

    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sns/game/object/CJGameZombieLoader;->runRemoveZombiesAction(F[Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method

.method public toBackPosX(Lorg/cocos2d/nodes/CCSpriteFrame;Z)F
    .locals 3
    .param p1, "displayFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "flipX"    # Z

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/sns/game/object/CJGameZombieLoader;->startPositionX(Lorg/cocos2d/nodes/CCSpriteFrame;)F

    move-result v1

    .line 313
    .local v1, "start_posX":F
    invoke-virtual {p0, p1}, Lcom/sns/game/object/CJGameZombieLoader;->endPositionX(Lorg/cocos2d/nodes/CCSpriteFrame;)F

    move-result v0

    .line 314
    .local v0, "end_posX":F
    if-eqz p2, :cond_0

    move v2, v1

    .line 315
    .local v2, "toBackPosX":F
    :goto_0
    return v2

    .end local v2    # "toBackPosX":F
    :cond_0
    move v2, v0

    .line 314
    goto :goto_0
.end method

.method public toGoToPosX(Lorg/cocos2d/nodes/CCSpriteFrame;Z)F
    .locals 3
    .param p1, "displayFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "flipX"    # Z

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/sns/game/object/CJGameZombieLoader;->startPositionX(Lorg/cocos2d/nodes/CCSpriteFrame;)F

    move-result v1

    .line 306
    .local v1, "start_posX":F
    invoke-virtual {p0, p1}, Lcom/sns/game/object/CJGameZombieLoader;->endPositionX(Lorg/cocos2d/nodes/CCSpriteFrame;)F

    move-result v0

    .line 307
    .local v0, "end_posX":F
    if-eqz p2, :cond_0

    move v2, v0

    .line 308
    .local v2, "toGoToPosX":F
    :goto_0
    return v2

    .end local v2    # "toGoToPosX":F
    :cond_0
    move v2, v1

    .line 307
    goto :goto_0
.end method

.method public zOrder(Lorg/cocos2d/nodes/CCSpriteFrame;)I
    .locals 2
    .param p1, "frame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sns/game/object/CJGameZombieLoader;->yPoints(Lorg/cocos2d/nodes/CCSpriteFrame;)[F

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    return v0
.end method
