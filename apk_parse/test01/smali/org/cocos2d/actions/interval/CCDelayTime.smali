.class public Lorg/cocos2d/actions/interval/CCDelayTime;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCDelayTime.java"


# direct methods
.method protected constructor <init>(F)V
    .locals 0
    .param p1, "t"    # F

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 14
    return-void
.end method

.method public static action(F)Lorg/cocos2d/actions/interval/CCDelayTime;
    .locals 1
    .param p0, "t"    # F

    .prologue
    .line 9
    new-instance v0, Lorg/cocos2d/actions/interval/CCDelayTime;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/interval/CCDelayTime;-><init>(F)V

    return-object v0
.end method

.method public static bridge synthetic action(F)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCDelayTime;->copy()Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCDelayTime;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/interval/CCDelayTime;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCDelayTime;->duration:F

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/interval/CCDelayTime;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCDelayTime;->copy()Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCDelayTime;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/cocos2d/actions/interval/CCDelayTime;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCDelayTime;->duration:F

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/interval/CCDelayTime;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCDelayTime;->reverse()Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 0
    .param p1, "t"    # F

    .prologue
    .line 23
    return-void
.end method
