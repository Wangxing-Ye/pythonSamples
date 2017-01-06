.class public abstract Lorg/cocos2d/actions/ease/CCEaseElastic;
.super Lorg/cocos2d/actions/ease/CCEaseAction;
.source "CCEaseElastic.java"


# instance fields
.field protected period_:F


# direct methods
.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V
    .locals 1
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;

    .prologue
    .line 20
    const v0, 0x3e99999a    # 0.3f

    invoke-direct {p0, p1, v0}, Lorg/cocos2d/actions/ease/CCEaseElastic;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/actions/interval/CCIntervalAction;F)V
    .locals 0
    .param p1, "action"    # Lorg/cocos2d/actions/interval/CCIntervalAction;
    .param p2, "period"    # F

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/ease/CCEaseAction;-><init>(Lorg/cocos2d/actions/interval/CCIntervalAction;)V

    .line 16
    iput p2, p0, Lorg/cocos2d/actions/ease/CCEaseElastic;->period_:F

    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/ease/CCEaseElastic;->copy()Lorg/cocos2d/actions/ease/CCEaseAction;

    move-result-object v0

    return-object v0
.end method

.method public abstract copy()Lorg/cocos2d/actions/ease/CCEaseAction;
.end method

.method public abstract reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
.end method
