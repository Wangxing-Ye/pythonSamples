.class public Lorg/cocos2d/transitions/CCTurnOffTilesTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCTurnOffTilesTransition.java"

# interfaces
.implements Lorg/cocos2d/transitions/CCTransitionEaseScene;


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 25
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 20
    new-instance v0, Lorg/cocos2d/transitions/CCTurnOffTilesTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCTurnOffTilesTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method


# virtual methods
.method public easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 53
    return-object p1
.end method

.method public onEnter()V
    .locals 10

    .prologue
    .line 35
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 37
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 38
    .local v2, "s":Lorg/cocos2d/types/CGSize;
    iget v6, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget v7, v2, Lorg/cocos2d/types/CGSize;->height:F

    div-float v1, v6, v7

    .line 39
    .local v1, "aspect":F
    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v6, v1

    float-to-int v4, v6

    .line 40
    .local v4, "x":I
    const/16 v5, 0xc

    .line 42
    .local v5, "y":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v4, v5}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v7

    iget v8, p0, Lorg/cocos2d/transitions/CCTurnOffTilesTransition;->duration:F

    invoke-static {v6, v7, v8}, Lorg/cocos2d/actions/tile/CCTurnOffTiles;->action(ILorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCTurnOffTiles;

    move-result-object v3

    .line 43
    .local v3, "toff":Lorg/cocos2d/actions/tile/CCTurnOffTiles;
    invoke-virtual {p0, v3}, Lorg/cocos2d/transitions/CCTurnOffTilesTransition;->easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    .line 44
    .local v0, "action":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget-object v6, p0, Lorg/cocos2d/transitions/CCTurnOffTilesTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    const/4 v7, 0x2

    new-array v7, v7, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v8, 0x0

    .line 45
    const-string v9, "finish"

    invoke-static {p0, v9}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 46
    invoke-static {}, Lorg/cocos2d/actions/grid/CCStopGrid;->action()Lorg/cocos2d/actions/grid/CCStopGrid;

    move-result-object v9

    aput-object v9, v7, v8

    .line 44
    invoke-static {v0, v7}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 49
    return-void
.end method

.method public sceneOrder()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/transitions/CCTurnOffTilesTransition;->inSceneOnTop:Z

    .line 31
    return-void
.end method
