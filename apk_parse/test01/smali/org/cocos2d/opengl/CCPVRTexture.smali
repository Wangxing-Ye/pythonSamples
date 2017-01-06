.class public Lorg/cocos2d/opengl/CCPVRTexture;
.super Ljava/lang/Object;
.source "CCPVRTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;
    }
.end annotation


# static fields
.field private static final PVR_TEXTURE_FLAG_TYPE_MASK:I = 0xff

.field private static final gPVRTexIdentifier:[C

.field private static final kPVRTextureFlagTypePVRTC_2:I = 0x18

.field private static final kPVRTextureFlagTypePVRTC_4:I = 0x19


# instance fields
.field _hasAlpha:Z

.field _height:I

.field _imageData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field _internalFormat:I

.field _name:[I

.field _retainName:Z

.field _width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "PVR!"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/cocos2d/opengl/CCPVRTexture;->gPVRTexIdentifier:[C

    .line 15
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    invoke-static {p1}, Lorg/cocos2d/utils/BufferProvider;->bufferFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 266
    .local v0, "data":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_imageData:Ljava/util/ArrayList;

    .line 268
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_name:[I

    .line 269
    iput v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_height:I

    iput v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_width:I

    .line 270
    const v1, 0x86a3

    iput v1, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_internalFormat:I

    .line 271
    iput-boolean v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_hasAlpha:Z

    .line 273
    iput-boolean v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_retainName:Z

    .line 275
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/cocos2d/opengl/CCPVRTexture;->unpackPVRData(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/opengl/CCPVRTexture;->createGLTexture()Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    :cond_0
    const-string v1, "CCPVRTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t create texture from path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_1
    return-void
.end method

.method public static pvrTexture(Ljava/lang/String;)Lorg/cocos2d/opengl/CCPVRTexture;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v0, Lorg/cocos2d/opengl/CCPVRTexture;

    invoke-direct {v0, p0}, Lorg/cocos2d/opengl/CCPVRTexture;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static pvrTexture(Ljava/net/URL;)Lorg/cocos2d/opengl/CCPVRTexture;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 285
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/opengl/CCPVRTexture;->pvrTexture(Ljava/lang/String;)Lorg/cocos2d/opengl/CCPVRTexture;

    move-result-object v0

    goto :goto_0
.end method

.method private unpackPVRData(Ljava/nio/ByteBuffer;)Z
    .locals 19
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 133
    const/4 v14, 0x0

    .line 134
    .local v14, "success":Z
    const/4 v10, 0x0

    .line 136
    .local v10, "header":Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;
    const/4 v5, 0x0

    .local v5, "dataLength":I
    const/4 v6, 0x0

    .local v6, "dataOffset":I
    const/4 v7, 0x0

    .line 137
    .local v7, "dataSize":I
    const/4 v3, 0x0

    .local v3, "blockSize":I
    const/16 v16, 0x0

    .local v16, "widthBlocks":I
    const/4 v12, 0x0

    .line 138
    .local v12, "heightBlocks":I
    const/4 v15, 0x0

    .local v15, "width":I
    const/4 v11, 0x0

    .local v11, "height":I
    const/4 v4, 0x4

    .line 141
    .local v4, "bpp":I
    new-instance v10, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;

    .end local v10    # "header":Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 142
    .restart local v10    # "header":Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 143
    sget-object v17, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 145
    invoke-virtual {v10}, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->pvrTag()I

    move-result v13

    .line 147
    .local v13, "pvrTag":I
    sget-object v17, Lorg/cocos2d/opengl/CCPVRTexture;->gPVRTexIdentifier:[C

    const/16 v18, 0x0

    aget-char v17, v17, v18

    shr-int/lit8 v18, v13, 0x0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 148
    sget-object v17, Lorg/cocos2d/opengl/CCPVRTexture;->gPVRTexIdentifier:[C

    const/16 v18, 0x1

    aget-char v17, v17, v18

    shr-int/lit8 v18, v13, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 149
    sget-object v17, Lorg/cocos2d/opengl/CCPVRTexture;->gPVRTexIdentifier:[C

    const/16 v18, 0x2

    aget-char v17, v17, v18

    shr-int/lit8 v18, v13, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 150
    sget-object v17, Lorg/cocos2d/opengl/CCPVRTexture;->gPVRTexIdentifier:[C

    const/16 v18, 0x3

    aget-char v17, v17, v18

    shr-int/lit8 v18, v13, 0x18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 152
    :cond_0
    const/16 v17, 0x0

    .line 222
    :goto_0
    return v17

    .line 156
    :cond_1
    invoke-virtual {v10}, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->flags()I

    move-result v8

    .line 157
    .local v8, "flags":I
    and-int/lit16 v9, v8, 0xff

    .line 159
    .local v9, "formatFlags":I
    const/16 v17, 0x19

    move/from16 v0, v17

    if-eq v9, v0, :cond_2

    const/16 v17, 0x18

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    .line 161
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCPVRTexture;->_imageData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 163
    const/16 v17, 0x19

    move/from16 v0, v17

    if-ne v9, v0, :cond_5

    .line 164
    const v17, 0x86a3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2d/opengl/CCPVRTexture;->_internalFormat:I

    .line 169
    :cond_3
    :goto_1
    invoke-virtual {v10}, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->width()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lorg/cocos2d/opengl/CCPVRTexture;->_width:I

    .line 171
    invoke-virtual {v10}, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->height()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lorg/cocos2d/opengl/CCPVRTexture;->_height:I

    .line 173
    invoke-virtual {v10}, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bitmaskAlpha()I

    move-result v17

    if-eqz v17, :cond_6

    .line 174
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/opengl/CCPVRTexture;->_hasAlpha:Z

    .line 178
    :goto_2
    invoke-virtual {v10}, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->dataLength()I

    move-result v5

    .line 183
    :goto_3
    if-lt v6, v5, :cond_7

    .line 219
    const/4 v14, 0x1

    :cond_4
    move/from16 v17, v14

    .line 222
    goto :goto_0

    .line 165
    :cond_5
    const/16 v17, 0x18

    move/from16 v0, v17

    if-ne v9, v0, :cond_3

    .line 166
    const v17, 0x86a3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2d/opengl/CCPVRTexture;->_internalFormat:I

    goto :goto_1

    .line 176
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/opengl/CCPVRTexture;->_hasAlpha:Z

    goto :goto_2

    .line 185
    :cond_7
    const/16 v17, 0x19

    move/from16 v0, v17

    if-ne v9, v0, :cond_a

    .line 187
    const/16 v3, 0x10

    .line 188
    div-int/lit8 v16, v15, 0x4

    .line 189
    div-int/lit8 v12, v11, 0x4

    .line 190
    const/4 v4, 0x4

    .line 201
    :goto_4
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 202
    const/16 v16, 0x2

    .line 203
    :cond_8
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v12, v0, :cond_9

    .line 204
    const/4 v12, 0x2

    .line 206
    :cond_9
    mul-int v17, v16, v12

    mul-int v18, v3, v4

    div-int/lit8 v18, v18, 0x8

    mul-int v7, v17, v18

    .line 207
    invoke-static {v7}, Lorg/cocos2d/utils/BufferProvider;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 208
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    add-int/lit8 v18, v6, 0x34

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCPVRTexture;->_imageData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/2addr v6, v7

    .line 215
    shr-int/lit8 v17, v15, 0x1

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 216
    shr-int/lit8 v17, v11, 0x1

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_3

    .line 194
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    :cond_a
    const/16 v3, 0x20

    .line 195
    div-int/lit8 v16, v15, 0x8

    .line 196
    div-int/lit8 v12, v11, 0x4

    .line 197
    const/4 v4, 0x2

    goto :goto_4
.end method


# virtual methods
.method public createGLTexture()Z
    .locals 12

    .prologue
    const/16 v1, 0xde1

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 227
    iget v4, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_width:I

    .line 228
    .local v4, "width":I
    iget v5, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_height:I

    .line 232
    .local v5, "height":I
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 233
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL10;
    iget-object v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_imageData:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_imageData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 234
    iget-object v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_name:[I

    if-eqz v3, :cond_0

    .line 235
    iget-object v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_name:[I

    invoke-interface {v0, v11, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 237
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_name:[I

    invoke-interface {v0, v11, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 238
    iget-object v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_name:[I

    aget v3, v3, v6

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 241
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_imageData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 256
    iget-object v1, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_imageData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v6, v11

    .line 258
    :goto_1
    return v6

    .line 242
    :cond_2
    iget-object v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_imageData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/Buffer;

    .line 243
    .local v8, "data":Ljava/nio/Buffer;
    iget v3, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_internalFormat:I

    invoke-virtual {v8}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 245
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v9

    .line 246
    .local v9, "err":I
    if-eqz v9, :cond_3

    .line 247
    const-string v1, "Error uploading compressed texture level: %d. glError: 0x%04X"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v11

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 248
    .local v10, "str":Ljava/lang/String;
    const-string v1, "CCPVRTexture"

    invoke-static {v1, v10}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 252
    .end local v10    # "str":Ljava/lang/String;
    :cond_3
    shr-int/lit8 v3, v4, 0x1

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 253
    shr-int/lit8 v3, v5, 0x1

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_imageData:Ljava/util/ArrayList;

    .line 299
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_name:[I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_retainName:Z

    if-nez v0, :cond_0

    .line 300
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_name:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 303
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 304
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_height:I

    return v0
.end method

.method public getInternalFormat()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_internalFormat:I

    return v0
.end method

.method public getRetainName()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_retainName:Z

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_width:I

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_hasAlpha:Z

    return v0
.end method

.method public setHasAlpha(Z)V
    .locals 0
    .param p1, "hasAlpha"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_hasAlpha:Z

    .line 119
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 102
    iput p1, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_height:I

    .line 103
    return-void
.end method

.method public setInternalFormat(I)V
    .locals 0
    .param p1, "internalFormat"    # I

    .prologue
    .line 110
    iput p1, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_internalFormat:I

    .line 111
    return-void
.end method

.method public setRatainName(Z)V
    .locals 0
    .param p1, "retainName"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_retainName:Z

    .line 128
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/cocos2d/opengl/CCPVRTexture;->_width:I

    .line 95
    return-void
.end method
