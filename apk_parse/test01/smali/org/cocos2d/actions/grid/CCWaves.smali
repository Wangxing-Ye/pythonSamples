.class public Lorg/cocos2d/actions/grid/CCWaves;
.super Lorg/cocos2d/actions/grid/CCGrid3DAction;
.source "CCWaves.java"


# instance fields
.field amplitude:F

.field amplitudeRate:F

.field horizontal:Z

.field vertical:Z

.field waves:I


# direct methods
.method public constructor <init>(IFZZLorg/cocos2d/types/ccGridSize;F)V
    .locals 1
    .param p1, "wav"    # I
    .param p2, "amp"    # F
    .param p3, "h"    # Z
    .param p4, "v"    # Z
    .param p5, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p6, "d"    # F

    .prologue
    .line 26
    invoke-direct {p0, p5, p6}, Lorg/cocos2d/actions/grid/CCGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 27
    iput p1, p0, Lorg/cocos2d/actions/grid/CCWaves;->waves:I

    .line 28
    iput p2, p0, Lorg/cocos2d/actions/grid/CCWaves;->amplitude:F

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/actions/grid/CCWaves;->amplitudeRate:F

    .line 30
    iput-boolean p3, p0, Lorg/cocos2d/actions/grid/CCWaves;->horizontal:Z

    .line 31
    iput-boolean p4, p0, Lorg/cocos2d/actions/grid/CCWaves;->vertical:Z

    .line 32
    return-void
.end method

.method public static action(IFZZLorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCWaves;
    .locals 7
    .param p0, "wav"    # I
    .param p1, "amp"    # F
    .param p2, "h"    # Z
    .param p3, "v"    # Z
    .param p4, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p5, "d"    # F

    .prologue
    .line 21
    new-instance v0, Lorg/cocos2d/actions/grid/CCWaves;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/cocos2d/actions/grid/CCWaves;-><init>(IFZZLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCWaves;->copy()Lorg/cocos2d/actions/grid/CCWaves;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCWaves;->copy()Lorg/cocos2d/actions/grid/CCWaves;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/grid/CCWaves;
    .locals 7

    .prologue
    .line 55
    new-instance v0, Lorg/cocos2d/actions/grid/CCWaves;

    iget v1, p0, Lorg/cocos2d/actions/grid/CCWaves;->waves:I

    iget v2, p0, Lorg/cocos2d/actions/grid/CCWaves;->amplitude:F

    iget-boolean v3, p0, Lorg/cocos2d/actions/grid/CCWaves;->horizontal:Z

    iget-boolean v4, p0, Lorg/cocos2d/actions/grid/CCWaves;->vertical:Z

    iget-object v5, p0, Lorg/cocos2d/actions/grid/CCWaves;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v6, p0, Lorg/cocos2d/actions/grid/CCWaves;->duration:F

    invoke-direct/range {v0 .. v6}, Lorg/cocos2d/actions/grid/CCWaves;-><init>(IFZZLorg/cocos2d/types/ccGridSize;F)V

    .line 56
    .local v0, "copy":Lorg/cocos2d/actions/grid/CCWaves;
    return-object v0
.end method

.method public update(F)V
    .locals 14
    .param p1, "time"    # F

    .prologue
    const v13, 0x3c23d70a    # 0.01f

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCWaves;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v3, v3, 0x1

    if-lt v0, v3, :cond_0

    .line 51
    return-void

    .line 39
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCWaves;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/lit8 v3, v3, 0x1

    if-lt v1, v3, :cond_1

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/actions/grid/CCWaves;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v2

    .line 42
    .local v2, "v":Lorg/cocos2d/types/CCVertex3D;
    iget-boolean v3, p0, Lorg/cocos2d/actions/grid/CCWaves;->vertical:Z

    if-eqz v3, :cond_2

    .line 43
    iget v3, v2, Lorg/cocos2d/types/CCVertex3D;->x:F

    float-to-double v3, v3

    float-to-double v5, p1

    mul-double/2addr v5, v11

    iget v7, p0, Lorg/cocos2d/actions/grid/CCWaves;->waves:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v9

    iget v7, v2, Lorg/cocos2d/types/CCVertex3D;->y:F

    mul-float/2addr v7, v13

    float-to-double v7, v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/grid/CCWaves;->amplitude:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/grid/CCWaves;->amplitudeRate:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 45
    :cond_2
    iget-boolean v3, p0, Lorg/cocos2d/actions/grid/CCWaves;->horizontal:Z

    if-eqz v3, :cond_3

    .line 46
    iget v3, v2, Lorg/cocos2d/types/CCVertex3D;->y:F

    float-to-double v3, v3

    float-to-double v5, p1

    mul-double/2addr v5, v11

    iget v7, p0, Lorg/cocos2d/actions/grid/CCWaves;->waves:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v9

    iget v7, v2, Lorg/cocos2d/types/CCVertex3D;->x:F

    mul-float/2addr v7, v13

    float-to-double v7, v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/grid/CCWaves;->amplitude:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/grid/CCWaves;->amplitudeRate:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 48
    :cond_3
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/actions/grid/CCWaves;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
