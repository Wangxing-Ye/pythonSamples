.class public Lorg/cocos2d/actions/ease/CCEaseBackOut;
.super Lorg/cocos2d/actions/ease/CCEaseAction;
.source "CCEaseBackOut.java"


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
    invoke-static {p0}, Lorg/cocos2d/actions/ease/CCEaseBackOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseBackOut;

    move-result-object v0

    return-object v0
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseBackOut;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 8
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBackOut;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/ease/CCEaseBackOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseBackOut;->copy()Lorg/cocos2d/actions/ease/CCEaseAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBackOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBackOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseBackOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBackIn;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBackOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseBackIn;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public update(F)V
    .locals 5
    .param p1, "t"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 22
    const v0, 0x3fd9cd60

    .line 24
    .local v0, "overshoot":F
    sub-float/2addr p1, v4

    .line 25
    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBackOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    mul-float v2, p1, p1

    add-float v3, v0, v4

    mul-float/2addr v3, p1

    add-float/2addr v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 26
    return-void
.end method
