.class public Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;
.super Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;
.source "CCFadeOutUpTiles.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/types/ccGridSize;F)V
    .locals 0
    .param p1, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "d"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 19
    return-void
.end method

.method public static bridge synthetic action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;->action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;

    move-result-object v0

    return-object v0
.end method

.method public static action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;
    .locals 1
    .param p0, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p1, "d"    # F

    .prologue
    .line 14
    new-instance v0, Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public testFunc(Lorg/cocos2d/types/ccGridSize;F)F
    .locals 5
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "time"    # F

    .prologue
    .line 24
    iget-object v1, p0, Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v1, v1, Lorg/cocos2d/types/ccGridSize;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v2, v2, Lorg/cocos2d/types/ccGridSize;->y:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 25
    .local v0, "n":Lorg/cocos2d/types/CGPoint;
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    :goto_0
    return v1

    :cond_0
    iget v1, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    int-to-float v1, v1

    iget v2, v0, Lorg/cocos2d/types/CGPoint;->y:F

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

    .line 32
    invoke-virtual {p0, p1}, Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;->originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;

    move-result-object v0

    .line 33
    .local v0, "coords":Lorg/cocos2d/types/ccQuad3;
    iget-object v2, p0, Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/grid/CCGridBase;->getStep()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 35
    .local v1, "step":Lorg/cocos2d/types/CGPoint;
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->y:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    .line 36
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->br_y:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->y:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->br_y:F

    .line 37
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->y:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    .line 38
    iget v2, v0, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->y:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    .line 40
    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 41
    return-void
.end method
