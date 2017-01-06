.class public Lorg/cocos2d/actions/ease/CCEaseIn;
.super Lorg/cocos2d/actions/ease/CCEaseRateAction;
.source "CCEaseIn.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p2, "rate"    # F

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/ease/CCEaseRateAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    .line 14
    return-void
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseIn;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p1, "rate"    # F

    .prologue
    .line 9
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseIn;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/ease/CCEaseIn;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public static bridge synthetic action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseRateAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/actions/ease/CCEaseIn;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseIn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseIn;->copy()Lorg/cocos2d/actions/ease/CCEaseIn;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/ease/CCEaseIn;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseIn;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseIn;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseIn;->rate:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/ease/CCEaseIn;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/ease/CCEaseRateAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseIn;->copy()Lorg/cocos2d/actions/ease/CCEaseIn;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseIn;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseIn;->rate:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/ease/CCEaseOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public update(F)V
    .locals 5
    .param p1, "t"    # F

    .prologue
    .line 23
    iget-object v0, p0, Lorg/cocos2d/actions/ease/CCEaseIn;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    float-to-double v1, p1

    iget v3, p0, Lorg/cocos2d/actions/ease/CCEaseIn;->rate:F

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 24
    return-void
.end method
