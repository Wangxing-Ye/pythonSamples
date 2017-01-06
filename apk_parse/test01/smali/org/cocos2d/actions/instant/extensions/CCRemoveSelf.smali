.class public Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCRemoveSelf.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 11
    return-void
.end method

.method public static bridge synthetic action()Lorg/cocos2d/actions/base/CCAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v0

    return-object v0
.end method

.method public static action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    invoke-direct {v0}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;-><init>()V

    return-object v0
.end method


# virtual methods
.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 21
    :try_start_0
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 22
    iget-object v1, p0, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cocos2d/config/ccMacros;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
