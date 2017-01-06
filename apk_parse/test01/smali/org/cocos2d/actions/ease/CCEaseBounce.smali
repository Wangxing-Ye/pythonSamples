.class public abstract Lorg/cocos2d/actions/ease/CCEaseBounce;
.super Lorg/cocos2d/actions/ease/CCEaseAction;
.source "CCEaseBounce.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/ease/CCEaseAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected bounceTime(F)F
    .locals 5
    .param p1, "t"    # F

    .prologue
    const/high16 v4, 0x40f20000    # 7.5625f

    .line 15
    float-to-double v0, p1

    const-wide v2, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 16
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    .line 26
    :goto_0
    return v0

    .line 17
    :cond_0
    float-to-double v0, p1

    const-wide v2, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 18
    const v0, 0x3f0ba2e9

    sub-float/2addr p1, v0

    .line 19
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    goto :goto_0

    .line 20
    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 21
    const v0, 0x3f51745d

    sub-float/2addr p1, v0

    .line 22
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    goto :goto_0

    .line 25
    :cond_2
    const v0, 0x3f745d17

    sub-float/2addr p1, v0

    .line 26
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public abstract reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
.end method

.method public abstract update(F)V
.end method
