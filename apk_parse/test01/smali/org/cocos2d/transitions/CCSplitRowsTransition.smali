.class public Lorg/cocos2d/transitions/CCSplitRowsTransition;
.super Lorg/cocos2d/transitions/CCSplitColsTransition;
.source "CCSplitRowsTransition.java"


# direct methods
.method public constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/transitions/CCSplitColsTransition;-><init>(FLorg/cocos2d/layers/CCScene;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected action()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x3

    iget v1, p0, Lorg/cocos2d/transitions/CCSplitRowsTransition;->duration:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/actions/tile/CCSplitRows;->action(IF)Lorg/cocos2d/actions/tile/CCSplitRows;

    move-result-object v0

    return-object v0
.end method
