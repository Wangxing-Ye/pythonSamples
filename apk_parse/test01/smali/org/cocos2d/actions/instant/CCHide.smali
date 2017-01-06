.class public Lorg/cocos2d/actions/instant/CCHide;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCHide.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    return-void
.end method

.method public static bridge synthetic action()Lorg/cocos2d/actions/base/CCAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/actions/instant/CCHide;->action()Lorg/cocos2d/actions/instant/CCHide;

    move-result-object v0

    return-object v0
.end method

.method public static action()Lorg/cocos2d/actions/instant/CCHide;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/actions/instant/CCHide;

    invoke-direct {v0}, Lorg/cocos2d/actions/instant/CCHide;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCHide;->copy()Lorg/cocos2d/actions/instant/CCHide;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/instant/CCHide;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/instant/CCHide;

    invoke-direct {v0}, Lorg/cocos2d/actions/instant/CCHide;-><init>()V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/instant/CCInstantAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCHide;->copy()Lorg/cocos2d/actions/instant/CCHide;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/cocos2d/actions/instant/CCShow;

    invoke-direct {v0}, Lorg/cocos2d/actions/instant/CCShow;-><init>()V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 23
    iget-object v0, p0, Lorg/cocos2d/actions/instant/CCHide;->target:Lorg/cocos2d/nodes/CCNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 24
    return-void
.end method
