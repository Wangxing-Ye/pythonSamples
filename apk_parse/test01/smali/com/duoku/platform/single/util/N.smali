.class public Lcom/duoku/platform/single/util/N;
.super Ljava/lang/Object;


# static fields
.field private static b:[C = null

.field private static final c:I = 0x3e


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/duoku/platform/single/util/N;->b:[C

    return-void

    :array_0
    .array-data 2
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nulL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nuLl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nuLL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "nUll"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "nUlL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "nULl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nULL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Null"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NulL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "NuLl"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NuLL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "NUll"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "NUlL"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NULl"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NULL"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/duoku/platform/single/util/N;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/duoku/platform/single/util/N;->b(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/duoku/platform/single/util/N;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    :cond_0
    :goto_0
    if-lt v0, p0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ltz v3, :cond_0

    sget-object v4, Lcom/duoku/platform/single/util/N;->b:[C

    array-length v4, v4

    if-ge v3, v4, :cond_0

    sget-object v4, Lcom/duoku/platform/single/util/N;->b:[C

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
