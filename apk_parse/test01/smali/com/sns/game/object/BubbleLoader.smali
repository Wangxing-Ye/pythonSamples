.class public Lcom/sns/game/object/BubbleLoader;
.super Ljava/lang/Object;
.source "BubbleLoader.java"


# static fields
.field private static final POS_X:[[F

.field public static final TAG:Ljava/lang/String; = "BubbleLoader"

.field private static loader:Lcom/sns/game/object/BubbleLoader;


# instance fields
.field private bubbleEndPoint:Lorg/cocos2d/types/CGPoint;

.field private cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

.field private current:I

.field private inPlistNames:[Ljava/lang/String;

.field private loadMaxTime:F

.field private loadMinTime:F

.field private maxCount:I

.field private moveMaxTime:F

.field private moveMinTime:F

.field private onceMaxTime:F

.field private onceMinTime:F

.field private parent:Lorg/cocos2d/nodes/CCNode;

.field private plistPath:Ljava/lang/String;

.field private sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

.field private sheetPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-array v0, v5, [[F

    new-array v1, v5, [F

    sget-object v2, Lcom/sns/game/util/DeviceManager;->posZero_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    aput v2, v1, v3

    const/high16 v2, 0x43940000    # 296.0f

    aput v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [F

    const v2, 0x43f18000    # 483.0f

    aput v2, v1, v3

    sget-object v2, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    aput v2, v1, v4

    aput-object v1, v0, v4

    sput-object v0, Lcom/sns/game/object/BubbleLoader;->POS_X:[[F

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->bubbleEndPoint:Lorg/cocos2d/types/CGPoint;

    .line 36
    const-string v0, "UI/bubble.plist"

    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->plistPath:Ljava/lang/String;

    .line 37
    const-string v0, "UI/bubble.png"

    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->sheetPath:Ljava/lang/String;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bubble_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bubble_02.png"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->inPlistNames:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method private addBubbleToSheet(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 1
    .param p1, "bubble"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteSheet;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 99
    :cond_0
    return-void
.end method

.method private cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->plistPath:Ljava/lang/String;

    .line 298
    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->sheetPath:Ljava/lang/String;

    .line 299
    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->inPlistNames:[Ljava/lang/String;

    .line 300
    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->bubbleEndPoint:Lorg/cocos2d/types/CGPoint;

    .line 301
    sput-object v0, Lcom/sns/game/object/BubbleLoader;->loader:Lcom/sns/game/object/BubbleLoader;

    .line 302
    return-void
.end method

.method private destroy(Z)V
    .locals 1
    .param p1, "cleanUp"    # Z

    .prologue
    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 292
    invoke-virtual {p0, v0}, Lcom/sns/game/object/BubbleLoader;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 293
    invoke-virtual {p0}, Lcom/sns/game/object/BubbleLoader;->removeBubbles()V

    .line 294
    return-void
.end method

.method private loadBubbleSheet()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->sheetPath:Ljava/lang/String;

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->spriteSheet(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 93
    return-void
.end method

.method private loadFrameCache()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 88
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    iget-object v1, p0, Lcom/sns/game/object/BubbleLoader;->plistPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 89
    return-void
.end method

.method private reSetBubblePos(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 2
    .param p1, "bubble"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/sns/game/object/BubbleLoader;->getBubblePosX(Lorg/cocos2d/nodes/CCSprite;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sns/game/object/BubbleLoader;->getBubblePosY(Lorg/cocos2d/nodes/CCSprite;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 279
    :cond_0
    return-void
.end method

.method private removeBubbleSelf(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 0
    .param p1, "bubble"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 283
    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 288
    :cond_0
    return-void
.end method

.method public static sharedLoader()Lcom/sns/game/object/BubbleLoader;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sns/game/object/BubbleLoader;->loader:Lcom/sns/game/object/BubbleLoader;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/sns/game/object/BubbleLoader;

    invoke-direct {v0}, Lcom/sns/game/object/BubbleLoader;-><init>()V

    sput-object v0, Lcom/sns/game/object/BubbleLoader;->loader:Lcom/sns/game/object/BubbleLoader;

    .line 31
    :cond_0
    sget-object v0, Lcom/sns/game/object/BubbleLoader;->loader:Lcom/sns/game/object/BubbleLoader;

    return-object v0
.end method


# virtual methods
.method public addBubblesTo(I)V
    .locals 2
    .param p1, "zOrder"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    iget-object v1, p0, Lcom/sns/game/object/BubbleLoader;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v0, v1, p1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 105
    :cond_0
    return-void
.end method

.method public callBack_selector_destroyBubble(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 268
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sns/game/object/BubbleLoader;->destroyBubble(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_loadActions()V
    .locals 1

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/object/BubbleLoader;->loadActions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callBack_selector_loadBubbles()V
    .locals 1

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/object/BubbleLoader;->loadBubbles()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public destroyBubble(Ljava/lang/Object;)V
    .locals 5
    .param p1, "dataObj"    # Ljava/lang/Object;

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 251
    .local v1, "bubble":Lorg/cocos2d/nodes/CCSprite;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    move-object v1, v0

    .line 252
    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 254
    .local v3, "isUnUsedRemveSelf":Z
    if-nez v3, :cond_1

    .line 255
    invoke-direct {p0, v1}, Lcom/sns/game/object/BubbleLoader;->reSetBubblePos(Lorg/cocos2d/nodes/CCSprite;)V

    .line 263
    .end local v3    # "isUnUsedRemveSelf":Z
    :cond_0
    :goto_0
    return-void

    .line 257
    .restart local v3    # "isUnUsedRemveSelf":Z
    :cond_1
    invoke-direct {p0, v1}, Lcom/sns/game/object/BubbleLoader;->removeBubbleSelf(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v3    # "isUnUsedRemveSelf":Z
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBubbleEndPoint(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/types/CGPoint;
    .locals 4
    .param p1, "bubble"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->bubbleEndPoint:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefX()F

    move-result v1

    .line 169
    sget-object v2, Lcom/sns/game/util/DeviceManager;->winSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 168
    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 170
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->bubbleEndPoint:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public getBubbleName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    .line 155
    .local v0, "index":I
    iget-object v1, p0, Lcom/sns/game/object/BubbleLoader;->inPlistNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getBubblePosX(Lorg/cocos2d/nodes/CCSprite;)F
    .locals 4
    .param p1, "bubble"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    .line 160
    .local v0, "index":I
    sget-object v1, Lcom/sns/game/object/BubbleLoader;->POS_X:[[F

    aget-object v1, v1, v0

    aget v1, v1, v2

    sget-object v2, Lcom/sns/game/object/BubbleLoader;->POS_X:[[F

    aget-object v2, v2, v0

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v1

    return v1
.end method

.method public getBubblePosY(Lorg/cocos2d/nodes/CCSprite;)F
    .locals 2
    .param p1, "bubble"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 164
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getLoadTime()F
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/sns/game/object/BubbleLoader;->loadMinTime:F

    iget v1, p0, Lcom/sns/game/object/BubbleLoader;->loadMaxTime:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    return v0
.end method

.method public getMoveTime()F
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/sns/game/object/BubbleLoader;->moveMinTime:F

    iget v1, p0, Lcom/sns/game/object/BubbleLoader;->moveMaxTime:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    return v0
.end method

.method public getOnceTime()F
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/sns/game/object/BubbleLoader;->onceMinTime:F

    iget v1, p0, Lcom/sns/game/object/BubbleLoader;->onceMaxTime:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    return v0
.end method

.method public getParent()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public loadActions()V
    .locals 3

    .prologue
    .line 194
    iget v1, p0, Lcom/sns/game/object/BubbleLoader;->current:I

    if-nez v1, :cond_0

    .line 195
    iget v1, p0, Lcom/sns/game/object/BubbleLoader;->maxCount:I

    iput v1, p0, Lcom/sns/game/object/BubbleLoader;->current:I

    .line 196
    invoke-virtual {p0}, Lcom/sns/game/object/BubbleLoader;->startLoader()V

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/sns/game/object/BubbleLoader;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/sns/game/object/BubbleLoader;->current:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sns/game/object/BubbleLoader;->current:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 199
    .local v0, "bubble":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {p0, v0}, Lcom/sns/game/object/BubbleLoader;->startBubbleAction(Lorg/cocos2d/nodes/CCSprite;)V

    .line 200
    invoke-virtual {p0}, Lcom/sns/game/object/BubbleLoader;->startLoadAction()V

    goto :goto_0
.end method

.method public loadBubble(Ljava/lang/Object;)Lorg/cocos2d/nodes/CCSprite;
    .locals 4
    .param p1, "userData"    # Ljava/lang/Object;

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, "bubble":Lorg/cocos2d/nodes/CCSprite;
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/object/BubbleLoader;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {p0}, Lcom/sns/game/object/BubbleLoader;->getBubbleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 238
    invoke-virtual {p0, v0}, Lcom/sns/game/object/BubbleLoader;->getBubblePosX(Lorg/cocos2d/nodes/CCSprite;)F

    move-result v2

    invoke-virtual {p0, v0}, Lcom/sns/game/object/BubbleLoader;->getBubblePosY(Lorg/cocos2d/nodes/CCSprite;)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 239
    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSprite;->setUserData(Ljava/lang/Object;)V

    .line 240
    invoke-direct {p0, v0}, Lcom/sns/game/object/BubbleLoader;->addBubbleToSheet(Lorg/cocos2d/nodes/CCSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 245
    :goto_0
    return-object v2

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadBubbles()V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/sns/game/object/BubbleLoader;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sns/game/object/BubbleLoader;->maxCount:I

    if-lt v0, v1, :cond_1

    .line 181
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 177
    .restart local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sns/game/object/BubbleLoader;->loadBubble(Ljava/lang/Object;)Lorg/cocos2d/nodes/CCSprite;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public loadDefaultParameters()V
    .locals 3

    .prologue
    .line 115
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sns/game/object/BubbleLoader;->setLoadMaxCount(I)V

    .line 116
    const/high16 v0, 0x40e00000    # 7.0f

    sget v1, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x41180000    # 9.5f

    sget v2, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/object/BubbleLoader;->setLoadTime(FF)V

    .line 117
    const v0, 0x3d4ccccd    # 0.05f

    sget v1, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    sget v2, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/object/BubbleLoader;->setOnceTime(FF)V

    .line 118
    const/high16 v0, 0x40000000    # 2.0f

    sget v1, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40900000    # 4.5f

    sget v2, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/object/BubbleLoader;->setMoveTime(FF)V

    .line 119
    return-void
.end method

.method public onEnter(Lorg/cocos2d/nodes/CCNode;I)V
    .locals 0
    .param p1, "parent"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "zOrder"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/sns/game/object/BubbleLoader;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 53
    invoke-direct {p0}, Lcom/sns/game/object/BubbleLoader;->loadFrameCache()V

    .line 54
    invoke-direct {p0}, Lcom/sns/game/object/BubbleLoader;->loadBubbleSheet()V

    .line 55
    invoke-virtual {p0, p2}, Lcom/sns/game/object/BubbleLoader;->addBubblesTo(I)V

    .line 56
    invoke-virtual {p0}, Lcom/sns/game/object/BubbleLoader;->loadDefaultParameters()V

    .line 57
    return-void
.end method

.method public onExit(Z)V
    .locals 0
    .param p1, "cleanUp"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sns/game/object/BubbleLoader;->destroy(Z)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/sns/game/object/BubbleLoader;->cleanUp()V

    .line 64
    :cond_0
    return-void
.end method

.method public removeBubbles()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeSelf()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/object/BubbleLoader;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 112
    :cond_0
    return-void
.end method

.method public setLoadMaxCount(I)V
    .locals 0
    .param p1, "maxCount"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/sns/game/object/BubbleLoader;->maxCount:I

    .line 123
    iput p1, p0, Lcom/sns/game/object/BubbleLoader;->current:I

    .line 124
    return-void
.end method

.method public setLoadTime(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 127
    iput p1, p0, Lcom/sns/game/object/BubbleLoader;->loadMinTime:F

    .line 128
    iput p2, p0, Lcom/sns/game/object/BubbleLoader;->loadMaxTime:F

    .line 129
    return-void
.end method

.method public setMoveTime(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 145
    iput p1, p0, Lcom/sns/game/object/BubbleLoader;->moveMinTime:F

    .line 146
    iput p2, p0, Lcom/sns/game/object/BubbleLoader;->moveMaxTime:F

    .line 147
    return-void
.end method

.method public setOnceTime(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 136
    iput p1, p0, Lcom/sns/game/object/BubbleLoader;->onceMinTime:F

    .line 137
    iput p2, p0, Lcom/sns/game/object/BubbleLoader;->onceMaxTime:F

    .line 138
    return-void
.end method

.method public setParent(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "parent"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sns/game/object/BubbleLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    .line 80
    return-void
.end method

.method public startBubbleAction(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 4
    .param p1, "bubble"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/sns/game/object/BubbleLoader;->getMoveTime()F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sns/game/object/BubbleLoader;->getBubbleEndPoint(Lorg/cocos2d/nodes/CCSprite;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v2, 0x0

    .line 228
    const-string v3, "callBack_selector_destroyBubble"

    invoke-static {p0, v3, p1}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v1, v2

    .line 226
    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 225
    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 232
    :cond_0
    return-void
.end method

.method public startLoadAction()V
    .locals 5

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 217
    invoke-virtual {p0}, Lcom/sns/game/object/BubbleLoader;->getOnceTime()F

    move-result v1

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 218
    const-string v4, "callBack_selector_loadActions"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 216
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSpriteSheet;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 221
    return-void
.end method

.method public startLoader()V
    .locals 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sns/game/object/BubbleLoader;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 70
    invoke-virtual {p0}, Lcom/sns/game/object/BubbleLoader;->getLoadTime()F

    move-result v1

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 71
    const-string v4, "callBack_selector_loadBubbles"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 72
    const-string v4, "callBack_selector_loadActions"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 69
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSpriteSheet;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 76
    :cond_0
    return-void
.end method
