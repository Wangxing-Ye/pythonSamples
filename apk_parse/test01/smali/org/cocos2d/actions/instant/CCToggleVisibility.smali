.class public Lorg/cocos2d/actions/instant/CCToggleVisibility;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCToggleVisibility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    return-void
.end method

.method public static bridge synthetic action()Lorg/cocos2d/actions/base/CCAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/actions/instant/CCToggleVisibility;->action()Lorg/cocos2d/actions/instant/CCToggleVisibility;

    move-result-object v0

    return-object v0
.end method

.method public static action()Lorg/cocos2d/actions/instant/CCToggleVisibility;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lorg/cocos2d/actions/instant/CCToggleVisibility;

    invoke-direct {v0}, Lorg/cocos2d/actions/instant/CCToggleVisibility;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCToggleVisibility;->copy()Lorg/cocos2d/actions/instant/CCToggleVisibility;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/instant/CCInstantAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCToggleVisibility;->copy()Lorg/cocos2d/actions/instant/CCToggleVisibility;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/instant/CCToggleVisibility;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/actions/instant/CCToggleVisibility;

    invoke-direct {v0}, Lorg/cocos2d/actions/instant/CCToggleVisibility;-><init>()V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 22
    iget-object v1, p0, Lorg/cocos2d/actions/instant/CCToggleVisibility;->target:Lorg/cocos2d/nodes/CCNode;

    iget-object v0, p0, Lorg/cocos2d/actions/instant/CCToggleVisibility;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 23
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
