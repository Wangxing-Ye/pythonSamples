.class public Lorg/cocos2d/transitions/CCCrossFadeTransition;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCCrossFadeTransition.java"


# direct methods
.method protected constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 31
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCCrossFadeTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 25
    new-instance v0, Lorg/cocos2d/transitions/CCCrossFadeTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCCrossFadeTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCCrossFadeTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCCrossFadeTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lorg/cocos2d/transitions/CCTransitionScene;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 37
    return-void
.end method

.method public onEnter()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    .line 41
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onEnter()V

    .line 45
    new-instance v2, Lorg/cocos2d/types/ccColor4B;

    invoke-direct {v2, v11, v11, v11, v11}, Lorg/cocos2d/types/ccColor4B;-><init>(IIII)V

    .line 46
    .local v2, "color":Lorg/cocos2d/types/ccColor4B;
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v7

    .line 47
    .local v7, "size":Lorg/cocos2d/types/CGSize;
    invoke-static {v2}, Lorg/cocos2d/layers/CCColorLayer;->node(Lorg/cocos2d/types/ccColor4B;)Lorg/cocos2d/layers/CCColorLayer;

    move-result-object v4

    .line 50
    .local v4, "layer":Lorg/cocos2d/layers/CCColorLayer;
    iget v8, v7, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v8, v8

    iget v9, v7, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v9, v9

    invoke-static {v8, v9}, Lorg/cocos2d/opengl/CCRenderTexture;->renderTexture(II)Lorg/cocos2d/opengl/CCRenderTexture;

    move-result-object v3

    .line 51
    .local v3, "inTexture":Lorg/cocos2d/opengl/CCRenderTexture;
    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCRenderTexture;->getSprite()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    invoke-virtual {v8, v10, v10}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 52
    iget v8, v7, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v8, v12

    iget v9, v7, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v9, v12

    invoke-virtual {v3, v8, v9}, Lorg/cocos2d/opengl/CCRenderTexture;->setPosition(FF)V

    .line 53
    invoke-virtual {v3, v10, v10}, Lorg/cocos2d/opengl/CCRenderTexture;->setAnchorPoint(FF)V

    .line 56
    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCRenderTexture;->begin()V

    .line 57
    iget-object v8, p0, Lorg/cocos2d/transitions/CCCrossFadeTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    sget-object v9, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v8, v9}, Lorg/cocos2d/layers/CCScene;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 58
    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCRenderTexture;->end()V

    .line 61
    iget v8, v7, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v8, v8

    iget v9, v7, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v9, v9

    invoke-static {v8, v9}, Lorg/cocos2d/opengl/CCRenderTexture;->renderTexture(II)Lorg/cocos2d/opengl/CCRenderTexture;

    move-result-object v6

    .line 62
    .local v6, "outTexture":Lorg/cocos2d/opengl/CCRenderTexture;
    invoke-virtual {v6}, Lorg/cocos2d/opengl/CCRenderTexture;->getSprite()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    invoke-virtual {v8, v10, v10}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 63
    iget v8, v7, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v8, v12

    iget v9, v7, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v9, v12

    invoke-virtual {v6, v8, v9}, Lorg/cocos2d/opengl/CCRenderTexture;->setPosition(FF)V

    .line 64
    invoke-virtual {v6, v10, v10}, Lorg/cocos2d/opengl/CCRenderTexture;->setAnchorPoint(FF)V

    .line 67
    invoke-virtual {v6}, Lorg/cocos2d/opengl/CCRenderTexture;->begin()V

    .line 68
    iget-object v8, p0, Lorg/cocos2d/transitions/CCCrossFadeTransition;->outScene:Lorg/cocos2d/layers/CCScene;

    sget-object v9, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v8, v9}, Lorg/cocos2d/layers/CCScene;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 69
    invoke-virtual {v6}, Lorg/cocos2d/opengl/CCRenderTexture;->end()V

    .line 73
    new-instance v0, Lorg/cocos2d/types/ccBlendFunc;

    invoke-direct {v0, v13, v13}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    .line 74
    .local v0, "blend1":Lorg/cocos2d/types/ccBlendFunc;
    new-instance v1, Lorg/cocos2d/types/ccBlendFunc;

    const/16 v8, 0x302

    const/16 v9, 0x303

    invoke-direct {v1, v8, v9}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    .line 77
    .local v1, "blend2":Lorg/cocos2d/types/ccBlendFunc;
    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCRenderTexture;->getSprite()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/cocos2d/nodes/CCSprite;->setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V

    .line 78
    invoke-virtual {v6}, Lorg/cocos2d/opengl/CCRenderTexture;->getSprite()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/cocos2d/nodes/CCSprite;->setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V

    .line 81
    invoke-virtual {v4, v3}, Lorg/cocos2d/layers/CCColorLayer;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 82
    invoke-virtual {v4, v6}, Lorg/cocos2d/layers/CCColorLayer;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 85
    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCRenderTexture;->getSprite()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 86
    invoke-virtual {v6}, Lorg/cocos2d/opengl/CCRenderTexture;->getSprite()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 90
    iget v8, p0, Lorg/cocos2d/transitions/CCCrossFadeTransition;->duration:F

    invoke-static {v8, v11}, Lorg/cocos2d/actions/interval/CCFadeTo;->action(FI)Lorg/cocos2d/actions/interval/CCFadeTo;

    move-result-object v8

    new-array v9, v14, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 91
    const-string v10, "hideOutShowIn"

    invoke-static {p0, v10}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v10

    aput-object v10, v9, v11

    .line 92
    const-string v10, "finish"

    invoke-static {p0, v10}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v10

    aput-object v10, v9, v13

    .line 89
    invoke-static {v8, v9}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v5

    .line 96
    .local v5, "layerAction":Lorg/cocos2d/actions/interval/CCIntervalAction;
    invoke-virtual {v6}, Lorg/cocos2d/opengl/CCRenderTexture;->getSprite()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 99
    const v8, -0x5210522

    invoke-virtual {p0, v4, v14, v8}, Lorg/cocos2d/transitions/CCCrossFadeTransition;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 100
    return-void
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 106
    const v0, -0x5210522

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/transitions/CCCrossFadeTransition;->removeChildByTag(IZ)V

    .line 108
    invoke-super {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->onExit()V

    .line 109
    return-void
.end method
