.class public Lorg/cocos2d/actions/interval/CCRepeat;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCRepeat.java"


# instance fields
.field private other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

.field private times:I

.field private total:I


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;I)V
    .locals 2
    .param p1, "action"    # Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .param p2, "t"    # I

    .prologue
    .line 25
    invoke-virtual {p1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->getDuration()F

    move-result v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 27
    iput p2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->times:I

    .line 28
    iput-object p1, p0, Lorg/cocos2d/actions/interval/CCRepeat;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCRepeat;->total:I

    .line 31
    return-void
.end method

.method public static action(Lorg/cocos2d/actions/base/CCFiniteTimeAction;I)Lorg/cocos2d/actions/interval/CCRepeat;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .param p1, "t"    # I

    .prologue
    .line 20
    new-instance v0, Lorg/cocos2d/actions/interval/CCRepeat;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCRepeat;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCRepeat;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lorg/cocos2d/actions/interval/CCRepeat;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCRepeat;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->times:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCRepeat;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;I)V

    return-object v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lorg/cocos2d/actions/interval/CCRepeat;->total:I

    iget v1, p0, Lorg/cocos2d/actions/interval/CCRepeat;->times:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lorg/cocos2d/actions/interval/CCRepeat;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCRepeat;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->reverse()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->times:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCRepeat;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;I)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 1
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCRepeat;->total:I

    .line 41
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 42
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCRepeat;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v0, p1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 43
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCRepeat;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->stop()V

    .line 49
    invoke-super {p0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->stop()V

    .line 50
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "dt"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 57
    iget v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->times:I

    int-to-float v2, v2

    mul-float v1, p1, v2

    .line 58
    .local v1, "t":F
    iget v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->total:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 59
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v2, v3}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->update(F)V

    .line 60
    iget v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->total:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->total:I

    .line 61
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v2}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->stop()V

    .line 62
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCRepeat;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v2, v3}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 64
    iget v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->total:I

    iget v3, p0, Lorg/cocos2d/actions/interval/CCRepeat;->times:I

    if-ne v2, v3, :cond_0

    .line 66
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->update(F)V

    .line 83
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget v3, p0, Lorg/cocos2d/actions/interval/CCRepeat;->total:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->update(F)V

    goto :goto_0

    .line 74
    :cond_1
    rem-float v0, v1, v3

    .line 77
    .local v0, "r":F
    cmpl-float v2, p1, v3

    if-nez v2, :cond_2

    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    iget v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->total:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->total:I

    .line 81
    :cond_2
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCRepeat;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->update(F)V

    goto :goto_0
.end method
