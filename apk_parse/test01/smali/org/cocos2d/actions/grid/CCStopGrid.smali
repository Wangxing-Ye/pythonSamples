.class public Lorg/cocos2d/actions/grid/CCStopGrid;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCStopGrid.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    return-void
.end method

.method public static bridge synthetic action()Lorg/cocos2d/actions/base/CCAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/actions/grid/CCStopGrid;->action()Lorg/cocos2d/actions/grid/CCStopGrid;

    move-result-object v0

    return-object v0
.end method

.method public static action()Lorg/cocos2d/actions/grid/CCStopGrid;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/grid/CCStopGrid;

    invoke-direct {v0}, Lorg/cocos2d/actions/grid/CCStopGrid;-><init>()V

    return-object v0
.end method


# virtual methods
.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 24
    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCStopGrid;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getGrid()Lorg/cocos2d/grid/CCGridBase;

    move-result-object v0

    .line 25
    .local v0, "gb":Lorg/cocos2d/grid/CCGridBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cocos2d/grid/CCGridBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/grid/CCGridBase;->setActive(Z)V

    .line 28
    :cond_0
    return-void
.end method
