.class public Lcom/badlogic/gdx/utils/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# instance fields
.field public items:[J

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/LongArray;)V
    .locals 4
    .param p1, "array"    # Lcom/badlogic/gdx/utils/LongArray;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    .line 46
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 47
    return-void
.end method

.method public constructor <init>(Z[J)V
    .locals 3
    .param p1, "ordered"    # Z
    .param p2, "array"    # [J

    .prologue
    const/4 v2, 0x0

    .line 70
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 71
    array-length v0, p2

    iput v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([J)V
    .locals 1
    .param p1, "array"    # [J

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(Z[J)V

    .line 63
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 4
    .param p1, "value"    # J

    .prologue
    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 77
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 78
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aput-wide p1, v0, v1

    .line 79
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/LongArray;)V
    .locals 2
    .param p1, "array"    # Lcom/badlogic/gdx/utils/LongArray;

    .prologue
    .line 82
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;->addAll(Lcom/badlogic/gdx/utils/LongArray;II)V

    .line 83
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/LongArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/LongArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 86
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-le v0, v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offset + length must be <= size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/LongArray;->addAll([JII)V

    .line 89
    return-void
.end method

.method public addAll([J)V
    .locals 2
    .param p1, "array"    # [J

    .prologue
    .line 92
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;->addAll([JII)V

    .line 93
    return-void
.end method

.method public addAll([JII)V
    .locals 5
    .param p1, "array"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 97
    .local v0, "items":[J
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/2addr v2, p3

    sub-int v1, v2, p2

    .line 98
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v3, v1

    const/high16 v4, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 99
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 101
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 175
    return-void
.end method

.method public contains(J)Z
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 125
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v0, v3, -0x1

    .line 126
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .local v2, "items":[J
    move v1, v0

    .line 127
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 129
    const/4 v3, 0x0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_1
    return v3

    .line 128
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-wide v3, v2, v1

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public ensureCapacity(I)[J
    .locals 2
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 187
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int v0, v1, p1

    .line 188
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    return-object v1
.end method

.method public get(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 104
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public indexOf(J)I
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 133
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 134
    .local v1, "items":[J
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v2, "n":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 136
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 135
    .restart local v0    # "i":I
    :cond_1
    aget-wide v3, v1, v0

    cmp-long v3, v3, p1

    if-eqz v3, :cond_0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public insert(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 115
    .local v0, "items":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 116
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    if-eqz v1, :cond_1

    .line 117
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 121
    aput-wide p2, v0, p1

    .line 122
    return-void

    .line 119
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v2, v0, p1

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public peek()J
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public pop()J
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public random()J
    .locals 3

    .prologue
    .line 230
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 231
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method public removeIndex(I)J
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 152
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt p1, v3, :cond_0

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 154
    .local v0, "items":[J
    aget-wide v1, v0, p1

    .line 155
    .local v1, "value":J
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 156
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    if-eqz v3, :cond_1

    .line 157
    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    sub-int/2addr v4, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    :goto_0
    return-wide v1

    .line 159
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v3, v0, v3

    aput-wide v3, v0, p1

    goto :goto_0
.end method

.method public removeValue(J)Z
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 140
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 141
    .local v1, "items":[J
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v2, "n":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 147
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 142
    :cond_0
    aget-wide v3, v1, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 143
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongArray;->removeIndex(I)J

    .line 144
    const/4 v3, 0x1

    goto :goto_1

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected resize(I)[J
    .locals 5
    .param p1, "newSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 193
    new-array v1, p1, [J

    .line 194
    .local v1, "newItems":[J
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 195
    .local v0, "items":[J
    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iput-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 197
    return-object v1
.end method

.method public reverse()V
    .locals 9

    .prologue
    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v2, v6, -0x1

    .local v2, "lastIndex":I
    iget v6, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    div-int/lit8 v3, v6, 0x2

    .local v3, "n":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 211
    return-void

    .line 206
    :cond_0
    sub-int v1, v2, v0

    .line 207
    .local v1, "ii":I
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v4, v6, v0

    .line 208
    .local v4, "temp":J
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v7, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v7, v7, v1

    aput-wide v7, v6, v0

    .line 209
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aput-wide v4, v6, v1

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public set(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 109
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aput-wide p2, v0, p1

    .line 111
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    .line 181
    return-void
.end method

.method public shuffle()V
    .locals 7

    .prologue
    .line 214
    iget v4, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 220
    return-void

    .line 215
    :cond_0
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 216
    .local v1, "ii":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v2, v4, v0

    .line 217
    .local v2, "temp":J
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v5, v5, v1

    aput-wide v5, v4, v0

    .line 218
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aput-wide v2, v4, v1

    .line 214
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([JII)V

    .line 202
    return-void
.end method

.method public toArray()[J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    new-array v0, v1, [J

    .line 236
    .local v0, "array":[J
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 242
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-nez v3, :cond_0

    const-string v3, "[]"

    .line 252
    :goto_0
    return-object v3

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 244
    .local v2, "items":[J
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 245
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 247
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt v1, v3, :cond_1

    .line 251
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 248
    :cond_1
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 256
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-nez v3, :cond_0

    const-string v3, ""

    .line 264
    :goto_0
    return-object v3

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 258
    .local v2, "items":[J
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 259
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt v1, v3, :cond_1

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public truncate(I)V
    .locals 1
    .param p1, "newSize"    # I

    .prologue
    .line 225
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 226
    :cond_0
    return-void
.end method
