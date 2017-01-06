.class public Lorg/cocos2d/transitions/CCSplitColsTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCSplitColsTransition.java"

# interfaces
.implements Lorg/cocos2d/transitions/CCTransitionEaseScene;


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 23
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCSplitColsTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/transitions/CCSplitColsTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCSplitColsTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCSplitColsTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCSplitColsTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected action()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x3

    iget v1, p0, Lorg/cocos2d/transitions/CCSplitColsTransition;->duration:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/actions/tile/CCSplitCols;->action(IF)Lorg/cocos2d/actions/tile/CCSplitCols;

    move-result-object v0

    return-object v0
.end method

.method public easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 45
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lorg/cocos2d/actions/ease/CCEaseInOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseInOut;

    move-result-object v0

    return-object v0
.end method

.method public onEnter()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 29
    iget-object v2, p0, Lorg/cocos2d/transitions/CCSplitColsTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v2, v5}, Lorg/cocos2d/layers/CCScene;->setVisible(Z)V

    .line 31
    invoke-virtual {p0}, Lorg/cocos2d/transitions/CCSplitColsTransition;->action()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    .line 33
    .local v1, "split":Lorg/cocos2d/actions/interval/CCIntervalAction;
    new-array v2, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 34
    const-string v3, "hideOutShowIn"

    invoke-static {p0, v3}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v3

    aput-object v3, v2, v5

    .line 35
    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v3

    aput-object v3, v2, v6

    .line 32
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 37
    .local v0, "seq":Lorg/cocos2d/actions/interval/CCIntervalAction;
    invoke-virtual {p0, v0}, Lorg/cocos2d/transitions/CCSplitColsTransition;->easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v2

    new-array v3, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 38
    const-string v4, "finish"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v3, v5

    .line 39
    invoke-static {}, Lorg/cocos2d/actions/grid/CCStopGrid;->action()Lorg/cocos2d/actions/grid/CCStopGrid;

    move-result-object v4

    aput-object v4, v3, v6

    .line 36
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/transitions/CCSplitColsTransition;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 40
    return-void
.end method
