.class public Lorg/cocos2d/actions/interval/CCIntervalAction;
.super Lorg/cocos2d/actions/base/CCFiniteTimeAction;
.source "CCIntervalAction.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected elapsed:F

.field private firstTick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/actions/interval/CCIntervalAction;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(F)V
    .locals 2
    .param p1, "d"    # F

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;-><init>(F)V

    .line 41
    iget v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->duration:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 42
    const v0, 0x358637bd    # 1.0E-6f

    iput v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->duration:F

    .line 43
    :cond_0
    iput v1, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->elapsed:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->firstTick:Z

    .line 45
    return-void
.end method

.method public static bridge synthetic action(F)Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->action(F)Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    return-object v0
.end method

.method public static action(F)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1
    .param p0, "duration"    # F

    .prologue
    .line 35
    new-instance v0, Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lorg/cocos2d/actions/interval/CCIntervalAction;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->duration:F

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    return-object v0
.end method

.method public getAmplitudeRate()F
    .locals 2

    .prologue
    .line 88
    sget-boolean v0, Lorg/cocos2d/actions/interval/CCIntervalAction;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "IntervalAction (Amplitude): Abstract class needs implementation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getElapsed()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->elapsed:F

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->elapsed:F

    iget v1, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->duration:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 79
    sget-boolean v0, Lorg/cocos2d/actions/interval/CCIntervalAction;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Reverse action not implemented"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAmplitudeRate(F)V
    .locals 2
    .param p1, "amp"    # F

    .prologue
    .line 84
    sget-boolean v0, Lorg/cocos2d/actions/interval/CCIntervalAction;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "IntervalAction (Amplitude): Abstract class needs implementation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 85
    :cond_0
    return-void
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 1
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->elapsed:F

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->firstTick:Z

    .line 74
    return-void
.end method

.method public step(F)V
    .locals 3
    .param p1, "dt"    # F

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->firstTick:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->firstTick:Z

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->elapsed:F

    .line 66
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->elapsed:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->duration:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 67
    return-void

    .line 64
    :cond_0
    iget v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->elapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCIntervalAction;->elapsed:F

    goto :goto_0
.end method
