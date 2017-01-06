.class public Lorg/cocos2d/actions/ease/CCEaseExponentialInOut;
.super Lorg/cocos2d/actions/ease/CCEaseAction;
.source "CCEaseExponentialInOut.java"


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
    invoke-static {p0}, Lorg/cocos2d/actions/ease/CCEaseExponentialInOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialInOut;

    move-result-object v0

    return-object v0
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialInOut;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 8
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseExponentialInOut;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/ease/CCEaseExponentialInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method


# virtual methods
.method public update(F)V
    .locals 5
    .param p1, "t"    # F

    .prologue
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 17
    div-float/2addr p1, v2

    .line 18
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 19
    const/high16 v0, 0x41200000    # 10.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p1, v2, v0

    .line 22
    :goto_0
    iget-object v0, p0, Lorg/cocos2d/actions/ease/CCEaseExponentialInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 23
    return-void

    .line 21
    :cond_0
    const/high16 v0, -0x3ee00000    # -10.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    mul-float p1, v2, v0

    goto :goto_0
.end method
