.class public Lorg/cocos2d/actions/ease/CCEaseSineInOut;
.super Lorg/cocos2d/actions/ease/CCEaseAction;
.source "CCEaseSineInOut.java"


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
    invoke-static {p0}, Lorg/cocos2d/actions/ease/CCEaseSineInOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseSineInOut;

    move-result-object v0

    return-object v0
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseSineInOut;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 8
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseSineInOut;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/ease/CCEaseSineInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseSineInOut;->copy()Lorg/cocos2d/actions/ease/CCEaseSineInOut;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseSineInOut;->copy()Lorg/cocos2d/actions/ease/CCEaseSineInOut;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/ease/CCEaseSineInOut;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseSineInOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseSineInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseSineInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseSineInOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseSineInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseSineInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public update(F)V
    .locals 6
    .param p1, "t"    # F

    .prologue
    .line 22
    iget-object v0, p0, Lorg/cocos2d/actions/ease/CCEaseSineInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    const/high16 v1, -0x41000000    # -0.5f

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    float-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 23
    return-void
.end method
