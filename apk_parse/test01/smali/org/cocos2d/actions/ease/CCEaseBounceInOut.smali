.class public Lorg/cocos2d/actions/ease/CCEaseBounceInOut;
.super Lorg/cocos2d/actions/ease/CCEaseBounce;
.source "CCEaseBounceInOut.java"


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
    invoke-static {p0}, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseBounceInOut;

    move-result-object v0

    return-object v0
.end method

.method public static action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseBounceInOut;
    .locals 1
    .param p0, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 8
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;->copy()Lorg/cocos2d/actions/ease/CCEaseAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/ease/CCEaseAction;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;

    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    return-object v0
.end method

.method public update(F)V
    .locals 8
    .param p1, "t"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "newT":F
    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 24
    mul-float/2addr p1, v7

    .line 25
    sub-float v1, v6, p1

    invoke-virtual {p0, v1}, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;->bounceTime(F)F

    move-result v1

    sub-float v1, v6, v1

    mul-float v0, v1, v5

    .line 29
    :goto_0
    iget-object v1, p0, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;->other:Lorg/cocos2d/actions/interval/CCIntervalAction;

    invoke-virtual {v1, v0}, Lorg/cocos2d/actions/interval/CCIntervalAction;->update(F)V

    .line 30
    return-void

    .line 27
    :cond_0
    mul-float v1, p1, v7

    sub-float/2addr v1, v6

    invoke-virtual {p0, v1}, Lorg/cocos2d/actions/ease/CCEaseBounceInOut;->bounceTime(F)F

    move-result v1

    mul-float/2addr v1, v5

    add-float v0, v1, v5

    goto :goto_0
.end method
