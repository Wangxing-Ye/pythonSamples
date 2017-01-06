.class public Lorg/cocos2d/transitions/CCMoveInBTransition;
.super Lorg/cocos2d/transitions/CCMoveInLTransition;
.source "CCMoveInBTransition.java"


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCMoveInLTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 19
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCMoveInBTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 14
    new-instance v0, Lorg/cocos2d/transitions/CCMoveInBTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCMoveInBTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCMoveInLTransition;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCMoveInBTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCMoveInBTransition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected initScenes()V
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 27
    .local v0, "s":Lorg/cocos2d/types/CGSize;
    iget-object v1, p0, Lorg/cocos2d/transitions/CCMoveInBTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    const/4 v2, 0x0

    iget v3, v0, Lorg/cocos2d/types/CGSize;->height:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/layers/CCScene;->setPosition(FF)V

    .line 28
    return-void
.end method
