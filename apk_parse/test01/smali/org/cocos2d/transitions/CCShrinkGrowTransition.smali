.class public Lorg/cocos2d/transitions/CCShrinkGrowTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCShrinkGrowTransition.java"

# interfaces
.implements Lorg/cocos2d/transitions/CCTransitionEaseScene;


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 21
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCShrinkGrowTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/transitions/CCShrinkGrowTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCShrinkGrowTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCShrinkGrowTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCShrinkGrowTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 44
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lorg/cocos2d/actions/ease/CCEaseOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseOut;

    move-result-object v0

    return-object v0
.end method

.method public onEnter()V
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 25
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 27
    iget-object v2, p0, Lorg/cocos2d/transitions/CCShrinkGrowTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    const v3, 0x3a83126f    # 0.001f

    invoke-virtual {v2, v3}, Lorg/cocos2d/layers/CCScene;->setScale(F)V

    .line 28
    iget-object v2, p0, Lorg/cocos2d/transitions/CCShrinkGrowTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v2, v5}, Lorg/cocos2d/layers/CCScene;->setScale(F)V

    .line 30
    iget-object v2, p0, Lorg/cocos2d/transitions/CCShrinkGrowTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    const v3, 0x3f2aaaab

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/layers/CCScene;->setAnchorPoint(FF)V

    .line 31
    iget-object v2, p0, Lorg/cocos2d/transitions/CCShrinkGrowTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    const v3, 0x3eaaaaab

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/layers/CCScene;->setAnchorPoint(FF)V

    .line 33
    iget v2, p0, Lorg/cocos2d/transitions/CCShrinkGrowTransition;->duration:F

    const v3, 0x3c23d70a    # 0.01f

    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v1

    .line 34
    .local v1, "scaleOut":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget v2, p0, Lorg/cocos2d/transitions/CCShrinkGrowTransition;->duration:F

    invoke-static {v2, v5}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v0

    .line 36
    .local v0, "scaleIn":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget-object v2, p0, Lorg/cocos2d/transitions/CCShrinkGrowTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {p0, v0}, Lorg/cocos2d/transitions/CCShrinkGrowTransition;->easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 37
    iget-object v2, p0, Lorg/cocos2d/transitions/CCShrinkGrowTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    .line 38
    invoke-virtual {p0, v1}, Lorg/cocos2d/transitions/CCShrinkGrowTransition;->easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v5, 0x0

    .line 39
    const-string v6, "finish"

    invoke-static {p0, v6}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v6

    aput-object v6, v4, v5

    .line 37
    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 40
    return-void
.end method
