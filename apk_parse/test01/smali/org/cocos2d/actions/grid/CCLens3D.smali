.class public Lorg/cocos2d/actions/grid/CCLens3D;
.super Lorg/cocos2d/actions/grid/CCGrid3DAction;
.source "CCLens3D.java"


# instance fields
.field lastPosition:Lorg/cocos2d/types/CGPoint;

.field lensEffect:F

.field position:Lorg/cocos2d/types/CGPoint;

.field radius:F


# direct methods
.method public constructor <init>(Lorg/cocos2d/types/CGPoint;FLorg/cocos2d/types/ccGridSize;F)V
    .locals 2
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "r"    # F
    .param p3, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p4, "d"    # F

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 27
    invoke-direct {p0, p3, p4}, Lorg/cocos2d/actions/grid/CCGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 29
    iput-object p1, p0, Lorg/cocos2d/actions/grid/CCLens3D;->position:Lorg/cocos2d/types/CGPoint;

    .line 30
    iput p2, p0, Lorg/cocos2d/actions/grid/CCLens3D;->radius:F

    .line 31
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lorg/cocos2d/actions/grid/CCLens3D;->lensEffect:F

    .line 32
    invoke-static {v1, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/grid/CCLens3D;->lastPosition:Lorg/cocos2d/types/CGPoint;

    .line 33
    return-void
.end method

.method public static action(Lorg/cocos2d/types/CGPoint;FLorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCLens3D;
    .locals 1
    .param p0, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "r"    # F
    .param p2, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p3, "d"    # F

    .prologue
    .line 22
    new-instance v0, Lorg/cocos2d/actions/grid/CCLens3D;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/actions/grid/CCLens3D;-><init>(Lorg/cocos2d/types/CGPoint;FLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCLens3D;->copy()Lorg/cocos2d/actions/grid/CCLens3D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCLens3D;->copy()Lorg/cocos2d/actions/grid/CCLens3D;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/grid/CCLens3D;
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lorg/cocos2d/actions/grid/CCLens3D;

    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCLens3D;->position:Lorg/cocos2d/types/CGPoint;

    iget v2, p0, Lorg/cocos2d/actions/grid/CCLens3D;->radius:F

    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCLens3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, p0, Lorg/cocos2d/actions/grid/CCLens3D;->duration:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/grid/CCLens3D;-><init>(Lorg/cocos2d/types/CGPoint;FLorg/cocos2d/types/ccGridSize;F)V

    .line 38
    .local v0, "copy":Lorg/cocos2d/actions/grid/CCLens3D;
    return-object v0
.end method

.method public update(F)V
    .locals 13
    .param p1, "time"    # F

    .prologue
    const/4 v12, 0x0

    .line 43
    iget-object v9, p0, Lorg/cocos2d/actions/grid/CCLens3D;->position:Lorg/cocos2d/types/CGPoint;

    iget v9, v9, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v10, p0, Lorg/cocos2d/actions/grid/CCLens3D;->lastPosition:Lorg/cocos2d/types/CGPoint;

    iget v10, v10, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_0

    iget-object v9, p0, Lorg/cocos2d/actions/grid/CCLens3D;->position:Lorg/cocos2d/types/CGPoint;

    iget v9, v9, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v10, p0, Lorg/cocos2d/actions/grid/CCLens3D;->lastPosition:Lorg/cocos2d/types/CGPoint;

    iget v10, v10, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v9, p0, Lorg/cocos2d/actions/grid/CCLens3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v9, v9, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v9, v9, 0x1

    if-lt v0, v9, :cond_2

    .line 70
    iget-object v9, p0, Lorg/cocos2d/actions/grid/CCLens3D;->position:Lorg/cocos2d/types/CGPoint;

    iput-object v9, p0, Lorg/cocos2d/actions/grid/CCLens3D;->lastPosition:Lorg/cocos2d/types/CGPoint;

    .line 72
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 47
    .restart local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v9, p0, Lorg/cocos2d/actions/grid/CCLens3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v9, v9, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/lit8 v9, v9, 0x1

    if-lt v1, v9, :cond_3

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_3
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/cocos2d/actions/grid/CCLens3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v7

    .line 49
    .local v7, "v":Lorg/cocos2d/types/CCVertex3D;
    iget-object v9, p0, Lorg/cocos2d/actions/grid/CCLens3D;->position:Lorg/cocos2d/types/CGPoint;

    iget v10, v7, Lorg/cocos2d/types/CCVertex3D;->x:F

    iget v11, v7, Lorg/cocos2d/types/CCVertex3D;->y:F

    invoke-static {v10, v11}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    .line 50
    .local v8, "vect":Lorg/cocos2d/types/CGPoint;
    invoke-static {v8}, Lorg/cocos2d/types/CGPoint;->ccpLength(Lorg/cocos2d/types/CGPoint;)F

    move-result v6

    .line 52
    .local v6, "r":F
    iget v9, p0, Lorg/cocos2d/actions/grid/CCLens3D;->radius:F

    cmpg-float v9, v6, v9

    if-gez v9, :cond_5

    .line 53
    iget v9, p0, Lorg/cocos2d/actions/grid/CCLens3D;->radius:F

    sub-float v6, v9, v6

    .line 54
    iget v9, p0, Lorg/cocos2d/actions/grid/CCLens3D;->radius:F

    div-float v5, v6, v9

    .line 55
    .local v5, "pre_log":F
    cmpl-float v9, v5, v12

    if-nez v9, :cond_4

    const v5, 0x3a83126f    # 0.001f

    .line 56
    :cond_4
    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v9, v9

    iget v10, p0, Lorg/cocos2d/actions/grid/CCLens3D;->lensEffect:F

    mul-float v2, v9, v10

    .line 57
    .local v2, "l":F
    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    double-to-float v9, v9

    iget v10, p0, Lorg/cocos2d/actions/grid/CCLens3D;->radius:F

    mul-float v3, v9, v10

    .line 59
    .local v3, "new_r":F
    invoke-static {v8}, Lorg/cocos2d/types/CGPoint;->ccpLength(Lorg/cocos2d/types/CGPoint;)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_5

    .line 60
    invoke-static {v8}, Lorg/cocos2d/types/CGPoint;->ccpNormalize(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    .line 61
    invoke-static {v8, v3}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 62
    .local v4, "new_vect":Lorg/cocos2d/types/CGPoint;
    iget v9, v7, Lorg/cocos2d/types/CCVertex3D;->z:F

    invoke-static {v4}, Lorg/cocos2d/types/CGPoint;->ccpLength(Lorg/cocos2d/types/CGPoint;)F

    move-result v10

    iget v11, p0, Lorg/cocos2d/actions/grid/CCLens3D;->lensEffect:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v7, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 66
    .end local v2    # "l":F
    .end local v3    # "new_r":F
    .end local v4    # "new_vect":Lorg/cocos2d/types/CGPoint;
    .end local v5    # "pre_log":F
    :cond_5
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Lorg/cocos2d/actions/grid/CCLens3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
