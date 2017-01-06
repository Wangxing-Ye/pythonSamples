.class public Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCRemoveTargetSequence.java"


# instance fields
.field private otherTargets:[Lorg/cocos2d/nodes/CCNode;


# direct methods
.method private varargs constructor <init>([Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "aTargets"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    .line 13
    return-void
.end method

.method public static varargs action([Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;
    .locals 1
    .param p0, "aTargets"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;-><init>([Lorg/cocos2d/nodes/CCNode;)V

    return-object v0
.end method


# virtual methods
.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 25
    :try_start_0
    iget-object v3, p0, Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    array-length v2, v3

    .line 26
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 33
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    .line 38
    .end local v1    # "i":I
    .end local v2    # "length":I
    :goto_1
    return-void

    .line 28
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 30
    iget-object v3, p0, Lorg/cocos2d/actions/instant/extensions/CCRemoveTargetSequence;->otherTargets:[Lorg/cocos2d/nodes/CCNode;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cocos2d/config/ccMacros;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method
