.class public Lorg/cocos2d/actions/ease/CCEaseElasticInOut;
.super Lorg/cocos2d/actions/ease/CCEaseElastic;
.source "CCEaseElasticInOut.java"


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
    invoke-static {p0}, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseElasticInOut;

    move-result-object v0

    return-object v0
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseElasticInOut;
    .locals 2
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 8
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/ease/CCEaseElasticInOut;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p1, "period"    # F

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->copy()Lorg/cocos2d/actions/ease/CCEaseAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->period_:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->period_:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public update(F)V
    .locals 9
    .param p1, "t"    # F

    .prologue
    const v8, 0x40c90fdb

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v4, 0x0

    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "newT":F
    cmpl-float v2, p1, v4

    if-eqz v2, :cond_0

    cmpl-float v2, p1, v5

    if-nez v2, :cond_1

    .line 29
    :cond_0
    move v0, p1

    .line 43
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v2, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 44
    return-void

    .line 31
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    .line 32
    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->period_:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    .line 33
    const v2, 0x3ee66667    # 0.45000002f

    iput v2, p0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->period_:F

    .line 34
    :cond_2
    iget v2, p0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->period_:F

    const/high16 v3, 0x40800000    # 4.0f

    div-float v1, v2, v3

    .line 36
    .local v1, "s":F
    sub-float/2addr p1, v5

    .line 37
    cmpg-float v2, p1, v4

    if-gez v2, :cond_3

    .line 38
    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-float v4, p1, v1

    mul-float/2addr v4, v8

    iget v5, p0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->period_:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    goto :goto_0

    .line 40
    :cond_3
    const/high16 v2, -0x3ee00000    # -10.0f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float v4, p1, v1

    mul-float/2addr v4, v8

    iget v5, p0, Lorg/cocos2d/actions/ease/CCEaseElasticInOut;->period_:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-float v0, v2

    goto :goto_0
.end method
