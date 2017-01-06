.class public Lorg/cocos2d/transitions/CCFadeBLTransition;
.super Lorg/cocos2d/transitions/CCFadeTRTransition;
.source "CCFadeBLTransition.java"


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCFadeTRTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 16
    return-void
.end method


# virtual methods
.method public action(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1
    .param p1, "v"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 20
    iget v0, p0, Lorg/cocos2d/transitions/CCFadeBLTransition;->duration:F

    invoke-static {p1, v0}, Lorg/cocos2d/actions/tile/CCFadeOutBLTiles;->action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/tile/CCFadeOutBLTiles;

    move-result-object v0

    return-object v0
.end method
