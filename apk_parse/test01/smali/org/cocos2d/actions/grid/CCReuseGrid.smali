.class public Lorg/cocos2d/actions/grid/CCReuseGrid;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCReuseGrid.java"


# instance fields
.field t:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "times"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 21
    iput p1, p0, Lorg/cocos2d/actions/grid/CCReuseGrid;->t:I

    .line 22
    return-void
.end method

.method public static action(I)Lorg/cocos2d/actions/grid/CCReuseGrid;
    .locals 1
    .param p0, "times"    # I

    .prologue
    .line 15
    new-instance v0, Lorg/cocos2d/actions/grid/CCReuseGrid;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/grid/CCReuseGrid;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 28
    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCReuseGrid;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v0

    .line 29
    .local v0, "gb":Lorg/cocos2d/grid/CCGridBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cocos2d/grid/CCGridBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v0}, Lorg/cocos2d/grid/CCGridBase;->reuseGrid()I

    move-result v1

    iget v2, p0, Lorg/cocos2d/actions/grid/CCReuseGrid;->t:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/grid/CCGridBase;->setReuseGrid(I)V

    .line 31
    :cond_0
    return-void
.end method
