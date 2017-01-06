.class public Lcom/cynosure/paymentsdk/helper/EncryptHelper;
.super Ljava/lang/Object;
.source "EncryptHelper.java"


# static fields
.field private static secret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->secret:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SMSJM(JJ)Ljava/lang/String;
    .locals 8
    .param p0, "paramLong"    # J
    .param p2, "num"    # J

    .prologue
    .line 14
    :try_start_0
    const-string v5, ""

    .line 15
    .local v5, "str2":Ljava/lang/String;
    div-long v1, p0, p2

    .line 17
    .local v1, "l1":J
    rem-long v3, p0, p2

    .line 19
    .local v3, "l2":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {v3, v4}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 20
    :goto_0
    const-wide/16 v6, 0x0

    .line 19
    cmp-long v6, v1, v6

    if-gtz v6, :cond_0

    .line 28
    invoke-static {v5}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->returnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 34
    .end local v1    # "l1":J
    .end local v3    # "l2":J
    .end local v5    # "str2":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 22
    .restart local v1    # "l1":J
    .restart local v3    # "l2":J
    .restart local v5    # "str2":Ljava/lang/String;
    :cond_0
    move-wide p0, v1

    .line 23
    div-long v1, p0, p2

    .line 25
    rem-long v3, p0, p2

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {v3, v4}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 20
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 32
    .end local v1    # "l1":J
    .end local v3    # "l2":J
    .end local v5    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    const-string v6, ""

    goto :goto_1
.end method

.method private static b(J)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # J

    .prologue
    .line 40
    :try_start_0
    sget-object v1, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->secret:Ljava/lang/String;

    long-to-int v2, p0

    long-to-int v3, p0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const-string v1, ""

    goto :goto_0
.end method

.method public static getMD5Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 74
    .local v3, "md5Code":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v2, "hex":Ljava/lang/StringBuilder;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    .end local v2    # "hex":Ljava/lang/StringBuilder;
    .end local v3    # "md5Code":[B
    :goto_1
    return-object v4

    .line 75
    .restart local v2    # "hex":Ljava/lang/StringBuilder;
    .restart local v3    # "md5Code":[B
    :cond_0
    aget-byte v0, v3, v4

    .line 76
    .local v0, "b":B
    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    .line 77
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1
    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "b":B
    .end local v2    # "hex":Ljava/lang/StringBuilder;
    .end local v3    # "md5Code":[B
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static returnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 51
    .local v0, "a":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 57
    const-string p0, ""

    .line 58
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 67
    .end local v0    # "a":[Ljava/lang/String;
    .end local v2    # "i":I
    :goto_2
    return-object p0

    .line 52
    .restart local v0    # "a":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 53
    sub-int/2addr v3, v2

    .line 54
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 55
    sub-int/2addr v4, v2

    .line 52
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    .end local v0    # "a":[Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
