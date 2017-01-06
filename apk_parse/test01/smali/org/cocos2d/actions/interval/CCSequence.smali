.class public Lorg/cocos2d/actions/interval/CCSequence;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCSequence.java"


# instance fields
.field private actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

.field private last:I

.field private split:F


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V
    .locals 2
    .param p1, "one"    # Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .param p2, "two"    # Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .prologue
    .line 50
    invoke-virtual {p1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->getDuration()F

    move-result v0

    invoke-virtual {p2}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->getDuration()F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 53
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 54
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 55
    return-void
.end method

.method public static varargs actionSequence([Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;
    .locals 5
    .param p0, "actions"    # [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .prologue
    const/4 v3, 0x0

    .line 33
    if-eqz p0, :cond_1

    array-length v4, p0

    if-eqz v4, :cond_1

    .line 34
    aget-object v1, p0, v3

    .line 35
    .local v1, "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    array-length v4, p0

    move-object v2, v1

    .end local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .local v2, "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    :goto_0
    if-lt v3, v4, :cond_0

    .line 40
    check-cast v2, Lorg/cocos2d/actions/interval/CCSequence;

    .line 42
    .end local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    :goto_1
    return-object v2

    .line 35
    .restart local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    :cond_0
    aget-object v0, p0, v3

    .line 36
    .local v0, "now":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    if-eqz v0, :cond_2

    .line 37
    new-instance v1, Lorg/cocos2d/actions/interval/CCSequence;

    invoke-direct {v1, v2, v0}, Lorg/cocos2d/actions/interval/CCSequence;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    .line 35
    .end local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .restart local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .restart local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    goto :goto_0

    .line 42
    .end local v0    # "now":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .end local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .restart local v0    # "now":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .restart local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    :cond_2
    move-object v1, v2

    .end local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .restart local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    goto :goto_2
.end method

.method public static varargs actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;
    .locals 5
    .param p0, "action1"    # Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .param p1, "actions"    # [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .prologue
    .line 19
    array-length v3, p1

    if-nez v3, :cond_0

    .line 20
    new-instance v2, Lorg/cocos2d/actions/interval/CCSequence;

    const/4 v3, 0x0

    invoke-static {v3}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->action(F)Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/cocos2d/actions/interval/CCSequence;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    .line 28
    :goto_0
    return-object v2

    .line 22
    :cond_0
    move-object v1, p0

    .line 23
    .local v1, "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    array-length v4, p1

    const/4 v3, 0x0

    move-object v2, v1

    .end local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .local v2, "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    :goto_1
    if-lt v3, v4, :cond_1

    .line 28
    check-cast v2, Lorg/cocos2d/actions/interval/CCSequence;

    goto :goto_0

    .line 23
    :cond_1
    aget-object v0, p1, v3

    .line 24
    .local v0, "now":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    if-eqz v0, :cond_2

    .line 25
    new-instance v1, Lorg/cocos2d/actions/interval/CCSequence;

    invoke-direct {v1, v2, v0}, Lorg/cocos2d/actions/interval/CCSequence;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    .line 23
    .end local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .restart local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .restart local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    goto :goto_1

    :cond_2
    move-object v1, v2

    .end local v2    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .restart local v1    # "prev":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCSequence;->copy()Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCSequence;->copy()Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCSequence;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lorg/cocos2d/actions/interval/CCSequence;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCSequence;->reverse()Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCSequence;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lorg/cocos2d/actions/interval/CCSequence;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->reverse()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->reverse()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;-><init>(Lorg/cocos2d/actions/base/CCFiniteTimeAction;Lorg/cocos2d/actions/base/CCFiniteTimeAction;)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 65
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->getDuration()F

    move-result v0

    iget v1, p0, Lorg/cocos2d/actions/interval/CCSequence;->duration:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSequence;->split:F

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSequence;->last:I

    .line 67
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->stop()V

    .line 72
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->stop()V

    .line 74
    invoke-super {p0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->stop()V

    .line 75
    return-void
.end method

.method public update(F)V
    .locals 7
    .param p1, "t"    # F

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "found":I
    const/4 v1, 0x0

    .line 83
    .local v1, "new_t":F
    iget v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->split:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    .line 84
    const/4 v0, 0x1

    .line 85
    iget v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->split:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    .line 86
    const/high16 v1, 0x3f800000    # 1.0f

    .line 97
    :goto_0
    iget v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->last:I

    if-ne v2, v6, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 98
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v2, v2, v5

    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCSequence;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v2, v3}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 99
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->update(F)V

    .line 100
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->stop()V

    .line 103
    :cond_0
    iget v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->last:I

    if-eq v2, v0, :cond_2

    .line 104
    iget v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->last:I

    if-eq v2, v6, :cond_1

    .line 105
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget v3, p0, Lorg/cocos2d/actions/interval/CCSequence;->last:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->update(F)V

    .line 106
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget v3, p0, Lorg/cocos2d/actions/interval/CCSequence;->last:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->stop()V

    .line 108
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCSequence;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v2, v3}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 110
    :cond_2
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->actions:[Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->update(F)V

    .line 111
    iput v0, p0, Lorg/cocos2d/actions/interval/CCSequence;->last:I

    .line 112
    return-void

    .line 88
    :cond_3
    iget v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->split:F

    sub-float v2, p1, v2

    iget v3, p0, Lorg/cocos2d/actions/interval/CCSequence;->split:F

    sub-float v3, v4, v3

    div-float v1, v2, v3

    goto :goto_0

    .line 90
    :cond_4
    const/4 v0, 0x0

    .line 91
    iget v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->split:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 92
    iget v2, p0, Lorg/cocos2d/actions/interval/CCSequence;->split:F

    div-float v1, p1, v2

    goto :goto_0

    .line 94
    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method
