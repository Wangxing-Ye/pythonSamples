.class public Lorg/cocos2d/actions/ease/CCEaseBounceIn;
.super Lorg/cocos2d/actions/ease/CCEaseBounce;
.source "CCEaseBounceIn.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/ease/CCEaseBounce;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    .line 13
    return-void
.end method

.method public static bridge synthetic action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lorg/cocos2d/actions/ease/CCEaseBounceIn;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseBounceIn;

    move-result-object v0

    return-object v0
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseBounceIn;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 8
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBounceIn;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/ease/CCEaseBounceIn;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseBounceIn;->copy()Lorg/cocos2d/actions/ease/CCEaseAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBounceIn;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBounceIn;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseBounceIn;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBounceOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBounceIn;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseBounceOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public update(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    sub-float v1, v2, p1

    invoke-virtual {p0, v1}, Lorg/cocos2d/actions/ease/CCEaseBounceIn;->bounceTime(F)F

    move-result v1

    sub-float v0, v2, v1

    .line 23
    .local v0, "newT":F
    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBounceIn;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 24
    return-void
.end method
