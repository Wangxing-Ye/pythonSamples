.class public Lorg/cocos2d/actions/grid/CCShaky3D;
.super Lorg/cocos2d/actions/grid/CCGrid3DAction;
.source "CCShaky3D.java"


# instance fields
.field randrange:I

.field shakeZ:Z


# direct methods
.method public constructor <init>(IZLorg/cocos2d/types/ccGridSize;F)V
    .locals 0
    .param p1, "range"    # I
    .param p2, "sz"    # Z
    .param p3, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p4, "d"    # F

    .prologue
    .line 21
    invoke-direct {p0, p3, p4}, Lorg/cocos2d/actions/grid/CCGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 22
    iput p1, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->randrange:I

    .line 23
    iput-boolean p2, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->shakeZ:Z

    .line 24
    return-void
.end method

.method public static action(IZLorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCShaky3D;
    .locals 1
    .param p0, "range"    # I
    .param p1, "sz"    # Z
    .param p2, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p3, "d"    # F

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/actions/grid/CCShaky3D;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/actions/grid/CCShaky3D;-><init>(IZLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCShaky3D;->copy()Lorg/cocos2d/actions/grid/CCShaky3D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCShaky3D;->copy()Lorg/cocos2d/actions/grid/CCShaky3D;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/grid/CCShaky3D;
    .locals 5

    .prologue
    .line 28
    new-instance v0, Lorg/cocos2d/actions/grid/CCShaky3D;

    iget v1, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->randrange:I

    iget-boolean v2, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->shakeZ:Z

    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->duration:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/grid/CCShaky3D;-><init>(IZLorg/cocos2d/types/ccGridSize;F)V

    .line 29
    .local v0, "copy":Lorg/cocos2d/actions/grid/CCShaky3D;
    return-object v0
.end method

.method public update(F)V
    .locals 6
    .param p1, "time"    # F

    .prologue
    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, v4, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v4, v4, 0x1

    if-lt v0, v4, :cond_0

    .line 48
    return-void

    .line 37
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v4, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v4, v4, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/lit8 v4, v4, 0x1

    if-lt v1, v4, :cond_1

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/cocos2d/actions/grid/CCShaky3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v3

    .line 39
    .local v3, "v":Lorg/cocos2d/types/CCVertex3D;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->randrange:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float v2, v4, v5

    .line 40
    .local v2, "r":F
    iget v4, v3, Lorg/cocos2d/types/CCVertex3D;->x:F

    iget v5, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->randrange:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    add-float/2addr v4, v5

    iput v4, v3, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 41
    iget v4, v3, Lorg/cocos2d/types/CCVertex3D;->y:F

    iget v5, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->randrange:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    add-float/2addr v4, v5

    iput v4, v3, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 42
    iget-boolean v4, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->shakeZ:Z

    if-eqz v4, :cond_2

    .line 43
    iget v4, v3, Lorg/cocos2d/types/CCVertex3D;->z:F

    iget v5, p0, Lorg/cocos2d/actions/grid/CCShaky3D;->randrange:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    add-float/2addr v4, v5

    iput v4, v3, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 45
    :cond_2
    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/cocos2d/actions/grid/CCShaky3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
