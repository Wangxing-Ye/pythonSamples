.class public Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
.super Lorg/cocos2d/actions/ease/CCEaseAction;
.source "CCEaseExponentialOut.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/ease/CCEaseAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    .line 13
    return-void
.end method

.method public static bridge synthetic action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v0

    return-object v0
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 8
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->copy()Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->copy()Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseExponentialIn;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseExponentialIn;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public update(F)V
    .locals 6
    .param p1, "t"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    cmpl-float v2, p1, v0

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 23
    return-void

    .line 22
    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/high16 v4, -0x3ee00000    # -10.0f

    mul-float/2addr v4, p1

    div-float v0, v4, v0

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-float v0, v2

    goto :goto_0
.end method
