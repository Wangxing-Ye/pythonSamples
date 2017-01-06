.class public Lorg/cocos2d/actions/base/CCSpeed;
.super Lorg/cocos2d/actions/base/CCAction;
.source "CCSpeed.java"


# instance fields
.field protected other:Lorg/cocos2d/actions/interval/CCIntervalAction;

.field protected speed:F


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p2, "r"    # F

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/cocos2d/actions/base/CCAction;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/cocos2d/actions/base/CCSpeed;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    .line 34
    iput p2, p0, Lorg/cocos2d/actions/base/CCSpeed;->speed:F

    .line 35
    return-void
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/base/CCSpeed;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p1, "r"    # F

    .prologue
    .line 28
    new-instance v0, Lorg/cocos2d/actions/base/CCSpeed;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/base/CCSpeed;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/base/CCSpeed;->copy()Lorg/cocos2d/actions/base/CCSpeed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/base/CCAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/base/CCSpeed;->copy()Lorg/cocos2d/actions/base/CCSpeed;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/base/CCSpeed;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/cocos2d/actions/base/CCSpeed;

    iget-object v1, p0, Lorg/cocos2d/actions/base/CCSpeed;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/actions/base/CCSpeed;->speed:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/base/CCSpeed;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lorg/cocos2d/actions/base/CCSpeed;->speed:F

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/cocos2d/actions/base/CCSpeed;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->isDone()Z

    move-result v0

    return v0
.end method

.method public reverse()Lorg/cocos2d/actions/base/CCSpeed;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/cocos2d/actions/base/CCSpeed;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/actions/base/CCSpeed;->speed:F

    invoke-static {v0, v1}, Lorg/cocos2d/actions/base/CCSpeed;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;F)Lorg/cocos2d/actions/base/CCSpeed;

    move-result-object v0

    return-object v0
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 23
    iput p1, p0, Lorg/cocos2d/actions/base/CCSpeed;->speed:F

    .line 24
    return-void
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lorg/cocos2d/actions/base/CCAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 46
    iget-object v0, p0, Lorg/cocos2d/actions/base/CCSpeed;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    iget-object v1, p0, Lorg/cocos2d/actions/base/CCSpeed;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 47
    return-void
.end method

.method public step(F)V
    .locals 2
    .param p1, "dt"    # F

    .prologue
    .line 57
    iget-object v0, p0, Lorg/cocos2d/actions/base/CCSpeed;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    iget v1, p0, Lorg/cocos2d/actions/base/CCSpeed;->speed:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->step(F)V

    .line 58
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/cocos2d/actions/base/CCSpeed;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->stop()V

    .line 52
    invoke-super {p0}, Lorg/cocos2d/actions/base/CCAction;->stop()V

    .line 53
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "time"    # F

    .prologue
    .line 72
    return-void
.end method
