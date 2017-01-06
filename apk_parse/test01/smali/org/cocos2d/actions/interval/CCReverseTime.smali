.class public Lorg/cocos2d/actions/interval/CCReverseTime;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCReverseTime.java"


# instance fields
.field private other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V
    .locals 1
    .param p1, "action"    # Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .prologue
    .line 23
    invoke-virtual {p1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->getDuration()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 25
    iput-object p1, p0, Lorg/cocos2d/actions/interval/CCReverseTime;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 26
    return-void
.end method

.method public static action(Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCReverseTime;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/interval/CCReverseTime;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/interval/CCReverseTime;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCReverseTime;->copy()Lorg/cocos2d/actions/interval/CCReverseTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCReverseTime;->copy()Lorg/cocos2d/actions/interval/CCReverseTime;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCReverseTime;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lorg/cocos2d/actions/interval/CCReverseTime;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCReverseTime;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/interval/CCReverseTime;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCReverseTime;->reverse()Lorg/cocos2d/actions/interval/CCReverseTime;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCReverseTime;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/cocos2d/actions/interval/CCReverseTime;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCReverseTime;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/interval/CCReverseTime;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 36
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCReverseTime;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCReverseTime;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 37
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCReverseTime;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->stop()V

    .line 42
    invoke-super {p0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->stop()V

    .line 43
    return-void
.end method

.method public update(F)V
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCReverseTime;->other:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->update(F)V

    .line 48
    return-void
.end method
