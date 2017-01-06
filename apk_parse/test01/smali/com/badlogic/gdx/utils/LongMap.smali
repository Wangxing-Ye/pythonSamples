.class public Lcom/badlogic/gdx/utils/LongMap;
.super Ljava/lang/Object;
.source "LongMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/LongMap$Entries;,
        Lcom/badlogic/gdx/utils/LongMap$Entry;,
        Lcom/badlogic/gdx/utils/LongMap$Keys;,
        Lcom/badlogic/gdx/utils/LongMap$MapIterator;,
        Lcom/badlogic/gdx/utils/LongMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries:Lcom/badlogic/gdx/utils/LongMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[J

.field private keys:Lcom/badlogic/gdx/utils/LongMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private values:Lcom/badlogic/gdx/utils/LongMap$Values;

.field zeroValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 63
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 64
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 68
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialCapacity must be >= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    const/high16 v1, 0x40000000    # 2.0f

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialCapacity is too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .line 73
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadFactor must be > 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    .line 79
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 84
    return-void
.end method

.method private containsKeyStash(J)Z
    .locals 5
    .param p1, "key"    # J

    .prologue
    .line 427
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 428
    .local v1, "keyTable":[J
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 430
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 429
    :cond_0
    aget-wide v3, v1, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 428
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getStash(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 309
    .local v1, "keyTable":[J
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 311
    .end local p3    # "defaultValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object p3

    .line 310
    .restart local p3    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    aget-wide v3, v1, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object p3, v3, v0

    goto :goto_1

    .line 309
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(J)I
    .locals 4
    .param p1, "h"    # J

    .prologue
    .line 488
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/32 v0, -0x4b47d1c7

    mul-long/2addr p1, v0

    .line 489
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private hash3(J)I
    .locals 4
    .param p1, "h"    # J

    .prologue
    .line 493
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/32 v0, -0x312e3dbf

    mul-long/2addr p1, v0

    .line 494
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private push(JLjava/lang/Object;IJIJIJ)V
    .locals 10
    .param p1, "insertKey"    # J
    .param p4, "index1"    # I
    .param p5, "key1"    # J
    .param p7, "index2"    # I
    .param p8, "key2"    # J
    .param p10, "index3"    # I
    .param p11, "key3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;IJIJIJ)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "insertValue":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 192
    .local v4, "keyTable":[J
    iget-object v7, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 193
    .local v7, "valueTable":[Ljava/lang/Object;
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 198
    .local v5, "mask":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    .line 201
    .local v6, "pushIterations":I
    :goto_0
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 215
    move-wide/from16 v0, p11

    .line 216
    .local v0, "evictedKey":J
    aget-object v2, v7, p10

    .line 217
    .local v2, "evictedValue":Ljava/lang/Object;, "TV;"
    aput-wide p1, v4, p10

    .line 218
    aput-object p3, v7, p10

    .line 223
    :goto_1
    int-to-long v8, v5

    and-long/2addr v8, v0

    long-to-int p4, v8

    .line 224
    aget-wide p5, v4, p4

    .line 225
    const-wide/16 v8, 0x0

    cmp-long v8, p5, v8

    if-nez v8, :cond_1

    .line 226
    aput-wide v0, v4, p4

    .line 227
    aput-object v2, v7, p4

    .line 228
    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 257
    :cond_0
    :goto_2
    return-void

    .line 203
    .end local v0    # "evictedKey":J
    .end local v2    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_0
    move-wide v0, p5

    .line 204
    .restart local v0    # "evictedKey":J
    aget-object v2, v7, p4

    .line 205
    .restart local v2    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-wide p1, v4, p4

    .line 206
    aput-object p3, v7, p4

    goto :goto_1

    .line 209
    .end local v0    # "evictedKey":J
    .end local v2    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_1
    move-wide/from16 v0, p8

    .line 210
    .restart local v0    # "evictedKey":J
    aget-object v2, v7, p7

    .line 211
    .restart local v2    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-wide p1, v4, p7

    .line 212
    aput-object p3, v7, p7

    goto :goto_1

    .line 232
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result p7

    .line 233
    aget-wide p8, v4, p7

    .line 234
    const-wide/16 v8, 0x0

    cmp-long v8, p8, v8

    if-nez v8, :cond_2

    .line 235
    aput-wide v0, v4, p7

    .line 236
    aput-object v2, v7, p7

    .line 237
    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_2

    .line 241
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result p10

    .line 242
    aget-wide p11, v4, p10

    .line 243
    const-wide/16 v8, 0x0

    cmp-long v8, p11, v8

    if-nez v8, :cond_3

    .line 244
    aput-wide v0, v4, p10

    .line 245
    aput-object v2, v7, p10

    .line 246
    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_2

    .line 250
    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_4

    .line 256
    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->putStash(JLjava/lang/Object;)V

    goto :goto_2

    .line 252
    :cond_4
    move-wide p1, v0

    .line 253
    move-object p3, v2

    .line 254
    goto/16 :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(JLjava/lang/Object;)V
    .locals 14
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 154
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    and-long/2addr v1, p1

    long-to-int v5, v1

    .line 161
    .local v5, "index1":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v6, v1, v5

    .line 162
    .local v6, "key1":J
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-nez v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v1, v5

    .line 164
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v5

    .line 165
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v8

    .line 170
    .local v8, "index2":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v9, v1, v8

    .line 171
    .local v9, "key2":J
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-nez v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v1, v8

    .line 173
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v8

    .line 174
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v11

    .line 179
    .local v11, "index3":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v12, v1, v11

    .line 180
    .local v12, "key3":J
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-nez v1, :cond_4

    .line 181
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v1, v11

    .line 182
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v11

    .line 183
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    .line 187
    invoke-direct/range {v1 .. v13}, Lcom/badlogic/gdx/utils/LongMap;->push(JLjava/lang/Object;IJIJIJ)V

    goto/16 :goto_0
.end method

.method private putStash(JLjava/lang/Object;)V
    .locals 6
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    if-ne v4, v5, :cond_0

    .line 262
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 263
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 279
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 268
    .local v2, "keyTable":[J
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v3, v0, v4

    .local v3, "n":I
    :goto_1
    if-lt v0, v3, :cond_1

    .line 275
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v1, v4, v5

    .line 276
    .local v1, "index":I
    aput-wide p1, v2, v1

    .line 277
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v4, v1

    .line 278
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    goto :goto_0

    .line 269
    .end local v1    # "index":I
    :cond_1
    aget-wide v4, v2, v0

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 270
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v4, v0

    goto :goto_0

    .line 268
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private resize(I)V
    .locals 10
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v7, 0x0

    .line 464
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v3, v6, v8

    .line 466
    .local v3, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .line 467
    int-to-float v6, p1

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    .line 468
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 469
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    .line 470
    const/4 v6, 0x3

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    .line 471
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    const/16 v8, 0x20

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    div-int/lit8 v8, v8, 0x4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    .line 473
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 474
    .local v4, "oldKeyTable":[J
    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 476
    .local v5, "oldValueTable":[Ljava/lang/Object;
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [J

    iput-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 477
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 479
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 480
    iput v7, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_1

    .line 485
    return-void

    .end local v0    # "i":I
    :cond_0
    move v6, v7

    .line 479
    goto :goto_0

    .line 482
    .restart local v0    # "i":I
    :cond_1
    aget-wide v1, v4, v0

    .line 483
    .local v1, "key":J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-eqz v6, :cond_2

    aget-object v6, v5, v0

    invoke-direct {p0, v1, v2, v6}, Lcom/badlogic/gdx/utils/LongMap;->putResize(JLjava/lang/Object;)V

    .line 481
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 380
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 381
    .local v2, "keyTable":[J
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 382
    .local v3, "valueTable":[Ljava/lang/Object;
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v4, v5

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-gtz v1, :cond_0

    .line 386
    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 387
    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 388
    iput-object v7, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 389
    iput-boolean v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 390
    return-void

    .line 383
    :cond_0
    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 384
    aput-object v7, v3, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public containsKey(J)Z
    .locals 3
    .param p1, "key"    # J

    .prologue
    .line 414
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 423
    :goto_0
    return v1

    .line 415
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    and-long/2addr v1, p1

    long-to-int v0, v1

    .line 416
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 420
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->containsKeyStash(J)Z

    move-result v1

    goto :goto_0

    .line 423
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v4, 0x1

    .line 395
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 396
    .local v3, "valueTable":[Ljava/lang/Object;
    if-nez p1, :cond_5

    .line 397
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v4

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 399
    .local v2, "keyTable":[J
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v5, v6

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-gtz v1, :cond_3

    .line 410
    .end local v2    # "keyTable":[J
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 400
    .restart local v2    # "keyTable":[J
    :cond_3
    aget-wide v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    :cond_4
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 401
    .end local v1    # "i":I
    .end local v2    # "keyTable":[J
    :cond_5
    if-eqz p2, :cond_6

    .line 402
    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eq p1, v5, :cond_0

    .line 403
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_2

    .line 404
    aget-object v5, v3, v0

    if-eq v5, p1, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 406
    .end local v1    # "i":I
    :cond_6
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 407
    :cond_7
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_3
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_2

    .line 408
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 459
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int v0, v1, p1

    .line 460
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 461
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/LongMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Entries",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 528
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries:Lcom/badlogic/gdx/utils/LongMap$Entries;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries:Lcom/badlogic/gdx/utils/LongMap$Entries;

    .line 532
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries:Lcom/badlogic/gdx/utils/LongMap$Entries;

    return-object v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries:Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->reset()V

    goto :goto_0
.end method

.method public findKey(Ljava/lang/Object;ZJ)J
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z
    .param p3, "notFound"    # J

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v4, 0x0

    .line 438
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 439
    .local v3, "valueTable":[Ljava/lang/Object;
    if-nez p1, :cond_2

    .line 440
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v6, :cond_1

    move-wide p3, v4

    .line 453
    .end local p3    # "notFound":J
    :cond_0
    :goto_0
    return-wide p3

    .line 441
    .restart local p3    # "notFound":J
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 442
    .local v2, "keyTable":[J
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v6, v7

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 443
    aget-wide v6, v2, v0

    cmp-long v6, v6, v4

    if-eqz v6, :cond_8

    aget-object v6, v3, v0

    if-nez v6, :cond_8

    aget-wide p3, v2, v0

    goto :goto_0

    .line 444
    .end local v0    # "i":I
    .end local v2    # "keyTable":[J
    :cond_2
    if-eqz p2, :cond_4

    .line 445
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v6, :cond_3

    move-wide p3, v4

    goto :goto_0

    .line 446
    :cond_3
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v4, v5

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 447
    aget-object v4, v3, v0

    if-ne v4, p1, :cond_7

    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide p3, v4, v0

    goto :goto_0

    .line 449
    .end local v0    # "i":I
    :cond_4
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-wide p3, v4

    goto :goto_0

    .line 450
    :cond_5
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v4, v5

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_3
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 451
    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide p3, v4, v0

    goto :goto_0

    :cond_6
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_7
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .end local v1    # "i":I
    .restart local v0    # "i":I
    .restart local v2    # "keyTable":[J
    :cond_8
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method

.method public get(J)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 291
    :goto_0
    return-object v1

    .line 283
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    and-long/2addr v1, p1

    long-to-int v0, v1

    .line 284
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 288
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/badlogic/gdx/utils/LongMap;->getStash(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 304
    :goto_0
    return-object v1

    .line 296
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    and-long/2addr v1, p1

    long-to-int v0, v1

    .line 297
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 299
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/LongMap;->getStash(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public keys()Lcom/badlogic/gdx/utils/LongMap$Keys;
    .locals 1

    .prologue
    .line 548
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys:Lcom/badlogic/gdx/utils/LongMap$Keys;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys:Lcom/badlogic/gdx/utils/LongMap$Keys;

    .line 552
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys:Lcom/badlogic/gdx/utils/LongMap$Keys;

    return-object v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys:Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->reset()V

    goto :goto_0
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 88
    iget-object v14, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 89
    .local v14, "oldValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 91
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 143
    .end local v14    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v14

    .line 96
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    and-long v1, v1, p1

    long-to-int v5, v1

    .line 97
    .local v5, "index1":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v6, v1, v5

    .line 98
    .local v6, "key1":J
    cmp-long v1, v6, p1

    if-nez v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v14, v1, v5

    .line 100
    .restart local v14    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v5

    goto :goto_0

    .line 104
    .end local v14    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v8

    .line 105
    .local v8, "index2":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v9, v1, v8

    .line 106
    .local v9, "key2":J
    cmp-long v1, v9, p1

    if-nez v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v14, v1, v8

    .line 108
    .restart local v14    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v8

    goto :goto_0

    .line 112
    .end local v14    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v11

    .line 113
    .local v11, "index3":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v12, v1, v11

    .line 114
    .local v12, "key3":J
    cmp-long v1, v12, p1

    if-nez v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v14, v1, v11

    .line 116
    .restart local v14    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v11

    goto :goto_0

    .line 121
    .end local v14    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-nez v1, :cond_5

    .line 122
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v1, v5

    .line 123
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v5

    .line 124
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 125
    :cond_4
    const/4 v14, 0x0

    goto :goto_0

    .line 128
    :cond_5
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-nez v1, :cond_7

    .line 129
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v1, v8

    .line 130
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v8

    .line 131
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 132
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 135
    :cond_7
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-nez v1, :cond_9

    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v1, v11

    .line 137
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v11

    .line 138
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v1, v2, :cond_8

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 139
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_9
    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    .line 142
    invoke-direct/range {v1 .. v13}, Lcom/badlogic/gdx/utils/LongMap;->push(JLjava/lang/Object;IJIJIJ)V

    .line 143
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/LongMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    return-void

    .line 147
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/LongMap$Entry;

    .line 148
    .local v0, "entry":Lcom/badlogic/gdx/utils/LongMap$Entry;, "Lcom/badlogic/gdx/utils/LongMap$Entry<TV;>;"
    iget-wide v2, v0, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    iget-object v4, v0, Lcom/badlogic/gdx/utils/LongMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 315
    cmp-long v3, p1, v5

    if-nez v3, :cond_1

    .line 316
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v3, :cond_0

    move-object v1, v2

    .line 351
    :goto_0
    return-object v1

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 318
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 319
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 320
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 324
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v3, v3

    and-long/2addr v3, p1

    long-to-int v0, v3

    .line 325
    .local v0, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 326
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide v5, v3, v0

    .line 327
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 328
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 329
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 333
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 334
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    .line 335
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide v5, v3, v0

    .line 336
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 337
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 338
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 342
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 343
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_4

    .line 344
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide v5, v3, v0

    .line 345
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 346
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 347
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 351
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->removeStash(J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method removeStash(J)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 356
    .local v1, "keyTable":[J
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 364
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 357
    :cond_0
    aget-wide v4, v1, v0

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 358
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 359
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongMap;->removeStashIndex(I)V

    .line 360
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_1

    .line 356
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeStashIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v4, 0x0

    .line 369
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 370
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v1, v2

    .line 371
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    .line 372
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, p1

    .line 373
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 374
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v1, v0

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v1, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v9, 0x0

    const/16 v8, 0x3d

    .line 499
    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-nez v7, :cond_0

    const-string v7, "[]"

    .line 522
    :goto_0
    return-object v7

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 501
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v7, 0x5b

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 503
    .local v5, "keyTable":[J
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 504
    .local v6, "valueTable":[Ljava/lang/Object;
    array-length v1, v5

    .local v1, "i":I
    move v2, v1

    .line 505
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-gtz v2, :cond_1

    move v2, v1

    .line 513
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-gtz v2, :cond_3

    .line 521
    const/16 v7, 0x5d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 506
    :cond_1
    aget-wide v3, v5, v1

    .line 507
    .local v3, "key":J
    cmp-long v7, v3, v9

    if-nez v7, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 508
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    aget-object v7, v6, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 511
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 514
    .end local v2    # "i":I
    .end local v3    # "key":J
    .restart local v1    # "i":I
    :cond_3
    aget-wide v3, v5, v1

    .line 515
    .restart local v3    # "key":J
    cmp-long v7, v3, v9

    if-nez v7, :cond_4

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 516
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_4
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    aget-object v7, v6, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public values()Lcom/badlogic/gdx/utils/LongMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values:Lcom/badlogic/gdx/utils/LongMap$Values;

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values:Lcom/badlogic/gdx/utils/LongMap$Values;

    .line 542
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values:Lcom/badlogic/gdx/utils/LongMap$Values;

    return-object v0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values:Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->reset()V

    goto :goto_0
.end method
