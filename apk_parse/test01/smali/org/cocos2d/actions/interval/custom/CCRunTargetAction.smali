.class public Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCRunTargetAction.java"


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
    .line 22
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 23
    iput-object p2, p0, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->otherTarget:Lorg/cocos2d/nodes/CCNode;

    .line 24
    iput-object p3, p0, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->targetActions:[Lorg/cocos2d/actions/base/CCAction;

    .line 26
    return-void
.end method

.method public static varargs action(FLorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;
    .locals 1
    .param p0, "t"    # F
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "action"    # [Lorg/cocos2d/actions/base/CCAction;

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;-><init>(FLorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)V

    return-object v0
.end method

.method public static varargs action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;
    .locals 2
    .param p0, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "action"    # [Lorg/cocos2d/actions/base/CCAction;

    .prologue
    .line 14
    new-instance v0, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;-><init>(FLorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;

    iget v1, p0, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->otherTarget:Lorg/cocos2d/nodes/CCNode;

    iget-object v3, p0, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->targetActions:[Lorg/cocos2d/actions/base/CCAction;

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;-><init>(FLorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 38
    return-void
.end method

.method public update(F)V
    .locals 6
    .param p1, "time"    # F

    .prologue
    .line 45
    :try_start_0
    iget-object v3, p0, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->targetActions:[Lorg/cocos2d/actions/base/CCAction;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 53
    :goto_1
    return-void

    .line 45
    :cond_0
    aget-object v0, v3, v2

    .line 47
    .local v0, "action":Lorg/cocos2d/actions/base/CCAction;
    iget-object v5, p0, Lorg/cocos2d/actions/interval/custom/CCRunTargetAction;->otherTarget:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v5, v0}, Lorg/cocos2d/nodes/CCNode;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "action":Lorg/cocos2d/actions/base/CCAction;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cocos2d/config/ccMacros;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method
