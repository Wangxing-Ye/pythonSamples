.class public Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCAccelDeccelAmplitude.java"


# instance fields
.field other:Lorg/cocos2d/actions/interval/CCIntervalAction;

.field rate:F


# direct methods
.method public constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V
    .locals 1
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p2, "d"    # F

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;->rate:F

    .line 25
    iput-object p1, p0, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    .line 26
    return-void
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p1, "d"    # F

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method


# virtual methods
.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;->duration:F

    invoke-static {v0, v1}, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;

    move-result-object v0

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 31
    iget-object v0, p0, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 32
    return-void
.end method

.method public update(F)V
    .locals 6
    .param p1, "time"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, p1, v1

    .line 38
    .local v0, "f":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 39
    sub-float/2addr v0, v2

    .line 40
    sub-float v0, v2, v0

    .line 43
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    float-to-double v2, v0

    iget v4, p0, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;->rate:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/actions/interval/CCIntervalAction;->setAmplitudeRate(F)V

    .line 44
    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCAccelDeccelAmplitude;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 45
    return-void
.end method
