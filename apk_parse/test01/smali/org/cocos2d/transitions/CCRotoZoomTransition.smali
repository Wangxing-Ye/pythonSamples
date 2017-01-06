.class public Lorg/cocos2d/transitions/CCRotoZoomTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCRotoZoomTransition.java"


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 24
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCRotoZoomTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 19
    new-instance v0, Lorg/cocos2d/transitions/CCRotoZoomTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCRotoZoomTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCRotoZoomTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCRotoZoomTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onEnter()V
    .locals 8

    .prologue
    const v4, 0x3a83126f    # 0.001f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 28
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 30
    iget-object v1, p0, Lorg/cocos2d/transitions/CCRotoZoomTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v1, v4}, Lorg/cocos2d/layers/CCScene;->setScale(F)V

    .line 31
    iget-object v1, p0, Lorg/cocos2d/transitions/CCRotoZoomTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/cocos2d/layers/CCScene;->setScale(F)V

    .line 33
    iget-object v1, p0, Lorg/cocos2d/transitions/CCRotoZoomTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v1, v3, v3}, Lorg/cocos2d/layers/CCScene;->setAnchorPoint(FF)V

    .line 34
    iget-object v1, p0, Lorg/cocos2d/transitions/CCRotoZoomTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v1, v3, v3}, Lorg/cocos2d/layers/CCScene;->setAnchorPoint(FF)V

    .line 37
    iget v1, p0, Lorg/cocos2d/transitions/CCRotoZoomTransition;->duration:F

    div-float/2addr v1, v5

    invoke-static {v1, v4}, Lorg/cocos2d/actions/interval/CCScaleBy;->action(FF)Lorg/cocos2d/actions/interval/CCScaleBy;

    move-result-object v1

    new-array v2, v7, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 38
    iget v3, p0, Lorg/cocos2d/transitions/CCRotoZoomTransition;->duration:F

    div-float/2addr v3, v5

    const/high16 v4, 0x44340000    # 720.0f

    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCRotateBy;->action(FF)Lorg/cocos2d/actions/interval/CCRotateBy;

    move-result-object v3

    aput-object v3, v2, v6

    .line 37
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v1

    new-array v2, v7, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 40
    iget v3, p0, Lorg/cocos2d/transitions/CCRotoZoomTransition;->duration:F

    div-float/2addr v3, v5

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v3

    aput-object v3, v2, v6

    .line 36
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 43
    .local v0, "rotozoom":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget-object v1, p0, Lorg/cocos2d/transitions/CCRotoZoomTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v1, v0}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 44
    iget-object v1, p0, Lorg/cocos2d/transitions/CCRotoZoomTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v2

    new-array v3, v7, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 45
    const-string v4, "finish"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v3, v6

    .line 44
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 46
    return-void
.end method
