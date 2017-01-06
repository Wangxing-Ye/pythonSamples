.class public Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;
.super Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
.source "CCFadeOutTRTiles.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/types/ccGridSize;F)V
    .locals 0
    .param p1, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "d"    # F

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 20
    return-void
.end method

.method public static action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;
    .locals 1
    .param p0, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p1, "d"    # F

    .prologue
    .line 15
    new-instance v0, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method

.method public static bridge synthetic action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public testFunc(Lorg/cocos2d/types/ccGridSize;F)F
    .locals 5
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "time"    # F

    .prologue
    .line 23
    iget-object v1, p0, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v1, v1, Lorg/cocos2d/types/ccGridSize;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v2, v2, Lorg/cocos2d/types/ccGridSize;->y:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 24
    .local v0, "n":Lorg/cocos2d/types/CGPoint;
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, v0, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    :goto_0
    return v1

    :cond_0
    iget v1, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    iget v2, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, v0, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_0
.end method

.method public transformTile(Lorg/cocos2d/types/ccGridSize;F)V
    .locals 7
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "distance"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 39
    invoke-virtual {p0, p1}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;

    move-result-object v0

    .line 40
    .local v0, "coords":Lorg/cocos2d/types/ccQuad3;
    iget-object v2, p0, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/grid/CCGridBase;->getStep()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 42
    .local v1, "step":Lorg/cocos2d/types/CGPoint;
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->x:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    .line 43
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->y:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    .line 45
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->br_x:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->x:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->br_x:F

    .line 46
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->br_y:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->y:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->br_y:F

    .line 48
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->x:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    .line 49
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->y:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    .line 51
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->x:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    .line 52
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->y:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    .line 54
    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 55
    return-void
.end method

.method public turnOffTile(Lorg/cocos2d/types/ccGridSize;)V
    .locals 1
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 34
    new-instance v0, Lorg/cocos2d/types/ccQuad3;

    invoke-direct {v0}, Lorg/cocos2d/types/ccQuad3;-><init>()V

    .line 35
    .local v0, "coords":Lorg/cocos2d/types/ccQuad3;
    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 36
    return-void
.end method

.method public turnOnTile(Lorg/cocos2d/types/ccGridSize;)V
    .locals 1
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 31
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "time"    # F

    .prologue
    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->x:I

    if-lt v1, v3, :cond_0

    .line 72
    return-void

    .line 62
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    if-lt v2, v3, :cond_1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v1, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->testFunc(Lorg/cocos2d/types/ccGridSize;F)F

    move-result v0

    .line 64
    .local v0, "distance":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    .line 65
    invoke-static {v1, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->turnOffTile(Lorg/cocos2d/types/ccGridSize;)V

    .line 62
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    .line 67
    invoke-static {v1, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->transformTile(Lorg/cocos2d/types/ccGridSize;F)V

    goto :goto_2

    .line 69
    :cond_3
    invoke-static {v1, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->turnOnTile(Lorg/cocos2d/types/ccGridSize;)V

    goto :goto_2
.end method
