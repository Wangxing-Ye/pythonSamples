.class public Lorg/cocos2d/actions/tile/CCFadeOutDownTiles;
.super Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;
.source "CCFadeOutDownTiles.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/types/ccGridSize;F)V
    .locals 0
    .param p1, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "d"    # F

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 18
    return-void
.end method

.method public static action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCFadeOutDownTiles;
    .locals 1
    .param p0, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p1, "d"    # F

    .prologue
    .line 13
    new-instance v0, Lorg/cocos2d/actions/tile/CCFadeOutDownTiles;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/tile/CCFadeOutDownTiles;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method

.method public static bridge synthetic action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCFadeOutUpTiles;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/actions/tile/CCFadeOutDownTiles;->action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCFadeOutDownTiles;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public testFunc(Lorg/cocos2d/types/ccGridSize;F)F
    .locals 5
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "time"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    iget-object v2, p0, Lorg/cocos2d/actions/tile/CCFadeOutDownTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v2, v2, Lorg/cocos2d/types/ccGridSize;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCFadeOutDownTiles;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    sub-float v3, v1, p2

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 23
    .local v0, "n":Lorg/cocos2d/types/CGPoint;
    iget v2, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    if-nez v2, :cond_0

    .line 25
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_0
.end method
