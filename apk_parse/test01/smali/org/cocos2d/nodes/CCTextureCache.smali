.class public Lorg/cocos2d/nodes/CCTextureCache;
.super Ljava/lang/Object;
.source "CCTextureCache.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static _sharedTextureCache:Lorg/cocos2d/nodes/CCTextureCache;


# instance fields
.field private textures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/cocos2d/opengl/CCTexture2D;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/cocos2d/nodes/CCTextureCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/nodes/CCTextureCache;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-boolean v0, Lorg/cocos2d/nodes/CCTextureCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/cocos2d/nodes/CCTextureCache;->_sharedTextureCache:Lorg/cocos2d/nodes/CCTextureCache;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Attempted to allocate a second instance of a singleton."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 58
    :cond_0
    const-class v1, Lorg/cocos2d/nodes/CCTextureCache;

    monitor-enter v1

    .line 59
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    .line 58
    monitor-exit v1

    .line 61
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private asNineImageKey(III)Ljava/lang/String;
    .locals 2
    .param p1, "drawableId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[drawable]_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 464
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 465
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 467
    .local v0, "h":D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 469
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 473
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 484
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 468
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 470
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    .line 471
    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    .line 470
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 478
    .restart local v3    # "upperBound":I
    :cond_3
    if-ne p2, v11, :cond_4

    .line 479
    if-ne p1, v11, :cond_4

    move v2, v6

    .line 480
    goto :goto_2

    .line 481
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 484
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 448
    invoke-static {p0, p1, p2}, Lorg/cocos2d/nodes/CCTextureCache;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 451
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 452
    const/4 v1, 0x1

    .line 453
    .local v1, "roundedSize":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 460
    :goto_1
    return v1

    .line 454
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .end local v1    # "roundedSize":I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1    # "roundedSize":I
    goto :goto_1
.end method

