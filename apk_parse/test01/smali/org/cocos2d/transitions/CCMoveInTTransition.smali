.class public Lorg/cocos2d/transitions/CCMoveInTTransition;
.super Lorg/cocos2d/transitions/CCMoveInLTransition;
.source "CCMoveInTTransition.java"


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCMoveInLTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 18
    return-void
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCMoveInLTransition;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCMoveInTTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCMoveInTTransition;

    move-result-object v0

    return-object v0
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCMoveInTTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 13
    new-instance v0, Lorg/cocos2d/transitions/CCMoveInTTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCMoveInTTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method


# virtual methods
.method protected initScenes()V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lorg/cocos2d/transitions/CCMoveInTTransition;->inScene:Lorg/cocos2d/layers/CCScene;

    const/4 v1, 0x0

    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/layers/CCScene;->setPosition(FF)V

    .line 26
    return-void
.end method
