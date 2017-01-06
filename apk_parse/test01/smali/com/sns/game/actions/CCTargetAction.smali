.class public Lcom/sns/game/actions/CCTargetAction;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCTargetAction.java"


# instance fields
.field otherTarget:Lorg/cocos2d/nodes/CCNode;

.field targetActions:[Lorg/cocos2d/actions/base/CCAction;


# direct methods
.method protected varargs constructor <init>(FLorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p3, "action"    # [Lorg/cocos2d/actions/base/CCAction;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 24
    iput-object p2, p0, Lcom/sns/game/actions/CCTargetAction;->otherTarget:Lorg/cocos2d/nodes/CCNode;

    .line 25
    iput-object p3, p0, Lcom/sns/game/actions/CCTargetAction;->targetActions:[Lorg/cocos2d/actions/base/CCAction;

    .line 27
    return-void
.end method

.method public static varargs action(FLorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lcom/sns/game/actions/CCTargetAction;
    .locals 1
    .param p0, "t"    # F
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "action"    # [Lorg/cocos2d/actions/base/CCAction;

    .prologue
    .line 19
    new-instance v0, Lcom/sns/game/actions/CCTargetAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/actions/CCTargetAction;-><init>(FLorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)V

    return-object v0
.end method

.method public static varargs action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lcom/sns/game/actions/CCTargetAction;
    .locals 2
    .param p0, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "action"    # [Lorg/cocos2d/actions/base/CCAction;

    .prologue
    .line 15
    new-instance v0, Lcom/sns/game/actions/CCTargetAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/sns/game/actions/CCTargetAction;-><init>(FLorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/sns/game/actions/CCTargetAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 4

    .prologue
    .line 32
    new-instance v0, Lcom/sns/game/actions/CCTargetAction;

    iget v1, p0, Lcom/sns/game/actions/CCTargetAction;->duration:F

    iget-object v2, p0, Lcom/sns/game/actions/CCTargetAction;->otherTarget:Lorg/cocos2d/nodes/CCNode;

    iget-object v3, p0, Lcom/sns/game/actions/CCTargetAction;->targetActions:[Lorg/cocos2d/actions/base/CCAction;

    invoke-direct {v0, v1, v2, v3}, Lcom/sns/game/actions/CCTargetAction;-><init>(FLorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 39
    return-void
.end method

.method public update(F)V
    .locals 6
    .param p1, "time"    # F

    .prologue
    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/actions/CCTargetAction;->targetActions:[Lorg/cocos2d/actions/base/CCAction;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 54
    :goto_1
    return-void

    .line 46
    :cond_0
    aget-object v0, v3, v2

    .line 48
    .local v0, "action":Lorg/cocos2d/actions/base/CCAction;
    iget-object v5, p0, Lcom/sns/game/actions/CCTargetAction;->otherTarget:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v5, v0}, Lorg/cocos2d/nodes/CCNode;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "action":Lorg/cocos2d/actions/base/CCAction;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method
