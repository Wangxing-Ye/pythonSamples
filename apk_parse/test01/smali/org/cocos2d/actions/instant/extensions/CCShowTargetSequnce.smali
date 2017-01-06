.class public Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCShowTargetSequnce.java"


# instance fields
.field private otherTargets:[Lorg/cocos2d/nodes/CCNode;


# direct methods
.method private varargs constructor <init>([Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "aTargets"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    .line 18
    return-void
.end method

.method public static action(Ljava/util/List;)Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;)",
            "Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "aTargets":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    new-instance v1, Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;

    .line 26
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/cocos2d/nodes/CCNode;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/cocos2d/nodes/CCNode;

    .line 25
    :goto_0
    invoke-direct {v1, v0}, Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;-><init>([Lorg/cocos2d/nodes/CCNode;)V

    return-object v1

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs action([Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;
    .locals 1
    .param p0, "aTargets"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 21
    new-instance v0, Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;-><init>([Lorg/cocos2d/nodes/CCNode;)V

    return-object v0
.end method


# virtual methods
.method public reverse()Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    invoke-static {v0}, Lorg/cocos2d/actions/instant/extensions/CCHideTargetSequence;->action([Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/actions/instant/extensions/CCHideTargetSequence;

    move-result-object v0

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 6
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 34
    :try_start_0
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 35
    iget-object v2, p0, Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    if-eqz v2, :cond_0

    .line 37
    iget-object v3, p0, Lorg/cocos2d/actions/instant/extensions/CCShowTargetSequnce;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 46
    :cond_0
    :goto_1
    return-void

    .line 37
    :cond_1
    aget-object v1, v3, v2

    .line 39
    .local v1, "target":Lorg/cocos2d/nodes/CCNode;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "target":Lorg/cocos2d/nodes/CCNode;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method
