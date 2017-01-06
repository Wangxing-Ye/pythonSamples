.class Lorg/cocos2d/types/util/PoolHolder$1;
.super Ljava/lang/ThreadLocal;
.source "PoolHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/types/util/PoolHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/cocos2d/types/util/PoolHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/types/util/PoolHolder$1;->initialValue()Lorg/cocos2d/types/util/PoolHolder;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/cocos2d/types/util/PoolHolder;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lorg/cocos2d/types/util/PoolHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/cocos2d/types/util/PoolHolder;-><init>(Lorg/cocos2d/types/util/PoolHolder;)V

    return-object v0
.end method
