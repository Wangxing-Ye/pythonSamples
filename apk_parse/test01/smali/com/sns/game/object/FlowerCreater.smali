.class public Lcom/sns/game/object/FlowerCreater;
.super Ljava/lang/Object;
.source "FlowerCreater.java"


# static fields
.field private static creater:Lcom/sns/game/object/FlowerCreater;


# instance fields
.field private cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

.field private firstPoint:Lorg/cocos2d/types/CGPoint;

.field private flowerCount:I

.field private flowerIndexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private modelTexture:Lorg/cocos2d/opengl/CCTexture2D;

.field private parent:Lorg/cocos2d/nodes/CCNode;

.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private sheet:Lorg/cocos2d/nodes/CCSpriteSheet;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sns/game/object/FlowerCreater;->flowerIndexSet:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/object/FlowerCreater;->points:Ljava/util/ArrayList;

    .line 45
    const/16 v0, 0x19

    iput v0, p0, Lcom/sns/game/object/FlowerCreater;->flowerCount:I

    .line 30
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/FlowerCreater;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 31
    return-void
.end method

.method private randomNoRepeat(Ljava/util/Set;II)I
    .locals 2
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "indexSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2, p3}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    .line 211
    .local v0, "index":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    return v0

    .line 212
    :cond_0
    invoke-static {p2, p3}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    goto :goto_0
.end method

.method public static sharedCreater()Lcom/sns/game/object/FlowerCreater;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sns/game/object/FlowerCreater;->creater:Lcom/sns/game/object/FlowerCreater;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/sns/game/object/FlowerCreater;

    invoke-direct {v0}, Lcom/sns/game/object/FlowerCreater;-><init>()V

    sput-object v0, Lcom/sns/game/object/FlowerCreater;->creater:Lcom/sns/game/object/FlowerCreater;

    .line 37
    :cond_0
    sget-object v0, Lcom/sns/game/object/FlowerCreater;->creater:Lcom/sns/game/object/FlowerCreater;

    return-object v0
.end method


