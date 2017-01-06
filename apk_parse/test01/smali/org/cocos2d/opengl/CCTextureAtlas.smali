.class public Lorg/cocos2d/opengl/CCTextureAtlas;
.super Ljava/lang/Object;
.source "CCTextureAtlas.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static tmpFloatArray:[F


# instance fields
.field private capacity_:I

.field private colors:Ljava/nio/FloatBuffer;

.field private indices:Ljava/nio/ShortBuffer;

.field private textureCoordinates:Ljava/nio/FloatBuffer;

.field private texture_:Lorg/cocos2d/opengl/CCTexture2D;

.field private totalQuads_:I

.field private vertexCoordinates:Ljava/nio/FloatBuffer;

.field private withColorArray_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/opengl/CCTextureAtlas;->$assertionsDisabled:Z

    .line 479
    const/16 v0, 0xc

    new-array v0, v0, [F

    sput-object v0, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "n"    # I

    .prologue
    .line 92
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/cocos2d/opengl/CCTextureAtlas;-><init>(Lorg/cocos2d/opengl/CCTexture2D;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/opengl/CCTexture2D;I)V
    .locals 4
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p2, "n"    # I

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    .line 111
    iput-object p1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    .line 112
    iput v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    .line 114
    iput-boolean v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->withColorArray_:Z

    .line 116
    iget v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    mul-int/lit8 v3, v3, 0x8

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 117
    .local v1, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    .line 120
    iget v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    mul-int/lit8 v3, v3, 0xc

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 121
    .local v2, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    .line 124
    iget v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    mul-int/lit8 v3, v3, 0x6

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 125
    .local v0, "isb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    .line 128
    invoke-virtual {p0}, Lorg/cocos2d/opengl/CCTextureAtlas;->initIndices()V

    .line 129
    return-void
.end method

.method private arraycopyColor(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V
    .locals 6
    .param p1, "src"    # Ljava/nio/FloatBuffer;
    .param p2, "srcPos"    # I
    .param p3, "dst"    # Ljava/nio/FloatBuffer;
    .param p4, "dstPos"    # I
    .param p5, "length"    # I

    .prologue
    .line 551
    if-ne p1, p3, :cond_0

    .line 552
    mul-int/lit8 v0, p2, 0x4

    mul-int/lit8 v2, v0, 0x4

    mul-int/lit8 v0, p4, 0x4

    mul-int/lit8 v4, v0, 0x4

    mul-int/lit8 v0, p5, 0x4

    mul-int/lit8 v5, v0, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->memmoveFloat(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    mul-int/lit8 v0, p2, 0x4

    mul-int/lit8 v2, v0, 0x4

    mul-int/lit8 v0, p4, 0x4

    mul-int/lit8 v4, v0, 0x4

    mul-int/lit8 v0, p5, 0x4

    mul-int/lit8 v5, v0, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->memcopyFloat(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    goto :goto_0
.end method

.method private arraycopyTexture(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V
    .locals 6
    .param p1, "src"    # Ljava/nio/FloatBuffer;
    .param p2, "srcPos"    # I
    .param p3, "dst"    # Ljava/nio/FloatBuffer;
    .param p4, "dstPos"    # I
    .param p5, "length"    # I

    .prologue
    .line 535
    if-ne p1, p3, :cond_0

    .line 536
    mul-int/lit8 v2, p2, 0x8

    mul-int/lit8 v4, p4, 0x8

    mul-int/lit8 v5, p5, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->memmoveFloat(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    mul-int/lit8 v2, p2, 0x8

    mul-int/lit8 v4, p4, 0x8

    mul-int/lit8 v5, p5, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->memcopyFloat(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    goto :goto_0
.end method

.method private arraycopyVertex(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V
    .locals 6
    .param p1, "src"    # Ljava/nio/FloatBuffer;
    .param p2, "srcPos"    # I
    .param p3, "dst"    # Ljava/nio/FloatBuffer;
    .param p4, "dstPos"    # I
    .param p5, "length"    # I

    .prologue
    .line 543
    if-ne p1, p3, :cond_0

    .line 544
    mul-int/lit8 v2, p2, 0xc

    mul-int/lit8 v4, p4, 0xc

    mul-int/lit8 v5, p5, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->memmoveFloat(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_0
    mul-int/lit8 v2, p2, 0xc

    mul-int/lit8 v4, p4, 0xc

    mul-int/lit8 v5, p5, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->memcopyFloat(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    goto :goto_0
.end method

.method private getColor(Ljava/nio/FloatBuffer;I)[Lorg/cocos2d/types/ccColor4B;
    .locals 7
    .param p1, "src"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    const/4 v6, 0x4

    const/high16 v5, 0x437f0000    # 255.0f

    .line 512
    new-array v0, v6, [Lorg/cocos2d/types/ccColor4B;

    .line 514
    .local v0, "color":[Lorg/cocos2d/types/ccColor4B;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v1, v6, :cond_0

    .line 521
    return-object v0

    .line 515
    :cond_0
    aget-object v2, v0, v1

    mul-int/lit8 v3, p2, 0x4

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Lorg/cocos2d/types/ccColor4B;->r:I

    .line 516
    aget-object v2, v0, v1

    mul-int/lit8 v3, p2, 0x4

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Lorg/cocos2d/types/ccColor4B;->g:I

    .line 517
    aget-object v2, v0, v1

    mul-int/lit8 v3, p2, 0x4

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Lorg/cocos2d/types/ccColor4B;->b:I

    .line 518
    aget-object v2, v0, v1

    mul-int/lit8 v3, p2, 0x4

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Lorg/cocos2d/types/ccColor4B;->a:I

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getTexCoords(Ljava/nio/FloatBuffer;I)[F
    .locals 5
    .param p1, "src"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    const/16 v4, 0x8

    .line 405
    new-array v2, v4, [F

    .line 406
    .local v2, "quadT":[F
    mul-int/lit8 v0, p2, 0x8

    .line 407
    .local v0, "base":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 410
    return-object v2

    .line 408
    :cond_0
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v2, v1

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getVertex(Ljava/nio/FloatBuffer;I)[F
    .locals 5
    .param p1, "src"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    const/16 v4, 0xc

    .line 471
    new-array v2, v4, [F

    .line 472
    .local v2, "quadV":[F
    mul-int/lit8 v0, p2, 0xc

    .line 473
    .local v0, "base":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 476
    return-object v2

    .line 474
    :cond_0
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v2, v1

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static memcopyByte(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .locals 0
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "from"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "to"    # I
    .param p4, "size"    # I

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 595
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 596
    invoke-static {p0, p2, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 600
    return-void
.end method

.method private memcopyFloat(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V
    .locals 0
    .param p1, "src"    # Ljava/nio/FloatBuffer;
    .param p2, "from"    # I
    .param p3, "dst"    # Ljava/nio/FloatBuffer;
    .param p4, "to"    # I
    .param p5, "size"    # I

    .prologue
    .line 572
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 573
    invoke-virtual {p3, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 574
    invoke-static {p1, p3, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 578
    return-void
.end method

.method public static memmoveByte(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .locals 3
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "from"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "to"    # I
    .param p4, "size"    # I

    .prologue
    .line 581
    if-ge p3, p1, :cond_2

    .line 582
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p4, :cond_1

    .line 591
    :cond_0
    return-void

    .line 583
    :cond_1
    add-int v1, v0, p3

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v0, p4, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 588
    add-int v1, v0, p3

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 587
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private memmoveFloat(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V
    .locals 3
    .param p1, "src"    # Ljava/nio/FloatBuffer;
    .param p2, "from"    # I
    .param p3, "dst"    # Ljava/nio/FloatBuffer;
    .param p4, "to"    # I
    .param p5, "size"    # I

    .prologue
    .line 559
    if-ge p4, p2, :cond_2

    .line 560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p5, :cond_1

    .line 569
    :cond_0
    return-void

    .line 561
    :cond_1
    add-int v1, v0, p4

    add-int v2, v0, p2

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-virtual {p3, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v0, p5, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 566
    add-int v1, v0, p4

    add-int v2, v0, p2

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-virtual {p3, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 565
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private putColor(Ljava/nio/FloatBuffer;[Lorg/cocos2d/types/ccColor4B;I)V
    .locals 4
    .param p1, "dst"    # Ljava/nio/FloatBuffer;
    .param p2, "color"    # [Lorg/cocos2d/types/ccColor4B;
    .param p3, "index"    # I

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 525
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 531
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 532
    return-void

    .line 526
    :cond_0
    mul-int/lit8 v1, p3, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    aget-object v2, p2, v0

    iget v2, v2, Lorg/cocos2d/types/ccColor4B;->r:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 527
    mul-int/lit8 v1, p3, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v2, p2, v0

    iget v2, v2, Lorg/cocos2d/types/ccColor4B;->g:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 528
    mul-int/lit8 v1, p3, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget-object v2, p2, v0

    iget v2, v2, Lorg/cocos2d/types/ccColor4B;->b:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 529
    mul-int/lit8 v1, p3, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    aget-object v2, p2, v0

    iget v2, v2, Lorg/cocos2d/types/ccColor4B;->a:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static textureAtlas(Ljava/lang/String;I)Lorg/cocos2d/opengl/CCTextureAtlas;
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "capacity"    # I

    .prologue
    .line 83
    new-instance v0, Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/opengl/CCTextureAtlas;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static textureAtlas(Lorg/cocos2d/opengl/CCTexture2D;I)Lorg/cocos2d/opengl/CCTextureAtlas;
    .locals 1
    .param p0, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p1, "capacity"    # I

    .prologue
    .line 100
    new-instance v0, Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/opengl/CCTextureAtlas;-><init>(Lorg/cocos2d/opengl/CCTexture2D;I)V

    return-object v0
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    return v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "n"    # I

    .prologue
    const/16 v5, 0x2901

    const/4 v4, 0x4

    const/16 v3, 0x1406

    const/16 v1, 0xde1

    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/CCTexture2D;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 385
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 387
    const/16 v0, 0x2802

    invoke-interface {p1, v1, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 388
    const/16 v0, 0x2803

    invoke-interface {p1, v1, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 390
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 391
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 393
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->withColorArray_:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v4, v3, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 399
    :cond_0
    mul-int/lit8 v0, p2, 0x6

    const/16 v1, 0x1403

    iget-object v2, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v4, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 402
    return-void
.end method

.method public drawQuads(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 374
    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/opengl/CCTextureAtlas;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 375
    return-void
.end method

.method public getTexCoordsBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTexture()Lorg/cocos2d/opengl/CCTexture2D;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    return-object v0
.end method

.method public getTotalQuads()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    return v0
.end method

.method public getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public initColorArray()V
    .locals 4

    .prologue
    .line 138
    iget-boolean v2, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->withColorArray_:Z

    if-nez v2, :cond_0

    .line 141
    iget v2, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 142
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    .line 144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    mul-int/lit8 v2, v2, 0x10

    mul-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_1

    .line 147
    iget-object v2, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->withColorArray_:Z

    .line 151
    .end local v0    # "cbb":Ljava/nio/ByteBuffer;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 145
    .restart local v0    # "cbb":Ljava/nio/ByteBuffer;
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initIndices()V
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    if-lt v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x0

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 164
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 165
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 168
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x5

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 169
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 170
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public insertQuad(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 253
    sget-boolean v0, Lorg/cocos2d/opengl/CCTextureAtlas;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    if-lt p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "insertQuadFromIndex:atIndex: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 254
    :cond_1
    sget-boolean v0, Lorg/cocos2d/opengl/CCTextureAtlas;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-ltz p1, :cond_2

    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    if-lt p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "insertQuadFromIndex:atIndex: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 256
    :cond_3
    if-ne p1, p2, :cond_5

    .line 284
    :cond_4
    :goto_0
    return-void

    .line 259
    :cond_5
    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 260
    .local v5, "size":I
    move v4, p1

    .line 261
    .local v4, "dst":I
    add-int/lit8 v2, p1, 0x1

    .line 263
    .local v2, "src":I
    if-le p1, p2, :cond_6

    .line 264
    add-int/lit8 v4, p2, 0x1

    .line 265
    move v2, p2

    .line 269
    :cond_6
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, p1}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexCoords(Ljava/nio/FloatBuffer;I)[F

    move-result-object v7

    .line 270
    .local v7, "texCoordsBackup":[F
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->arraycopyTexture(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 271
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0, v7, p2}, Lorg/cocos2d/opengl/CCTextureAtlas;->putTexCoords(Ljava/nio/FloatBuffer;[FI)V

    .line 274
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, p1}, Lorg/cocos2d/opengl/CCTextureAtlas;->getVertex(Ljava/nio/FloatBuffer;I)[F

    move-result-object v8

    .line 275
    .local v8, "vertexQuadBackup":[F
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->arraycopyVertex(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 276
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0, v8, p2}, Lorg/cocos2d/opengl/CCTextureAtlas;->putVertex(Ljava/nio/FloatBuffer;[FI)V

    .line 279
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->withColorArray_:Z

    if-eqz v0, :cond_4

    .line 280
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, p1}, Lorg/cocos2d/opengl/CCTextureAtlas;->getColor(Ljava/nio/FloatBuffer;I)[Lorg/cocos2d/types/ccColor4B;

    move-result-object v6

    .line 281
    .local v6, "colorsBackup":[Lorg/cocos2d/types/ccColor4B;
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->arraycopyColor(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 282
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v6, p2}, Lorg/cocos2d/opengl/CCTextureAtlas;->putColor(Ljava/nio/FloatBuffer;[Lorg/cocos2d/types/ccColor4B;I)V

    goto :goto_0
.end method

.method public insertQuad(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)V
    .locals 6
    .param p1, "texCordBuffer"    # Ljava/nio/FloatBuffer;
    .param p2, "vertexBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "index"    # I

    .prologue
    .line 225
    sget-boolean v0, Lorg/cocos2d/opengl/CCTextureAtlas;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p3, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    if-lt p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "insert quad with texture_: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 227
    :cond_1
    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    .line 229
    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    add-int/lit8 v0, v0, -0x1

    sub-int v5, v0, p3

    .line 232
    .local v5, "remaining":I
    if-lez v5, :cond_2

    .line 234
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, p3, 0x1

    move-object v0, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->arraycopyTexture(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 237
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, p3, 0x1

    move-object v0, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->arraycopyVertex(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 240
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->withColorArray_:Z

    if-eqz v0, :cond_2

    .line 241
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, p3, 0x1

    move-object v0, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->arraycopyColor(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 244
    :cond_2
    invoke-virtual {p0, p1, p3}, Lorg/cocos2d/opengl/CCTextureAtlas;->putTexCoords(Ljava/nio/FloatBuffer;I)V

    .line 245
    invoke-virtual {p0, p2, p3}, Lorg/cocos2d/opengl/CCTextureAtlas;->putVertex(Ljava/nio/FloatBuffer;I)V

    .line 246
    return-void
.end method

.method public putTexCoords(Ljava/nio/FloatBuffer;I)V
    .locals 4
    .param p1, "src"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 447
    mul-int/lit8 v0, p2, 0x8

    .line 448
    .local v0, "base":I
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 450
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 457
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 458
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 459
    return-void
.end method

.method protected putTexCoords(Ljava/nio/FloatBuffer;Lorg/cocos2d/types/ccQuad2;I)V
    .locals 5
    .param p1, "dst"    # Ljava/nio/FloatBuffer;
    .param p2, "quadT"    # Lorg/cocos2d/types/ccQuad2;
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 414
    mul-int/lit8 v0, p3, 0x8

    .line 415
    .local v0, "base":I
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 417
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    iget v2, p2, Lorg/cocos2d/types/ccQuad2;->tl_x:F

    aput v2, v1, v4

    .line 418
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x1

    iget v3, p2, Lorg/cocos2d/types/ccQuad2;->tl_y:F

    aput v3, v1, v2

    .line 419
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x2

    iget v3, p2, Lorg/cocos2d/types/ccQuad2;->tr_x:F

    aput v3, v1, v2

    .line 420
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x3

    iget v3, p2, Lorg/cocos2d/types/ccQuad2;->tr_y:F

    aput v3, v1, v2

    .line 421
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x4

    iget v3, p2, Lorg/cocos2d/types/ccQuad2;->bl_x:F

    aput v3, v1, v2

    .line 422
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x5

    iget v3, p2, Lorg/cocos2d/types/ccQuad2;->bl_y:F

    aput v3, v1, v2

    .line 423
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x6

    iget v3, p2, Lorg/cocos2d/types/ccQuad2;->br_x:F

    aput v3, v1, v2

    .line 424
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x7

    iget v3, p2, Lorg/cocos2d/types/ccQuad2;->br_y:F

    aput v3, v1, v2

    .line 425
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/16 v2, 0x8

    invoke-static {v1, v4, p1, v2}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    .line 435
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 436
    return-void
.end method

.method protected putTexCoords(Ljava/nio/FloatBuffer;[FI)V
    .locals 3
    .param p1, "dst"    # Ljava/nio/FloatBuffer;
    .param p2, "quadT"    # [F
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 439
    mul-int/lit8 v0, p3, 0x8

    .line 440
    .local v0, "base":I
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 441
    array-length v1, p2

    invoke-static {p2, v2, p1, v1}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    .line 443
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 444
    return-void
.end method

.method protected putVertex(Ljava/nio/FloatBuffer;I)V
    .locals 3
    .param p1, "src"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 462
    mul-int/lit8 v0, p2, 0xc

    .line 463
    .local v0, "base":I
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 464
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 466
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 467
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 468
    return-void
.end method

.method public putVertex(Ljava/nio/FloatBuffer;Lorg/cocos2d/types/ccQuad3;I)V
    .locals 5
    .param p1, "dst"    # Ljava/nio/FloatBuffer;
    .param p2, "quadV"    # Lorg/cocos2d/types/ccQuad3;
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 483
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    iget v2, p2, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    aput v2, v1, v4

    .line 484
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x1

    iget v3, p2, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    aput v3, v1, v2

    .line 485
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x2

    iget v3, p2, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    aput v3, v1, v2

    .line 486
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x3

    iget v3, p2, Lorg/cocos2d/types/ccQuad3;->br_x:F

    aput v3, v1, v2

    .line 487
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x4

    iget v3, p2, Lorg/cocos2d/types/ccQuad3;->br_y:F

    aput v3, v1, v2

    .line 488
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x5

    iget v3, p2, Lorg/cocos2d/types/ccQuad3;->br_z:F

    aput v3, v1, v2

    .line 489
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x6

    iget v3, p2, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    aput v3, v1, v2

    .line 490
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/4 v2, 0x7

    iget v3, p2, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    aput v3, v1, v2

    .line 491
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/16 v2, 0x8

    iget v3, p2, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    aput v3, v1, v2

    .line 492
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/16 v2, 0x9

    iget v3, p2, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    aput v3, v1, v2

    .line 493
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/16 v2, 0xa

    iget v3, p2, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    aput v3, v1, v2

    .line 494
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/16 v2, 0xb

    iget v3, p2, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    aput v3, v1, v2

    .line 496
    mul-int/lit8 v0, p3, 0xc

    .line 497
    .local v0, "base":I
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 498
    sget-object v1, Lorg/cocos2d/opengl/CCTextureAtlas;->tmpFloatArray:[F

    const/16 v2, 0xc

    invoke-static {v1, v4, p1, v2}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    .line 499
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 500
    return-void
.end method

.method public putVertex(Ljava/nio/FloatBuffer;[FI)V
    .locals 3
    .param p1, "dst"    # Ljava/nio/FloatBuffer;
    .param p2, "quadV"    # [F
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 503
    mul-int/lit8 v0, p3, 0xc

    .line 505
    .local v0, "base":I
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 506
    array-length v1, p2

    invoke-static {p2, v2, p1, v1}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    .line 508
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 509
    return-void
.end method

.method public removeAllQuads()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    .line 321
    return-void
.end method

.method public removeQuad(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 292
    sget-boolean v0, Lorg/cocos2d/opengl/CCTextureAtlas;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "removeQuadAtIndex: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 294
    :cond_1
    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    add-int/lit8 v0, v0, -0x1

    sub-int v5, v0, p1

    .line 297
    .local v5, "remaining":I
    if-lez v5, :cond_2

    .line 299
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->arraycopyTexture(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 302
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->arraycopyVertex(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 305
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->withColorArray_:Z

    if-eqz v0, :cond_2

    .line 306
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->arraycopyColor(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)V

    .line 310
    :cond_2
    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    .line 311
    return-void
.end method

.method public resizeCapacity(I)V
    .locals 10
    .param p1, "newCapacity"    # I

    .prologue
    const/4 v9, 0x0

    .line 329
    iget v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    if-ne p1, v8, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    .line 335
    iput p1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    .line 337
    mul-int/lit8 v8, p1, 0x8

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 338
    .local v2, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 339
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 340
    .local v5, "tmpTexCoords":Ljava/nio/FloatBuffer;
    iget-object v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 341
    iput-object v5, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    .line 342
    iget-object v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 344
    mul-int/lit8 v8, p1, 0xc

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 345
    .local v7, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 346
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 347
    .local v6, "tmpVertexCoords":Ljava/nio/FloatBuffer;
    iget-object v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 348
    iput-object v6, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    .line 349
    iget-object v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 351
    mul-int/lit8 v8, p1, 0x6

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 352
    .local v1, "isb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 353
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    .line 354
    .local v4, "tmpIndices":Ljava/nio/ShortBuffer;
    iget-object v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v4, v8}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 355
    iput-object v4, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    .line 356
    iget-object v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v8, v9}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    invoke-virtual {p0}, Lorg/cocos2d/opengl/CCTextureAtlas;->initIndices()V

    .line 360
    iget-boolean v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->withColorArray_:Z

    if-eqz v8, :cond_0

    .line 361
    mul-int/lit8 v8, p1, 0x10

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 362
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 363
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 364
    .local v3, "tmpColors":Ljava/nio/FloatBuffer;
    iget-object v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 365
    iput-object v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    .line 366
    iget-object v8, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0
.end method

.method public setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 0
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    new-instance v0, Lorg/cocos2d/utils/CCFormatter;

    invoke-direct {v0}, Lorg/cocos2d/utils/CCFormatter;-><init>()V

    .line 134
    const-string v0, "<%s = %08X | getTotalQuads = %i>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lorg/cocos2d/opengl/CCTextureAtlas;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/utils/CCFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateColor([Lorg/cocos2d/types/ccColor4B;I)V
    .locals 2
    .param p1, "color"    # [Lorg/cocos2d/types/ccColor4B;
    .param p2, "index"    # I

    .prologue
    .line 208
    sget-boolean v0, Lorg/cocos2d/opengl/CCTextureAtlas;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    if-lt p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "update color with quad color: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 210
    :cond_1
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    .line 212
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->withColorArray_:Z

    if-nez v0, :cond_2

    .line 213
    invoke-virtual {p0}, Lorg/cocos2d/opengl/CCTextureAtlas;->initColorArray()V

    .line 215
    :cond_2
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->withColorArray_:Z

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->colors:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, p1, p2}, Lorg/cocos2d/opengl/CCTextureAtlas;->putColor(Ljava/nio/FloatBuffer;[Lorg/cocos2d/types/ccColor4B;I)V

    .line 217
    :cond_3
    return-void
.end method

.method public updateQuad(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p1, "texCordBuffer"    # Ljava/nio/FloatBuffer;
    .param p2, "vertexBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "index"    # I

    .prologue
    .line 181
    sget-boolean v0, Lorg/cocos2d/opengl/CCTextureAtlas;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p3, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    if-lt p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "update quad with texture_: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 183
    :cond_1
    add-int/lit8 v0, p3, 0x1

    iget v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    .line 185
    invoke-virtual {p0, p1, p3}, Lorg/cocos2d/opengl/CCTextureAtlas;->putTexCoords(Ljava/nio/FloatBuffer;I)V

    .line 186
    invoke-virtual {p0, p2, p3}, Lorg/cocos2d/opengl/CCTextureAtlas;->putVertex(Ljava/nio/FloatBuffer;I)V

    .line 187
    return-void
.end method

.method public updateQuad(Ljava/nio/FloatBuffer;[FI)V
    .locals 2
    .param p1, "texCordBuffer"    # Ljava/nio/FloatBuffer;
    .param p2, "vertexData"    # [F
    .param p3, "index"    # I

    .prologue
    .line 190
    sget-boolean v0, Lorg/cocos2d/opengl/CCTextureAtlas;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p3, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    if-lt p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "update quad with texture_: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 192
    :cond_1
    add-int/lit8 v0, p3, 0x1

    iget v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    .line 194
    invoke-virtual {p0, p1, p3}, Lorg/cocos2d/opengl/CCTextureAtlas;->putTexCoords(Ljava/nio/FloatBuffer;I)V

    .line 195
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0, p2, p3}, Lorg/cocos2d/opengl/CCTextureAtlas;->putVertex(Ljava/nio/FloatBuffer;[FI)V

    .line 196
    return-void
.end method

.method public updateQuad(Lorg/cocos2d/types/ccQuad2;Lorg/cocos2d/types/ccQuad3;I)V
    .locals 2
    .param p1, "texQuad"    # Lorg/cocos2d/types/ccQuad2;
    .param p2, "vertexQuad"    # Lorg/cocos2d/types/ccQuad3;
    .param p3, "index"    # I

    .prologue
    .line 199
    sget-boolean v0, Lorg/cocos2d/opengl/CCTextureAtlas;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p3, :cond_0

    iget v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity_:I

    if-lt p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "update quad with texture_: Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 201
    :cond_1
    add-int/lit8 v0, p3, 0x1

    iget v1, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->totalQuads_:I

    .line 203
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->textureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0, p1, p3}, Lorg/cocos2d/opengl/CCTextureAtlas;->putTexCoords(Ljava/nio/FloatBuffer;Lorg/cocos2d/types/ccQuad2;I)V

    .line 204
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0, p2, p3}, Lorg/cocos2d/opengl/CCTextureAtlas;->putVertex(Ljava/nio/FloatBuffer;Lorg/cocos2d/types/ccQuad3;I)V

    .line 205
    return-void
.end method

.method public withColorArray()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCTextureAtlas;->withColorArray_:Z

    return v0
.end method
