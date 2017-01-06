.class public Lorg/cocos2d/opengl/CCTexture2D;
.super Ljava/lang/Object;
.source "CCTexture2D.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$Resource;


# static fields
.field private static synthetic $SWITCH_TABLE$org$cocos2d$nodes$CCLabel$TextAlignment:[I = null

.field static final synthetic $assertionsDisabled:Z

.field static defaultAlphaPixelFormat_:Landroid/graphics/Bitmap$Config; = null

.field public static final kMaxTextureSize:I = 0x400

.field private static typefaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _format:Landroid/graphics/Bitmap$Config;

.field private _maxS:F

.field private _maxT:F

.field private _name:I

.field private _texParams:Lorg/cocos2d/types/CCTexParams;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContentSize:Lorg/cocos2d/types/CGSize;

.field private mCoordinates:Ljava/nio/FloatBuffer;

.field private mCreator:Ljavax/microedition/khronos/opengles/GL;

.field private mHeight:I

.field private mVertices:Ljava/nio/FloatBuffer;

.field private mWidth:I

.field private premultipliedAlpha:Z


# direct methods
.method static synthetic $SWITCH_TABLE$org$cocos2d$nodes$CCLabel$TextAlignment()[I
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lorg/cocos2d/opengl/CCTexture2D;->$SWITCH_TABLE$org$cocos2d$nodes$CCLabel$TextAlignment:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->values()[Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->CENTER:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->LEFT:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->RIGHT:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/cocos2d/opengl/CCTexture2D;->$SWITCH_TABLE$org$cocos2d$nodes$CCLabel$TextAlignment:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/opengl/CCTexture2D;->$assertionsDisabled:Z

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/cocos2d/opengl/CCTexture2D;->typefaces:Ljava/util/HashMap;

    .line 748
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lorg/cocos2d/opengl/CCTexture2D;->defaultAlphaPixelFormat_:Landroid/graphics/Bitmap$Config;

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x812f

    const/16 v1, 0x2601

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->premultipliedAlpha:Z

    .line 127
    iput v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    .line 185
    new-instance v0, Lorg/cocos2d/types/CCTexParams;

    invoke-direct {v0, v1, v1, v2, v2}, Lorg/cocos2d/types/CCTexParams;-><init>(IIII)V

    iput-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_texParams:Lorg/cocos2d/types/CCTexParams;

    .line 186
    sget-object v0, Lorg/cocos2d/opengl/CCTexture2D;->defaultAlphaPixelFormat_:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_format:Landroid/graphics/Bitmap$Config;

    .line 187
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2d/opengl/CCTexture2D;)Ljavax/microedition/khronos/opengles/GL;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->mCreator:Ljavax/microedition/khronos/opengles/GL;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2d/opengl/CCTexture2D;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    return v0
.end method

.method static synthetic access$3(Lorg/cocos2d/opengl/CCTexture2D;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lorg/cocos2d/opengl/CCTexture2D;->applyTexParameters(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method private applyTexParameters(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v2, 0xde1

    .line 691
    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 692
    const/16 v0, 0x2801

    iget-object v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->_texParams:Lorg/cocos2d/types/CCTexParams;

    iget v1, v1, Lorg/cocos2d/types/CCTexParams;->minFilter:I

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 693
    const/16 v0, 0x2800

    iget-object v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->_texParams:Lorg/cocos2d/types/CCTexParams;

    iget v1, v1, Lorg/cocos2d/types/CCTexParams;->magFilter:I

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 694
    const/16 v0, 0x2802

    iget-object v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->_texParams:Lorg/cocos2d/types/CCTexParams;

    iget v1, v1, Lorg/cocos2d/types/CCTexParams;->wrapS:I

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 695
    const/16 v0, 0x2803

    iget-object v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->_texParams:Lorg/cocos2d/types/CCTexParams;

    iget v1, v1, Lorg/cocos2d/types/CCTexParams;->wrapT:I

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 696
    return-void
.end method

.method private static calculateTextSize(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/types/CGSize;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "fontname"    # Ljava/lang/String;
    .param p2, "fontSize"    # F

    .prologue
    .line 334
    sget-object v6, Lorg/cocos2d/opengl/CCTexture2D;->typefaces:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 336
    :try_start_0
    sget-object v6, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 337
    sget-object v6, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 341
    .local v5, "typeface":Landroid/graphics/Typeface;
    :goto_0
    sget-object v6, Lorg/cocos2d/opengl/CCTexture2D;->typefaces:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :goto_1
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 355
    .local v4, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 356
    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 357
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 359
    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 360
    .local v0, "ascent":I
    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 361
    .local v1, "descent":I
    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 363
    .local v3, "measuredTextWidth":I
    int-to-float v6, v3

    add-int v7, v0, v1

    int-to-float v7, v7

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v6

    return-object v6

    .line 338
    .end local v0    # "ascent":I
    .end local v1    # "descent":I
    .end local v3    # "measuredTextWidth":I
    .end local v4    # "textPaint":Landroid/graphics/Paint;
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    invoke-static {p1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .restart local v5    # "typeface":Landroid/graphics/Typeface;
    goto :goto_0

    .line 343
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    sget-object v6, Lorg/cocos2d/opengl/CCTexture2D;->typefaces:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .restart local v5    # "typeface":Landroid/graphics/Typeface;
    goto :goto_1
.end method

.method public static defaultAlphaPixelFormat()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 774
    sget-object v0, Lorg/cocos2d/opengl/CCTexture2D;->defaultAlphaPixelFormat_:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private init(Landroid/graphics/Bitmap;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;)V
    .locals 4
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "imageSize"    # Lorg/cocos2d/types/CGSize;
    .param p3, "contentSize"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 275
    iput-object p1, p0, Lorg/cocos2d/opengl/CCTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mWidth:I

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mHeight:I

    .line 279
    iput-object p3, p0, Lorg/cocos2d/opengl/CCTexture2D;->mContentSize:Lorg/cocos2d/types/CGSize;

    .line 281
    iget-object v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mContentSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget v3, p0, Lorg/cocos2d/opengl/CCTexture2D;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxS:F

    .line 282
    iget-object v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mContentSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget v3, p0, Lorg/cocos2d/opengl/CCTexture2D;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxT:F

    .line 283
    const/16 v2, 0x30

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 284
    .local v1, "vfb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 285
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mVertices:Ljava/nio/FloatBuffer;

    .line 287
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 288
    .local v0, "tfb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 289
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mCoordinates:Ljava/nio/FloatBuffer;

    .line 292
    iget-object v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_0

    .line 293
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->premultipliedAlpha:Z

    .line 301
    :cond_0
    iget v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    if-eqz v2, :cond_1

    .line 302
    const/4 v2, 0x0

    iput v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    .line 303
    sget-object v2, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0, v2}, Lorg/cocos2d/opengl/CCTexture2D;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 313
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v2

    new-instance v3, Lorg/cocos2d/opengl/CCTexture2D$2;

    invoke-direct {v3, p0}, Lorg/cocos2d/opengl/CCTexture2D$2;-><init>(Lorg/cocos2d/opengl/CCTexture2D;)V

    invoke-virtual {v2, v3}, Lorg/cocos2d/opengl/GLResourceHelper;->perform(Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;)V

    goto :goto_0
.end method

.method public static setDefaultAlphaPixelFormat(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .param p0, "format"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 767
    sput-object p0, Lorg/cocos2d/opengl/CCTexture2D;->defaultAlphaPixelFormat_:Landroid/graphics/Bitmap$Config;

    .line 768
    return-void
.end method

.method private static toPow2(I)I
    .locals 2
    .param p0, "v"    # I

    .prologue
    .line 367
    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    add-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 368
    const/4 v0, 0x1

    .line 369
    .local v0, "i":I
    :goto_0
    if-lt v0, p0, :cond_1

    .line 371
    move p0, v0

    .line 376
    .end local v0    # "i":I
    :cond_0
    return p0

    .line 370
    .restart local v0    # "i":I
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected WrapText(Landroid/graphics/Paint;Ljava/lang/String;F)Ljava/util/ArrayList;
    .locals 10
    .param p1, "textPaint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "width"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            "Ljava/lang/String;",
            "F)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    move v3, p3

    .line 454
    .local v3, "spaceLeft":F
    const-string v9, ""

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, "words":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v1, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, " "

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 457
    .local v4, "spaceWidth":F
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .local v5, "tempLine":Ljava/lang/StringBuilder;
    array-length v2, v8

    .line 460
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 486
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    return-object v1

    .line 461
    :cond_0
    aget-object v6, v8, v0

    .line 462
    .local v6, "tempWord":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 463
    .local v7, "wordWidth":F
    cmpl-float v9, v7, v3

    if-lez v9, :cond_2

    .line 467
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 470
    const/4 v5, 0x0

    .line 472
    add-int/lit8 v9, v2, -0x1

    if-ge v0, v9, :cond_1

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "tempLine":Ljava/lang/StringBuilder;
    const-string v9, ""

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .restart local v5    # "tempLine":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    sub-float v3, p3, v7

    .line 460
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    sub-float/2addr v3, v7

    goto :goto_1
.end method

.method protected WrapTextCopy(Landroid/graphics/Paint;Ljava/lang/String;F)Ljava/util/ArrayList;
    .locals 10
    .param p1, "textPaint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "width"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            "Ljava/lang/String;",
            "F)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    move v1, p3

    .line 495
    .local v1, "spaceLeft":F
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 496
    .local v6, "words":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v0, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, " "

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 498
    .local v2, "spaceWidth":F
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .local v3, "tempLine":Ljava/lang/StringBuilder;
    array-length v8, v6

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_1

    .line 525
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 526
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 529
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    return-object v0

    .line 500
    :cond_1
    aget-object v4, v6, v7

    .line 502
    .local v4, "word":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 504
    .local v5, "wordWidth":F
    cmpl-float v9, v5, v1

    if-lez v9, :cond_3

    .line 505
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 506
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 509
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "tempLine":Ljava/lang/StringBuilder;
    const-string v9, ""

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .restart local v3    # "tempLine":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    add-float v9, v5, v2

    sub-float v1, p3, v9

    .line 522
    :goto_1
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 518
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    add-float v9, v5, v2

    sub-float/2addr v1, v9

    goto :goto_1
.end method

.method public drawAtPoint(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/types/CGPoint;)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "point"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0xde1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 569
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 571
    invoke-virtual {p0, p1}, Lorg/cocos2d/opengl/CCTexture2D;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 573
    iget v4, p0, Lorg/cocos2d/opengl/CCTexture2D;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxS:F

    mul-float v3, v4, v5

    .line 574
    .local v3, "width":F
    iget v4, p0, Lorg/cocos2d/opengl/CCTexture2D;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxT:F

    mul-float v1, v4, v5

    .line 576
    .local v1, "height":F
    const/16 v4, 0xc

    new-array v2, v4, [F

    iget v4, p2, Lorg/cocos2d/types/CGPoint;->x:F

    aput v4, v2, v7

    const/4 v4, 0x1

    iget v5, p2, Lorg/cocos2d/types/CGPoint;->y:F

    aput v5, v2, v4

    aput v6, v2, v9

    .line 577
    iget v4, p2, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v4, v3

    aput v4, v2, v10

    const/4 v4, 0x4

    iget v5, p2, Lorg/cocos2d/types/CGPoint;->y:F

    aput v5, v2, v4

    const/4 v4, 0x5

    aput v6, v2, v4

    const/4 v4, 0x6

    .line 578
    iget v5, p2, Lorg/cocos2d/types/CGPoint;->x:F

    aput v5, v2, v4

    const/4 v4, 0x7

    iget v5, p2, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v5, v1

    aput v5, v2, v4

    const/16 v4, 0x8

    aput v6, v2, v4

    const/16 v4, 0x9

    .line 579
    iget v5, p2, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v5, v3

    aput v5, v2, v4

    const/16 v4, 0xa

    iget v5, p2, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v5, v1

    aput v5, v2, v4

    const/16 v4, 0xb

    aput v6, v2, v4

    .line 581
    .local v2, "vertices":[F
    iget-object v4, p0, Lorg/cocos2d/opengl/CCTexture2D;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 582
    iget-object v4, p0, Lorg/cocos2d/opengl/CCTexture2D;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 584
    const/16 v4, 0x8

    new-array v0, v4, [F

    aput v6, v0, v7

    const/4 v4, 0x1

    iget v5, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxT:F

    aput v5, v0, v4

    .line 585
    iget v4, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxS:F

    aput v4, v0, v9

    iget v4, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxT:F

    aput v4, v0, v10

    const/4 v4, 0x4

    .line 586
    aput v6, v0, v4

    const/4 v4, 0x5

    aput v6, v0, v4

    const/4 v4, 0x6

    .line 587
    iget v5, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxS:F

    aput v5, v0, v4

    const/4 v4, 0x7

    aput v6, v0, v4

    .line 589
    .local v0, "coordinates":[F
    iget-object v4, p0, Lorg/cocos2d/opengl/CCTexture2D;->mCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 590
    iget-object v4, p0, Lorg/cocos2d/opengl/CCTexture2D;->mCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 592
    const v4, 0x8074

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 593
    const v4, 0x8078

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 595
    iget v4, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    invoke-interface {p1, v8, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 597
    const/16 v4, 0x2802

    const/16 v5, 0x2901

    invoke-interface {p1, v8, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 598
    const/16 v4, 0x2803

    const/16 v5, 0x2901

    invoke-interface {p1, v8, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 600
    const/16 v4, 0x1406

    iget-object v5, p0, Lorg/cocos2d/opengl/CCTexture2D;->mVertices:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v10, v4, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 601
    const/16 v4, 0x1406

    iget-object v5, p0, Lorg/cocos2d/opengl/CCTexture2D;->mCoordinates:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v4, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 602
    const/4 v4, 0x5

    const/4 v5, 0x4

    invoke-interface {p1, v4, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 605
    const v4, 0x8074

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 606
    const v4, 0x8078

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 608
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 609
    return-void
.end method

.method public drawInRect(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/types/CGRect;)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0xde1

    const/4 v5, 0x0

    .line 613
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 615
    invoke-virtual {p0, p1}, Lorg/cocos2d/opengl/CCTexture2D;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 620
    const/16 v2, 0x8

    new-array v1, v2, [F

    .line 621
    iget-object v2, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    aput v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    aput v3, v1, v2

    .line 622
    iget-object v2, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v3, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v2, v3

    aput v2, v1, v8

    const/4 v2, 0x3

    iget-object v3, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    aput v3, v1, v2

    .line 623
    iget-object v2, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    aput v2, v1, v9

    const/4 v2, 0x5

    iget-object v3, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v4, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x6

    .line 624
    iget-object v3, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v4, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v4, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 627
    .local v1, "vertices":[F
    iget-object v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 628
    iget-object v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 630
    const/16 v2, 0x8

    new-array v0, v2, [F

    aput v7, v0, v5

    const/4 v2, 0x1

    iget v3, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxT:F

    aput v3, v0, v2

    .line 631
    iget v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxS:F

    aput v2, v0, v8

    const/4 v2, 0x3

    iget v3, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxT:F

    aput v3, v0, v2

    .line 632
    aput v7, v0, v9

    const/4 v2, 0x5

    aput v7, v0, v2

    const/4 v2, 0x6

    .line 633
    iget v3, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxS:F

    aput v3, v0, v2

    const/4 v2, 0x7

    aput v7, v0, v2

    .line 635
    .local v0, "coordinates":[F
    iget-object v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 636
    iget-object v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 638
    const v2, 0x8074

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 639
    const v2, 0x8078

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 641
    iget v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    invoke-interface {p1, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 643
    const/16 v2, 0x2802

    const/16 v3, 0x2901

    invoke-interface {p1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 644
    const/16 v2, 0x2803

    const/16 v3, 0x2901

    invoke-interface {p1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 646
    const/16 v2, 0x1406

    iget-object v3, p0, Lorg/cocos2d/opengl/CCTexture2D;->mVertices:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v2, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 647
    const/16 v2, 0x1406

    iget-object v3, p0, Lorg/cocos2d/opengl/CCTexture2D;->mCoordinates:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v2, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 648
    const/4 v2, 0x5

    invoke-interface {p1, v2, v5, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 651
    const v2, 0x8074

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 652
    const v2, 0x8078

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 654
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 655
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 166
    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/opengl/CCTexture2D$1;

    invoke-direct {v1, p0}, Lorg/cocos2d/opengl/CCTexture2D$1;-><init>(Lorg/cocos2d/opengl/CCTexture2D;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/GLResourceHelper;->perform(Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;)V

    .line 181
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 182
    return-void
.end method

.method public generateMipmap()V
    .locals 2

    .prologue
    .line 733
    sget-boolean v0, Lorg/cocos2d/opengl/CCTexture2D;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->mWidth:I

    iget v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->mWidth:I

    invoke-static {v1}, Lorg/cocos2d/opengl/CCTexture2D;->toPow2(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->mHeight:I

    iget v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->mHeight:I

    invoke-static {v1}, Lorg/cocos2d/opengl/CCTexture2D;->toPow2(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 734
    const-string v1, "Mimpap texture only works in POT textures"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 736
    :cond_1
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/opengl/CCTexture2D$4;

    invoke-direct {v1, p0}, Lorg/cocos2d/opengl/CCTexture2D$4;-><init>(Lorg/cocos2d/opengl/CCTexture2D;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/GLResourceHelper;->perform(Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;)V

    .line 746
    return-void
.end method

.method public final getContentSize()Lorg/cocos2d/types/CGSize;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->mContentSize:Lorg/cocos2d/types/CGSize;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->mContentSize:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->mContentSize:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    return v0
.end method

.method public hasPremultipliedAlpha()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->premultipliedAlpha:Z

    return v0
.end method

.method public initWithImage(Landroid/graphics/Bitmap;)V
    .locals 13
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v12, 0x400

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v4

    .line 212
    .local v4, "imageSize":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v6

    .line 215
    .local v6, "realSize":Lorg/cocos2d/types/CGSize;
    iget v8, v4, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v8, v8

    invoke-static {v8}, Lorg/cocos2d/opengl/CCTexture2D;->toPow2(I)I

    move-result v7

    .line 216
    .local v7, "width":I
    iget v8, v4, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v8, v8

    invoke-static {v8}, Lorg/cocos2d/opengl/CCTexture2D;->toPow2(I)I

    move-result v3

    .line 218
    .local v3, "height":I
    const/4 v5, 0x0

    .line 219
    .local v5, "needDownScale":Z
    const/high16 v2, 0x3f800000    # 1.0f

    .line 220
    .local v2, "factor":F
    :goto_0
    if-gt v7, v12, :cond_3

    if-gt v3, v12, :cond_3

    .line 232
    if-eqz v5, :cond_0

    .line 233
    iget v8, v4, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v8, v8

    iget v9, v4, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-static {p1, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    move-object p1, v0

    .line 238
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget v8, v4, Lorg/cocos2d/types/CGSize;->width:F

    int-to-float v9, v7

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    iget v8, v4, Lorg/cocos2d/types/CGSize;->height:F

    int-to-float v9, v3

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_2

    .line 240
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    .line 239
    :goto_1
    invoke-static {v7, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    invoke-virtual {v1, p1, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    move-object p1, v0

    .line 247
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    invoke-direct {p0, p1, v6, v6}, Lorg/cocos2d/opengl/CCTexture2D;->init(Landroid/graphics/Bitmap;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;)V

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    iput v8, p0, Lorg/cocos2d/opengl/CCTexture2D;->mWidth:I

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    iput v8, p0, Lorg/cocos2d/opengl/CCTexture2D;->mHeight:I

    .line 250
    return-void

    .line 221
    :cond_3
    div-int/lit8 v7, v7, 0x2

    .line 222
    div-int/lit8 v3, v3, 0x2

    .line 224
    iget v8, v4, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v8, v10

    iput v8, v4, Lorg/cocos2d/types/CGSize;->width:F

    .line 225
    iget v8, v4, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v8, v10

    iput v8, v4, Lorg/cocos2d/types/CGSize;->height:F

    .line 227
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v2, v8

    .line 229
    const/4 v5, 0x1

    goto :goto_0

    .line 240
    :cond_4
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public initWithImage(Landroid/graphics/Bitmap;Lorg/cocos2d/types/CGSize;)V
    .locals 6
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "imageSize"    # Lorg/cocos2d/types/CGSize;

    .prologue
    const/4 v5, 0x0

    .line 253
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 254
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    iget v3, p2, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v3, v3

    iget v4, p2, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v4, v4

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 260
    invoke-direct {p0, v0, p2, p2}, Lorg/cocos2d/opengl/CCTexture2D;->init(Landroid/graphics/Bitmap;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;)V

    .line 261
    return-void
.end method

.method public initWithImage(Landroid/graphics/Bitmap;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;)V
    .locals 6
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "imageSize"    # Lorg/cocos2d/types/CGSize;
    .param p3, "contentSize"    # Lorg/cocos2d/types/CGSize;

    .prologue
    const/4 v5, 0x0

    .line 264
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 265
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    iget v3, p2, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v3, v3

    iget v4, p2, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v4, v4

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 268
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 271
    invoke-direct {p0, v0, p2, p3}, Lorg/cocos2d/opengl/CCTexture2D;->init(Landroid/graphics/Bitmap;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;)V

    .line 272
    return-void
.end method

.method public initWithText(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontname"    # Ljava/lang/String;
    .param p3, "fontSize"    # F

    .prologue
    .line 321
    invoke-static {p1, p2, p3}, Lorg/cocos2d/opengl/CCTexture2D;->calculateTextSize(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 322
    sget-object v3, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->CENTER:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .line 321
    invoke-virtual/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTexture2D;->initWithText(Ljava/lang/String;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;F)V

    .line 323
    return-void
.end method

.method public initWithText(Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontname"    # Ljava/lang/String;
    .param p3, "fontSize"    # F
    .param p4, "fontStyle"    # I

    .prologue
    .line 327
    invoke-static {p1, p2, p3}, Lorg/cocos2d/opengl/CCTexture2D;->calculateTextSize(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 328
    sget-object v3, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->CENTER:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 327
    invoke-virtual/range {v0 .. v6}, Lorg/cocos2d/opengl/CCTexture2D;->initWithText(Ljava/lang/String;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;FI)V

    .line 329
    return-void
.end method

.method public initWithText(Ljava/lang/String;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;F)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "dimensions"    # Lorg/cocos2d/types/CGSize;
    .param p3, "alignment"    # Lorg/cocos2d/nodes/CCLabel$TextAlignment;
    .param p4, "fontname"    # Ljava/lang/String;
    .param p5, "fontSize"    # F

    .prologue
    .line 382
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2d/opengl/CCTexture2D;->initWithText(Ljava/lang/String;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;FI)V

    .line 383
    return-void
.end method

.method public initWithText(Ljava/lang/String;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;FI)V
    .locals 24
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "dimensions"    # Lorg/cocos2d/types/CGSize;
    .param p3, "alignment"    # Lorg/cocos2d/nodes/CCLabel$TextAlignment;
    .param p4, "fontname"    # Ljava/lang/String;
    .param p5, "fontSize"    # F
    .param p6, "fontStyle"    # I

    .prologue
    .line 387
    sget-object v22, Lorg/cocos2d/opengl/CCTexture2D;->typefaces:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 389
    :try_start_0
    sget-object v22, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 390
    sget-object v22, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 394
    .local v18, "typeface":Landroid/graphics/Typeface;
    :goto_0
    sget-object v22, Lorg/cocos2d/opengl/CCTexture2D;->typefaces:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :goto_1
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 400
    .local v17, "textPaint":Landroid/graphics/Paint;
    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 401
    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 402
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 404
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->ascent()F

    move-result v22

    move/from16 v0, v22

    neg-float v4, v0

    .line 405
    .local v4, "ascent":F
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v9

    .line 407
    .local v9, "descent":F
    add-float v22, v4, v9

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    .line 408
    .local v16, "textHeight":I
    add-float v22, v4, v9

    const v23, 0x3dcccccd    # 0.1f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v14, v0

    .line 410
    .local v14, "spacing":I
    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/cocos2d/opengl/CCTexture2D;->toPow2(I)I

    move-result v20

    .line 411
    .local v20, "width":I
    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/cocos2d/opengl/CCTexture2D;->toPow2(I)I

    move-result v11

    .line 413
    .local v11, "height":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 414
    .local v8, "config":Landroid/graphics/Bitmap$Config;
    move/from16 v0, v20

    invoke-static {v0, v11, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 415
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 416
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 418
    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2d/opengl/CCTexture2D;->WrapText(Landroid/graphics/Paint;Ljava/lang/String;F)Ljava/util/ArrayList;

    move-result-object v21

    .line 420
    .local v21, "wrapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-float v22, v4, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v6, v22, v23

    .line 422
    .local v6, "blockHeight":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v12, v0, :cond_1

    .line 447
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lorg/cocos2d/opengl/CCTexture2D;->init(Landroid/graphics/Bitmap;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;)V

    .line 448
    return-void

    .line 391
    .end local v4    # "ascent":F
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "blockHeight":F
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "config":Landroid/graphics/Bitmap$Config;
    .end local v9    # "descent":F
    .end local v11    # "height":I
    .end local v12    # "i":I
    .end local v14    # "spacing":I
    .end local v16    # "textHeight":I
    .end local v17    # "textPaint":Landroid/graphics/Paint;
    .end local v18    # "typeface":Landroid/graphics/Typeface;
    .end local v20    # "width":I
    .end local v21    # "wrapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 392
    .local v10, "e":Ljava/io/IOException;
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v18

    .restart local v18    # "typeface":Landroid/graphics/Typeface;
    goto/16 :goto_0

    .line 396
    .end local v10    # "e":Ljava/io/IOException;
    .end local v18    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    sget-object v22, Lorg/cocos2d/opengl/CCTexture2D;->typefaces:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Typeface;

    .restart local v18    # "typeface":Landroid/graphics/Typeface;
    goto/16 :goto_1

    .line 424
    .restart local v4    # "ascent":F
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "blockHeight":F
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local v8    # "config":Landroid/graphics/Bitmap$Config;
    .restart local v9    # "descent":F
    .restart local v11    # "height":I
    .restart local v12    # "i":I
    .restart local v14    # "spacing":I
    .restart local v16    # "textHeight":I
    .restart local v17    # "textPaint":Landroid/graphics/Paint;
    .restart local v20    # "width":I
    .restart local v21    # "wrapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 425
    .local v15, "str":Ljava/lang/String;
    const/4 v13, 0x0

    .line 426
    .local v13, "offset":F
    const/16 v19, 0x0

    .line 428
    .local v19, "vOffset":F
    invoke-static {}, Lorg/cocos2d/opengl/CCTexture2D;->$SWITCH_TABLE$org$cocos2d$nodes$CCLabel$TextAlignment()[I

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_0

    .line 443
    :goto_3
    add-float v22, v19, v4

    add-int v23, v16, v14

    mul-int v23, v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    .line 441
    move/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v7, v15, v13, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 422
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 430
    :pswitch_0
    const/4 v13, 0x0

    .line 431
    goto :goto_3

    .line 433
    :pswitch_1
    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    move/from16 v22, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v13, v22, v23

    .line 434
    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v22, v0

    sub-float v22, v22, v6

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v19, v22, v23

    .line 435
    goto :goto_3

    .line 437
    :pswitch_2
    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    move/from16 v22, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    sub-float v13, v22, v23

    goto :goto_3

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 535
    iget v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    if-nez v1, :cond_0

    .line 536
    iput-object p1, p0, Lorg/cocos2d/opengl/CCTexture2D;->mCreator:Ljavax/microedition/khronos/opengles/GL;

    .line 538
    new-array v0, v2, [I

    .line 539
    .local v0, "textures":[I
    invoke-interface {p1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 541
    aget v1, v0, v3

    iput v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    .line 543
    invoke-direct {p0, p1}, Lorg/cocos2d/opengl/CCTexture2D;->applyTexParameters(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 547
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 554
    .end local v0    # "textures":[I
    :cond_0
    :goto_0
    return-void

    .line 550
    .restart local v0    # "textures":[I
    :cond_1
    const/16 v1, 0xde1

    iget-object v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 551
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 552
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public maxS()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxS:F

    return v0
.end method

.method public maxT()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_maxT:F

    return v0
.end method

.method public name()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    return v0
.end method

.method public pixelFormat()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_format:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public pixelsHigh()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->mHeight:I

    return v0
.end method

.method public pixelsWide()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->mWidth:I

    return v0
.end method

.method public releaseTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    if-eqz v0, :cond_0

    .line 159
    new-array v0, v3, [I

    iget v1, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    aput v1, v0, v2

    invoke-interface {p1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 160
    iput v2, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    .line 162
    :cond_0
    return-void
.end method

.method public setAliasTexParameters()V
    .locals 2

    .prologue
    const v1, 0x812f

    const/16 v0, 0x2600

    .line 714
    invoke-virtual {p0, v0, v0, v1, v1}, Lorg/cocos2d/opengl/CCTexture2D;->setTexParameters(IIII)V

    .line 715
    return-void
.end method

.method public setAntiAliasTexParameters()V
    .locals 2

    .prologue
    const v1, 0x812f

    const/16 v0, 0x2601

    .line 725
    invoke-virtual {p0, v0, v0, v1, v1}, Lorg/cocos2d/opengl/CCTexture2D;->setTexParameters(IIII)V

    .line 726
    return-void
.end method

.method public setLoader(Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;)V
    .locals 2
    .param p1, "loader"    # Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-interface {p1, p0}, Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;->load(Lorg/cocos2d/opengl/GLResourceHelper$Resource;)V

    .line 199
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/cocos2d/opengl/GLResourceHelper;->addLoader(Lorg/cocos2d/opengl/GLResourceHelper$Resource;Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public setTexParameters(IIII)V
    .locals 2
    .param p1, "min"    # I
    .param p2, "mag"    # I
    .param p3, "s"    # I
    .param p4, "t"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_texParams:Lorg/cocos2d/types/CCTexParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/cocos2d/types/CCTexParams;->set(IIII)V

    .line 675
    iget v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_name:I

    if-eqz v0, :cond_0

    .line 676
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/opengl/CCTexture2D$3;

    invoke-direct {v1, p0}, Lorg/cocos2d/opengl/CCTexture2D$3;-><init>(Lorg/cocos2d/opengl/CCTexture2D;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/GLResourceHelper;->perform(Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;)V

    .line 684
    :cond_0
    return-void
.end method

.method public setTexParameters(Lorg/cocos2d/types/CCTexParams;)V
    .locals 1
    .param p1, "texParams"    # Lorg/cocos2d/types/CCTexParams;

    .prologue
    .line 670
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D;->_texParams:Lorg/cocos2d/types/CCTexParams;

    invoke-virtual {v0, p1}, Lorg/cocos2d/types/CCTexParams;->set(Lorg/cocos2d/types/CCTexParams;)V

    .line 671
    return-void
.end method
