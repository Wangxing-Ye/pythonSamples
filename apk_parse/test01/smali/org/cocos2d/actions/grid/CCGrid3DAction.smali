.class public Lorg/cocos2d/actions/grid/CCGrid3DAction;
.super Lorg/cocos2d/actions/grid/CCGridAction;
.source "CCGrid3DAction.java"


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

.method public static action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 1
    .param p0, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p1, "d"    # F

    .prologue
    .line 14
    new-instance v0, Lorg/cocos2d/actions/grid/CCGrid3DAction;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/grid/CCGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCGrid3DAction;->copy()Lorg/cocos2d/actions/grid/CCGrid3DAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lorg/cocos2d/actions/grid/CCGrid3DAction;

    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCGrid3DAction;->getGridSize()Lorg/cocos2d/types/ccGridSize;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCGrid3DAction;->getDuration()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/grid/CCGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/grid/CCGridAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCGrid3DAction;->copy()Lorg/cocos2d/actions/grid/CCGrid3DAction;

    move-result-object v0

    return-object v0
.end method

.method public grid()Lorg/cocos2d/grid/CCGridBase;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lorg/cocos2d/grid/CCGrid3D;

    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCGrid3DAction;->gridSize:Lorg/cocos2d/types/ccGridSize;

    invoke-direct {v0, v1}, Lorg/cocos2d/grid/CCGrid3D;-><init>(Lorg/cocos2d/types/ccGridSize;)V

    return-object v0
.end method

.method public originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;
    .locals 2
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 36
    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCGrid3DAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/grid/CCGrid3D;

    .line 37
    .local v0, "g":Lorg/cocos2d/grid/CCGrid3D;
    invoke-virtual {v0, p1}, Lorg/cocos2d/grid/CCGrid3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v1

    return-object v1
.end method

.method public setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V
    .locals 2
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "vertex"    # Lorg/cocos2d/types/CCVertex3D;

    .prologue
    .line 42
    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCGrid3DAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/grid/CCGrid3D;

    .line 43
    .local v0, "g":Lorg/cocos2d/grid/CCGrid3D;
    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/grid/CCGrid3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 44
    return-void
.end method

.method public vertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;
    .locals 2
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 29
    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCGrid3DAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/grid/CCGrid3D;

    .line 30
    .local v0, "g":Lorg/cocos2d/grid/CCGrid3D;
    invoke-virtual {v0, p1}, Lorg/cocos2d/grid/CCGrid3D;->vertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v1

    return-object v1
.end method
