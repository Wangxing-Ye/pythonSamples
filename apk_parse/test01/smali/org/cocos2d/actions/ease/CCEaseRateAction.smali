.class public Lorg/cocos2d/actions/ease/CCEaseRateAction;
.super Lorg/cocos2d/actions/ease/CCEaseAction;
.source "CCEaseRateAction.java"


# instance fields
.field rate:F


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p2, "aRate"    # F

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/ease/CCEaseAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    .line 21
    iput p2, p0, Lorg/cocos2d/actions/ease/CCEaseRateAction;->rate:F

    .line 22
    return-void
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseRateAction;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p1, "rate"    # F

    .prologue
    .line 15
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseRateAction;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/ease/CCEaseRateAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseRateAction;->copy()Lorg/cocos2d/actions/ease/CCEaseRateAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseRateAction;->copy()Lorg/cocos2d/actions/ease/CCEaseRateAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/ease/CCEaseRateAction;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseRateAction;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseRateAction;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseRateAction;->rate:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/ease/CCEaseRateAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseRateAction;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseRateAction;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/cocos2d/actions/ease/CCEaseRateAction;->rate:F

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/ease/CCEaseRateAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method
