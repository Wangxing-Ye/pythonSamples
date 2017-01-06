.class public Lorg/cocos2d/actions/tile/CCTurnOffTiles;
.super Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
.source "CCTurnOffTiles.java"


# instance fields
.field rand:Ljava/util/Random;

.field seed:I

.field tilesCount:I

.field tilesOrder:[I


# direct methods
.method protected constructor <init>(ILorg/cocos2d/types/ccGridSize;F)V
    .locals 1
    .param p1, "s"    # I
    .param p2, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p3, "d"    # F

    .prologue
    .line 26
    invoke-direct {p0, p2, p3}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 27
    iput p1, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->seed:I

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->rand:Ljava/util/Random;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->tilesOrder:[I

    .line 30
    return-void
.end method

.method public static action(ILorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCTurnOffTiles;
    .locals 1
    .param p0, "s"    # I
    .param p1, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "d"    # F

    .prologue
    .line 21
    new-instance v0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/actions/tile/CCTurnOffTiles;-><init>(ILorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->copy()Lorg/cocos2d/actions/tile/CCTurnOffTiles;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->copy()Lorg/cocos2d/actions/tile/CCTurnOffTiles;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/tile/CCTurnOffTiles;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;

    iget v1, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->seed:I

    iget-object v2, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->duration:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/tile/CCTurnOffTiles;-><init>(ILorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method

.method public shuffle([II)V
    .locals 5
    .param p1, "array"    # [I
    .param p2, "len"    # I

    .prologue
    .line 38
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 44
    return-void

    .line 39
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->rand:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    add-int/lit8 v4, v0, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 40
    .local v1, "j":I
    aget v2, p1, v0

    .line 41
    .local v2, "v":I
    aget v3, p1, v1

    aput v3, p1, v0

    .line 42
    aput v2, p1, v1

    .line 38
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 59
    iget v1, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->seed:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->rand:Ljava/util/Random;

    iget v2, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->seed:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 63
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v1, v1, Lorg/cocos2d/types/ccGridSize;->x:I

    iget-object v2, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v2, v2, Lorg/cocos2d/types/ccGridSize;->y:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->tilesCount:I

    .line 64
    iget v1, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->tilesCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->tilesOrder:[I

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->tilesCount:I

    if-lt v0, v1, :cond_1

    .line 69
    iget-object v1, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->tilesOrder:[I

    iget v2, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->tilesCount:I

    invoke-virtual {p0, v1, v2}, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->shuffle([II)V

    .line 70
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->tilesOrder:[I

    aput v0, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public turnOffTile(Lorg/cocos2d/types/ccGridSize;)V
    .locals 1
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 51
    new-instance v0, Lorg/cocos2d/types/ccQuad3;

    invoke-direct {v0}, Lorg/cocos2d/types/ccQuad3;-><init>()V

    .line 52
    .local v0, "coords":Lorg/cocos2d/types/ccQuad3;
    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 53
    return-void
.end method

.method public turnOnTile(Lorg/cocos2d/types/ccGridSize;)V
    .locals 1
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 48
    return-void
.end method

.method public update(F)V
    .locals 6
    .param p1, "time"    # F

    .prologue
    .line 76
    iget v4, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->tilesCount:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v1, v4

    .line 78
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->tilesCount:I

    if-lt v0, v4, :cond_0

    .line 87
    return-void

    .line 79
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->tilesOrder:[I

    aget v2, v4, v0

    .line 80
    .local v2, "t":I
    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, v4, Lorg/cocos2d/types/ccGridSize;->y:I

    div-int v4, v2, v4

    iget-object v5, p0, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v5, v5, Lorg/cocos2d/types/ccGridSize;->y:I

    rem-int v5, v2, v5

    invoke-static {v4, v5}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    .line 82
    .local v3, "tilePos":Lorg/cocos2d/types/ccGridSize;
    if-ge v0, v1, :cond_1

    .line 83
    invoke-virtual {p0, v3}, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->turnOffTile(Lorg/cocos2d/types/ccGridSize;)V

    .line 78
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v3}, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->turnOnTile(Lorg/cocos2d/types/ccGridSize;)V

    goto :goto_1
.end method
