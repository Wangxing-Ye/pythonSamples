.class public Lorg/cocos2d/transitions/CCFadeTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCFadeTransition.java"


# instance fields
.field color:Lorg/cocos2d/types/ccColor4B;


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 2
    .param p1, "d"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v1, v1, v1}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    invoke-direct {p0, p1, p2, v0}, Lorg/cocos2d/transitions/CCFadeTransition;-><init>(FLorg/cocos2d/layers/CCScene;Lorg/cocos2d/types/ccColor3B;)V

    .line 48
    return-void
.end method

.method public constructor <init>(FLorg/cocos2d/layers/CCScene;Lorg/cocos2d/types/ccColor3B;)V
    .locals 5
    .param p1, "d"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;
    .param p3, "rgb"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 40
    new-instance v0, Lorg/cocos2d/types/ccColor4B;

    iget v1, p3, Lorg/cocos2d/types/ccColor3B;->r:I

    iget v2, p3, Lorg/cocos2d/types/ccColor3B;->g:I

    iget v3, p3, Lorg/cocos2d/types/ccColor3B;->b:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/types/ccColor4B;-><init>(IIII)V

    iput-object v0, p0, Lorg/cocos2d/transitions/CCFadeTransition;->color:Lorg/cocos2d/types/ccColor4B;

    .line 41
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCFadeTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 32
    new-instance v0, Lorg/cocos2d/transitions/CCFadeTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCFadeTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;Lorg/cocos2d/types/ccColor3B;)Lorg/cocos2d/transitions/CCFadeTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;
    .param p2, "rgb"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 25
    new-instance v0, Lorg/cocos2d/transitions/CCFadeTransition;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/transitions/CCFadeTransition;-><init>(FLorg/cocos2d/layers/CCScene;Lorg/cocos2d/types/ccColor3B;)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCFadeTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCFadeTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onEnter()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const v4, -0x5210522

    const/high16 v7, 0x40000000    # 2.0f

    .line 52
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 54
    iget-object v3, p0, Lorg/cocos2d/transitions/CCFadeTransition;->color:Lorg/cocos2d/types/ccColor4B;

    invoke-static {v3}, Lorg/cocos2d/layers/CCColorLayer;->node(Lorg/cocos2d/types/ccColor4B;)Lorg/cocos2d/layers/CCColorLayer;

    move-result-object v2

    .line 55
    .local v2, "l":Lorg/cocos2d/layers/CCColorLayer;
    iget-object v3, p0, Lorg/cocos2d/transitions/CCFadeTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v3, v6}, Lorg/cocos2d/layers/CCScene;->setVisible(Z)V

    .line 57
    invoke-virtual {p0, v2, v8, v4}, Lorg/cocos2d/transitions/CCFadeTransition;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 60
    invoke-virtual {p0, v4}, Lorg/cocos2d/transitions/CCFadeTransition;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    .line 63
    .local v1, "f":Lorg/cocos2d/nodes/CCNode;
    iget v3, p0, Lorg/cocos2d/transitions/CCFadeTransition;->duration:F

    div-float/2addr v3, v7

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCFadeIn;->action(F)Lorg/cocos2d/actions/interval/CCFadeIn;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 64
    const-string v5, "hideOutShowIn"

    invoke-static {p0, v5}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 65
    iget v6, p0, Lorg/cocos2d/transitions/CCFadeTransition;->duration:F

    div-float/2addr v6, v7

    invoke-static {v6}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v6

    aput-object v6, v4, v5

    .line 66
    const-string v5, "finish"

    invoke-static {p0, v5}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v5

    aput-object v5, v4, v8

    .line 62
    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 67
    .local v0, "a":Lorg/cocos2d/actions/interval/CCIntervalAction;
    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCNode;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 68
    return-void
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onExit()V

    .line 73
    const v0, -0x5210522

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/transitions/CCFadeTransition;->removeChildByTag(IZ)V

    .line 74
    return-void
.end method
