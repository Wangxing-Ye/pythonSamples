.class public Lorg/cocos2d/actions/ease/CCEaseBackInOut;
.super Lorg/cocos2d/actions/ease/CCEaseAction;
.source "CCEaseBackInOut.java"


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
    invoke-static {p0}, Lorg/cocos2d/actions/ease/CCEaseBackInOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseBackInOut;

    move-result-object v0

    return-object v0
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseBackInOut;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 8
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBackInOut;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/ease/CCEaseBackInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseBackInOut;->copy()Lorg/cocos2d/actions/ease/CCEaseAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBackInOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBackInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseBackInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBackInOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBackInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseBackInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public update(F)V
    .locals 6
    .param p1, "t"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 22
    const v0, 0x402612ff

    .line 24
    .local v0, "overshoot":F
    mul-float/2addr p1, v5

    .line 25
    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    .line 26
    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBackInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    mul-float v2, p1, p1

    add-float v3, v0, v4

    mul-float/2addr v3, p1

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-virtual {v1, v2}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    sub-float/2addr p1, v5

    .line 29
    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBackInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    mul-float v2, p1, p1

    add-float v3, v0, v4

    mul-float/2addr v3, p1

    add-float/2addr v3, v0

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    goto :goto_0
.end method
