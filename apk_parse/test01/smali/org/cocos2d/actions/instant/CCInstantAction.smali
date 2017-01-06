.class public Lorg/cocos2d/actions/instant/CCInstantAction;
.super Lorg/cocos2d/actions/base/CCFiniteTimeAction;
.source "CCInstantAction.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;-><init>(F)V

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;->copy()Lorg/cocos2d/actions/instant/CCInstantAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;->copy()Lorg/cocos2d/actions/instant/CCInstantAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/instant/CCInstantAction;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/actions/instant/CCInstantAction;

    invoke-direct {v0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public reverse()Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;->copy()Lorg/cocos2d/actions/instant/CCInstantAction;

    move-result-object v0

    return-object v0
.end method

.method public step(F)V
    .locals 1
    .param p1, "dt"    # F

    .prologue
    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lorg/cocos2d/actions/instant/CCInstantAction;->update(F)V

    .line 27
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "t"    # F

    .prologue
    .line 32
    return-void
.end method
