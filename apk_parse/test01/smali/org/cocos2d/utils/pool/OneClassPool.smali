.class public abstract Lorg/cocos2d/utils/pool/OneClassPool;
.super Ljava/lang/Object;
.source "OneClassPool.java"


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
.field private objs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/utils/pool/OneClassPool;->objs:Ljava/util/ArrayList;

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

.method public clear()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<TT;>;"
    iget-object v0, p0, Lorg/cocos2d/utils/pool/OneClassPool;->objs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    return-void
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
    .local p0, "this":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/cocos2d/utils/pool/OneClassPool;->objs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<TT;>;"
    iget-object v1, p0, Lorg/cocos2d/utils/pool/OneClassPool;->objs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 16
    .local v0, "s":I
    if-eqz v0, :cond_0

    .line 17
    iget-object v1, p0, Lorg/cocos2d/utils/pool/OneClassPool;->objs:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 19
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/cocos2d/utils/pool/OneClassPool;->allocate()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<TT;>;"
    iget-object v0, p0, Lorg/cocos2d/utils/pool/OneClassPool;->objs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
