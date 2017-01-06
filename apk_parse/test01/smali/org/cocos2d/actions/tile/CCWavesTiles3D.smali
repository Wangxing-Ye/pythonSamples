.class public Lorg/cocos2d/actions/tile/CCWavesTiles3D;
.super Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
.source "CCWavesTiles3D.java"


# instance fields
.field amplitude:F

.field amplitudeRate:F

.field waves:I


# direct methods
.method public constructor <init>(IFLorg/cocos2d/types/ccGridSize;F)V
    .locals 1
    .param p1, "wav"    # I
    .param p2, "amp"    # F
    .param p3, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p4, "d"    # F

    .prologue
    .line 24
    invoke-direct {p0, p3, p4}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 25
    iput p1, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->waves:I

    .line 26
    iput p2, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->amplitude:F

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->amplitudeRate:F

    .line 28
    return-void
.end method

.method public static action(IFLorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCWavesTiles3D;
    .locals 1
    .param p0, "wav"    # I
    .param p1, "amp"    # F
    .param p2, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p3, "d"    # F

    .prologue
    .line 19
    new-instance v0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/actions/tile/CCWavesTiles3D;-><init>(IFLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->copy()Lorg/cocos2d/actions/tile/CCWavesTiles3D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->copy()Lorg/cocos2d/actions/tile/CCWavesTiles3D;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/tile/CCWavesTiles3D;
    .locals 5

    .prologue
    .line 32
    new-instance v0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;

    iget v1, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->waves:I

    iget v2, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->amplitude:F

    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->duration:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/tile/CCWavesTiles3D;-><init>(IFLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method

.method public update(F)V
    .locals 7
    .param p1, "time"    # F

    .prologue
    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->x:I

    if-lt v1, v3, :cond_0

    .line 52
    return-void

    .line 40
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    if-lt v2, v3, :cond_1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v1, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;

    move-result-object v0

    .line 43
    .local v0, "coords":Lorg/cocos2d/types/ccQuad3;
    float-to-double v3, p1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    iget v5, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->waves:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    iget v5, v0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    iget v6, v0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    add-float/2addr v5, v6

    const v6, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v6

    float-to-double v5, v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 44
    iget v5, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->amplitude:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    iget v5, p0, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->amplitudeRate:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    .line 43
    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    .line 45
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->br_z:F

    .line 46
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    .line 47
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    .line 49
    invoke-static {v1, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/cocos2d/actions/tile/CCWavesTiles3D;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
