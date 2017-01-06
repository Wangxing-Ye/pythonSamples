.class public Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
.super Ljava/lang/Object;
.source "BitOperationHelper.java"


# instance fields
.field private _buffer:[B

.field private _currPos:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "bufferLength"    # I
    .param p2, "paramaterCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    .line 12
    iget-object v0, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    aput-byte v1, v0, v1

    .line 13
    iget-object v0, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    .line 15
    return-void
.end method

.method private OneLongArg(J)V
    .locals 10
    .param p1, "data"    # J

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v9, 0x8

    const-wide/16 v7, 0xff

    .line 53
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getLongValueByteLength(J)I

    move-result v1

    .line 56
    .local v1, "size":I
    if-ne v2, v1, :cond_1

    .line 57
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 58
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 59
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    .line 61
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x3

    and-long v4, p1, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 62
    iget v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    .line 104
    .end local v1    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v1    # "size":I
    :cond_1
    if-ne v3, v1, :cond_2

    .line 65
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 66
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 67
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    .line 69
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x3

    const-wide/32 v4, 0xff00

    and-long/2addr v4, p1

    shr-long/2addr v4, v9

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 70
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x4

    and-long v4, p1, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 71
    iget v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v1    # "size":I
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "size":I
    :cond_2
    const/4 v2, 0x4

    if-ne v2, v1, :cond_3

    .line 74
    :try_start_1
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 75
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 76
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x4

    aput-byte v4, v2, v3

    .line 78
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x3

    const-wide/32 v4, -0x1000000

    and-long/2addr v4, p1

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 79
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x4

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, p1

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 80
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x5

    const-wide/32 v4, 0xff00

    and-long/2addr v4, p1

    shr-long/2addr v4, v9

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 81
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x6

    and-long v4, p1, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 82
    iget v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v2, v2, 0x7

    iput v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    goto/16 :goto_0

    .line 84
    :cond_3
    if-ne v9, v1, :cond_0

    .line 85
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 86
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 87
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x2

    const/16 v4, 0x8

    aput-byte v4, v2, v3

    .line 89
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x3

    const/16 v4, 0x38

    shr-long v4, p1, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 90
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x4

    const/16 v4, 0x30

    shr-long v4, p1, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 91
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 92
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x6

    const/16 v4, 0x20

    shr-long v4, p1, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 93
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x7

    const/16 v4, 0x18

    shr-long v4, p1, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 94
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x10

    shr-long v4, p1, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 95
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0x9

    shr-long v4, p1, v9

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 96
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v3, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v3, v3, 0xa

    and-long v4, p1, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 97
    iget v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v2, v2, 0xb

    iput v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private OneStringArg(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p1}, Lcom/cynosure/paymentsdk/helper/StringHelper;->isContainsChinese(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    :goto_0
    return-void

    .line 122
    :cond_0
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 123
    .local v0, "buff":[B
    array-length v3, v0

    .line 124
    .local v3, "size":I
    iget-object v4, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v5, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 125
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v4, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v6, v4, 0x1

    const/16 v4, 0x100

    if-lt v3, v4, :cond_1

    div-int/lit16 v4, v3, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    int-to-byte v4, v4

    aput-byte v4, v5, v6

    .line 126
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v4, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/lit8 v6, v4, 0x2

    add-int/lit16 v4, v3, -0x100

    if-ltz v4, :cond_2

    add-int/lit16 v4, v3, -0x100

    :goto_2
    int-to-byte v4, v4

    aput-byte v4, v5, v6

    .line 127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-lt v2, v3, :cond_3

    .line 131
    iget v4, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v0    # "buff":[B
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buff":[B
    .restart local v3    # "size":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move v4, v3

    .line 126
    goto :goto_2

    .line 128
    .restart local v2    # "i":I
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    iget v5, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_currPos:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x3

    aget-byte v6, v0, v2

    aput-byte v6, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static byteToString(B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # B

    .prologue
    .line 146
    const/16 v3, -0x10

    .line 147
    .local v3, "maskHigh":B
    const/16 v4, 0xf

    .line 149
    .local v4, "maskLow":B
    and-int v5, p0, v3

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v1, v5

    .line 150
    .local v1, "high":B
    and-int v5, p0, v4

    int-to-byte v2, v5

    .line 152
    .local v2, "low":B
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->findHex(B)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->findHex(B)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static findHex(B)C
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 160
    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p0}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v0

    .line 161
    .local v0, "t":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x10

    .line 163
    :cond_0
    if-ltz v0, :cond_1

    const/16 v1, 0x9

    if-gt v0, v1, :cond_1

    .line 164
    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    .line 166
    :goto_0
    return v1

    :cond_1
    add-int/lit8 v1, v0, -0xa

    add-int/lit8 v1, v1, 0x41

    int-to-char v1, v1

    goto :goto_0
.end method

.method private getLongValueByteLength(J)I
    .locals 2
    .param p1, "theValue"    # J

    .prologue
    .line 40
    const-wide/16 v0, 0x100

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    .line 42
    :cond_0
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 43
    const/4 v0, 0x2

    goto :goto_0

    .line 44
    :cond_1
    const-wide v0, 0x100000000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 45
    const/4 v0, 0x4

    goto :goto_0

    .line 47
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public getBuffer([Ljava/lang/String;)[B
    .locals 4
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .local v1, "tempSB":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->_buffer:[B

    return-object v2

    .line 20
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") data:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_1

    .line 23
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->OneLongArg(J)V

    .line 19
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_1
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->OneStringArg(Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_2
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->OneStringArg(Ljava/lang/String;)V

    goto :goto_1
.end method
