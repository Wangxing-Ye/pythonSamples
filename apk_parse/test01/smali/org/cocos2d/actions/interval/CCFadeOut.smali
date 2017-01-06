.class public Lorg/cocos2d/actions/interval/CCFadeOut;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCFadeOut.java"


# direct methods
.method protected constructor <init>(F)V
    .locals 0
    .param p1, "t"    # F

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 17
    return-void
.end method

.method public static action(F)Lorg/cocos2d/actions/interval/CCFadeOut;
    .locals 1
    .param p0, "t"    # F

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/actions/interval/CCFadeOut;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/interval/CCFadeOut;-><init>(F)V

    return-object v0
.end method

.method public static bridge synthetic action(F)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCFadeOut;->copy()Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCFadeOut;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lorg/cocos2d/actions/interval/CCFadeOut;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCFadeOut;->duration:F

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/interval/CCFadeOut;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCFadeOut;->copy()Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCFadeIn;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lorg/cocos2d/actions/interval/CCFadeIn;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCFadeOut;->duration:F

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/interval/CCFadeIn;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCFadeOut;->reverse()Lorg/cocos2d/actions/interval/CCFadeIn;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 26
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCFadeOut;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    .line 27
    return-void
.end method
