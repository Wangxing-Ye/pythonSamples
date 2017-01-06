.class public Lorg/cocos2d/actions/interval/CCSkewBy;
.super Lorg/cocos2d/actions/interval/CCSkewTo;
.source "CCSkewBy.java"


# instance fields
.field private skewX:F

.field private skewY:F


# direct methods
.method protected constructor <init>(FFF)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/actions/interval/CCSkewTo;-><init>(FFF)V

    .line 16
    iput p2, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->skewX:F

    .line 17
    iput p3, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->skewY:F

    .line 18
    return-void
.end method

.method public static action(FFF)Lorg/cocos2d/actions/interval/CCSkewBy;
    .locals 1
    .param p0, "t"    # F
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 11
    new-instance v0, Lorg/cocos2d/actions/interval/CCSkewBy;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/actions/interval/CCSkewBy;-><init>(FFF)V

    return-object v0
.end method

.method public static bridge synthetic action(FFF)Lorg/cocos2d/actions/interval/CCSkewTo;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lorg/cocos2d/actions/interval/CCSkewBy;->action(FFF)Lorg/cocos2d/actions/interval/CCSkewBy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCSkewBy;->copy()Lorg/cocos2d/actions/interval/CCSkewBy;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCSkewBy;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lorg/cocos2d/actions/interval/CCSkewBy;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->skewX:F

    iget v3, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->skewY:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/interval/CCSkewBy;-><init>(FFF)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCSkewTo;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCSkewBy;->copy()Lorg/cocos2d/actions/interval/CCSkewBy;

    move-result-object v0

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCSkewTo;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 29
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->skewX:F

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->deltaX:F

    .line 30
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->skewY:F

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->deltaY:F

    .line 32
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->startSkewX:F

    iget v1, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->deltaX:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->endSkewX:F

    .line 33
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->startSkewY:F

    iget v1, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->deltaY:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewBy;->endSkewY:F

    .line 34
    return-void
.end method
