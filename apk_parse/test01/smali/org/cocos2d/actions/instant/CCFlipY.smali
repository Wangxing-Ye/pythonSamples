.class public Lorg/cocos2d/actions/instant/CCFlipY;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCFlipY.java"


# instance fields
.field flipY:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "fy"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 18
    iput-boolean p1, p0, Lorg/cocos2d/actions/instant/CCFlipY;->flipY:Z

    .line 19
    return-void
.end method

.method public static action(Z)Lorg/cocos2d/actions/instant/CCFlipY;
    .locals 1
    .param p0, "fy"    # Z

    .prologue
    .line 13
    new-instance v0, Lorg/cocos2d/actions/instant/CCFlipY;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/instant/CCFlipY;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCFlipY;->copy()Lorg/cocos2d/actions/instant/CCFlipY;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/instant/CCFlipY;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lorg/cocos2d/actions/instant/CCFlipY;

    iget-boolean v1, p0, Lorg/cocos2d/actions/instant/CCFlipY;->flipY:Z

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/instant/CCFlipY;-><init>(Z)V

    .line 24
    .local v0, "copy":Lorg/cocos2d/actions/instant/CCFlipY;
    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/instant/CCInstantAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCFlipY;->copy()Lorg/cocos2d/actions/instant/CCFlipY;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCFlipY;->reverse()Lorg/cocos2d/actions/instant/CCFlipY;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/instant/CCFlipY;
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/cocos2d/actions/instant/CCFlipY;->flipY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/cocos2d/actions/instant/CCFlipY;->action(Z)Lorg/cocos2d/actions/instant/CCFlipY;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    move-object v0, p1

    .line 30
    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 31
    .local v0, "sprite":Lorg/cocos2d/nodes/CCSprite;
    iget-boolean v1, p0, Lorg/cocos2d/actions/instant/CCFlipY;->flipY:Z

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setFlipY(Z)V

    .line 32
    return-void
.end method
