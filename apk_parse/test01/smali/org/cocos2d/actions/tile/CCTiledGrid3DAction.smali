.class public Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
.super Lorg/cocos2d/actions/grid/CCGridAction;
.source "CCTiledGrid3DAction.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/types/ccGridSize;F)V
    .locals 0
    .param p1, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "d"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/grid/CCGridAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 19
    return-void
.end method

.method public static action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
    .locals 1
    .param p0, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p1, "d"    # F

    .prologue
    .line 14
    new-instance v0, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;->copy()Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/grid/CCGridAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;->copy()Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;

    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;->getGridSize()Lorg/cocos2d/types/ccGridSize;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;->getDuration()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method

.method public grid()Lorg/cocos2d/grid/CCGridBase;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;->gridSize:Lorg/cocos2d/types/ccGridSize;

    invoke-static {v0}, Lorg/cocos2d/grid/CCTiledGrid3D;->make(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/grid/CCTiledGrid3D;

    move-result-object v0

    return-object v0
.end method

.method public originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;
    .locals 2
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 34
    iget-object v1, p0, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/grid/CCTiledGrid3D;

    .line 35
    .local v0, "g":Lorg/cocos2d/grid/CCTiledGrid3D;
    invoke-virtual {v0, p1}, Lorg/cocos2d/grid/CCTiledGrid3D;->originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;

    move-result-object v1

    return-object v1
.end method

.method public setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V
    .locals 2
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "coords"    # Lorg/cocos2d/types/ccQuad3;

    .prologue
    .line 40
    iget-object v1, p0, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/grid/CCTiledGrid3D;

    .line 41
    .local v0, "g":Lorg/cocos2d/grid/CCTiledGrid3D;
    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/grid/CCTiledGrid3D;->setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V

    .line 42
    return-void
.end method

.method public tile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;
    .locals 2
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 28
    iget-object v1, p0, Lorg/cocos2d/actions/tile/CCTiledGrid3DAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/grid/CCTiledGrid3D;

    .line 29
    .local v0, "g":Lorg/cocos2d/grid/CCTiledGrid3D;
    invoke-virtual {v0, p1}, Lorg/cocos2d/grid/CCTiledGrid3D;->tile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;

    move-result-object v1

    return-object v1
.end method
