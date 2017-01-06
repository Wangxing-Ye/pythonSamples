.class public Lorg/cocos2d/opengl/TGA;
.super Ljava/lang/Object;
.source "TGA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/opengl/TGA$ImageTGA;,
        Lorg/cocos2d/opengl/TGA$TGAError;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lorg/cocos2d/opengl/TGA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/opengl/TGA;->LOG_TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RGBtogreyscale(Lorg/cocos2d/opengl/TGA$ImageTGA;)V
    .locals 11
    .param p0, "info"    # Lorg/cocos2d/opengl/TGA$ImageTGA;

    .prologue
    const/16 v10, 0x8

    .line 252
    iget v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->pixelDepth:I

    if-ne v4, v10, :cond_0

    .line 276
    :goto_0
    return-void

    .line 256
    :cond_0
    iget v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->pixelDepth:I

    div-int/lit8 v2, v4, 0x8

    .line 259
    .local v2, "mode":I
    iget v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    iget v5, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v4, v5

    new-array v3, v4, [B

    .line 262
    .local v3, "newImageData":[B
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    iget v5, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    mul-int/2addr v4, v5

    if-lt v1, v4, :cond_1

    .line 269
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    .line 272
    iput v10, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->pixelDepth:I

    .line 273
    const/4 v4, 0x3

    iput v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->type:I

    .line 275
    iput-object v3, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    goto :goto_0

    .line 263
    :cond_1
    const-wide v4, 0x3fd3333333333333L    # 0.3

    iget-object v6, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    aget-byte v6, v6, v0

    int-to-double v6, v6

    mul-double/2addr v4, v6

    .line 264
    const-wide v6, 0x3fe2e147ae147ae1L    # 0.59

    iget-object v8, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    add-int/lit8 v9, v0, 0x1

    aget-byte v8, v8, v9

    int-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 265
    const-wide v6, 0x3fbc28f5c28f5c29L    # 0.11

    iget-object v8, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    add-int/lit8 v9, v0, 0x2

    aget-byte v8, v8, v9

    int-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-byte v4, v4

    .line 263
    aput-byte v4, v3, v1

    .line 262
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static destroy(Lorg/cocos2d/opengl/TGA$ImageTGA;)V
    .locals 1
    .param p0, "info"    # Lorg/cocos2d/opengl/TGA$ImageTGA;

    .prologue
    .line 281
    if-eqz p0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    .line 285
    :cond_0
    return-void
.end method

.method private static flipImage(Lorg/cocos2d/opengl/TGA$ImageTGA;)V
    .locals 10
    .param p0, "info"    # Lorg/cocos2d/opengl/TGA$ImageTGA;

    .prologue
    const/4 v9, 0x0

    .line 153
    iget v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->pixelDepth:I

    div-int/lit8 v0, v4, 0x8

    .line 154
    .local v0, "mode":I
    iget v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int v2, v4, v0

    .line 155
    .local v2, "rowbytes":I
    new-array v1, v2, [B

    .line 157
    .local v1, "row":[B
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    iget v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_0

    .line 163
    iput v9, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->flipped:I

    .line 164
    return-void

    .line 158
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    mul-int v5, v3, v2

    invoke-static {v1, v9, v4, v5, v2}, Lorg/cocos2d/opengl/TGA;->memcpy([BI[BII)V

    .line 159
    iget-object v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    mul-int v5, v3, v2

    iget-object v6, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget v7, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    add-int/lit8 v8, v3, 0x1

    sub-int/2addr v7, v8

    mul-int/2addr v7, v2

    invoke-static {v4, v5, v6, v7, v2}, Lorg/cocos2d/opengl/TGA;->memcpy([BI[BII)V

    .line 160
    iget-object v4, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget v5, p0, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v5, v6

    mul-int/2addr v5, v2

    invoke-static {v4, v5, v1, v9, v2}, Lorg/cocos2d/opengl/TGA;->memcpy([BI[BII)V

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static load(Ljava/io/InputStream;)Lorg/cocos2d/opengl/TGA$ImageTGA;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    .line 180
    new-instance v2, Lorg/cocos2d/opengl/TGA$ImageTGA;

    invoke-direct {v2}, Lorg/cocos2d/opengl/TGA$ImageTGA;-><init>()V

    .line 185
    .local v2, "info":Lorg/cocos2d/opengl/TGA$ImageTGA;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .local v1, "file":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1, v2}, Lorg/cocos2d/opengl/TGA;->loadHeader(Ljava/io/InputStream;Lorg/cocos2d/opengl/TGA$ImageTGA;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    iget v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 202
    sget-object v5, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_INDEXED_COLOR:Lorg/cocos2d/opengl/TGA$TGAError;

    iput-object v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->status:Lorg/cocos2d/opengl/TGA$TGAError;

    .line 203
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 241
    .end local v1    # "file":Ljava/io/BufferedInputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_FILE_OPEN:Lorg/cocos2d/opengl/TGA$TGAError;

    iput-object v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->status:Lorg/cocos2d/opengl/TGA$TGAError;

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_READING_FILE:Lorg/cocos2d/opengl/TGA$TGAError;

    iput-object v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->status:Lorg/cocos2d/opengl/TGA$TGAError;

    .line 196
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->type:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    iget v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->type:I

    if-eq v5, v7, :cond_2

    .line 208
    sget-object v5, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_COMPRESSED_FILE:Lorg/cocos2d/opengl/TGA$TGAError;

    iput-object v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->status:Lorg/cocos2d/opengl/TGA$TGAError;

    .line 209
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .line 214
    :cond_2
    iget v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->pixelDepth:I

    div-int/lit8 v3, v5, 0x8

    .line 216
    .local v3, "mode":I
    iget v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    iget v6, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v5, v6

    mul-int v4, v5, v3

    .line 219
    .local v4, "total":I
    new-array v5, v4, [B

    iput-object v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    .line 223
    :try_start_2
    iget v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->type:I

    if-ne v5, v7, :cond_3

    .line 224
    invoke-static {v1, v2}, Lorg/cocos2d/opengl/TGA;->loadRLEImageData(Ljava/io/InputStream;Lorg/cocos2d/opengl/TGA$ImageTGA;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 232
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 233
    sget-object v5, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_OK:Lorg/cocos2d/opengl/TGA$TGAError;

    iput-object v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->status:Lorg/cocos2d/opengl/TGA$TGAError;

    .line 235
    iget v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->flipped:I

    if-eqz v5, :cond_0

    .line 236
    invoke-static {v2}, Lorg/cocos2d/opengl/TGA;->flipImage(Lorg/cocos2d/opengl/TGA$ImageTGA;)V

    .line 237
    iget v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->flipped:I

    if-eqz v5, :cond_0

    .line 238
    sget-object v5, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_MEMORY:Lorg/cocos2d/opengl/TGA$TGAError;

    iput-object v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->status:Lorg/cocos2d/opengl/TGA$TGAError;

    goto :goto_0

    .line 226
    :cond_3
    :try_start_3
    invoke-static {v1, v2}, Lorg/cocos2d/opengl/TGA;->loadImageData(Ljava/io/InputStream;Lorg/cocos2d/opengl/TGA$ImageTGA;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 227
    :catch_2
    move-exception v0

    .line 228
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_READING_FILE:Lorg/cocos2d/opengl/TGA$TGAError;

    iput-object v5, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->status:Lorg/cocos2d/opengl/TGA$TGAError;

    .line 229
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0
.end method

.method private static loadHeader(Ljava/io/InputStream;Lorg/cocos2d/opengl/TGA$ImageTGA;)V
    .locals 3
    .param p0, "f"    # Ljava/io/InputStream;
    .param p1, "info"    # Lorg/cocos2d/opengl/TGA$ImageTGA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 45
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 48
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    iput v1, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->type:I

    .line 50
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 51
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 52
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 53
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 54
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 55
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 56
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 57
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 58
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 60
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iput v1, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    .line 61
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iput v1, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    .line 63
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->pixelDepth:I

    .line 66
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 68
    .local v0, "garbage":I
    const/4 v1, 0x0

    iput v1, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->flipped:I

    .line 70
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->flipped:I

    .line 72
    :cond_0
    return-void
.end method

.method private static loadImageData(Ljava/io/InputStream;Lorg/cocos2d/opengl/TGA$ImageTGA;)V
    .locals 7
    .param p0, "f"    # Ljava/io/InputStream;
    .param p1, "info"    # Lorg/cocos2d/opengl/TGA$ImageTGA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget v4, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->pixelDepth:I

    div-int/lit8 v2, v4, 0x8

    .line 83
    .local v2, "mode":I
    iget v4, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    iget v5, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v4, v5

    mul-int v3, v4, v2

    .line 85
    .local v3, "total":I
    iget-object v4, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    .line 89
    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 95
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 91
    .restart local v1    # "i":I
    :cond_1
    iget-object v4, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    aget-byte v0, v4, v1

    .line 92
    .local v0, "aux":B
    iget-object v4, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget-object v5, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    add-int/lit8 v6, v1, 0x2

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    .line 93
    iget-object v4, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    add-int/lit8 v5, v1, 0x2

    aput-byte v0, v4, v5

    .line 90
    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private static loadRLEImageData(Ljava/io/InputStream;Lorg/cocos2d/opengl/TGA$ImageTGA;)V
    .locals 13
    .param p0, "f"    # Ljava/io/InputStream;
    .param p1, "info"    # Lorg/cocos2d/opengl/TGA$ImageTGA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    .line 99
    const/4 v3, 0x0

    .line 100
    .local v3, "index":I
    const/4 v10, 0x4

    new-array v0, v10, [B

    .line 101
    .local v0, "aux":[B
    const/4 v5, 0x0

    .line 102
    .local v5, "runlength":I
    const/4 v6, 0x0

    .line 103
    .local v6, "skip":Z
    const/4 v1, 0x0

    .line 106
    .local v1, "flag":I
    iget v10, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->pixelDepth:I

    div-int/lit8 v4, v10, 0x8

    .line 108
    .local v4, "mode":I
    iget v10, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    iget v11, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int v8, v10, v11

    .line 110
    .local v8, "total":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v8, :cond_1

    .line 149
    :cond_0
    return-void

    .line 112
    :cond_1
    if-eqz v5, :cond_4

    .line 114
    add-int/lit8 v5, v5, -0x1

    .line 115
    if-eqz v1, :cond_3

    const/4 v6, 0x1

    .line 128
    :goto_1
    if-nez v6, :cond_2

    .line 130
    invoke-virtual {p0, v0, v9, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-ne v10, v4, :cond_0

    .line 135
    const/4 v10, 0x3

    if-lt v4, v10, :cond_2

    .line 138
    aget-byte v7, v0, v9

    .line 139
    .local v7, "tmp":B
    aget-byte v10, v0, v12

    aput-byte v10, v0, v9

    .line 140
    aput-byte v7, v0, v12

    .line 145
    .end local v7    # "tmp":B
    :cond_2
    iget-object v10, p1, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    invoke-static {v10, v3, v0, v9, v4}, Lorg/cocos2d/opengl/TGA;->memcpy([BI[BII)V

    .line 147
    add-int/2addr v3, v4

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v6, v9

    .line 115
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    .line 122
    and-int/lit16 v1, v5, 0x80

    .line 123
    if-eqz v1, :cond_5

    add-int/lit8 v5, v5, -0x80

    .line 124
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static memcpy([BI[BII)V
    .locals 0
    .param p0, "dst"    # [B
    .param p1, "to"    # I
    .param p2, "src"    # [B
    .param p3, "from"    # I
    .param p4, "len"    # I

    .prologue
    .line 168
    invoke-static {p2, p3, p0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    return-void
.end method
