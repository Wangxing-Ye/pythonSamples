.class public Lorg/cocos2d/transitions/CCOrientedTransitionScene;
.super Lorg/cocos2d/transitions/CCTransitionScene;
.source "CCOrientedTransitionScene.java"


# instance fields
.field orientation:I


# direct methods
.method protected constructor <init>(FLorg/cocos2d/layers/CCScene;I)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;
    .param p3, "o"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 22
    iput p3, p0, Lorg/cocos2d/transitions/CCOrientedTransitionScene;->orientation:I

    .line 23
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;I)Lorg/cocos2d/transitions/CCOrientedTransitionScene;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;
    .param p2, "o"    # I

    .prologue
    .line 14
    new-instance v0, Lorg/cocos2d/transitions/CCOrientedTransitionScene;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/transitions/CCOrientedTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;I)V

    return-object v0
.end method
