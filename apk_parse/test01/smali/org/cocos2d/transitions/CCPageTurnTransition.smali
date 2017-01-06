.class public Lorg/cocos2d/transitions/CCPageTurnTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCPageTurnTransition.java"


# instance fields
.field protected back_:Z


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;Z)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;
    .param p3, "back"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 50
    iput-boolean p3, p0, Lorg/cocos2d/transitions/CCPageTurnTransition;->back_:Z

    .line 51
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCPageTurnTransition;
    .locals 2
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 40
    new-instance v0, Lorg/cocos2d/transitions/CCPageTurnTransition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/cocos2d/transitions/CCPageTurnTransition;-><init>(FLorg/cocos2d/layers/CCScene;Z)V

    return-object v0
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;Z)Lorg/cocos2d/transitions/CCPageTurnTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;
    .param p2, "back"    # Z

    .prologue
    .line 36
    new-instance v0, Lorg/cocos2d/transitions/CCPageTurnTransition;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/transitions/CCPageTurnTransition;-><init>(FLorg/cocos2d/layers/CCScene;Z)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCPageTurnTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCPageTurnTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public action(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1
    .param p1, "v"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/cocos2d/transitions/CCPageTurnTransition;->back_:Z

    if-eqz v0, :cond_0

    .line 92
    iget v0, p0, Lorg/cocos2d/transitions/CCPageTurnTransition;->duration:F

    invoke-static {p1, v0}, Lorg/cocos2d/actions/grid/CCPageTurn3D;->action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCPageTurn3D;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/actions/interval/CCReverseTime;->action(Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCReverseTime;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/cocos2d/transitions/CCPageTurnTransition;->duration:F

    invoke-static {p1, v0}, Lorg/cocos2d/actions/grid/CCPageTurn3D;->action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCPageTurn3D;

    move-result-object v0

    goto :goto_0
.end method

.method public onEnter()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 60
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 62
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 64
    .local v1, "s":Lorg/cocos2d/types/CGSize;
    iget v4, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget v5, v1, Lorg/cocos2d/types/CGSize;->height:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 65
    const/16 v2, 0x10

    .line 66
    .local v2, "x":I
    const/16 v3, 0xc

    .line 72
    .local v3, "y":I
    :goto_0
    invoke-static {v2, v3}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/cocos2d/transitions/CCPageTurnTransition;->action(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    .line 73
    .local v0, "action":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget-boolean v4, p0, Lorg/cocos2d/transitions/CCPageTurnTransition;->back_:Z

    if-nez v4, :cond_1

    .line 74
    iget-object v4, p0, Lorg/cocos2d/transitions/CCPageTurnTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    .line 75
    new-array v5, v9, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 76
    const-string v6, "finish"

    invoke-static {p0, v6}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v6

    aput-object v6, v5, v7

    .line 77
    invoke-static {}, Lorg/cocos2d/actions/grid/CCStopGrid;->action()Lorg/cocos2d/actions/grid/CCStopGrid;

    move-result-object v6

    aput-object v6, v5, v8

    .line 74
    invoke-static {v0, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 87
    :goto_1
    return-void

    .line 68
    .end local v0    # "action":Lorg/cocos2d/actions/interval/CCIntervalAction;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    const/16 v2, 0xc

    .line 69
    .restart local v2    # "x":I
    const/16 v3, 0x10

    .restart local v3    # "y":I
    goto :goto_0

    .line 80
    .restart local v0    # "action":Lorg/cocos2d/actions/interval/CCIntervalAction;
    :cond_1
    iget-object v4, p0, Lorg/cocos2d/transitions/CCPageTurnTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v4, v7}, Lorg/cocos2d/layers/CCScene;->setVisible(Z)V

    .line 81
    iget-object v4, p0, Lorg/cocos2d/transitions/CCPageTurnTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    .line 82
    invoke-static {}, Lorg/cocos2d/actions/instant/CCShow;->action()Lorg/cocos2d/actions/instant/CCShow;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 83
    aput-object v0, v6, v7

    .line 84
    const-string v7, "finish"

    invoke-static {p0, v7}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v7

    aput-object v7, v6, v8

    .line 85
    invoke-static {}, Lorg/cocos2d/actions/grid/CCStopGrid;->action()Lorg/cocos2d/actions/grid/CCStopGrid;

    move-result-object v7

    aput-object v7, v6, v9

    .line 81
    invoke-static {v5, v6}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto :goto_1
.end method

.method public sceneOrder()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/cocos2d/transitions/CCPageTurnTransition;->back_:Z

    iput-boolean v0, p0, Lorg/cocos2d/transitions/CCPageTurnTransition;->inSceneOnTop:Z

    .line 56
    return-void
.end method
