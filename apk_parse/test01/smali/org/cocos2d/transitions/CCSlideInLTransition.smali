.class public Lorg/cocos2d/transitions/CCSlideInLTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCSlideInLTransition.java"

# interfaces
.implements Lorg/cocos2d/transitions/CCTransitionEaseScene;


# static fields
.field protected static final ADJUST_FACTOR:F = 0.5f


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 30
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCSlideInLTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 25
    new-instance v0, Lorg/cocos2d/transitions/CCSlideInLTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCSlideInLTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCSlideInLTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCSlideInLTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected action()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 65
    .local v0, "s":Lorg/cocos2d/types/CGSize;
    iget v1, p0, Lorg/cocos2d/transitions/CCSlideInLTransition;->duration:F

    iget v2, v0, Lorg/cocos2d/types/CGSize;->width:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v1

    return-object v1
.end method

.method public easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 71
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lorg/cocos2d/actions/ease/CCEaseOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseOut;

    move-result-object v0

    return-object v0
.end method

.method protected initScenes()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 57
    .local v0, "s":Lorg/cocos2d/types/CGSize;
    iget-object v1, p0, Lorg/cocos2d/transitions/CCSlideInLTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    iget v2, v0, Lorg/cocos2d/types/CGSize;->width:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/layers/CCScene;->setPosition(FF)V

    .line 58
    return-void
.end method

.method public onEnter()V
    .locals 7

    .prologue
    .line 34
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 36
    invoke-virtual {p0}, Lorg/cocos2d/transitions/CCSlideInLTransition;->initScenes()V

    .line 38
    invoke-virtual {p0}, Lorg/cocos2d/transitions/CCSlideInLTransition;->action()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    .line 39
    .local v0, "in":Lorg/cocos2d/actions/interval/CCIntervalAction;
    invoke-virtual {p0}, Lorg/cocos2d/transitions/CCSlideInLTransition;->action()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    .line 41
    .local v1, "out":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget-object v2, p0, Lorg/cocos2d/transitions/CCSlideInLTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {p0, v0}, Lorg/cocos2d/transitions/CCSlideInLTransition;->easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 42
    iget-object v2, p0, Lorg/cocos2d/transitions/CCSlideInLTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    .line 43
    invoke-virtual {p0, v1}, Lorg/cocos2d/transitions/CCSlideInLTransition;->easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v5, 0x0

    .line 44
    const-string v6, "finish"

    invoke-static {p0, v6}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v6

    aput-object v6, v4, v5

    .line 42
    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 45
    return-void
.end method

.method public sceneOrder()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/transitions/CCSlideInLTransition;->inSceneOnTop:Z

    .line 50
    return-void
.end method
