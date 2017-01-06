.class public Lorg/cocos2d/actions/grid/CCRipple3D;
.super Lorg/cocos2d/actions/grid/CCGrid3DAction;
.source "CCRipple3D.java"


# instance fields
.field amplitude:F

.field amplitudeRate:F

.field position:Lorg/cocos2d/types/CGPoint;

.field radius:F

.field waves:I


# direct methods
.method public constructor <init>(Lorg/cocos2d/types/CGPoint;FIFLorg/cocos2d/types/ccGridSize;F)V
    .locals 1
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "r"    # F
    .param p3, "wav"    # I
    .param p4, "amp"    # F
    .param p5, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p6, "d"    # F

    .prologue
    .line 31
    invoke-direct {p0, p5, p6}, Lorg/cocos2d/actions/grid/CCGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 32
    iput-object p1, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->position:Lorg/cocos2d/types/CGPoint;

    .line 33
    iput p2, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->radius:F

    .line 34
    iput p3, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->waves:I

    .line 35
    iput p4, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->amplitude:F

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->amplitudeRate:F

    .line 37
    return-void
.end method

.method public static action(Lorg/cocos2d/types/CGPoint;FIFLorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCRipple3D;
    .locals 7
    .param p0, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "radius"    # F
    .param p2, "wav"    # I
    .param p3, "amp"    # F
    .param p4, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p5, "d"    # F

    .prologue
    .line 25
    new-instance v0, Lorg/cocos2d/actions/grid/CCRipple3D;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/cocos2d/actions/grid/CCRipple3D;-><init>(Lorg/cocos2d/types/CGPoint;FIFLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCRipple3D;->copy()Lorg/cocos2d/actions/grid/CCRipple3D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCRipple3D;->copy()Lorg/cocos2d/actions/grid/CCRipple3D;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/grid/CCRipple3D;
    .locals 7

    .prologue
    .line 41
    new-instance v0, Lorg/cocos2d/actions/grid/CCRipple3D;

    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->position:Lorg/cocos2d/types/CGPoint;

    iget v2, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->radius:F

    iget v3, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->waves:I

    .line 42
    iget v4, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->amplitude:F

    iget-object v5, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v6, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->duration:F

    .line 41
    invoke-direct/range {v0 .. v6}, Lorg/cocos2d/actions/grid/CCRipple3D;-><init>(Lorg/cocos2d/types/CGPoint;FIFLorg/cocos2d/types/ccGridSize;F)V

    .line 43
    .local v0, "copy":Lorg/cocos2d/actions/grid/CCRipple3D;
    return-object v0
.end method

.method public update(F)V
    .locals 14
    .param p1, "time"    # F

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v6, v6, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v6, v6, 0x1

    if-lt v0, v6, :cond_0

    .line 66
    return-void

    .line 52
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v6, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v6, v6, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/lit8 v6, v6, 0x1

    if-lt v1, v6, :cond_1

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cocos2d/actions/grid/CCRipple3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v4

    .line 54
    .local v4, "v":Lorg/cocos2d/types/CCVertex3D;
    iget-object v6, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->position:Lorg/cocos2d/types/CGPoint;

    iget v7, v4, Lorg/cocos2d/types/CCVertex3D;->x:F

    iget v8, v4, Lorg/cocos2d/types/CCVertex3D;->y:F

    invoke-static {v7, v8}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 55
    .local v5, "vect":Lorg/cocos2d/types/CGPoint;
    invoke-static {v5}, Lorg/cocos2d/types/CGPoint;->ccpLength(Lorg/cocos2d/types/CGPoint;)F

    move-result v2

    .line 57
    .local v2, "r":F
    iget v6, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->radius:F

    cmpg-float v6, v2, v6

    if-gez v6, :cond_2

    .line 58
    iget v6, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->radius:F

    sub-float v2, v6, v2

    .line 59
    iget v6, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->radius:F

    div-float v6, v2, v6

    float-to-double v6, v6

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    .line 60
    .local v3, "rate":F
    iget v6, v4, Lorg/cocos2d/types/CCVertex3D;->z:F

    float-to-double v6, v6

    float-to-double v8, p1

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    iget v10, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->waves:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    mul-double/2addr v8, v12

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v10, v2

    float-to-double v10, v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->amplitude:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    iget v10, p0, Lorg/cocos2d/actions/grid/CCRipple3D;->amplitudeRate:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    float-to-double v10, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, v4, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 63
    .end local v3    # "rate":F
    :cond_2
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lorg/cocos2d/actions/grid/CCRipple3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
