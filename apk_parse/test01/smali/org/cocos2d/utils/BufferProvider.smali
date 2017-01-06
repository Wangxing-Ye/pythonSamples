.class public Lorg/cocos2d/utils/BufferProvider;
.super Ljava/lang/Object;
.source "BufferProvider.java"


# static fields
.field private static final ALLOCATION_SIZE:I = 0x100000

.field private static global_synced:Lorg/cocos2d/utils/BufferProvider;


# instance fields
.field private currentBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/utils/BufferProvider;

    invoke-direct {v0}, Lorg/cocos2d/utils/BufferProvider;-><init>()V

    sput-object v0, Lorg/cocos2d/utils/BufferProvider;->global_synced:Lorg/cocos2d/utils/BufferProvider;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/utils/BufferProvider;->currentBuffer:Ljava/nio/ByteBuffer;

    .line 14
    return-void
.end method

.method public static allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 36
    sget-object v1, Lorg/cocos2d/utils/BufferProvider;->global_synced:Lorg/cocos2d/utils/BufferProvider;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lorg/cocos2d/utils/BufferProvider;->global_synced:Lorg/cocos2d/utils/BufferProvider;

    invoke-virtual {v0, p0}, Lorg/cocos2d/utils/BufferProvider;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static bufferFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 92
    .local v5, "tmpOut":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 93
    .local v1, "buf":[B
    const/4 v4, 0x0

    .line 95
    .local v4, "len":I
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "fis":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 98
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 110
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    .local v0, "bb":Ljava/nio/ByteBuffer;
    return-object v0

    .line 100
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 102
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 107
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "arrayElementCount"    # I

    .prologue
    .line 77
    invoke-static {p0}, Lorg/cocos2d/utils/BufferProvider;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    .local v0, "temp":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 80
    return-object v0
.end method

.method public static createFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "arrayElementCount"    # I

    .prologue
    .line 70
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Lorg/cocos2d/utils/BufferProvider;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    .local v0, "temp":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static createShortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "arrayElementCount"    # I

    .prologue
    .line 84
    mul-int/lit8 v1, p0, 0x2

    invoke-static {v1}, Lorg/cocos2d/utils/BufferProvider;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "temp":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static drawQuads(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 5
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "fbVert"    # Ljava/nio/FloatBuffer;
    .param p2, "fbCoord"    # Ljava/nio/FloatBuffer;

    .prologue
    const v4, 0x8078

    const v3, 0x8074

    const/16 v1, 0x1406

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    invoke-interface {p0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 46
    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 47
    const/4 v0, 0x3

    invoke-interface {p0, v0, v1, v2, p1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 48
    const/4 v0, 0x2

    invoke-interface {p0, v0, v1, v2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 49
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p0, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 50
    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 51
    invoke-interface {p0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 53
    return-void
.end method

.method public static fillFloatBuffer(Ljava/nio/FloatBuffer;[F)V
    .locals 1
    .param p0, "fb"    # Ljava/nio/FloatBuffer;
    .param p1, "arr"    # [F

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 58
    return-void
.end method

.method public static makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "arr"    # [F

    .prologue
    .line 61
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lorg/cocos2d/utils/BufferProvider;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 64
    .local v1, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 65
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    return-object v1
.end method


# virtual methods
.method public allocate(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/high16 v2, 0x100000

    .line 21
    if-lt p1, v2, :cond_0

    .line 22
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 24
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/utils/BufferProvider;->currentBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/utils/BufferProvider;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 25
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/BufferProvider;->currentBuffer:Ljava/nio/ByteBuffer;

    .line 27
    :cond_2
    iget-object v1, p0, Lorg/cocos2d/utils/BufferProvider;->currentBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/cocos2d/utils/BufferProvider;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 28
    iget-object v1, p0, Lorg/cocos2d/utils/BufferProvider;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    .local v0, "result":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lorg/cocos2d/utils/BufferProvider;->currentBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/cocos2d/utils/BufferProvider;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    iget-object v1, p0, Lorg/cocos2d/utils/BufferProvider;->currentBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/cocos2d/utils/BufferProvider;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method
