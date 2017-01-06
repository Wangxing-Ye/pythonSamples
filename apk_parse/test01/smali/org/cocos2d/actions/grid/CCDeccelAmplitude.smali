.class public Lorg/cocos2d/actions/grid/CCDeccelAmplitude;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCDeccelAmplitude.java"


# instance fields
.field other:Lorg/cocos2d/actions/interval/CCIntervalAction;

.field rate:F


# direct methods
.method public constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V
    .locals 1
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p2, "d"    # F

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->rate:F

    .line 29
    iput-object p1, p0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    .line 30
    return-void
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/grid/CCDeccelAmplitude;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p1, "d"    # F

    .prologue
    .line 23
    new-instance v0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method


# virtual methods
.method public getRate()F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->rate:F

    return v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->duration:F

    invoke-static {v0, v1}, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/grid/CCDeccelAmplitude;

    move-result-object v0

    return-object v0
.end method

.method public setRate(F)V
    .locals 0
    .param p1, "r"    # F

    .prologue
    .line 15
    iput p1, p0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->rate:F

    .line 16
    return-void
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 35
    iget-object v0, p0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 36
    return-void
.end method

.method public update(F)V
    .locals 5
    .param p1, "time"    # F

    .prologue
    .line 40
    iget-object v0, p0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    float-to-double v1, v1

    iget v3, p0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->rate:F

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->setAmplitudeRate(F)V

    .line 41
    iget-object v0, p0, Lorg/cocos2d/actions/grid/CCDeccelAmplitude;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 42
    return-void
.end method
