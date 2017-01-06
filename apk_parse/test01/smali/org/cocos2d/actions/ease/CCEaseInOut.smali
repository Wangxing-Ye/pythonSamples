.class public Lorg/cocos2d/actions/ease/CCEaseInOut;
.super Lorg/cocos2d/actions/ease/CCEaseRateAction;
.source "CCEaseInOut.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p2, "rate"    # F

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/ease/CCEaseRateAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    .line 13
    return-void
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseInOut;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p1, "rate"    # F

    .prologue
    .line 8
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseInOut;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/ease/CCEaseInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public static bridge synthetic action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseRateAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/actions/ease/CCEaseInOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseInOut;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseInOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseInOut;->rate:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/ease/CCEaseInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public update(F)V
    .locals 8
    .param p1, "t"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 17
    const/4 v1, 0x1

    .line 18
    .local v1, "sign":I
    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseInOut;->rate:F

    float-to-int v0, v2

    .line 19
    .local v0, "r":I
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    .line 20
    const/4 v1, -0x1

    .line 22
    :cond_0
    mul-float/2addr p1, v4

    .line 23
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 24
    iget-object v2, p0, Lorg/cocos2d/actions/ease/CCEaseInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    float-to-double v3, p1

    iget v5, p0, Lorg/cocos2d/actions/ease/CCEaseInOut;->rate:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v2, v3}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/actions/ease/CCEaseInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    int-to-float v3, v1

    mul-float/2addr v3, v7

    sub-float v4, p1, v4

    float-to-double v4, v4

    iget v6, p0, Lorg/cocos2d/actions/ease/CCEaseInOut;->rate:F

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    goto :goto_0
.end method
