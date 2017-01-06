.class public Lorg/cocos2d/actions/tile/CCJumpTiles3D;
.super Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
.source "CCJumpTiles3D.java"


# instance fields
.field amplitude:F

.field amplitudeRate:F

.field jumps:I


# direct methods
.method protected constructor <init>(IFLorg/cocos2d/types/ccGridSize;F)V
    .locals 1
    .param p1, "j"    # I
    .param p2, "amp"    # F
    .param p3, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p4, "d"    # F

    .prologue
    .line 27
    invoke-direct {p0, p3, p4}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 28
    iput p1, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->jumps:I

    .line 29
    iput p2, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->amplitude:F

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->amplitudeRate:F

    .line 31
    return-void
.end method

.method public static action(IFLorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCJumpTiles3D;
    .locals 1
    .param p0, "j"    # I
    .param p1, "amp"    # F
    .param p2, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p3, "d"    # F

    .prologue
    .line 22
    new-instance v0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/actions/tile/CCJumpTiles3D;-><init>(IFLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->copy()Lorg/cocos2d/actions/tile/CCJumpTiles3D;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/tile/CCJumpTiles3D;
    .locals 5

    .prologue
    .line 35
    new-instance v0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;

    iget v1, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->jumps:I

    iget v2, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->amplitude:F

    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->duration:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/tile/CCJumpTiles3D;-><init>(IFLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->copy()Lorg/cocos2d/actions/tile/CCJumpTiles3D;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 11
    .param p1, "time"    # F

    .prologue
    const-wide v9, 0x400921fb54442d18L    # Math.PI

    .line 43
    float-to-double v5, p1

    mul-double/2addr v5, v9

    iget v7, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->jumps:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->amplitude:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->amplitudeRate:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    .line 44
    .local v3, "sinz":F
    iget v5, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->jumps:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    float-to-double v5, v5

    mul-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->amplitude:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->amplitudeRate:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-float v4, v5

    .line 46
    .local v4, "sinz2":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v5, v5, Lorg/cocos2d/types/ccGridSize;->x:I

    if-lt v1, v5, :cond_0

    .line 65
    return-void

    .line 47
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v5, p0, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v5, v5, Lorg/cocos2d/types/ccGridSize;->y:I

    if-lt v2, v5, :cond_1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v1, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;

    move-result-object v0

    .line 50
    .local v0, "coords":Lorg/cocos2d/types/ccQuad3;
    add-int v5, v1, v2

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 51
    iget v5, v0, Lorg/cocos2d/types/ccQuad3;->br_z:F

    add-float/2addr v5, v3

    iput v5, v0, Lorg/cocos2d/types/ccQuad3;->br_z:F

    .line 52
    iget v5, v0, Lorg/cocos2d/types/ccQuad3;->br_z:F

    add-float/2addr v5, v3

    iput v5, v0, Lorg/cocos2d/types/ccQuad3;->br_z:F

    .line 53
    iget v5, v0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    add-float/2addr v5, v3

    iput v5, v0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    .line 54
    iget v5, v0, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    add-float/2addr v5, v3

    iput v5, v0, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    .line 62
    :goto_2
    invoke-static {v1, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lorg/cocos2d/actions/tile/CCJumpTiles3D;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56
    :cond_2
    iget v5, v0, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    add-float/2addr v5, v4

    iput v5, v0, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    .line 57
    iget v5, v0, Lorg/cocos2d/types/ccQuad3;->br_z:F

    add-float/2addr v5, v4

    iput v5, v0, Lorg/cocos2d/types/ccQuad3;->br_z:F

    .line 58
    iget v5, v0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    add-float/2addr v5, v4

    iput v5, v0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    .line 59
    iget v5, v0, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    add-float/2addr v5, v4

    iput v5, v0, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    goto :goto_2
.end method
