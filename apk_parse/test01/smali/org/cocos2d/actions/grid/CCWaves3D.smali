.class public Lorg/cocos2d/actions/grid/CCWaves3D;
.super Lorg/cocos2d/actions/grid/CCGrid3DAction;
.source "CCWaves3D.java"


# instance fields
.field amplitude:F

.field amplitudeRate:F

.field waves:I


# direct methods
.method public constructor <init>(IFLorg/cocos2d/types/ccGridSize;F)V
    .locals 1
    .param p1, "wav"    # I
    .param p2, "amp"    # F
    .param p3, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p4, "d"    # F

    .prologue
    .line 19
    invoke-direct {p0, p3, p4}, Lorg/cocos2d/actions/grid/CCGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 20
    iput p1, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->waves:I

    .line 21
    iput p2, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->amplitude:F

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->amplitudeRate:F

    .line 23
    return-void
.end method

.method public static action(IFLorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCWaves3D;
    .locals 1
    .param p0, "wav"    # I
    .param p1, "amp"    # F
    .param p2, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p3, "d"    # F

    .prologue
    .line 15
    new-instance v0, Lorg/cocos2d/actions/grid/CCWaves3D;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/actions/grid/CCWaves3D;-><init>(IFLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCWaves3D;->copy()Lorg/cocos2d/actions/grid/CCWaves3D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCWaves3D;->copy()Lorg/cocos2d/actions/grid/CCWaves3D;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/grid/CCWaves3D;
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lorg/cocos2d/actions/grid/CCWaves3D;

    iget v1, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->waves:I

    iget v2, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->amplitude:F

    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->duration:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/grid/CCWaves3D;-><init>(IFLorg/cocos2d/types/ccGridSize;F)V

    .line 28
    .local v0, "copy":Lorg/cocos2d/actions/grid/CCWaves3D;
    return-object v0
.end method

.method public update(F)V
    .locals 8
    .param p1, "time"    # F

    .prologue
    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v3, v3, 0x1

    if-lt v0, v3, :cond_0

    .line 42
    return-void

    .line 36
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/lit8 v3, v3, 0x1

    if-lt v1, v3, :cond_1

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/actions/grid/CCWaves3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v2

    .line 38
    .local v2, "v":Lorg/cocos2d/types/CCVertex3D;
    iget v3, v2, Lorg/cocos2d/types/CCVertex3D;->z:F

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    float-to-double v6, p1

    mul-double/2addr v4, v6

    iget v6, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->waves:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iget v6, v2, Lorg/cocos2d/types/CCVertex3D;->y:F

    iget v7, v2, Lorg/cocos2d/types/CCVertex3D;->x:F

    add-float/2addr v6, v7

    const v7, 0x3c23d70a    # 0.01f

    mul-float/2addr v6, v7

    float-to-double v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v6, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->amplitude:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lorg/cocos2d/actions/grid/CCWaves3D;->amplitudeRate:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 39
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/actions/grid/CCWaves3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
