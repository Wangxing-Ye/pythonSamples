.class public abstract Lorg/cocos2d/utils/pool/ConcOneClassPool;
.super Ljava/lang/Object;
.source "ConcOneClassPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private objs:Lorg/cocos2d/utils/collections/ConcNodeCachingStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lorg/cocos2d/utils/pool/ConcOneClassPool;, "Lorg/cocos2d/utils/pool/ConcOneClassPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;

    invoke-direct {v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/utils/pool/ConcOneClassPool;->objs:Lorg/cocos2d/utils/collections/ConcNodeCachingStack;

    .line 10
    return-void
.end method


# virtual methods
.method protected abstract allocate()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public free(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lorg/cocos2d/utils/pool/ConcOneClassPool;, "Lorg/cocos2d/utils/pool/ConcOneClassPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/cocos2d/utils/pool/ConcOneClassPool;->objs:Lorg/cocos2d/utils/collections/ConcNodeCachingStack;

    invoke-virtual {v0, p1}, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->push(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lorg/cocos2d/utils/pool/ConcOneClassPool;, "Lorg/cocos2d/utils/pool/ConcOneClassPool<TT;>;"
    iget-object v1, p0, Lorg/cocos2d/utils/pool/ConcOneClassPool;->objs:Lorg/cocos2d/utils/collections/ConcNodeCachingStack;

    invoke-virtual {v1}, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 16
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lorg/cocos2d/utils/pool/ConcOneClassPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    .line 20
    :cond_0
    return-object v0
.end method
