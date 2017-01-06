.class public Lorg/cocos2d/actions/tile/CCSplitRows;
.super Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
.source "CCSplitRows.java"


# instance fields
.field rows:I

.field winSize:Lorg/cocos2d/types/CGSize;


# direct methods
.method protected constructor <init>(IF)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "d"    # F

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 24
    iput p1, p0, Lorg/cocos2d/actions/tile/CCSplitRows;->rows:I

    .line 25
    return-void
.end method

.method public static action(IF)Lorg/cocos2d/actions/tile/CCSplitRows;
    .locals 1
    .param p0, "r"    # I
    .param p1, "d"    # F

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/tile/CCSplitRows;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/tile/CCSplitRows;-><init>(IF)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCSplitRows;->copy()Lorg/cocos2d/actions/tile/CCSplitRows;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/tile/CCSplitRows;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lorg/cocos2d/actions/tile/CCSplitRows;

    iget v1, p0, Lorg/cocos2d/actions/tile/CCSplitRows;->rows:I

    iget v2, p0, Lorg/cocos2d/actions/tile/CCSplitRows;->duration:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/tile/CCSplitRows;-><init>(IF)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCSplitRows;->copy()Lorg/cocos2d/actions/tile/CCSplitRows;

    move-result-object v0

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 1
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 35
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/tile/CCSplitRows;->winSize:Lorg/cocos2d/types/CGSize;

    .line 36
    return-void
.end method

.method public update(F)V
    .locals 6
    .param p1, "time"    # F

    .prologue
    const/4 v5, 0x0

    .line 42
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/actions/tile/CCSplitRows;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    if-lt v2, v3, :cond_0

    .line 56
    return-void

    .line 43
    :cond_0
    invoke-static {v5, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/actions/tile/CCSplitRows;->originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;

    move-result-object v0

    .line 44
    .local v0, "coords":Lorg/cocos2d/types/ccQuad3;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    .local v1, "direction":F
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    .line 47
    const/high16 v1, -0x40800000    # -1.0f

    .line 49
    :cond_1
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCSplitRows;->winSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    .line 50
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->br_x:F

    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCSplitRows;->winSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->br_x:F

    .line 51
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCSplitRows;->winSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    .line 52
    iget v3, v0, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    iget-object v4, p0, Lorg/cocos2d/actions/tile/CCSplitRows;->winSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v0, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    .line 54
    invoke-static {v5, v2}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/cocos2d/actions/tile/CCSplitRows;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