# virtual methods
.method public addFlowersTo(Lorg/cocos2d/nodes/CCNode;I)V
    .locals 1
    .param p1, "parent"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "zOrder"    # I

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {p1, v0, p2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 151
    :cond_0
    return-void
.end method

.method public addPoints()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const v10, 0x43ad8000    # 347.0f

    const/high16 v9, 0x42800000    # 64.0f

    const/high16 v8, 0x42400000    # 48.0f

    .line 72
    const/4 v6, 0x0

    .local v6, "rowIndex":I
    const/4 v1, 0x0

    .line 73
    .local v1, "colIndex":I
    const/4 v5, 0x4

    .local v5, "row":I
    const/16 v0, 0xc

    .local v0, "col":I
    mul-int v2, v5, v0

    .line 74
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 90
    return-void

    .line 75
    :cond_0
    const/4 v7, 0x2

    new-array v4, v7, [F

    .line 76
    .local v4, "pos":[F
    if-nez v3, :cond_2

    .line 77
    aput v8, v4, v11

    .line 78
    aput v10, v4, v12

    .line 83
    :goto_1
    iget-object v7, p0, Lcom/sns/game/object/FlowerCreater;->points:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    const/16 v7, 0xc

    if-ne v1, v7, :cond_1

    .line 86
    const/4 v1, 0x0

    .line 87
    add-int/lit8 v6, v6, 0x1

    .line 74
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_2
    int-to-float v7, v1

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    aput v7, v4, v11

    .line 81
    int-to-float v7, v6

    mul-float/2addr v7, v9

    sub-float v7, v10, v7

    aput v7, v4, v12

    goto :goto_1
.end method

.method public callBack_selector_startFlowerAction(Ljava/lang/Object;)V
    .locals 4
    .param p1, "dataObj"    # Ljava/lang/Object;

    .prologue
    .line 183
    const/4 v2, 0x0

    .line 185
    .local v2, "flower":Lorg/cocos2d/nodes/CCSprite;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    move-object v2, v0

    .line 186
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public createSelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/sns/game/object/FlowerCreater;->addPoints()V

    .line 49
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v0

    const-string v1, "zombie/flower.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/FlowerCreater;->modelTexture:Lorg/cocos2d/opengl/CCTexture2D;

    .line 50
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->modelTexture:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->spriteSheet(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/FlowerCreater;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 51
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v1, v0, v2

    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v1, v0}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/FlowerCreater;->firstPoint:Lorg/cocos2d/types/CGPoint;

    .line 52
    return-void
.end method

.method public destroyFlower(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 0
    .param p1, "flower"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 123
    :cond_0
    return-void
.end method

.method public destroyFlowers()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeSelf()V

    .line 128
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->flowerIndexSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 130
    :cond_0
    return-void
.end method

.method public firstFlower()Lorg/cocos2d/nodes/CCSprite;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/sns/game/object/FlowerCreater;->getFlowerSheet()Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method

.method public firstPoint()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->firstPoint:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public getFlower()Lorg/cocos2d/nodes/CCSprite;
    .locals 4

    .prologue
    .line 154
    const/4 v2, 0x0

    .local v2, "start":I
    invoke-virtual {p0}, Lcom/sns/game/object/FlowerCreater;->getFlowerSheet()Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 155
    .local v0, "end":I
    iget-object v3, p0, Lcom/sns/game/object/FlowerCreater;->flowerIndexSet:Ljava/util/Set;

    invoke-direct {p0, v3, v2, v0}, Lcom/sns/game/object/FlowerCreater;->randomNoRepeat(Ljava/util/Set;II)I

    move-result v1

    .line 156
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/sns/game/object/FlowerCreater;->getFlowerSheet()Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCSprite;

    return-object v3
.end method

.method public getFlowerCount()I
    .locals 5

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "count":I
    iget-object v3, p0, Lcom/sns/game/object/FlowerCreater;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 227
    return v0

    .line 219
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCNode;

    .local v2, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v1, v2

    .line 220
    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 221
    .local v1, "flower":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->numberOfRunningActions()I

    move-result v4

    if-nez v4, :cond_0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFlowerSheet()Lorg/cocos2d/nodes/CCSpriteSheet;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    return-object v0
.end method

.method public getParent()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->parent:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public isStolenAll()Z
    .locals 6

    .prologue
    .line 133
    const/4 v2, 0x1

    .line 134
    .local v2, "isStolenAll":Z
    invoke-virtual {p0}, Lcom/sns/game/object/FlowerCreater;->getFlowerSheet()Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "flowers":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 144
    :cond_1
    :goto_0
    return v2

    .line 136
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCNode;

    .local v3, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v0, v3

    .line 137
    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 138
    .local v0, "flower":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    const/4 v2, 0x0

    .line 140
    goto :goto_0
.end method

.method public loadFlower(FFI)V
    .locals 3
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "zOrder"    # I

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, "flower":Lorg/cocos2d/nodes/CCSprite;
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/object/FlowerCreater;->modelTexture:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 107
    invoke-virtual {v1, p1, p2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 108
    iget-object v2, p0, Lcom/sns/game/object/FlowerCreater;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v2, v1, p3}, Lorg/cocos2d/nodes/CCSpriteSheet;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadFlowers()V
    .locals 8

    .prologue
    .line 93
    const/4 v4, 0x0

    .local v4, "start":I
    iget-object v5, p0, Lcom/sns/game/object/FlowerCreater;->points:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 94
    .local v0, "end":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v2, "indexSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/sns/game/object/FlowerCreater;->flowerCount:I

    if-lt v1, v5, :cond_0

    .line 99
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 100
    return-void

    .line 96
    :cond_0
    iget-object v5, p0, Lcom/sns/game/object/FlowerCreater;->points:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v4, v0}, Lcom/sns/game/object/FlowerCreater;->randomNoRepeat(Ljava/util/Set;II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 97
    .local v3, "pos":[F
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    iget-object v7, p0, Lcom/sns/game/object/FlowerCreater;->points:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/sns/game/object/FlowerCreater;->loadFlower(FFI)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeSelf()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->flowerIndexSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->flowerIndexSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->points:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/sns/game/object/FlowerCreater;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    :cond_2
    iput-object v1, p0, Lcom/sns/game/object/FlowerCreater;->parent:Lorg/cocos2d/nodes/CCNode;

    .line 66
    iput-object v1, p0, Lcom/sns/game/object/FlowerCreater;->sheet:Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 67
    iput-object v1, p0, Lcom/sns/game/object/FlowerCreater;->modelTexture:Lorg/cocos2d/opengl/CCTexture2D;

    .line 68
    iput-object v1, p0, Lcom/sns/game/object/FlowerCreater;->firstPoint:Lorg/cocos2d/types/CGPoint;

    .line 69
    return-void
.end method

.method public removeFlowerIndex(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 3
    .param p1, "flower"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/sns/game/object/FlowerCreater;->getFlowerSheet()Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 206
    .local v0, "index":I
    iget-object v1, p0, Lcom/sns/game/object/FlowerCreater;->flowerIndexSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public setParent(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "parent"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sns/game/object/FlowerCreater;->parent:Lorg/cocos2d/nodes/CCNode;

    .line 198
    return-void
.end method

.method public startFlowerAction(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSprite;FLorg/cocos2d/types/CGPoint;)V
    .locals 7
    .param p1, "zombie"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "flower"    # Lorg/cocos2d/nodes/CCSprite;
    .param p3, "delay"    # F
    .param p4, "endPoint"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v4, 0x1

    .line 169
    invoke-virtual {p2}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    invoke-static {v3, p4}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v1

    .line 170
    .local v1, "distaneToFlower":F
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    invoke-static {v3, p4}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v0

    .line 171
    .local v0, "distanceToZombie":F
    div-float v3, v1, v0

    mul-float v2, p3, v3

    .line 173
    .local v2, "flowerMoveTime":F
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/cocos2d/nodes/CCSprite;->setUserData(Ljava/lang/Object;)V

    .line 176
    invoke-static {v2, p4}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v3

    new-array v4, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v5, 0x0

    .line 177
    const-string v6, "callBack_selector_startFlowerAction"

    invoke-static {p0, v6, p2}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v6

    aput-object v6, v4, v5

    .line 175
    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    .line 174
    invoke-virtual {p2, v3}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 180
    return-void
.end method
