.class public Lcom/sns/game/actions/CCStopAction;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCStopAction.java"


# instance fields
.field private otherTargets:[Lorg/cocos2d/nodes/CCNode;

.field private tags_:[Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 18
    return-void
.end method

.method private varargs constructor <init>([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "tags"    # [Ljava/lang/Integer;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sns/game/actions/CCStopAction;->tags_:[Ljava/lang/Integer;

    .line 22
    return-void
.end method

.method private varargs constructor <init>([Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "targets"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sns/game/actions/CCStopAction;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    .line 26
    return-void
.end method

.method public static action()Lcom/sns/game/actions/CCStopAction;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/sns/game/actions/CCStopAction;

    invoke-direct {v0}, Lcom/sns/game/actions/CCStopAction;-><init>()V

    return-object v0
.end method

.method public static action(Ljava/util/Collection;)Lcom/sns/game/actions/CCStopAction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;)",
            "Lcom/sns/game/actions/CCStopAction;"
        }
    .end annotation

    .prologue
    .local p0, "targets":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/cocos2d/nodes/CCNode;>;"
    const/4 v1, 0x0

    .line 45
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 46
    .local v0, "error":Z
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/sns/game/actions/CCStopAction;

    invoke-direct {v1}, Lcom/sns/game/actions/CCStopAction;-><init>()V

    .line 47
    :goto_1
    return-object v1

    .line 45
    .end local v0    # "error":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    .restart local v0    # "error":Z
    :cond_1
    new-instance v2, Lcom/sns/game/actions/CCStopAction;

    new-array v1, v1, [Lorg/cocos2d/nodes/CCNode;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/cocos2d/nodes/CCNode;

    invoke-direct {v2, v1}, Lcom/sns/game/actions/CCStopAction;-><init>([Lorg/cocos2d/nodes/CCNode;)V

    move-object v1, v2

    goto :goto_1
.end method

.method public static varargs action([Ljava/lang/Integer;)Lcom/sns/game/actions/CCStopAction;
    .locals 1
    .param p0, "tags"    # [Ljava/lang/Integer;

    .prologue
    .line 33
    new-instance v0, Lcom/sns/game/actions/CCStopAction;

    invoke-direct {v0, p0}, Lcom/sns/game/actions/CCStopAction;-><init>([Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static varargs action([Lorg/cocos2d/nodes/CCNode;)Lcom/sns/game/actions/CCStopAction;
    .locals 2
    .param p0, "targets"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 38
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 39
    .local v0, "error":Z
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/sns/game/actions/CCStopAction;

    invoke-direct {v1}, Lcom/sns/game/actions/CCStopAction;-><init>()V

    .line 40
    :goto_1
    return-object v1

    .line 38
    .end local v0    # "error":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    .restart local v0    # "error":Z
    :cond_1
    new-instance v1, Lcom/sns/game/actions/CCStopAction;

    invoke-direct {v1, p0}, Lcom/sns/game/actions/CCStopAction;-><init>([Lorg/cocos2d/nodes/CCNode;)V

    goto :goto_1
.end method

.method public static bridge synthetic action()Lorg/cocos2d/actions/base/CCAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/sns/game/actions/CCStopAction;->action()Lcom/sns/game/actions/CCStopAction;

    move-result-object v0

    return-object v0
.end method

.method private stopActionOtherTargets()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v1, p0, Lcom/sns/game/actions/CCStopAction;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    if-eqz v1, :cond_0

    .line 77
    iget-object v2, p0, Lcom/sns/game/actions/CCStopAction;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 80
    :cond_0
    iput-object v4, p0, Lcom/sns/game/actions/CCStopAction;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    .line 81
    return-void

    .line 77
    :cond_1
    aget-object v0, v2, v1

    .line 78
    .local v0, "target":Lorg/cocos2d/nodes/CCNode;
    invoke-direct {p0, v0, v4}, Lcom/sns/game/actions/CCStopAction;->stopActionTarget(Lorg/cocos2d/nodes/CCNode;[Ljava/lang/Integer;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private stopActionTarget(Lorg/cocos2d/nodes/CCNode;[Ljava/lang/Integer;)V
    .locals 4
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "tags"    # [Ljava/lang/Integer;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 66
    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->stopAllActions()V

    .line 73
    :cond_0
    return-void

    .line 69
    :cond_1
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 70
    .local v0, "tag":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/cocos2d/nodes/CCNode;->stopAction(I)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 54
    :try_start_0
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 55
    iget-object v1, p0, Lcom/sns/game/actions/CCStopAction;->target:Lorg/cocos2d/nodes/CCNode;

    iget-object v2, p0, Lcom/sns/game/actions/CCStopAction;->tags_:[Ljava/lang/Integer;

    invoke-direct {p0, v1, v2}, Lcom/sns/game/actions/CCStopAction;->stopActionTarget(Lorg/cocos2d/nodes/CCNode;[Ljava/lang/Integer;)V

    .line 56
    invoke-direct {p0}, Lcom/sns/game/actions/CCStopAction;->stopActionOtherTargets()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
