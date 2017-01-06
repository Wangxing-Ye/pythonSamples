.class public abstract Lorg/cocos2d/actions/grid/CCGridAction;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCGridAction.java"


# instance fields
.field protected gridSize:Lorg/cocos2d/types/ccGridSize;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/types/ccGridSize;F)V
    .locals 1
    .param p1, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "d"    # F

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 27
    new-instance v0, Lorg/cocos2d/types/ccGridSize;

    invoke-direct {v0, p1}, Lorg/cocos2d/types/ccGridSize;-><init>(Lorg/cocos2d/types/ccGridSize;)V

    iput-object v0, p0, Lorg/cocos2d/actions/grid/CCGridAction;->gridSize:Lorg/cocos2d/types/ccGridSize;

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCGridAction;->copy()Lorg/cocos2d/actions/grid/CCGridAction;

    move-result-object v0

    return-object v0
.end method

.method public abstract copy()Lorg/cocos2d/actions/grid/CCGridAction;
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCGridAction;->copy()Lorg/cocos2d/actions/grid/CCGridAction;

    move-result-object v0

    return-object v0
.end method

.method public getGridSize()Lorg/cocos2d/types/ccGridSize;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lorg/cocos2d/types/ccGridSize;

    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCGridAction;->gridSize:Lorg/cocos2d/types/ccGridSize;

    invoke-direct {v0, v1}, Lorg/cocos2d/types/ccGridSize;-><init>(Lorg/cocos2d/types/ccGridSize;)V

    return-object v0
.end method

.method public abstract grid()Lorg/cocos2d/grid/CCGridBase;
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lorg/cocos2d/actions/interval/CCReverseTime;->action(Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCReverseTime;

    move-result-object v0

    return-object v0
.end method

.method public setGridSize(Lorg/cocos2d/types/ccGridSize;)V
    .locals 1
    .param p1, "gs"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/types/ccGridSize;

    invoke-direct {v0, p1}, Lorg/cocos2d/types/ccGridSize;-><init>(Lorg/cocos2d/types/ccGridSize;)V

    iput-object v0, p0, Lorg/cocos2d/actions/grid/CCGridAction;->gridSize:Lorg/cocos2d/types/ccGridSize;

    .line 18
    return-void
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 34
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCGridAction;->grid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v0

    .line 35
    .local v0, "newgrid":Lorg/cocos2d/grid/CCGridBase;
    iget-object v2, p0, Lorg/cocos2d/actions/grid/CCGridAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v1

    .line 38
    .local v1, "targetGrid":Lorg/cocos2d/grid/CCGridBase;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/cocos2d/grid/CCGridBase;->reuseGrid()I

    move-result v2

    if-lez v2, :cond_2

    .line 39
    invoke-virtual {v1}, Lorg/cocos2d/grid/CCGridBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v1}, Lorg/cocos2d/grid/CCGridBase;->getGridWidth()I

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCGridAction;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->x:I

    if-ne v2, v3, :cond_1

    .line 41
    invoke-virtual {v1}, Lorg/cocos2d/grid/CCGridBase;->getGridHeight()I

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/actions/grid/CCGridAction;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    if-ne v2, v3, :cond_1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 43
    sget-object v2, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v1, v2}, Lorg/cocos2d/grid/CCGridBase;->reuse(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot reuse grid_"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/cocos2d/grid/CCGridBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/grid/CCGridBase;->setActive(Z)V

    .line 51
    :cond_3
    iget-object v2, p0, Lorg/cocos2d/actions/grid/CCGridAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v2, v0}, Lorg/cocos2d/nodes/CCNode;->setGrid(Lorg/cocos2d/grid/CCGridBase;)V

    .line 53
    if-eqz v1, :cond_0

    .line 54
    iget-object v2, p0, Lorg/cocos2d/actions/grid/CCGridAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/cocos2d/grid/CCGridBase;->setActive(Z)V

    goto :goto_0
.end method
