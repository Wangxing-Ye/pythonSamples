.class public Lorg/cocos2d/actions/tile/CCShuffleTiles;
.super Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
.source "CCShuffleTiles.java"


# instance fields
.field rand:Ljava/util/Random;

.field seed:I

.field tiles:[Lorg/cocos2d/actions/tile/Tile;

.field tilesCount:I

.field tilesOrder:[I


# direct methods
.method public constructor <init>(ILorg/cocos2d/types/ccGridSize;F)V
    .locals 2
    .param p1, "s"    # I
    .param p2, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p3, "d"    # F

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p2, p3}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 28
    iput p1, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->seed:I

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->rand:Ljava/util/Random;

    .line 30
    iput-object v1, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tilesOrder:[I

    .line 31
    iput-object v1, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tiles:[Lorg/cocos2d/actions/tile/Tile;

    .line 32
    return-void
.end method

.method public static action(ILorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCShuffleTiles;
    .locals 1
    .param p0, "s"    # I
    .param p1, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "d"    # F

    .prologue
    .line 22
    new-instance v0, Lorg/cocos2d/actions/tile/CCShuffleTiles;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/actions/tile/CCShuffleTiles;-><init>(ILorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCShuffleTiles;->copy()Lorg/cocos2d/actions/tile/CCShuffleTiles;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/tile/CCShuffleTiles;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lorg/cocos2d/actions/tile/CCShuffleTiles;

    iget v1, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->seed:I

    iget-object v2, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->duration:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/tile/CCShuffleTiles;-><init>(ILorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCShuffleTiles;->copy()Lorg/cocos2d/actions/tile/CCShuffleTiles;

    move-result-object v0

    return-object v0
.end method

.method public getDelta(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccGridSize;
    .locals 5
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-static {v2, v2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 51
    .local v1, "pos2":Lorg/cocos2d/types/CGPoint;
    iget v2, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    mul-int/2addr v2, v3

    iget v3, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int v0, v2, v3

    .line 53
    .local v0, "idx":I
    iget-object v2, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tilesOrder:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Lorg/cocos2d/types/CGPoint;->x:F

    .line 54
    iget-object v2, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tilesOrder:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    rem-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 56
    iget v2, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v4, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v2

    return-object v2
.end method

.method public placeTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/actions/tile/Tile;)V
    .locals 5
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "t"    # Lorg/cocos2d/actions/tile/Tile;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lorg/cocos2d/actions/tile/CCShuffleTiles;->originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;

    move-result-object v0

    .line 62
    .local v0, "coords":Lorg/cocos2d/types/ccQuad3;
    iget-object v2, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/grid/CCGridBase;->getStep()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 63
    .local v1, "step":Lorg/cocos2d/types/CGPoint;
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    iget-object v3, p2, Lorg/cocos2d/actions/tile/Tile;->position:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    .line 64
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    iget-object v3, p2, Lorg/cocos2d/actions/tile/Tile;->position:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    .line 66
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->br_x:F

    iget-object v3, p2, Lorg/cocos2d/actions/tile/Tile;->position:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->br_x:F

    .line 67
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->br_y:F

    iget-object v3, p2, Lorg/cocos2d/actions/tile/Tile;->position:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->br_y:F

    .line 69
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    iget-object v3, p2, Lorg/cocos2d/actions/tile/Tile;->position:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    .line 70
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    iget-object v3, p2, Lorg/cocos2d/actions/tile/Tile;->position:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    .line 72
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    iget-object v3, p2, Lorg/cocos2d/actions/tile/Tile;->position:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    .line 73
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    iget-object v3, p2, Lorg/cocos2d/actions/tile/Tile;->position:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    .line 75
    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/actions/tile/CCShuffleTiles;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 76
    return-void
.end method

.method public shuffle([II)V
    .locals 7
    .param p1, "array"    # [I
    .param p2, "len"    # I

    .prologue
    .line 41
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 47
    return-void

    .line 42
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    add-int/lit8 v5, v0, 0x1

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 43
    .local v1, "j":I
    aget v2, p1, v0

    .line 44
    .local v2, "v":I
    aget v3, p1, v1

    aput v3, p1, v0

    .line 45
    aput v2, p1, v1

    .line 41
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 7
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 82
    iget v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->seed:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 83
    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->rand:Ljava/util/Random;

    iget v5, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->seed:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Random;->setSeed(J)V

    .line 86
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, v4, Lorg/cocos2d/types/ccGridSize;->x:I

    iget-object v5, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v5, v5, Lorg/cocos2d/types/ccGridSize;->y:I

    mul-int/2addr v4, v5

    iput v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tilesCount:I

    .line 87
    iget v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tilesCount:I

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tilesOrder:[I

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tilesCount:I

    if-lt v0, v4, :cond_1

    .line 93
    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tilesOrder:[I

    iget v5, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tilesCount:I

    invoke-virtual {p0, v4, v5}, Lorg/cocos2d/actions/tile/CCShuffleTiles;->shuffle([II)V

    .line 95
    iget v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tilesCount:I

    new-array v4, v4, [Lorg/cocos2d/actions/tile/Tile;

    iput-object v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tiles:[Lorg/cocos2d/actions/tile/Tile;

    .line 96
    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tiles:[Lorg/cocos2d/actions/tile/Tile;

    .line 98
    .local v3, "tileArray":[Lorg/cocos2d/actions/tile/Tile;
    const/4 v2, 0x0

    .line 99
    .local v2, "t":I
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, v4, Lorg/cocos2d/types/ccGridSize;->x:I

    if-lt v0, v4, :cond_2

    .line 107
    return-void

    .line 91
    .end local v2    # "t":I
    .end local v3    # "tileArray":[Lorg/cocos2d/actions/tile/Tile;
    :cond_1
    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tilesOrder:[I

    aput v0, v4, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .restart local v2    # "t":I
    .restart local v3    # "tileArray":[Lorg/cocos2d/actions/tile/Tile;
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, v4, Lorg/cocos2d/types/ccGridSize;->y:I

    if-lt v1, v4, :cond_3

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_3
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-static {v4, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 102
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 103
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cocos2d/actions/tile/CCShuffleTiles;->getDelta(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccGridSize;

    move-result-object v6

    .line 101
    invoke-static {v4, v5, v6}, Lorg/cocos2d/actions/tile/Tile;->make(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/actions/tile/Tile;

    move-result-object v4

    aput-object v4, v3, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public update(F)V
    .locals 7
    .param p1, "time"    # F

    .prologue
    .line 113
    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->tiles:[Lorg/cocos2d/actions/tile/Tile;

    .line 114
    .local v3, "tileArray":[Lorg/cocos2d/actions/tile/Tile;
    const/4 v1, 0x0

    .line 116
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, v4, Lorg/cocos2d/types/ccGridSize;->x:I

    if-lt v0, v4, :cond_0

    .line 124
    return-void

    .line 117
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCShuffleTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, v4, Lorg/cocos2d/types/ccGridSize;->y:I

    if-lt v2, v4, :cond_1

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    aget-object v4, v3, v1

    .line 119
    aget-object v5, v3, v1

    iget-object v5, v5, Lorg/cocos2d/actions/tile/Tile;->delta:Lorg/cocos2d/types/ccGridSize;

    iget v5, v5, Lorg/cocos2d/types/ccGridSize;->x:I

    int-to-float v5, v5

    aget-object v6, v3, v1

    iget-object v6, v6, Lorg/cocos2d/actions/tile/Tile;->delta:Lorg/cocos2d/types/ccGridSize;

    iget v6, v6, Lorg/cocos2d/types/ccGridSize;->y:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 118
    invoke-static {v5, p1}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    iput-object v5, v4, Lorg/cocos2d/actions/tile/Tile;->position:Lorg/cocos2d/types/CGPoint;

    .line 120
    invoke-static {v0, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {p0, v4, v5}, Lorg/cocos2d/actions/tile/CCShuffleTiles;->placeTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/actions/tile/Tile;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
