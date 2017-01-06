.class public Lorg/cocos2d/transitions/CCJumpZoomTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCJumpZoomTransition.java"


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 26
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCJumpZoomTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 21
    new-instance v0, Lorg/cocos2d/transitions/CCJumpZoomTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCJumpZoomTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCJumpZoomTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCJumpZoomTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onEnter()V
    .locals 12

    .prologue
    .line 30
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 31
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v6

    .line 33
    .local v6, "size":Lorg/cocos2d/types/CGSize;
    iget v7, v6, Lorg/cocos2d/types/CGSize;->width:F

    .line 36
    .local v7, "width":F
    iget-object v8, p0, Lorg/cocos2d/transitions/CCJumpZoomTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9}, Lorg/cocos2d/layers/CCScene;->setScale(F)V

    .line 37
    iget-object v8, p0, Lorg/cocos2d/transitions/CCJumpZoomTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lorg/cocos2d/layers/CCScene;->setPosition(FF)V

    .line 39
    iget-object v8, p0, Lorg/cocos2d/transitions/CCJumpZoomTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9, v10}, Lorg/cocos2d/layers/CCScene;->setAnchorPoint(FF)V

    .line 40
    iget-object v8, p0, Lorg/cocos2d/transitions/CCJumpZoomTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9, v10}, Lorg/cocos2d/layers/CCScene;->setAnchorPoint(FF)V

    .line 42
    iget v8, p0, Lorg/cocos2d/transitions/CCJumpZoomTransition;->duration:F

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    neg-float v9, v7

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v9

    const/high16 v10, 0x40800000    # 4.0f

    div-float v10, v7, v10

    const/4 v11, 0x2

    invoke-static {v8, v9, v10, v11}, Lorg/cocos2d/actions/interval/CCJumpBy;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v1

    .line 43
    .local v1, "jump":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget v8, p0, Lorg/cocos2d/transitions/CCJumpZoomTransition;->duration:F

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    .line 44
    .local v4, "scaleIn":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget v8, p0, Lorg/cocos2d/transitions/CCJumpZoomTransition;->duration:F

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v8, v9}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    .line 46
    .local v5, "scaleOut":Lorg/cocos2d/actions/interval/CCIntervalAction;
    const/4 v8, 0x1

    new-array v8, v8, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v5, v8}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    .line 47
    .local v3, "jumpZoomOut":Lorg/cocos2d/actions/interval/CCIntervalAction;
    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    .line 49
    .local v2, "jumpZoomIn":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget v8, p0, Lorg/cocos2d/transitions/CCJumpZoomTransition;->duration:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v0

    .line 51
    .local v0, "delay":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget-object v8, p0, Lorg/cocos2d/transitions/CCJumpZoomTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v8, v3}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 52
    iget-object v8, p0, Lorg/cocos2d/transitions/CCJumpZoomTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    const/4 v9, 0x2

    new-array v9, v9, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    .line 53
    const-string v11, "finish"

    invoke-static {p0, v11}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v11

    aput-object v11, v9, v10

    .line 52
    invoke-static {v0, v9}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 54
    return-void
.end method
