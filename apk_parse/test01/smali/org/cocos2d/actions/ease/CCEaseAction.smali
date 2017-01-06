.class public Lorg/cocos2d/actions/ease/CCEaseAction;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCEaseAction.java"


# static fields
.field public static final M_PI_X_2:F = 6.2831855f


# instance fields
.field protected other:Lorg/cocos2d/actions/interval/CCIntervalAction;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V
    .locals 1
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 21
    invoke-virtual {p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->getDuration()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 22
    iput-object p1, p0, Lorg/cocos2d/actions/ease/CCEaseAction;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    .line 23
    return-void
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseAction;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/ease/CCEaseAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseAction;->copy()Lorg/cocos2d/actions/ease/CCEaseAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseAction;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseAction;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseAction;->copy()Lorg/cocos2d/actions/ease/CCEaseAction;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseAction;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseAction;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 33
    iget-object v0, p0, Lorg/cocos2d/actions/ease/CCEaseAction;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 34
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cocos2d/actions/ease/CCEaseAction;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->stop()V

    .line 39
    invoke-super {p0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->stop()V

    .line 40
    return-void
.end method

.method public update(F)V
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 44
    iget-object v0, p0, Lorg/cocos2d/actions/ease/CCEaseAction;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 45
    return-void
.end method
