.class public Lorg/cocos2d/transitions/CCMoveInLTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCMoveInLTransition.java"

# interfaces
.implements Lorg/cocos2d/transitions/CCTransitionEaseScene;


# direct methods
.method protected constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 25
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCMoveInLTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 20
    new-instance v0, Lorg/cocos2d/transitions/CCMoveInLTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCMoveInLTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCMoveInLTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCMoveInLTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected action()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lorg/cocos2d/transitions/CCMoveInLTransition;->duration:F

    new-instance v1, Lorg/cocos2d/types/CGPoint;

    invoke-direct {v1}, Lorg/cocos2d/types/CGPoint;-><init>()V

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v0

    return-object v0
.end method

.method public easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 49
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
    iget-object v1, p0, Lorg/cocos2d/transitions/CCMoveInLTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    iget v2, v0, Lorg/cocos2d/types/CGSize;->width:F

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/layers/CCScene;->setPosition(FF)V

    .line 58
    return-void
.end method

.method public onEnter()V
    .locals 6

    .prologue
    .line 29
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 31
    invoke-virtual {p0}, Lorg/cocos2d/transitions/CCMoveInLTransition;->initScenes()V

    .line 33
    invoke-virtual {p0}, Lorg/cocos2d/transitions/CCMoveInLTransition;->action()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    .line 35
    .local v0, "a":Lorg/cocos2d/actions/interval/CCIntervalAction;
    iget-object v1, p0, Lorg/cocos2d/transitions/CCMoveInLTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    .line 36
    invoke-virtual {p0, v0}, Lorg/cocos2d/transitions/CCMoveInLTransition;->easeAction(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    .line 37
    const-string v5, "finish"

    invoke-static {p0, v5}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v5

    aput-object v5, v3, v4

    .line 35
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/layers/CCScene;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 38
    return-void
.end method
