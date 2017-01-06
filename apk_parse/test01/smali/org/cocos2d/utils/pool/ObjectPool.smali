.class public Lorg/cocos2d/utils/pool/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# instance fields
.field private lists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/utils/pool/ObjectPool;->lists:Ljava/util/HashMap;

    .line 12
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    .prologue
    .line 29
    iget-object v1, p0, Lorg/cocos2d/utils/pool/ObjectPool;->lists:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    return-void

    .line 29
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/utils/pool/OneClassPool;

    .line 30
    .local v0, "objs":Lorg/cocos2d/utils/pool/OneClassPool;
    invoke-virtual {v0}, Lorg/cocos2d/utils/pool/OneClassPool;->clear()V

    goto :goto_0
.end method

.method public getPool(Ljava/lang/Class;)Lorg/cocos2d/utils/pool/OneClassPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/cocos2d/utils/pool/ObjectPool;->lists:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/utils/pool/OneClassPool;

    return-object v0
.end method

.method public registerPool(Ljava/lang/Class;Lorg/cocos2d/utils/pool/OneClassPool;)Lorg/cocos2d/utils/pool/OneClassPool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<TT;>;)",
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "newPool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<TT;>;"
    iget-object v1, p0, Lorg/cocos2d/utils/pool/ObjectPool;->lists:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/utils/pool/OneClassPool;

    .line 16
    .local v0, "pool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<TT;>;"
    if-nez v0, :cond_0

    .line 18
    iget-object v1, p0, Lorg/cocos2d/utils/pool/ObjectPool;->lists:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    return-object v0
.end method