.method private static createTextureFromFilePath(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v0, Lorg/cocos2d/opengl/CCTexture2D;

    invoke-direct {v0}, Lorg/cocos2d/opengl/CCTexture2D;-><init>()V

    .line 306
    .local v0, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    new-instance v1, Lorg/cocos2d/nodes/CCTextureCache$2;

    invoke-direct {v1, p0}, Lorg/cocos2d/nodes/CCTextureCache$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/CCTexture2D;->setLoader(Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;)V

    .line 358
    return-object v0
.end method

.method private static createTextureFromFilePathExternal(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 390
    new-instance v0, Lorg/cocos2d/opengl/CCTexture2D;

    invoke-direct {v0}, Lorg/cocos2d/opengl/CCTexture2D;-><init>()V

    .line 391
    .local v0, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    new-instance v1, Lorg/cocos2d/nodes/CCTextureCache$3;

    invoke-direct {v1, p0}, Lorg/cocos2d/nodes/CCTextureCache$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/CCTexture2D;->setLoader(Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;)V

    .line 411
    return-object v0
.end method

.method private static decodeUnKownInputStreamToPng(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {p1}, Lorg/cocos2d/nodes/CCTextureCache;->encryptKey(Ljava/lang/String;)[B

    move-result-object v4

    .line 366
    .local v4, "encodebytes":[B
    const/4 v5, 0x0

    .local v5, "index":I
    array-length v2, v4

    .line 367
    .local v2, "count":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .local v6, "read":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 374
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 375
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 376
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 377
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lorg/cocos2d/utils/Base64;->decode([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 380
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "count":I
    .end local v4    # "encodebytes":[B
    .end local v5    # "index":I
    .end local v6    # "read":I
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v7

    .line 368
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "count":I
    .restart local v4    # "encodebytes":[B
    .restart local v5    # "index":I
    .restart local v6    # "read":I
    :cond_1
    aget-byte v7, v4, v5

    xor-int/2addr v7, v6

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    add-int/lit8 v5, v5, 0x1

    .line 370
    if-ne v5, v2, :cond_0

    .line 371
    const/4 v5, 0x0

    goto :goto_0

    .line 378
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "count":I
    .end local v4    # "encodebytes":[B
    .end local v5    # "index":I
    .end local v6    # "read":I
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 379
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    const/4 v7, 0x0

    goto :goto_1

    .line 378
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public static encryptKey(Ljava/lang/String;)[B
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/utils/Base64;->encodeBytesToBytes([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/utils/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static getPow(F)D
    .locals 9
    .param p0, "value"    # F

    .prologue
    .line 433
    const-wide/high16 v1, 0x40a0000000000000L    # 2048.0

    .line 434
    .local v1, "maxPow":D
    float-to-double v5, p0

    cmpl-double v5, v5, v1

    if-lez v5, :cond_0

    .line 443
    .end local v1    # "maxPow":D
    :goto_0
    return-wide v1

    .line 437
    .restart local v1    # "maxPow":D
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v5, 0xc

    if-lt v0, v5, :cond_1

    .line 443
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 438
    :cond_1
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 439
    .local v3, "nowPow":D
    float-to-double v5, p0

    cmpl-double v5, v3, v5

    if-ltz v5, :cond_2

    move-wide v1, v3

    .line 440
    goto :goto_0

    .line 437
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static purgeSharedTextureCache()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/cocos2d/nodes/CCTextureCache;->_sharedTextureCache:Lorg/cocos2d/nodes/CCTextureCache;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lorg/cocos2d/nodes/CCTextureCache;->_sharedTextureCache:Lorg/cocos2d/nodes/CCTextureCache;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCTextureCache;->removeAllTextures()V

    .line 53
    :cond_0
    return-void
.end method

.method private saveNinePathToCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
    .locals 9
    .param p1, "src9Png"    # Landroid/graphics/Bitmap;
    .param p2, "new9Png"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, "canvas":Landroid/graphics/Canvas;
    :try_start_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .local v1, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, p3

    int-to-float v8, p4

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 419
    .local v4, "rectF":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, p1, v5, v6}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 420
    .local v3, "ninePatch":Landroid/graphics/NinePatch;
    invoke-virtual {v3, v1, v4}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 421
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 425
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "ninePatch":Landroid/graphics/NinePatch;
    .end local v4    # "rectF":Landroid/graphics/RectF;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v2

    .line 423
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 422
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    goto :goto_1
.end method

.method public static sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lorg/cocos2d/nodes/CCTextureCache;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lorg/cocos2d/nodes/CCTextureCache;->_sharedTextureCache:Lorg/cocos2d/nodes/CCTextureCache;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lorg/cocos2d/nodes/CCTextureCache;

    invoke-direct {v0}, Lorg/cocos2d/nodes/CCTextureCache;-><init>()V

    sput-object v0, Lorg/cocos2d/nodes/CCTextureCache;->_sharedTextureCache:Lorg/cocos2d/nodes/CCTextureCache;

    .line 42
    :cond_0
    sget-object v0, Lorg/cocos2d/nodes/CCTextureCache;->_sharedTextureCache:Lorg/cocos2d/nodes/CCTextureCache;

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;
    .locals 6
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-boolean v4, Lorg/cocos2d/nodes/CCTextureCache;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "TextureCache: image must not be null"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 115
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 116
    .local v3, "texSR":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/cocos2d/opengl/CCTexture2D;>;"
    const/4 v1, 0x0

    .line 117
    .local v1, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    check-cast v1, Lorg/cocos2d/opengl/CCTexture2D;

    .line 120
    .restart local v1    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    .line 142
    .end local v1    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    :goto_0
    return-object v1

    .line 124
    .restart local v1    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    .local v0, "copy":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 127
    new-instance v2, Lorg/cocos2d/opengl/CCTexture2D;

    invoke-direct {v2}, Lorg/cocos2d/opengl/CCTexture2D;-><init>()V

    .line 128
    .local v2, "texNew":Lorg/cocos2d/opengl/CCTexture2D;
    new-instance v4, Lorg/cocos2d/nodes/CCTextureCache$1;

    invoke-direct {v4, p0, v0}, Lorg/cocos2d/nodes/CCTextureCache$1;-><init>(Lorg/cocos2d/nodes/CCTextureCache;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Lorg/cocos2d/opengl/CCTexture2D;->setLoader(Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;)V

    .line 135
    if-eqz p2, :cond_3

    .line 136
    iget-object v4, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v1, v2

    .line 139
    goto :goto_0

    .line 141
    .end local v2    # "texNew":Lorg/cocos2d/opengl/CCTexture2D;
    :cond_4
    const-string v4, "cocos2d"

    const-string v5, "Couldn\'t add Bitmap in CCTextureCache"

    invoke-static {v4, v5}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-boolean v2, Lorg/cocos2d/nodes/CCTextureCache;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "TextureMgr: path must not be null"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 72
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 73
    .local v1, "texSR":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/cocos2d/opengl/CCTexture2D;>;"
    const/4 v0, 0x0

    .line 74
    .local v0, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    check-cast v0, Lorg/cocos2d/opengl/CCTexture2D;

    .line 77
    .restart local v0    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    :cond_1
    if-nez v0, :cond_2

    .line 78
    invoke-static {p1}, Lorg/cocos2d/nodes/CCTextureCache;->createTextureFromFilePath(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_2
    return-object v0
.end method

.method public addImageExternal(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-boolean v2, Lorg/cocos2d/nodes/CCTextureCache;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "TextureMgr: path must not be null"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 90
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 91
    .local v1, "texSR":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/cocos2d/opengl/CCTexture2D;>;"
    const/4 v0, 0x0

    .line 92
    .local v0, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    check-cast v0, Lorg/cocos2d/opengl/CCTexture2D;

    .line 95
    .restart local v0    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    :cond_1
    if-nez v0, :cond_2

    .line 96
    invoke-static {p1}, Lorg/cocos2d/nodes/CCTextureCache;->createTextureFromFilePathExternal(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_2
    return-object v0
.end method

.method public addImageNinePng(III)Lorg/cocos2d/opengl/CCTexture2D;
    .locals 11
    .param p1, "drawableId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 150
    sget-boolean v9, Lorg/cocos2d/nodes/CCTextureCache;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-gtz p2, :cond_0

    if-gtz p3, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    const-string v10, "TextureCache: width and height must > 0"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 152
    :cond_0
    const/4 v7, 0x0

    .line 153
    .local v7, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/nodes/CCTextureCache;->asNineImageKey(III)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 156
    .local v8, "texSR":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/cocos2d/opengl/CCTexture2D;>;"
    if-eqz v8, :cond_1

    .line 157
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/cocos2d/opengl/CCTexture2D;

    move-object v7, v0

    .line 159
    :cond_1
    if-nez v7, :cond_2

    .line 161
    int-to-float v9, p2

    invoke-static {v9}, Lorg/cocos2d/nodes/CCTextureCache;->getPow(F)D

    move-result-wide v9

    double-to-int v5, v9

    .line 162
    .local v5, "powWidth":I
    int-to-float v9, p3

    invoke-static {v9}, Lorg/cocos2d/nodes/CCTextureCache;->getPow(F)D

    move-result-wide v9

    double-to-int v4, v9

    .line 163
    .local v4, "powHeight":I
    sget-object v9, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 164
    .local v6, "src9Png":Landroid/graphics/Bitmap;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 165
    .local v3, "new9Png":Landroid/graphics/Bitmap;
    invoke-direct {p0, v6, v3, v5, v4}, Lorg/cocos2d/nodes/CCTextureCache;->saveNinePathToCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    .line 166
    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v7

    .line 167
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "new9Png":Landroid/graphics/Bitmap;
    .end local v4    # "powHeight":I
    .end local v5    # "powWidth":I
    .end local v6    # "src9Png":Landroid/graphics/Bitmap;
    :cond_2
    move-object v9, v7

    .line 174
    .end local v8    # "texSR":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/cocos2d/opengl/CCTexture2D;>;"
    :goto_0
    return-object v9

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 172
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public addTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 3
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addTexture(Lorg/cocos2d/opengl/CCTexture2D;Ljava/lang/String;)V
    .locals 2
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getTexture(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 198
    .local v1, "texSR":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/cocos2d/opengl/CCTexture2D;>;"
    const/4 v0, 0x0

    .line 199
    .local v0, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    check-cast v0, Lorg/cocos2d/opengl/CCTexture2D;

    .line 202
    .restart local v0    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 205
    .end local v0    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    :goto_0
    return-object v0

    .restart local v0    # "tex":Lorg/cocos2d/opengl/CCTexture2D;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyTexture(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 182
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 183
    .local v0, "texSR":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/cocos2d/opengl/CCTexture2D;>;"
    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 189
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public releaseTexture(Ljava/lang/String;)V
    .locals 1
    .param p1, "textureKeyName"    # Ljava/lang/String;

    .prologue
    .line 292
    if-nez p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCTextureCache;->getTexture(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    .line 296
    .local v0, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCTextureCache;->releaseTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 299
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCTextureCache;->removeTexture(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 1
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1, v0}, Lorg/cocos2d/opengl/CCTexture2D;->releaseTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 283
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCTextureCache;->removeTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 285
    :cond_0
    return-void
.end method

.method public removeAllTextures()V
    .locals 4

    .prologue
    .line 216
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 222
    return-void

    .line 216
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 217
    .local v1, "texSR":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/cocos2d/opengl/CCTexture2D;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/opengl/CCTexture2D;

    .line 218
    .local v0, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    if-eqz v0, :cond_0

    .line 219
    sget-object v3, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v3}, Lorg/cocos2d/opengl/CCTexture2D;->releaseTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public removeTexture(Ljava/lang/String;)V
    .locals 1
    .param p1, "textureKeyName"    # Ljava/lang/String;

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 1
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTextureCache;->textures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeUnusedTextures()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method
