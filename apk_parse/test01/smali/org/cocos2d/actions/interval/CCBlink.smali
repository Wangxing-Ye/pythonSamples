.class public Lorg/cocos2d/actions/interval/CCBlink;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCBlink.java"


# instance fields
.field private times:I


# direct methods
.method protected constructor <init>(FI)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "b"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 16
    iput p2, p0, Lorg/cocos2d/actions/interval/CCBlink;->times:I

    .line 17
    return-void
.end method

.method public static action(FI)Lorg/cocos2d/actions/interval/CCBlink;
    .locals 1
    .param p0, "t"    # F
    .param p1, "b"    # I

    .prologue
    .line 10
    new-instance v0, Lorg/cocos2d/actions/interval/CCBlink;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCBlink;-><init>(FI)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCBlink;->copy()Lorg/cocos2d/actions/interval/CCBlink;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCBlink;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lorg/cocos2d/actions/interval/CCBlink;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCBlink;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCBlink;->times:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCBlink;-><init>(FI)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCBlink;->copy()Lorg/cocos2d/actions/interval/CCBlink;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCBlink;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lorg/cocos2d/actions/interval/CCBlink;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCBlink;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCBlink;->times:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCBlink;-><init>(FI)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCBlink;->reverse()Lorg/cocos2d/actions/interval/CCBlink;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 26
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/cocos2d/actions/interval/CCBlink;->times:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 27
    .local v1, "slice":F
    rem-float v0, p1, v1

    .line 28
    .local v0, "m":F
    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCBlink;->target:Lorg/cocos2d/nodes/CCNode;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
