.class public Lorg/cocos2d/transitions/CCSlideInTTransition;
.super Lorg/cocos2d/transitions/CCSlideInLTransition;
.source "CCSlideInTTransition.java"


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCSlideInLTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 22
    return-void
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCSlideInLTransition;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCSlideInTTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCSlideInTTransition;

    move-result-object v0

    return-object v0
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCSlideInTTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/transitions/CCSlideInTTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCSlideInTTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method


# virtual methods
.method public action()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 41
    .local v0, "s":Lorg/cocos2d/types/CGSize;
    iget v1, p0, Lorg/cocos2d/transitions/CCSlideInTTransition;->duration:F

    const/4 v2, 0x0

    iget v3, v0, Lorg/cocos2d/types/CGSize;->height:F

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    neg-float v3, v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v1

    return-object v1
.end method

.method protected initScenes()V
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 35
    .local v0, "s":Lorg/cocos2d/types/CGSize;
    iget-object v1, p0, Lorg/cocos2d/transitions/CCSlideInTTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    const/4 v2, 0x0

    iget v3, v0, Lorg/cocos2d/types/CGSize;->height:F

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/layers/CCScene;->setPosition(FF)V

    .line 36
    return-void
.end method

.method public sceneOrder()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/transitions/CCSlideInTTransition;->inSceneOnTop:Z

    .line 27
    return-void
.end method
