.class public Lorg/cocos2d/actions/grid/CCLiquid;
.super Lorg/cocos2d/actions/grid/CCGrid3DAction;
.source "CCLiquid.java"


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
    .line 23
    invoke-direct {p0, p3, p4}, Lorg/cocos2d/actions/grid/CCGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 24
    iput p1, p0, Lorg/cocos2d/actions/grid/CCLiquid;->waves:I

    .line 25
    iput p2, p0, Lorg/cocos2d/actions/grid/CCLiquid;->amplitude:F

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/actions/grid/CCLiquid;->amplitudeRate:F

    .line 27
    return-void
.end method

.method public static action(IFLorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCLiquid;
    .locals 1
    .param p0, "wav"    # I
    .param p1, "amp"    # F
    .param p2, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p3, "d"    # F

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/grid/CCLiquid;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/actions/grid/CCLiquid;-><init>(IFLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCLiquid;->copy()Lorg/cocos2d/actions/grid/CCLiquid;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCLiquid;->copy()Lorg/cocos2d/actions/grid/CCLiquid;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/grid/CCLiquid;
    .locals 5

    .prologue
    .line 45
    new-instance v0, Lorg/cocos2d/actions/grid/CCLiquid;

    iget v1, p0, Lorg/cocos2d/actions/grid/CCLiquid;->waves:I

    iget v2, p0, Lorg/cocos2d/actions/grid/CCLiquid;->amplitude:F

    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCLiquid;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, p0, Lorg/cocos2d/actions/grid/CCLiquid;->duration:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/grid/CCLiquid;-><init>(IFLorg/cocos2d/types/ccGridSize;F)V

    .line 46
    .local v0, "copy":Lorg/cocos2d/actions/grid/CCLiquid;
    return-object v0
.end method

.method public update(F)V
    .locals 14
    .param p1, "time"    # F

    .prologue
    const v13, 0x3c23d70a    # 0.01f

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 33
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCLiquid;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->x:I

    if-lt v0, v3, :cond_0

    .line 41
    return-void

    .line 34
    :cond_0
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCLiquid;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    if-lt v1, v3, :cond_1

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/actions/grid/CCLiquid;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v2

    .line 36
    .local v2, "v":Lorg/cocos2d/types/CCVertex3D;
    iget v3, v2, Lorg/cocos2d/types/CCVertex3D;->x:F

    float-to-double v3, v3

    float-to-double v5, p1

    mul-double/2addr v5, v11

    iget v7, p0, Lorg/cocos2d/actions/grid/CCLiquid;->waves:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v9

    iget v7, v2, Lorg/cocos2d/types/CCVertex3D;->x:F

    mul-float/2addr v7, v13

    float-to-double v7, v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/grid/CCLiquid;->amplitude:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/grid/CCLiquid;->amplitudeRate:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 37
    iget v3, v2, Lorg/cocos2d/types/CCVertex3D;->y:F

    float-to-double v3, v3

    float-to-double v5, p1

    mul-double/2addr v5, v11

    iget v7, p0, Lorg/cocos2d/actions/grid/CCLiquid;->waves:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v9

    iget v7, v2, Lorg/cocos2d/types/CCVertex3D;->y:F

    mul-float/2addr v7, v13

    float-to-double v7, v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/actions/grid/CCLiquid;->amplitude:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/actions/grid/CCLiquid;->amplitudeRate:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 38
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/actions/grid/CCLiquid;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
