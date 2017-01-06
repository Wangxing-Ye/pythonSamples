.class public final Lorg/cocos2d/utils/collections/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/utils/collections/IntMap$Entry;,
        Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/cocos2d/utils/collections/IntMap$Entry",
        "<TT;>;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private final loadFactor:F

.field private mask:I

.field private size:I

.field private table:[Lorg/cocos2d/utils/collections/IntMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/cocos2d/utils/collections/IntMap$Entry",
            "<TT;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/utils/collections/IntMap;-><init>(IF)V

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 23
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/cocos2d/utils/collections/IntMap;-><init>(IF)V

    .line 24
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 27
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialCapacity is too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    if-gez p1, :cond_1

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialCapacity must be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialCapacity must be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2d/utils/collections/IntMap;->capacity:I

    .line 38
    :goto_0
    iget v0, p0, Lorg/cocos2d/utils/collections/IntMap;->capacity:I

    if-lt v0, p1, :cond_3

    .line 41
    iput p2, p0, Lorg/cocos2d/utils/collections/IntMap;->loadFactor:F

    .line 42
    iget v0, p0, Lorg/cocos2d/utils/collections/IntMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lorg/cocos2d/utils/collections/IntMap;->threshold:I

    .line 43
    iget v0, p0, Lorg/cocos2d/utils/collections/IntMap;->capacity:I

    new-array v0, v0, [Lorg/cocos2d/utils/collections/IntMap$Entry;

    iput-object v0, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 44
    iget v0, p0, Lorg/cocos2d/utils/collections/IntMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/cocos2d/utils/collections/IntMap;->mask:I

    .line 45
    return-void

    .line 39
    :cond_3
    iget v0, p0, Lorg/cocos2d/utils/collections/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cocos2d/utils/collections/IntMap;->capacity:I

    goto :goto_0
.end method

.method static synthetic access$1(Lorg/cocos2d/utils/collections/IntMap;)[Lorg/cocos2d/utils/collections/IntMap$Entry;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cocos2d/utils/collections/IntMap;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lorg/cocos2d/utils/collections/IntMap;->size:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 162
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    iget-object v1, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 163
    .local v1, "table":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    array-length v0, v1

    .local v0, "index":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 166
    const/4 v2, 0x0

    iput v2, p0, Lorg/cocos2d/utils/collections/IntMap;->size:I

    .line 167
    return-void

    .line 164
    :cond_0
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/utils/collections/IntMap;->clone()Lorg/cocos2d/utils/collections/IntMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/cocos2d/utils/collections/IntMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/collections/IntMap",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/utils/collections/IntMap;

    .line 52
    .local v0, "clone":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    iget-object v3, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    array-length v3, v3

    new-array v2, v3, [Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 53
    .local v2, "newTable":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    iget-object v3, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 57
    iput-object v2, v0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 61
    .end local v0    # "clone":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    .end local v1    # "i":I
    .end local v2    # "newTable":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    :goto_1
    return-object v0

    .line 54
    .restart local v0    # "clone":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    .restart local v1    # "i":I
    .restart local v2    # "newTable":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 55
    iget-object v3, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/cocos2d/utils/collections/IntMap$Entry;->clone()Lorg/cocos2d/utils/collections/IntMap$Entry;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 59
    .end local v0    # "clone":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    .end local v1    # "i":I
    .end local v2    # "newTable":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    :catch_0
    move-exception v3

    .line 61
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public containsKey(I)Z
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 77
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    iget v2, p0, Lorg/cocos2d/utils/collections/IntMap;->mask:I

    and-int v1, p1, v2

    .line 78
    .local v1, "index":I
    iget-object v2, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    aget-object v0, v2, v1

    .local v0, "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 83
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 79
    :cond_0
    iget v2, v0, Lorg/cocos2d/utils/collections/IntMap$Entry;->key:I

    if-ne v2, p1, :cond_1

    .line 80
    const/4 v2, 0x1

    goto :goto_1

    .line 78
    :cond_1
    iget-object v0, v0, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 65
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    iget-object v3, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 66
    .local v3, "table":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    array-length v1, v3

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-gtz v2, :cond_0

    .line 73
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 67
    :cond_0
    aget-object v0, v3, v1

    .local v0, "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    :goto_2
    if-nez v0, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 68
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    iget-object v4, v0, Lorg/cocos2d/utils/collections/IntMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    const/4 v4, 0x1

    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, v0, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    goto :goto_2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    iget v2, p0, Lorg/cocos2d/utils/collections/IntMap;->mask:I

    and-int v1, p1, v2

    .line 88
    .local v1, "index":I
    iget-object v2, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    aget-object v0, v2, v1

    .local v0, "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 93
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 89
    :cond_0
    iget v2, v0, Lorg/cocos2d/utils/collections/IntMap$Entry;->key:I

    if-ne v2, p1, :cond_1

    .line 90
    iget-object v2, v0, Lorg/cocos2d/utils/collections/IntMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 88
    :cond_1
    iget-object v0, v0, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/cocos2d/utils/collections/IntMap$Entry",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    new-instance v0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;

    invoke-direct {v0, p0}, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;-><init>(Lorg/cocos2d/utils/collections/IntMap;)V

    return-object v0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .line 98
    iget v9, p0, Lorg/cocos2d/utils/collections/IntMap;->mask:I

    and-int v2, p1, v9

    .line 100
    .local v2, "index":I
    iget-object v9, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    aget-object v1, v9, v2

    .local v1, "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    :goto_0
    if-nez v1, :cond_1

    .line 108
    iget-object v9, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    new-instance v10, Lorg/cocos2d/utils/collections/IntMap$Entry;

    iget-object v11, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    aget-object v11, v11, v2

    invoke-direct {v10, p1, p2, v11}, Lorg/cocos2d/utils/collections/IntMap$Entry;-><init>(ILjava/lang/Object;Lorg/cocos2d/utils/collections/IntMap$Entry;)V

    aput-object v10, v9, v2

    .line 109
    iget v9, p0, Lorg/cocos2d/utils/collections/IntMap;->size:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/cocos2d/utils/collections/IntMap;->size:I

    iget v10, p0, Lorg/cocos2d/utils/collections/IntMap;->threshold:I

    if-lt v9, v10, :cond_0

    .line 111
    iget v9, p0, Lorg/cocos2d/utils/collections/IntMap;->capacity:I

    mul-int/lit8 v4, v9, 0x2

    .line 112
    .local v4, "newCapacity":I
    new-array v5, v4, [Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 113
    .local v5, "newTable":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    iget-object v8, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 114
    .local v8, "src":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    add-int/lit8 v0, v4, -0x1

    .line 115
    .local v0, "bucketmask":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v9, v8

    if-lt v3, v9, :cond_3

    .line 128
    iput-object v5, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 129
    iput v4, p0, Lorg/cocos2d/utils/collections/IntMap;->capacity:I

    .line 130
    int-to-float v9, v4

    iget v10, p0, Lorg/cocos2d/utils/collections/IntMap;->loadFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lorg/cocos2d/utils/collections/IntMap;->threshold:I

    .line 131
    iget v9, p0, Lorg/cocos2d/utils/collections/IntMap;->capacity:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/cocos2d/utils/collections/IntMap;->mask:I

    .line 133
    .end local v0    # "bucketmask":I
    .end local v3    # "j":I
    .end local v4    # "newCapacity":I
    .end local v5    # "newTable":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    .end local v8    # "src":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    :cond_0
    :goto_2
    return-object v7

    .line 101
    :cond_1
    iget v9, v1, Lorg/cocos2d/utils/collections/IntMap$Entry;->key:I

    if-eq v9, p1, :cond_2

    .line 100
    iget-object v1, v1, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    goto :goto_0

    .line 104
    :cond_2
    iget-object v7, v1, Lorg/cocos2d/utils/collections/IntMap$Entry;->value:Ljava/lang/Object;

    .line 105
    .local v7, "oldValue":Ljava/lang/Object;, "TT;"
    iput-object p2, v1, Lorg/cocos2d/utils/collections/IntMap$Entry;->value:Ljava/lang/Object;

    goto :goto_2

    .line 116
    .end local v7    # "oldValue":Ljava/lang/Object;, "TT;"
    .restart local v0    # "bucketmask":I
    .restart local v3    # "j":I
    .restart local v4    # "newCapacity":I
    .restart local v5    # "newTable":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    .restart local v8    # "src":[Lorg/cocos2d/utils/collections/IntMap$Entry;
    :cond_3
    aget-object v1, v8, v3

    .line 117
    if-eqz v1, :cond_5

    .line 118
    aput-object v7, v8, v3

    .line 120
    :cond_4
    iget-object v6, v1, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 121
    .local v6, "next":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    iget v9, v1, Lorg/cocos2d/utils/collections/IntMap$Entry;->key:I

    and-int v2, v9, v0

    .line 122
    aget-object v9, v5, v2

    iput-object v9, v1, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 123
    aput-object v1, v5, v2

    .line 124
    move-object v1, v6

    .line 125
    if-nez v1, :cond_4

    .line 115
    .end local v6    # "next":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    iget v4, p0, Lorg/cocos2d/utils/collections/IntMap;->mask:I

    and-int v1, p1, v4

    .line 138
    .local v1, "index":I
    iget-object v4, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    aget-object v3, v4, v1

    .line 139
    .local v3, "prev":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    move-object v0, v3

    .line 140
    .local v0, "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 154
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 141
    :cond_0
    iget-object v2, v0, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 142
    .local v2, "next":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    iget v4, v0, Lorg/cocos2d/utils/collections/IntMap$Entry;->key:I

    if-ne v4, p1, :cond_2

    .line 143
    iget v4, p0, Lorg/cocos2d/utils/collections/IntMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/cocos2d/utils/collections/IntMap;->size:I

    .line 144
    if-ne v3, v0, :cond_1

    .line 145
    iget-object v4, p0, Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;

    aput-object v2, v4, v1

    .line 149
    :goto_2
    iget-object v4, v0, Lorg/cocos2d/utils/collections/IntMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 147
    :cond_1
    iput-object v2, v3, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    goto :goto_2

    .line 151
    :cond_2
    move-object v3, v0

    .line 152
    move-object v0, v2

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap;, "Lorg/cocos2d/utils/collections/IntMap<TT;>;"
    iget v0, p0, Lorg/cocos2d/utils/collections/IntMap;->size:I

    return v0
.end method
