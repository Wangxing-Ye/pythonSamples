.class public Lorg/cocos2d/actions/base/CCFiniteTimeAction;
.super Lorg/cocos2d/actions/base/CCAction;
.source "CCFiniteTimeAction.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected duration:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->LOG_TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method protected constructor <init>(F)V
    .locals 0
    .param p1, "d"    # F

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/cocos2d/actions/base/CCAction;-><init>()V

    .line 22
    iput p1, p0, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->duration:F

    .line 23
    return-void
.end method

.method public static action(F)Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .locals 1
    .param p0, "d"    # F

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/base/CCAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    iget v1, p0, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->duration:F

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/base/CCFiniteTimeAction;-><init>(F)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->duration:F

    return v0
.end method

.method public reverse()Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Override me"

    invoke-static {v0, v1}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDuration(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 30
    iput p1, p0, Lorg/cocos2d/actions/base/CCFiniteTimeAction;->duration:F

    .line 31
    return-void
.end method

.method public step(F)V
    .locals 0
    .param p1, "dt"    # F

    .prologue
    .line 47
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "time"    # F

    .prologue
    .line 52
    return-void
.end method
