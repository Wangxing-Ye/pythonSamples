.class public Lorg/cocos2d/actions/interval/CCSpawn;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCSpawn.java"


# instance fields
.field private one:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

.field private two:Lorg/cocos2d/actions/base/CCFiniteTimeAction;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V
    .locals 5
    .param p1, "one_"    # Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .param p2, "two_"    # Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .prologue
    .line 32
    invoke-virtual {p1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->getDuration()F

    move-result v2

    invoke-virtual {p2}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->getDuration()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {p0, v2}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 34
    invoke-virtual {p1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->getDuration()F

    move-result v0

    .line 35
    .local v0, "d1":F
    invoke-virtual {p2}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->getDuration()F

    move-result v1

    .line 37
    .local v1, "d2":F
    iput-object p1, p0, Lorg/cocos2d/actions/interval/CCSpawn;->one:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 38
    iput-object p2, p0, Lorg/cocos2d/actions/interval/CCSpawn;->two:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 40
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 41
    new-instance v2, Lorg/cocos2d/actions/interval/CCSequence;

    new-instance v3, Lorg/cocos2d/actions/interval/CCDelayTime;

    sub-float v4, v0, v1

    invoke-direct {v3, v4}, Lorg/cocos2d/actions/interval/CCDelayTime;-><init>(F)V

    invoke-direct {v2, p2, v3}, Lorg/cocos2d/actions/interval/CCSequence;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    iput-object v2, p0, Lorg/cocos2d/actions/interval/CCSpawn;->two:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 43
    new-instance v2, Lorg/cocos2d/actions/interval/CCSequence;

    new-instance v3, Lorg/cocos2d/actions/interval/CCDelayTime;

    sub-float v4, v1, v0

    invoke-direct {v3, v4}, Lorg/cocos2d/actions/interval/CCDelayTime;-><init>(F)V

    invoke-direct {v2, p1, v3}, Lorg/cocos2d/actions/interval/CCSequence;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    iput-object v2, p0, Lorg/cocos2d/actions/interval/CCSpawn;->one:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    goto :goto_0
.end method

.method public static varargs actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;
    .locals 5
    .param p0, "action1"    # Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .param p1, "params"    # [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .prologue
    .line 18
    move-object v1, p0

    .line 20
    .local v1, "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    if-eqz p0, :cond_0

    .line 21
    array-length v4, p1

    const/4 v3, 0x0

    move-object v2, v1

    .end local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .local v2, "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    :goto_0
    if-lt v3, v4, :cond_1

    move-object v1, v2

    .line 24
    .end local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .restart local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    :cond_0
    check-cast v1, Lorg/cocos2d/actions/interval/CCSpawn;

    .end local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    return-object v1

    .line 21
    .restart local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    :cond_1
    aget-object v0, p1, v3

    .line 22
    .local v0, "now":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    new-instance v1, Lorg/cocos2d/actions/interval/CCSpawn;

    invoke-direct {v1, v2, v0}, Lorg/cocos2d/actions/interval/CCSpawn;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    .line 21
    .end local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .restart local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .restart local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCSpawn;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lorg/cocos2d/actions/interval/CCSpawn;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCSpawn;->one:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCSpawn;->two:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v2}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCSpawn;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lorg/cocos2d/actions/interval/CCSpawn;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCSpawn;->one:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->reverse()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCSpawn;->two:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v2}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->reverse()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCSpawn;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 55
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSpawn;->one:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCSpawn;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 56
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSpawn;->two:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCSpawn;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 57
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSpawn;->one:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->stop()V

    .line 62
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSpawn;->two:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->stop()V

    .line 63
    invoke-super {p0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->stop()V

    .line 64
    return-void
.end method

.method public update(F)V
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 68
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSpawn;->one:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v0, p1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->update(F)V

    .line 69
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSpawn;->two:Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v0, p1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->update(F)V

    .line 70
    return-void
.end method
