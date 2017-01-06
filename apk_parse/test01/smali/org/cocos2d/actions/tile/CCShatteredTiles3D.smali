.class public Lorg/cocos2d/actions/tile/CCShatteredTiles3D;
.super Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
.source "CCShatteredTiles3D.java"


# instance fields
.field once:Z

.field randrange:I

.field shatterZ:Z


# direct methods
.method public constructor <init>(IZLorg/cocos2d/types/ccGridSize;F)V
    .locals 1
    .param p1, "range"    # I
    .param p2, "sz"    # Z
    .param p3, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p4, "d"    # F

    .prologue
    .line 21
    invoke-direct {p0, p3, p4}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->once:Z

    .line 23
    iput p1, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    .line 24
    iput-boolean p2, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->shatterZ:Z

    .line 25
    return-void
.end method

.method public static action(IZLorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCShatteredTiles3D;
    .locals 1
    .param p0, "range"    # I
    .param p1, "sz"    # Z
    .param p2, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p3, "d"    # F

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;-><init>(IZLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->copy()Lorg/cocos2d/actions/tile/CCShatteredTiles3D;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/tile/CCShatteredTiles3D;
    .locals 5

    .prologue
    .line 29
    new-instance v0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;

    iget v1, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    iget-boolean v2, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->shatterZ:Z

    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->duration:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;-><init>(IZLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->copy()Lorg/cocos2d/actions/tile/CCShatteredTiles3D;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 9
    .param p1, "time"    # F

    .prologue
    .line 36
    iget-boolean v3, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->once:Z

    if-nez v3, :cond_0

    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->x:I

    if-lt v1, v3, :cond_1

    .line 64
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->once:Z

    .line 66
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 38
    .restart local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    if-lt v2, v3, :cond_2

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {v1, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;

    move-result-object v0

    .line 42
    .local v0, "coords":Lorg/cocos2d/types/ccQuad3;
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    .line 43
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->br_x:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->br_x:F

    .line 44
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    .line 45
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    .line 48
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    .line 49
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->br_y:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->br_y:F

    .line 50
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    .line 51
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    .line 53
    iget-boolean v3, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->shatterZ:Z

    if-eqz v3, :cond_3

    .line 54
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    .line 55
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->br_z:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->br_z:F

    .line 56
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    .line 57
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->randrange:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    .line 60
    :cond_3
    invoke-static {v1, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/cocos2d/actions/tile/CCShatteredTiles3D;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method
