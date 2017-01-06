.class public Lorg/cocos2d/transitions/CCRadialCCWTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCRadialCCWTransition.java"


# static fields
.field protected static final kSceneRadial:I = 0xc001


# direct methods
.method protected constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 26
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCRadialCCWTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 20
    new-instance v0, Lorg/cocos2d/transitions/CCRadialCCWTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCRadialCCWTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCRadialCCWTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCRadialCCWTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onEnter()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 42
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 45
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    .line 48
    .local v3, "size":Lorg/cocos2d/types/CGSize;
    iget v4, v3, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v4, v4

    iget v5, v3, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v5, v5

    invoke-static {v4, v5}, Lorg/cocos2d/opengl/CCRenderTexture;->renderTexture(II)Lorg/cocos2d/opengl/CCRenderTexture;

    move-result-object v2

    .line 49
    .local v2, "outTexture":Lorg/cocos2d/opengl/CCRenderTexture;
    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCRenderTexture;->getSprite()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 50
    iget v4, v3, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v4, v8

    iget v5, v3, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v5, v8

    invoke-virtual {v2, v4, v5}, Lorg/cocos2d/opengl/CCRenderTexture;->setPosition(FF)V

    .line 51
    invoke-virtual {v2, v6, v6}, Lorg/cocos2d/opengl/CCRenderTexture;->setAnchorPoint(FF)V

    .line 54
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7, v7, v7, v4}, Lorg/cocos2d/opengl/CCRenderTexture;->clear(FFFF)V

    .line 55
    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCRenderTexture;->begin()V

    .line 56
    iget-object v4, p0, Lorg/cocos2d/transitions/CCRadialCCWTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    sget-object v5, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v4, v5}, Lorg/cocos2d/layers/CCScene;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 57
    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCRenderTexture;->end()V

    .line 60
    invoke-virtual {p0}, Lorg/cocos2d/transitions/CCRadialCCWTransition;->hideOutShowIn()V

    .line 63
    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCRenderTexture;->getSprite()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v4

    invoke-static {v4}, Lorg/cocos2d/actions/CCProgressTimer;->progress(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/actions/CCProgressTimer;

    move-result-object v1

    .line 65
    .local v1, "outNode":Lorg/cocos2d/actions/CCProgressTimer;
    invoke-virtual {v1}, Lorg/cocos2d/actions/CCProgressTimer;->getSprite()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/cocos2d/nodes/CCSprite;->setFlipY(Z)V

    .line 67
    invoke-virtual {p0}, Lorg/cocos2d/transitions/CCRadialCCWTransition;->radialType()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/cocos2d/actions/CCProgressTimer;->setType(I)V

    .line 68
    invoke-virtual {v1, v9}, Lorg/cocos2d/actions/CCProgressTimer;->setPercentage(F)V

    .line 69
    iget v4, v3, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v4, v8

    iget v5, v3, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v5, v8

    invoke-virtual {v1, v4, v5}, Lorg/cocos2d/actions/CCProgressTimer;->setPosition(FF)V

    .line 70
    invoke-virtual {v1, v6, v6}, Lorg/cocos2d/actions/CCProgressTimer;->setAnchorPoint(FF)V

    .line 74
    iget v4, p0, Lorg/cocos2d/transitions/CCRadialCCWTransition;->duration:F

    invoke-static {v4, v9, v7}, Lorg/cocos2d/actions/interval/CCProgressFromTo;->action(FFF)Lorg/cocos2d/actions/interval/CCProgressFromTo;

    move-result-object v4

    new-array v5, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v6, 0x0

    .line 75
    const-string v7, "finish"

    invoke-static {p0, v7}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v7

    aput-object v7, v5, v6

    .line 73
    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 78
    .local v0, "layerAction":Lorg/cocos2d/actions/interval/CCIntervalAction;
    invoke-virtual {v1, v0}, Lorg/cocos2d/actions/CCProgressTimer;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 81
    const/4 v4, 0x2

    const v5, 0xc001

    invoke-virtual {p0, v1, v4, v5}, Lorg/cocos2d/transitions/CCRadialCCWTransition;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 82
    return-void
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 88
    const v0, 0xc001

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/transitions/CCRadialCCWTransition;->removeChildByTag(IZ)V

    .line 89
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onExit()V

    .line 90
    return-void
.end method

.method public radialType()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public sceneOrder()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/transitions/CCRadialCCWTransition;->inSceneOnTop:Z

    .line 34
    return-void
.end method
