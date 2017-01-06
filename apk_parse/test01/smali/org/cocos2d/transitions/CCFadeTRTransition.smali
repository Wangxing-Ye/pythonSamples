.class public Lorg/cocos2d/transitions/CCFadeTRTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCFadeTRTransition.java"

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

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCFadeTRTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 20
    new-instance v0, Lorg/cocos2d/transitions/CCFadeTRTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCFadeTRTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCFadeTRTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCFadeTRTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected action(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1
    .param p1, "v"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 55
    iget v0, p0, Lorg/cocos2d/transitions/CCFadeTRTransition;->duration:F

    invoke-static {p1, v0}, Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;->action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCFadeOutTRTiles;

    move-result-object v0

    return-object v0
.end method

.method public easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 61
    return-object p1
.end method

.method public onEnter()V
    .locals 10

    .prologue
    .line 35
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 37
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 38
    .local v2, "s":Lorg/cocos2d/types/CGSize;
    iget v5, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget v6, v2, Lorg/cocos2d/types/CGSize;->height:F

    div-float v1, v5, v6

    .line 39
    .local v1, "aspect":F
    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v5, v1

    float-to-int v3, v5

    .line 40
    .local v3, "x":I
    const/16 v4, 0xc

    .line 42
    .local v4, "y":I
    invoke-static {v3, v4}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/cocos2d/transitions/CCFadeTRTransition;->action(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    .line 44
    .local v0, "action":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget-object v5, p0, Lorg/cocos2d/transitions/CCFadeTRTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    .line 46
    invoke-virtual {p0, v0}, Lorg/cocos2d/transitions/CCFadeTRTransition;->easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v8, 0x0

    .line 47
    const-string v9, "finish"

    invoke-static {p0, v9}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 48
    invoke-static {}, Lorg/cocos2d/actions/grid/CCStopGrid;->action()Lorg/cocos2d/actions/grid/CCStopGrid;

    move-result-object v9

    aput-object v9, v7, v8

    .line 45
    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v6

    .line 44
    invoke-virtual {v5, v6}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 52
    return-void
.end method

.method public sceneOrder()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/transitions/CCFadeTRTransition;->inSceneOnTop:Z

    .line 31
    return-void
.end method
