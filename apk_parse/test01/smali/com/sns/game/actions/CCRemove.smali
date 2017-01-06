.class public Lcom/sns/game/actions/CCRemove;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCRemove.java"


# instance fields
.field private otherTargets:[Lorg/cocos2d/nodes/CCNode;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 17
    return-void
.end method

.method private varargs constructor <init>([Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "targets"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sns/game/actions/CCRemove;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    .line 21
    return-void
.end method

.method public static action()Lcom/sns/game/actions/CCRemove;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/sns/game/actions/CCRemove;

    invoke-direct {v0}, Lcom/sns/game/actions/CCRemove;-><init>()V

    return-object v0
.end method

.method public static action(Ljava/util/Collection;)Lcom/sns/game/actions/CCRemove;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;)",
            "Lcom/sns/game/actions/CCRemove;"
        }
    .end annotation

    .prologue
    .local p0, "targets":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/cocos2d/nodes/CCNode;>;"
    const/4 v1, 0x0

    .line 36
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 37
    .local v0, "error":Z
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/sns/game/actions/CCRemove;

    invoke-direct {v1}, Lcom/sns/game/actions/CCRemove;-><init>()V

    .line 38
    :goto_1
    return-object v1

    .line 36
    .end local v0    # "error":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    .restart local v0    # "error":Z
    :cond_1
    new-instance v2, Lcom/sns/game/actions/CCRemove;

    new-array v1, v1, [Lorg/cocos2d/nodes/CCNode;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/cocos2d/nodes/CCNode;

    invoke-direct {v2, v1}, Lcom/sns/game/actions/CCRemove;-><init>([Lorg/cocos2d/nodes/CCNode;)V

    move-object v1, v2

    goto :goto_1
.end method

.method public static varargs action([Lorg/cocos2d/nodes/CCNode;)Lcom/sns/game/actions/CCRemove;
    .locals 2
    .param p0, "targets"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 29
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 30
    .local v0, "error":Z
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/sns/game/actions/CCRemove;

    invoke-direct {v1}, Lcom/sns/game/actions/CCRemove;-><init>()V

    .line 31
    :goto_1
    return-object v1

    .line 29
    .end local v0    # "error":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    .restart local v0    # "error":Z
    :cond_1
    new-instance v1, Lcom/sns/game/actions/CCRemove;

    invoke-direct {v1, p0}, Lcom/sns/game/actions/CCRemove;-><init>([Lorg/cocos2d/nodes/CCNode;)V

    goto :goto_1
.end method

.method public static bridge synthetic action()Lorg/cocos2d/actions/base/CCAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/sns/game/actions/CCRemove;->action()Lcom/sns/game/actions/CCRemove;

    move-result-object v0

    return-object v0
.end method

.method private removeOtherTargets()V
    .locals 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/sns/game/actions/CCRemove;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    if-eqz v1, :cond_0

    .line 61
    iget-object v2, p0, Lcom/sns/game/actions/CCRemove;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 65
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sns/game/actions/CCRemove;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    .line 66
    return-void

    .line 61
    :cond_1
    aget-object v0, v2, v1

    .line 62
    .local v0, "target":Lorg/cocos2d/nodes/CCNode;
    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 61
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removeSelfTarget()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sns/game/actions/CCRemove;->target:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sns/game/actions/CCRemove;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 1
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 45
    :try_start_0
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 46
    invoke-direct {p0}, Lcom/sns/game/actions/CCRemove;->removeSelfTarget()V

    .line 47
    invoke-direct {p0}, Lcom/sns/game/actions/CCRemove;->removeOtherTargets()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
