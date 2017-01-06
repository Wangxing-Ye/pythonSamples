.class public Lorg/cocos2d/actions/base/CCRepeatForever;
.super Lorg/cocos2d/actions/base/CCAction;
.source "CCRepeatForever.java"


# instance fields
.field protected other:Lorg/cocos2d/actions/interval/CCIntervalAction;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/cocos2d/actions/base/CCAction;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    .line 22
    return-void
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/actions/base/CCRepeatForever;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/base/CCRepeatForever;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/base/CCRepeatForever;->copy()Lorg/cocos2d/actions/base/CCAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/base/CCAction;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lorg/cocos2d/actions/base/CCRepeatForever;

    iget-object v1, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/base/CCRepeatForever;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public reverse()Lorg/cocos2d/actions/base/CCRepeatForever;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v0

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lorg/cocos2d/actions/base/CCAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 32
    iget-object v0, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    iget-object v1, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 33
    return-void
.end method

.method public step(F)V
    .locals 3
    .param p1, "dt"    # F

    .prologue
    .line 37
    iget-object v1, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->step(F)V

    .line 38
    iget-object v1, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    iget v1, v1, Lorg/cocos2d/actions/interval/CCIntervalAction;->duration:F

    add-float/2addr v1, p1

    iget-object v2, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v2}, Lorg/cocos2d/actions/interval/CCIntervalAction;->getElapsed()F

    move-result v2

    sub-float v0, v1, v2

    .line 40
    .local v0, "diff":F
    iget-object v1, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    iget-object v2, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1, v2}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 41
    iget-object v1, p0, Lorg/cocos2d/actions/base/CCRepeatForever;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->step(F)V

    .line 43
    .end local v0    # "diff":F
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "time"    # F

    .prologue
    .line 58
    return-void
.end method
