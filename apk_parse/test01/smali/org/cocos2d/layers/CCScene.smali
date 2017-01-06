.class public Lorg/cocos2d/layers/CCScene;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCScene.java"


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 24
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 26
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 28
    .local v0, "s":Lorg/cocos2d/types/CGSize;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/cocos2d/layers/CCScene;->setRelativeAnchorPoint(Z)V

    .line 30
    invoke-virtual {p0, v2, v2}, Lorg/cocos2d/layers/CCScene;->setAnchorPoint(FF)V

    .line 31
    invoke-virtual {p0, v0}, Lorg/cocos2d/layers/CCScene;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 32
    return-void
.end method

.method public static node()Lorg/cocos2d/layers/CCScene;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/cocos2d/layers/CCScene;

    invoke-direct {v0}, Lorg/cocos2d/layers/CCScene;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/layers/CCScene;->node()Lorg/cocos2d/layers/CCScene;

    move-result-object v0

    return-object v0
.end method
