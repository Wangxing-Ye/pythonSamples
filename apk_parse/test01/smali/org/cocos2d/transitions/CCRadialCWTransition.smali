.class public Lorg/cocos2d/transitions/CCRadialCWTransition;
.super Lorg/cocos2d/transitions/CCRadialCCWTransition;
.source "CCRadialCWTransition.java"


# direct methods
.method protected constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCRadialCCWTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 17
    return-void
.end method

.method public static bridge synthetic transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCRadialCCWTransition;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/transitions/CCRadialCWTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCRadialCWTransition;

    move-result-object v0

    return-object v0
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCRadialCWTransition;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/transitions/CCRadialCWTransition;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCRadialCWTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method


# virtual methods
.method public radialType()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
