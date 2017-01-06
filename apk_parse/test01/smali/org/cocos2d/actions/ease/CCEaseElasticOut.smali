.class public Lorg/cocos2d/actions/ease/CCEaseElasticOut;
.super Lorg/cocos2d/actions/ease/CCEaseElastic;
.source "CCEaseElasticOut.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p2, "period"    # F

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/ease/CCEaseElastic;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    .line 17
    return-void
.end method

.method public static bridge synthetic action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lorg/cocos2d/actions/ease/CCEaseElasticOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseElasticOut;

    move-result-object v0

    return-object v0
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseElasticOut;
    .locals 2
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 8
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseElasticOut;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/actions/ease/CCEaseElasticOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseElasticOut;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p1, "period"    # F

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseElasticOut;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/ease/CCEaseElasticOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseElasticOut;->copy()Lorg/cocos2d/actions/ease/CCEaseAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseElasticOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseElasticOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseElasticOut;->period_:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/ease/CCEaseElasticOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseElasticIn;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseElasticOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseElasticOut;->period_:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/ease/CCEaseElasticIn;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public update(F)V
    .locals 6
    .param p1, "t"    # F

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "newT":F
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    .line 28
    :cond_0
    move v0, p1

    .line 33
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/actions/ease/CCEaseElasticOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v2, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 34
    return-void

    .line 30
    :cond_1
    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseElasticOut;->period_:F

    const/high16 v3, 0x40800000    # 4.0f

    div-float v1, v2, v3

    .line 31
    .local v1, "s":F
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/high16 v4, -0x3ee00000    # -10.0f

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float v4, p1, v1

    const v5, 0x40c90fdb

    mul-float/2addr v4, v5

    iget v5, p0, Lorg/cocos2d/actions/ease/CCEaseElasticOut;->period_:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-float v0, v2

    goto :goto_0
.end method
