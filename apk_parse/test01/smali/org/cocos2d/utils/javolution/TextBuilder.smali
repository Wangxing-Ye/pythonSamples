.class public Lorg/cocos2d/utils/javolution/TextBuilder;
.super Ljava/lang/Object;
.source "TextBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final B0:I = 0x5

.field private static final B1:I = 0xa

.field private static final C0:I = 0x20

.field private static final C1:I = 0x400

.field private static final DIGIT_TO_CHAR:[C

.field private static final M1:I = 0x3ff

.field private static final POW10_LONG:[J


# instance fields
.field private _capacity:I

.field private _high:[[C

.field private _length:I

.field private _low:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 456
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    .line 665
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lorg/cocos2d/utils/javolution/TextBuilder;->POW10_LONG:[J

    .line 31
    return-void

    .line 456
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 665
    :array_1
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v0, 0x20

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    .line 58
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_low:[C

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    .line 60
    iget-object v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_low:[C

    aput-object v2, v0, v1

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/cocos2d/utils/javolution/TextBuilder;-><init>()V

    .line 83
    :goto_0
    iget v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    if-gt p1, v0, :cond_0

    .line 86
    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lorg/cocos2d/utils/javolution/TextBuilder;->increaseCapacity()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/cocos2d/utils/javolution/TextBuilder;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 72
    return-void
.end method

.method private final appendFraction(JIZ)V
    .locals 9
    .param p1, "l"    # J
    .param p3, "digits"    # I
    .param p4, "showZero"    # Z

    .prologue
    const-wide/16 v7, 0xa

    const-wide/16 v5, 0x0

    const/16 v4, 0x30

    .line 645
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 646
    cmp-long v3, p1, v5

    if-nez v3, :cond_2

    .line 647
    if-eqz p4, :cond_1

    .line 648
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 664
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 649
    .restart local v0    # "i":I
    :cond_0
    invoke-virtual {p0, v4}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v4}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    goto :goto_1

    .line 654
    :cond_2
    invoke-static {p1, p2}, Lorg/cocos2d/utils/javolution/MathLib;->digitLength(J)I

    move-result v2

    .line 655
    .local v2, "length":I
    move v1, v2

    .local v1, "j":I
    :goto_2
    if-lt v1, p3, :cond_4

    .line 658
    if-nez p4, :cond_3

    .line 659
    :goto_3
    rem-long v3, p1, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 662
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(J)Lorg/cocos2d/utils/javolution/TextBuilder;

    goto :goto_1

    .line 656
    :cond_4
    invoke-virtual {p0, v4}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 660
    :cond_5
    div-long/2addr p1, v7

    goto :goto_3
.end method

.method private appendNumber(Ljava/lang/Object;)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 2
    .param p1, "num"    # Ljava/lang/Object;

    .prologue
    .line 237
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 238
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "num":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(I)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 239
    .restart local p1    # "num":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 240
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "num":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(J)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    goto :goto_0

    .line 241
    .restart local p1    # "num":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 242
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "num":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(F)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    goto :goto_0

    .line 243
    .restart local p1    # "num":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 244
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "num":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(D)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    goto :goto_0

    .line 245
    .restart local p1    # "num":Ljava/lang/Object;
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method private appendPositive(II)V
    .locals 5
    .param p1, "l1"    # I
    .param p2, "radix"    # I

    .prologue
    .line 437
    if-lt p1, p2, :cond_2

    .line 438
    div-int v0, p1, p2

    .line 440
    .local v0, "l2":I
    if-lt v0, p2, :cond_1

    .line 441
    div-int v1, v0, p2

    .line 443
    .local v1, "l3":I
    if-lt v1, p2, :cond_0

    .line 444
    div-int v2, v1, p2

    .line 445
    .local v2, "l4":I
    invoke-direct {p0, v2, p2}, Lorg/cocos2d/utils/javolution/TextBuilder;->appendPositive(II)V

    .line 446
    sget-object v3, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    mul-int v4, v2, p2

    sub-int v4, v1, v4

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 449
    .end local v2    # "l4":I
    :goto_0
    sget-object v3, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    mul-int v4, v1, p2

    sub-int v4, v0, v4

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 452
    .end local v1    # "l3":I
    :goto_1
    sget-object v3, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    mul-int v4, v0, p2

    sub-int v4, p1, v4

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 455
    .end local v0    # "l2":I
    :goto_2
    return-void

    .line 448
    .restart local v0    # "l2":I
    .restart local v1    # "l3":I
    :cond_0
    sget-object v3, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    aget-char v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    goto :goto_0

    .line 451
    .end local v1    # "l3":I
    :cond_1
    sget-object v3, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    goto :goto_1

    .line 454
    .end local v0    # "l2":I
    :cond_2
    sget-object v3, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    aget-char v3, v3, p1

    invoke-virtual {p0, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    goto :goto_2
.end method

.method private appendPositive(JI)V
    .locals 9
    .param p1, "l1"    # J
    .param p3, "radix"    # I

    .prologue
    .line 513
    int-to-long v6, p3

    cmp-long v6, p1, v6

    if-ltz v6, :cond_2

    .line 514
    int-to-long v6, p3

    div-long v0, p1, v6

    .line 516
    .local v0, "l2":J
    int-to-long v6, p3

    cmp-long v6, v0, v6

    if-ltz v6, :cond_1

    .line 517
    int-to-long v6, p3

    div-long v2, v0, v6

    .line 519
    .local v2, "l3":J
    int-to-long v6, p3

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    .line 520
    int-to-long v6, p3

    div-long v4, v2, v6

    .line 521
    .local v4, "l4":J
    invoke-direct {p0, v4, v5, p3}, Lorg/cocos2d/utils/javolution/TextBuilder;->appendPositive(JI)V

    .line 522
    sget-object v6, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    int-to-long v7, p3

    mul-long/2addr v7, v4

    sub-long v7, v2, v7

    long-to-int v7, v7

    aget-char v6, v6, v7

    invoke-virtual {p0, v6}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 525
    .end local v4    # "l4":J
    :goto_0
    sget-object v6, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    int-to-long v7, p3

    mul-long/2addr v7, v2

    sub-long v7, v0, v7

    long-to-int v7, v7

    aget-char v6, v6, v7

    invoke-virtual {p0, v6}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 528
    .end local v2    # "l3":J
    :goto_1
    sget-object v6, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    int-to-long v7, p3

    mul-long/2addr v7, v0

    sub-long v7, p1, v7

    long-to-int v7, v7

    aget-char v6, v6, v7

    invoke-virtual {p0, v6}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 531
    .end local v0    # "l2":J
    :goto_2
    return-void

    .line 524
    .restart local v0    # "l2":J
    .restart local v2    # "l3":J
    :cond_0
    sget-object v6, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    long-to-int v7, v2

    aget-char v6, v6, v7

    invoke-virtual {p0, v6}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    goto :goto_0

    .line 527
    .end local v2    # "l3":J
    :cond_1
    sget-object v6, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    long-to-int v7, v0

    aget-char v6, v6, v7

    invoke-virtual {p0, v6}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    goto :goto_1

    .line 530
    .end local v0    # "l2":J
    :cond_2
    sget-object v6, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    long-to-int v7, p1

    aget-char v6, v6, v7

    invoke-virtual {p0, v6}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    goto :goto_2
.end method

.method private increaseCapacity()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 867
    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    if-ge v2, v5, :cond_0

    .line 868
    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    .line 869
    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    new-array v1, v2, [C

    .line 870
    .local v1, "tmp":[C
    iget-object v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_low:[C

    iget v3, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    iput-object v1, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_low:[C

    .line 872
    iget-object v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    aput-object v1, v2, v4

    .line 883
    .end local v1    # "tmp":[C
    :goto_0
    return-void

    .line 874
    :cond_0
    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    shr-int/lit8 v0, v2, 0xa

    .line 875
    .local v0, "j":I
    iget-object v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 876
    iget-object v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [[C

    .line 877
    .local v1, "tmp":[[C
    iget-object v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    iget-object v3, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    iput-object v1, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    .line 880
    .end local v1    # "tmp":[[C
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    new-array v3, v5, [C

    aput-object v3, v2, v0

    .line 881
    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    add-int/lit16 v2, v2, 0x400

    iput v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/CharSequence;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/CharSequence;II)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final append(C)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 212
    iget v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    iget v1, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    if-lt v0, v1, :cond_0

    .line 213
    invoke-direct {p0}, Lorg/cocos2d/utils/javolution/TextBuilder;->increaseCapacity()V

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    iget v1, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    shr-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    iget v1, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    and-int/lit16 v1, v1, 0x3ff

    aput-char p1, v0, v1

    .line 215
    iget v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    .line 216
    return-object p0
.end method

.method public final append(D)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 8
    .param p1, "d"    # D

    .prologue
    const/4 v5, 0x0

    .line 554
    const/4 v3, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v6, 0x416312d000000000L    # 1.0E7

    cmpl-double v0, v0, v6

    if-gez v0, :cond_0

    .line 555
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v6

    if-ltz v0, :cond_0

    move v4, v5

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    .line 554
    invoke-virtual/range {v0 .. v5}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(DIZZ)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    return-object v0

    .line 555
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public final append(DIZZ)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 22
    .param p1, "d"    # D
    .param p3, "digits"    # I
    .param p4, "scientific"    # Z
    .param p5, "showZero"    # Z

    .prologue
    .line 575
    const/16 v19, 0x13

    move/from16 v0, p3

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 576
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "digits: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 577
    :cond_0
    cmpl-double v19, p1, p1

    if-eqz v19, :cond_2

    .line 578
    const-string v19, "NaN"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    .line 641
    .end local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :cond_1
    :goto_0
    return-object p0

    .line 579
    .restart local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :cond_2
    const-wide/high16 v19, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v19, p1, v19

    if-nez v19, :cond_3

    .line 580
    const-string v19, "Infinity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    goto :goto_0

    .line 581
    :cond_3
    const-wide/high16 v19, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v19, p1, v19

    if-nez v19, :cond_4

    .line 582
    const-string v19, "-Infinity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    goto :goto_0

    .line 583
    :cond_4
    const-wide/16 v19, 0x0

    cmpl-double v19, p1, v19

    if-nez v19, :cond_6

    .line 584
    if-gez p3, :cond_5

    .line 585
    const-string v19, "0.0"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    goto :goto_0

    .line 586
    :cond_5
    const/16 v19, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 587
    if-eqz p5, :cond_1

    .line 588
    const/16 v19, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 589
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_1
    move/from16 v0, p3

    if-ge v7, v0, :cond_1

    .line 590
    const/16 v19, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 589
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 595
    .end local v7    # "j":I
    :cond_6
    const-wide/16 v19, 0x0

    cmpg-double v19, p1, v19

    if-gez v19, :cond_7

    .line 596
    move-wide/from16 v0, p1

    neg-double v0, v0

    move-wide/from16 p1, v0

    .line 597
    const/16 v19, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 601
    :cond_7
    invoke-static/range {p1 .. p2}, Lorg/cocos2d/utils/javolution/MathLib;->floorLog10(D)I

    move-result v5

    .line 604
    .local v5, "e":I
    if-gez p3, :cond_a

    .line 606
    rsub-int/lit8 v19, v5, 0x10

    move-wide/from16 v0, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/cocos2d/utils/javolution/MathLib;->toLongPow10(DI)J

    move-result-wide v15

    .line 608
    .local v15, "m17":J
    const-wide/16 v19, 0xa

    div-long v13, v15, v19

    .line 609
    .local v13, "m16":J
    add-int/lit8 v19, v5, -0x10

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-static {v13, v14, v0}, Lorg/cocos2d/utils/javolution/MathLib;->toDoublePow10(JI)D

    move-result-wide v3

    .line 610
    .local v3, "dd":D
    cmpl-double v19, v3, p1

    if-nez v19, :cond_9

    .line 611
    const/16 p3, 0x10

    .line 612
    move-wide v11, v13

    .line 621
    .end local v3    # "dd":D
    .end local v13    # "m16":J
    .end local v15    # "m17":J
    .local v11, "m":J
    :goto_2
    if-nez p4, :cond_8

    move/from16 v0, p3

    if-lt v5, v0, :cond_b

    .line 623
    :cond_8
    sget-object v19, Lorg/cocos2d/utils/javolution/TextBuilder;->POW10_LONG:[J

    add-int/lit8 v20, p3, -0x1

    aget-wide v17, v19, v20

    .line 624
    .local v17, "pow10":J
    div-long v19, v11, v17

    move-wide/from16 v0, v19

    long-to-int v8, v0

    .line 625
    .local v8, "k":I
    add-int/lit8 v19, v8, 0x30

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 626
    int-to-long v0, v8

    move-wide/from16 v19, v0

    mul-long v19, v19, v17

    sub-long v11, v11, v19

    .line 627
    add-int/lit8 v19, p3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p5

    invoke-direct {v0, v11, v12, v1, v2}, Lorg/cocos2d/utils/javolution/TextBuilder;->appendFraction(JIZ)V

    .line 628
    const/16 v19, 0x45

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 629
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(I)Lorg/cocos2d/utils/javolution/TextBuilder;

    goto/16 :goto_0

    .line 614
    .end local v8    # "k":I
    .end local v11    # "m":J
    .end local v17    # "pow10":J
    .restart local v3    # "dd":D
    .restart local v13    # "m16":J
    .restart local v15    # "m17":J
    :cond_9
    const/16 p3, 0x11

    .line 615
    move-wide v11, v15

    .restart local v11    # "m":J
    goto :goto_2

    .line 618
    .end local v3    # "dd":D
    .end local v11    # "m":J
    .end local v13    # "m16":J
    .end local v15    # "m17":J
    :cond_a
    add-int/lit8 v19, p3, -0x1

    sub-int v19, v19, v5

    move-wide/from16 v0, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/cocos2d/utils/javolution/MathLib;->toLongPow10(DI)J

    move-result-wide v11

    .restart local v11    # "m":J
    goto :goto_2

    .line 631
    :cond_b
    sub-int v19, p3, v5

    add-int/lit8 v6, v19, -0x1

    .line 632
    .local v6, "exp":I
    sget-object v19, Lorg/cocos2d/utils/javolution/TextBuilder;->POW10_LONG:[J

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_c

    .line 633
    sget-object v19, Lorg/cocos2d/utils/javolution/TextBuilder;->POW10_LONG:[J

    aget-wide v17, v19, v6

    .line 634
    .restart local v17    # "pow10":J
    div-long v9, v11, v17

    .line 635
    .local v9, "l":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(J)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 636
    mul-long v19, v17, v9

    sub-long v11, v11, v19

    .line 639
    .end local v9    # "l":J
    .end local v17    # "pow10":J
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v11, v12, v6, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->appendFraction(JIZ)V

    goto/16 :goto_0

    .line 638
    :cond_c
    const/16 v19, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    goto :goto_3
.end method

.method public final append(F)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 10
    .param p1, "f"    # F

    .prologue
    const/4 v5, 0x0

    .line 540
    float-to-double v1, p1

    const/16 v3, 0xa

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    const-wide v8, 0x416312d000000000L    # 1.0E7

    cmpl-double v0, v6, v8

    if-gez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v6, v8

    if-ltz v0, :cond_0

    move v4, v5

    :goto_0
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(DIZZ)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public final append(I)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 7
    .param p1, "i"    # I

    .prologue
    .line 390
    if-gtz p1, :cond_3

    .line 391
    if-nez p1, :cond_1

    .line 392
    const-string v3, "0"

    invoke-virtual {p0, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    .line 406
    .end local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 393
    .restart local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :cond_1
    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_2

    .line 394
    const-string v3, "-2147483648"

    invoke-virtual {p0, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    goto :goto_0

    .line 395
    :cond_2
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 396
    neg-int p1, p1

    .line 398
    :cond_3
    invoke-static {p1}, Lorg/cocos2d/utils/javolution/MathLib;->digitLength(I)I

    move-result v0

    .line 399
    .local v0, "digits":I
    iget v3, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    iget v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    add-int/2addr v4, v0

    if-ge v3, v4, :cond_4

    .line 400
    invoke-direct {p0}, Lorg/cocos2d/utils/javolution/TextBuilder;->increaseCapacity()V

    .line 401
    :cond_4
    iget v3, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    .line 402
    iget v3, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    add-int/lit8 v1, v3, -0x1

    .line 403
    .local v1, "index":I
    :goto_1
    div-int/lit8 v2, p1, 0xa

    .line 404
    .local v2, "j":I
    iget-object v3, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    shr-int/lit8 v4, v1, 0xa

    aget-object v3, v3, v4

    and-int/lit16 v4, v1, 0x3ff

    add-int/lit8 v5, p1, 0x30

    mul-int/lit8 v6, v2, 0xa

    sub-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 405
    if-eqz v2, :cond_0

    .line 407
    move p1, v2

    .line 402
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public final append(II)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 3
    .param p1, "i"    # I
    .param p2, "radix"    # I

    .prologue
    .line 420
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 421
    invoke-virtual {p0, p1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(I)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    .line 433
    .end local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :goto_0
    return-object p0

    .line 422
    .restart local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/16 v0, 0x24

    if-le p2, v0, :cond_2

    .line 423
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "radix: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_2
    if-gez p1, :cond_4

    .line 425
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 426
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_3

    .line 427
    div-int v0, p1, p2

    neg-int v0, v0

    invoke-direct {p0, v0, p2}, Lorg/cocos2d/utils/javolution/TextBuilder;->appendPositive(II)V

    .line 428
    sget-object v0, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    rem-int v1, p1, p2

    neg-int v1, v1

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    goto :goto_0

    .line 430
    :cond_3
    neg-int p1, p1

    .line 432
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/utils/javolution/TextBuilder;->appendPositive(II)V

    goto :goto_0
.end method

.method public final append(J)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 7
    .param p1, "l"    # J

    .prologue
    const-wide/32 v5, 0x3b9aca00

    const-wide/16 v3, 0x0

    .line 470
    cmp-long v2, p1, v3

    if-gtz v2, :cond_2

    .line 471
    cmp-long v2, p1, v3

    if-nez v2, :cond_0

    .line 472
    const-string v2, "0"

    invoke-virtual {p0, v2}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v2

    .line 484
    :goto_0
    return-object v2

    .line 473
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 474
    const-string v2, "-9223372036854775808"

    invoke-virtual {p0, v2}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v2

    goto :goto_0

    .line 475
    :cond_1
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 476
    neg-long p1, p1

    .line 478
    :cond_2
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-gtz v2, :cond_3

    .line 479
    long-to-int v2, p1

    invoke-virtual {p0, v2}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(I)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v2

    goto :goto_0

    .line 480
    :cond_3
    div-long v2, p1, v5

    invoke-virtual {p0, v2, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(J)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 481
    rem-long v2, p1, v5

    long-to-int v1, v2

    .line 482
    .local v1, "i":I
    invoke-static {v1}, Lorg/cocos2d/utils/javolution/MathLib;->digitLength(I)I

    move-result v0

    .line 483
    .local v0, "digits":I
    const-string v2, "000000000"

    const/4 v3, 0x0

    rsub-int/lit8 v4, v0, 0x9

    invoke-virtual {p0, v2, v3, v4}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;II)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 484
    invoke-virtual {p0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(I)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v2

    goto :goto_0
.end method

.method public final append(JI)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 3
    .param p1, "l"    # J
    .param p3, "radix"    # I

    .prologue
    .line 496
    const/16 v0, 0xa

    if-ne p3, v0, :cond_0

    .line 497
    invoke-virtual {p0, p1, p2}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(J)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    .line 509
    .end local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :goto_0
    return-object p0

    .line 498
    .restart local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :cond_0
    const/4 v0, 0x2

    if-lt p3, v0, :cond_1

    const/16 v0, 0x24

    if-le p3, v0, :cond_2

    .line 499
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "radix: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    .line 501
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 502
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 503
    int-to-long v0, p3

    div-long v0, p1, v0

    neg-long v0, v0

    invoke-direct {p0, v0, v1, p3}, Lorg/cocos2d/utils/javolution/TextBuilder;->appendPositive(JI)V

    .line 504
    sget-object v0, Lorg/cocos2d/utils/javolution/TextBuilder;->DIGIT_TO_CHAR:[C

    int-to-long v1, p3

    rem-long v1, p1, v1

    neg-long v1, v1

    long-to-int v1, v1

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    goto :goto_0

    .line 506
    :cond_3
    neg-long p1, p1

    .line 508
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/utils/javolution/TextBuilder;->appendPositive(JI)V

    goto :goto_0
.end method

.method public final append(Ljava/lang/CharSequence;)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 258
    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/CharSequence;II)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public final append(Ljava/lang/CharSequence;II)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 275
    if-nez p1, :cond_1

    .line 276
    const-string v2, "null"

    invoke-virtual {p0, v2}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    .line 282
    .end local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :cond_0
    return-object p0

    .line 277
    .restart local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    if-gt p2, p3, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le p3, v2, :cond_3

    .line 278
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 279
    :cond_3
    move v0, p2

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 280
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public final append(Ljava/lang/Object;)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 228
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    .line 230
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 231
    invoke-direct {p0, p1}, Lorg/cocos2d/utils/javolution/TextBuilder;->appendNumber(Ljava/lang/Object;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public final append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 294
    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;II)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public final append(Ljava/lang/String;II)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    const-string v7, "null"

    invoke-virtual {p0, v7}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object p0

    .line 326
    .end local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :goto_0
    return-object p0

    .line 312
    .restart local p0    # "this":Lorg/cocos2d/utils/javolution/TextBuilder;
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-gt p2, p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le p3, v7, :cond_2

    .line 313
    :cond_1
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "start: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", end: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", str.length(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 314
    :cond_2
    iget v7, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    add-int/2addr v7, p3

    sub-int v6, v7, p2

    .line 315
    .local v6, "newLength":I
    :goto_1
    iget v7, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    if-lt v7, v6, :cond_3

    .line 318
    move v2, p2

    .local v2, "i":I
    iget v5, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    .local v5, "j":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_2
    if-lt v3, p3, :cond_4

    .line 325
    iput v6, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    goto :goto_0

    .line 316
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_3
    invoke-direct {p0}, Lorg/cocos2d/utils/javolution/TextBuilder;->increaseCapacity()V

    goto :goto_1

    .line 319
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    :cond_4
    iget-object v7, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    shr-int/lit8 v8, v5, 0xa

    aget-object v0, v7, v8

    .line 320
    .local v0, "chars":[C
    and-int/lit16 v1, v5, 0x3ff

    .line 321
    .local v1, "dstBegin":I
    rsub-int v7, v1, 0x400

    sub-int v8, p3, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 322
    .local v4, "inc":I
    add-int v2, v3, v4

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p1, v3, v2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 323
    add-int/2addr v5, v4

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2
.end method

.method public final append(Z)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 379
    if-eqz p1, :cond_0

    const-string v0, "true"

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/String;)Lorg/cocos2d/utils/javolution/TextBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public final append([C)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 336
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append([CII)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 337
    return-object p0
.end method

.method public final append([CII)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 9
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 351
    add-int v2, p2, p3

    .line 352
    .local v2, "end":I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v7, p1

    if-le v2, v7, :cond_1

    .line 353
    :cond_0
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 354
    :cond_1
    iget v7, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    add-int v6, v7, p3

    .line 355
    .local v6, "newLength":I
    :goto_0
    iget v7, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    if-lt v7, v6, :cond_2

    .line 358
    move v3, p2

    .local v3, "i":I
    iget v5, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    .local v5, "j":I
    :goto_1
    if-lt v3, v2, :cond_3

    .line 366
    iput v6, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    .line 367
    return-object p0

    .line 356
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_2
    invoke-direct {p0}, Lorg/cocos2d/utils/javolution/TextBuilder;->increaseCapacity()V

    goto :goto_0

    .line 359
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    :cond_3
    iget-object v7, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    shr-int/lit8 v8, v5, 0xa

    aget-object v1, v7, v8

    .line 360
    .local v1, "dstChars":[C
    and-int/lit16 v0, v5, 0x3ff

    .line 361
    .local v0, "dstBegin":I
    rsub-int v7, v0, 0x400

    sub-int v8, v2, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 362
    .local v4, "inc":I
    invoke-static {p1, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    add-int/2addr v3, v4

    .line 364
    add-int/2addr v5, v4

    goto :goto_1
.end method

.method public final charAt(I)C
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 108
    iget v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-lt p1, v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 110
    :cond_0
    const/16 v0, 0x400

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_low:[C

    aget-char v0, v0, p1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    shr-int/lit8 v1, p1, 0xa

    aget-object v0, v0, v1

    and-int/lit16 v1, p1, 0x3ff

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public final clear()Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    .line 705
    return-object p0
.end method

.method public final contentEquals(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 834
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v5, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-eq v4, v5, :cond_1

    .line 841
    :cond_0
    :goto_0
    return v3

    .line 836
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-lt v1, v4, :cond_2

    .line 841
    const/4 v3, 0x1

    goto :goto_0

    .line 837
    :cond_2
    const/16 v4, 0x400

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_low:[C

    aget-char v0, v4, v1

    .line 838
    .local v0, "c":C
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_0

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 837
    .end local v0    # "c":C
    :cond_3
    iget-object v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    shr-int/lit8 v5, v1, 0xa

    aget-object v4, v4, v5

    and-int/lit16 v5, v1, 0x3ff

    aget-char v0, v4, v5

    goto :goto_2
.end method

.method public final contentEquals(Ljava/lang/String;)Z
    .locals 6
    .param p1, "csq"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 853
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-eq v4, v5, :cond_1

    .line 860
    :cond_0
    :goto_0
    return v3

    .line 855
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-lt v1, v4, :cond_2

    .line 860
    const/4 v3, 0x1

    goto :goto_0

    .line 856
    :cond_2
    const/16 v4, 0x400

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_low:[C

    aget-char v0, v4, v1

    .line 857
    .local v0, "c":C
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_0

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 856
    .end local v0    # "c":C
    :cond_3
    iget-object v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    shr-int/lit8 v5, v1, 0xa

    aget-object v4, v4, v5

    and-int/lit16 v5, v1, 0x3ff

    aget-char v0, v4, v5

    goto :goto_2
.end method

.method public final delete(II)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 718
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/utils/javolution/TextBuilder;->length()I

    move-result v4

    if-le p2, v4, :cond_1

    .line 719
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 720
    :cond_1
    move v0, p2

    .local v0, "i":I
    move v2, p1

    .local v2, "j":I
    :goto_0
    iget v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-lt v0, v4, :cond_2

    .line 723
    iget v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    sub-int v5, p2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    .line 724
    return-object p0

    .line 721
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v2, v4}, Lorg/cocos2d/utils/javolution/TextBuilder;->setCharAt(IC)V

    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 787
    if-ne p0, p1, :cond_1

    .line 798
    :cond_0
    :goto_0
    return v3

    .line 789
    :cond_1
    instance-of v5, p1, Lorg/cocos2d/utils/javolution/TextBuilder;

    if-nez v5, :cond_2

    move v3, v4

    .line 790
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 791
    check-cast v2, Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 792
    .local v2, "that":Lorg/cocos2d/utils/javolution/TextBuilder;
    iget v5, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    iget v6, v2, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 793
    goto :goto_0

    .line 794
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v5, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-ge v0, v5, :cond_0

    .line 795
    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->charAt(I)C

    move-result v5

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v2, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 796
    goto :goto_0

    :cond_4
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public final getChars(II[CI)V
    .locals 7
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .prologue
    .line 127
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget v5, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-le p2, v5, :cond_1

    .line 128
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 129
    :cond_1
    move v1, p1

    .local v1, "i":I
    move v3, p4

    .local v3, "j":I
    :goto_0
    if-lt v1, p2, :cond_2

    .line 137
    return-void

    .line 130
    :cond_2
    iget-object v5, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    shr-int/lit8 v6, v1, 0xa

    aget-object v0, v5, v6

    .line 131
    .local v0, "chars0":[C
    and-int/lit16 v2, v1, 0x3ff

    .line 132
    .local v2, "i0":I
    rsub-int v5, v2, 0x400

    sub-int v6, p2, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 133
    .local v4, "length":I
    invoke-static {v0, v2, p3, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    add-int/2addr v1, v4

    .line 135
    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-lt v1, v3, :cond_0

    .line 773
    return v0

    .line 771
    :cond_0
    mul-int/lit8 v3, v0, 0x1f

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public final insert(ILjava/lang/CharSequence;)Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 5
    .param p1, "index"    # I
    .param p2, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 681
    if-ltz p1, :cond_0

    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-le p1, v2, :cond_1

    .line 682
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 683
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 684
    .local v1, "shift":I
    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    .line 685
    :goto_0
    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    iget v3, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_capacity:I

    if-ge v2, v3, :cond_2

    .line 688
    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    sub-int v0, v2, v1

    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_3

    .line 691
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    .line 694
    return-object p0

    .line 686
    .end local v0    # "i":I
    :cond_2
    invoke-direct {p0}, Lorg/cocos2d/utils/javolution/TextBuilder;->increaseCapacity()V

    goto :goto_0

    .line 689
    .restart local v0    # "i":I
    :cond_3
    add-int v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 692
    :cond_4
    add-int v2, p1, v0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->setCharAt(IC)V

    goto :goto_2
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    return v0
.end method

.method public print(Ljava/io/Writer;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-lt v1, v2, :cond_0

    .line 812
    return-void

    .line 809
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    shr-int/lit8 v3, v1, 0xa

    aget-object v0, v2, v3

    .line 810
    .local v0, "chars":[C
    const/4 v2, 0x0

    const/16 v3, 0x400

    iget v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 808
    add-int/lit16 v1, v1, 0x400

    goto :goto_0
.end method

.method public println(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-virtual {p0, p1}, Lorg/cocos2d/utils/javolution/TextBuilder;->print(Ljava/io/Writer;)V

    .line 822
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 823
    return-void
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    .line 760
    return-void
.end method

.method public final reverse()Lorg/cocos2d/utils/javolution/TextBuilder;
    .locals 5

    .prologue
    .line 733
    iget v4, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    add-int/lit8 v3, v4, -0x1

    .line 734
    .local v3, "n":I
    add-int/lit8 v4, v3, -0x1

    shr-int/lit8 v1, v4, 0x1

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-gez v2, :cond_0

    .line 739
    return-object p0

    .line 735
    :cond_0
    invoke-virtual {p0, v2}, Lorg/cocos2d/utils/javolution/TextBuilder;->charAt(I)C

    move-result v0

    .line 736
    .local v0, "c":C
    sub-int v4, v3, v2

    invoke-virtual {p0, v4}, Lorg/cocos2d/utils/javolution/TextBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v2, v4}, Lorg/cocos2d/utils/javolution/TextBuilder;->setCharAt(IC)V

    .line 737
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    sub-int v4, v3, v2

    invoke-virtual {p0, v4, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->setCharAt(IC)V

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0
.end method

.method public final setCharAt(IC)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # C

    .prologue
    .line 148
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-lt p1, v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_high:[[C

    shr-int/lit8 v1, p1, 0xa

    aget-object v0, v0, v1

    and-int/lit16 v1, p1, 0x3ff

    aput-char p2, v0, v1

    .line 151
    return-void
.end method

.method public final setLength(I)V
    .locals 1
    .param p1, "newLength"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->setLength(IC)V

    .line 162
    return-void
.end method

.method public final setLength(IC)V
    .locals 3
    .param p1, "newLength"    # I
    .param p2, "fillChar"    # C

    .prologue
    .line 174
    if-gez p1, :cond_0

    .line 175
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 176
    :cond_0
    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-gt p1, v2, :cond_2

    .line 177
    iput p1, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    .line 182
    :cond_1
    return-void

    .line 179
    :cond_2
    iget v0, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-ge v1, p1, :cond_1

    .line 180
    invoke-virtual {p0, p2}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 196
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p1, p2, :cond_0

    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    if-le p2, v2, :cond_1

    .line 197
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 198
    :cond_1
    sub-int v1, p2, p1

    .line 199
    .local v1, "length":I
    new-array v0, v1, [C

    .line 200
    .local v0, "arr":[C
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/cocos2d/utils/javolution/TextBuilder;->getChars(II[CI)V

    .line 201
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 750
    iget v1, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    new-array v0, v1, [C

    .line 751
    .local v0, "data":[C
    iget v1, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    invoke-virtual {p0, v3, v1, v0, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->getChars(II[CI)V

    .line 752
    new-instance v1, Ljava/lang/String;

    iget v2, p0, Lorg/cocos2d/utils/javolution/TextBuilder;->_length:I

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method
