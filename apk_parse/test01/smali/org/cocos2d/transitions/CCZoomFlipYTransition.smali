.class public Lorg/cocos2d/transitions/CCZoomFlipYTransition;
.super Lorg/cocos2d/transitions/CCOrientedTransitionScene;
.source "CCZoomFlipYTransition.java"


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;I)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;
    .param p3, "orientation"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/transitions/CCOrientedTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;I)V

    .line 28
    return-void
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;I)Lorg/cocos2d/transitions/CCOrientedTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->transition(FLorg/cocos2d/layers/CCScene;I)Lorg/cocos2d/transitions/CCZoomFlipYTransition;

    move-result-object v0

    return-object v0
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;I)Lorg/cocos2d/transitions/CCZoomFlipYTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;
    .param p2, "orientation"    # I

    .prologue
    .line 23
    new-instance v0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/transitions/CCZoomFlipYTransition;-><init>(FLorg/cocos2d/layers/CCScene;I)V

    return-object v0
.end method


# virtual methods
.method public onEnter()V
    .locals 14

    .prologue
    .line 32
    invoke-super {p0}, Lorg/cocos2d/transitions/CCOrientedTransitionScene;->onEnter()V

    .line 35
    iget-object v0, p0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->setVisible(Z)V

    .line 40
    iget v0, p0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    const/high16 v4, 0x42b40000    # 90.0f

    .line 42
    .local v4, "inDeltaZ":F
    const/high16 v3, 0x43870000    # 270.0f

    .line 43
    .local v3, "inAngleZ":F
    const/high16 v9, 0x42b40000    # 90.0f

    .line 44
    .local v9, "outDeltaZ":F
    const/4 v8, 0x0

    .line 53
    .local v8, "outAngleZ":F
    :goto_0
    iget v0, p0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->duration:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v7

    const/4 v0, 0x2

    new-array v10, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v11, 0x0

    .line 55
    iget v0, p0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->duration:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/cocos2d/actions/camera/CCOrbitCamera;->action(FFFFFFF)Lorg/cocos2d/actions/camera/CCOrbitCamera;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v2, 0x0

    .line 56
    iget v5, p0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->duration:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x1

    .line 57
    invoke-static {}, Lorg/cocos2d/actions/instant/CCShow;->action()Lorg/cocos2d/actions/instant/CCShow;

    move-result-object v5

    aput-object v5, v1, v2

    .line 54
    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    .line 59
    const-string v1, "finish"

    invoke-static {p0, v1}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v1

    aput-object v1, v10, v0

    .line 52
    invoke-static {v7, v10}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v12

    .line 62
    .local v12, "inA":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget v0, p0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->duration:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/cocos2d/actions/camera/CCOrbitCamera;->action(FFFFFFF)Lorg/cocos2d/actions/camera/CCOrbitCamera;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v2, 0x0

    .line 63
    iget v5, p0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->duration:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v5, v6}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v5

    aput-object v5, v1, v2

    .line 61
    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v2, 0x0

    .line 65
    invoke-static {}, Lorg/cocos2d/actions/instant/CCHide;->action()Lorg/cocos2d/actions/instant/CCHide;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x1

    .line 66
    iget v5, p0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->duration:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v5

    aput-object v5, v1, v2

    .line 60
    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v13

    .line 68
    .local v13, "outA":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget-object v0, p0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->setScale(F)V

    .line 69
    iget-object v0, p0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, v12}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 70
    iget-object v0, p0, Lorg/cocos2d/transitions/CCZoomFlipYTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, v13}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 71
    return-void

    .line 46
    .end local v3    # "inAngleZ":F
    .end local v4    # "inDeltaZ":F
    .end local v8    # "outAngleZ":F
    .end local v9    # "outDeltaZ":F
    .end local v12    # "inA":Lorg/cocos2d/actions/interval/CCIntervalAction;
    .end local v13    # "outA":Lorg/cocos2d/actions/interval/CCIntervalAction;
    :cond_0
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 47
    .restart local v4    # "inDeltaZ":F
    const/high16 v3, 0x42b40000    # 90.0f

    .line 48
    .restart local v3    # "inAngleZ":F
    const/high16 v9, -0x3d4c0000    # -90.0f

    .line 49
    .restart local v9    # "outDeltaZ":F
    const/4 v8, 0x0

    .restart local v8    # "outAngleZ":F
    goto/16 :goto_0
.end method
