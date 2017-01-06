.class public Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;
.super Ljava/lang/Object;
.source "ConcurrentArrayHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap",
            "<TK;TV;>.Entry;>;"
        }
    .end annotation
.end field

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field pool:Lorg/cocos2d/utils/pool/OneClassPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<",
            "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap",
            "<TK;TV;>.Entry;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$1;

    invoke-direct {v0, p0}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$1;-><init>(Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;)V

    iput-object v0, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->pool:Lorg/cocos2d/utils/pool/OneClassPool;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->map:Ljava/util/HashMap;

    .line 41
    return-void
.end method


# virtual methods
.method public declared-synchronized firstValue()Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap",
            "<TK;TV;>.Entry;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .local v0, "ind":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 69
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    iget-object v1, v1, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    .end local v0    # "ind":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized nextValue(Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;)Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap",
            "<TK;TV;>.Entry;)",
            "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap",
            "<TK;TV;>.Entry;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<TK;TV;>;"
    .local p1, "prev":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<TK;TV;>.Entry;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->next:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 45
    .local v2, "pos":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 47
    iget-object v3, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 49
    .local v1, "ind":I
    iget-object v3, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->pool:Lorg/cocos2d/utils/pool/OneClassPool;

    invoke-virtual {v3}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    .line 50
    .local v0, "entry":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<TK;TV;>.Entry;"
    iput-object p1, v0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->key:Ljava/lang/Object;

    .line 51
    iput-object p2, v0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->value:Ljava/lang/Object;

    .line 53
    iget-object v3, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    if-lez v1, :cond_0

    .line 56
    iget-object v3, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    iput-object v0, v3, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->next:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    .line 59
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->map:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v0    # "entry":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<TK;TV;>.Entry;"
    .end local v1    # "ind":I
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    iput-object p2, v3, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    .end local v2    # "pos":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .local v1, "ind":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 99
    :goto_0
    monitor-exit p0

    return-object v5

    .line 77
    :cond_0
    :try_start_1
    iget-object v6, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    .local v0, "curInd":I
    iget-object v6, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 82
    .local v2, "lastInd":I
    iget-object v6, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    iget-object v5, v6, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->value:Ljava/lang/Object;

    .line 84
    .local v5, "ret":Ljava/lang/Object;, "TV;"
    if-eq v0, v2, :cond_1

    .line 86
    iget-object v6, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    iget-object v3, v6, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->key:Ljava/lang/Object;

    .line 87
    .local v3, "lastKey":Ljava/lang/Object;, "TK;"
    iget-object v6, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    iget-object v7, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    iget-object v7, v7, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->value:Ljava/lang/Object;

    iput-object v7, v6, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->value:Ljava/lang/Object;

    .line 88
    iget-object v6, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    iput-object v3, v6, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->key:Ljava/lang/Object;

    .line 89
    iget-object v6, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v3    # "lastKey":Ljava/lang/Object;, "TK;"
    :cond_1
    if-eqz v2, :cond_2

    .line 93
    iget-object v6, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->next:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    .line 94
    :cond_2
    iget-object v6, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->array:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    .line 96
    .local v4, "removedEntry":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<TK;TV;>.Entry;"
    const/4 v6, 0x0

    iput-object v6, v4, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->key:Ljava/lang/Object;

    .line 97
    const/4 v6, 0x0

    iput-object v6, v4, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->value:Ljava/lang/Object;

    .line 98
    iget-object v6, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->pool:Lorg/cocos2d/utils/pool/OneClassPool;

    invoke-virtual {v6, v4}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    .end local v0    # "curInd":I
    .end local v1    # "ind":Ljava/lang/Integer;
    .end local v2    # "lastInd":I
    .end local v4    # "removedEntry":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<TK;TV;>.Entry;"
    .end local v5    # "ret":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
