.class public Lorg/cocos2d/grid/CCTiledGrid3D;
.super Lorg/cocos2d/grid/CCGridBase;
.source "CCTiledGrid3D.java"


# instance fields
.field indices:Ljava/nio/ShortBuffer;

.field originalVertices:Ljava/nio/FloatBuffer;

.field texCoordinates:Ljava/nio/FloatBuffer;

.field vertices:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lorg/cocos2d/types/ccGridSize;)V
    .locals 0
    .param p1, "gSize"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/cocos2d/grid/CCGridBase;-><init>(Lorg/cocos2d/types/ccGridSize;)V

    .line 32
    invoke-virtual {p0}, Lorg/cocos2d/grid/CCTiledGrid3D;->calculateVertexPoints()V

    .line 33
    return-void
.end method

.method public static make(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/grid/CCTiledGrid3D;
    .locals 1
    .param p0, "gSize"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 27
    new-instance v0, Lorg/cocos2d/grid/CCTiledGrid3D;

    invoke-direct {v0, p0}, Lorg/cocos2d/grid/CCTiledGrid3D;-><init>(Lorg/cocos2d/types/ccGridSize;)V

    return-object v0
.end method


# virtual methods
.method public blit(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v5, 0x8076

    const/16 v4, 0x1406

    const/4 v3, 0x0

    .line 37
    iget-object v1, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v1, v1, Lorg/cocos2d/types/ccGridSize;->x:I

    iget-object v2, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v2, v2, Lorg/cocos2d/types/ccGridSize;->y:I

    mul-int v0, v1, v2

    .line 42
    .local v0, "n":I
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 44
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 45
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 46
    const/4 v1, 0x4

    mul-int/lit8 v2, v0, 0x6

    const/16 v3, 0x1403

    iget-object v4, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 48
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 49
    return-void
.end method

.method public calculateVertexPoints()V
    .locals 17

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v14}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsWide()I

    move-result v14

    int-to-float v7, v14

    .line 129
    .local v7, "width":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v14}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsHigh()I

    move-result v14

    int-to-float v1, v14

    .line 131
    .local v1, "height":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v14, v14, Lorg/cocos2d/types/ccGridSize;->x:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v15, v15, Lorg/cocos2d/types/ccGridSize;->y:I

    mul-int v3, v14, v15

    .line 133
    .local v3, "numQuads":I
    mul-int/lit8 v14, v3, 0xc

    mul-int/lit8 v14, v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 134
    .local v6, "vfb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    .line 137
    mul-int/lit8 v14, v3, 0xc

    mul-int/lit8 v14, v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 138
    .local v4, "ofb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->originalVertices:Ljava/nio/FloatBuffer;

    .line 141
    mul-int/lit8 v14, v3, 0x8

    mul-int/lit8 v14, v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 142
    .local v5, "tfb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    .line 145
    mul-int/lit8 v14, v3, 0x6

    mul-int/lit8 v14, v14, 0x2

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 146
    .local v2, "isb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->indices:Ljava/nio/ShortBuffer;

    .line 149
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v14, v14, Lorg/cocos2d/types/ccGridSize;->x:I

    if-lt v8, v14, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    const/4 v8, 0x0

    :goto_1
    if-lt v8, v3, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->originalVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->originalVertices:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    return-void

    .line 150
    :cond_0
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v14, v14, Lorg/cocos2d/types/ccGridSize;->y:I

    if-lt v11, v14, :cond_1

    .line 149
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 151
    :cond_1
    int-to-float v14, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->step_:Lorg/cocos2d/types/CGPoint;

    iget v15, v15, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float v9, v14, v15

    .line 152
    .local v9, "x1":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->step_:Lorg/cocos2d/types/CGPoint;

    iget v14, v14, Lorg/cocos2d/types/CGPoint;->x:F

    add-float v10, v9, v14

    .line 153
    .local v10, "x2":F
    int-to-float v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->step_:Lorg/cocos2d/types/CGPoint;

    iget v15, v15, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float v12, v14, v15

    .line 154
    .local v12, "y1":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->step_:Lorg/cocos2d/types/CGPoint;

    iget v14, v14, Lorg/cocos2d/types/CGPoint;->y:F

    add-float v13, v12, v14

    .line 156
    .local v13, "y2":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    div-float v15, v9, v7

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    div-float v15, v12, v1

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    div-float v15, v10, v7

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    div-float v15, v12, v1

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    div-float v15, v9, v7

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    div-float v15, v13, v1

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    div-float v15, v10, v7

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    div-float v15, v13, v1

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 150
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 183
    .end local v9    # "x1":F
    .end local v10    # "x2":F
    .end local v11    # "y":I
    .end local v12    # "y1":F
    .end local v13    # "y2":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v15, v8, 0x6

    add-int/lit8 v15, v15, 0x0

    mul-int/lit8 v16, v8, 0x4

    add-int/lit8 v16, v16, 0x0

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v15, v8, 0x6

    add-int/lit8 v15, v15, 0x1

    mul-int/lit8 v16, v8, 0x4

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v15, v8, 0x6

    add-int/lit8 v15, v15, 0x2

    mul-int/lit8 v16, v8, 0x4

    add-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v15, v8, 0x6

    add-int/lit8 v15, v15, 0x3

    mul-int/lit8 v16, v8, 0x4

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v15, v8, 0x6

    add-int/lit8 v15, v15, 0x4

    mul-int/lit8 v16, v8, 0x4

    add-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/grid/CCTiledGrid3D;->indices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v15, v8, 0x6

    add-int/lit8 v15, v15, 0x5

    mul-int/lit8 v16, v8, 0x4

    add-int/lit8 v16, v16, 0x3

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 182
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method public originalTile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;
    .locals 6
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    const/16 v5, 0xc

    .line 208
    iget-object v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    iget v4, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    mul-int/2addr v3, v4

    iget v4, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/2addr v3, v4

    mul-int/lit8 v1, v3, 0xc

    .line 210
    .local v1, "idx":I
    new-array v2, v5, [F

    .line 211
    .local v2, "vertArray":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 215
    new-instance v3, Lorg/cocos2d/types/ccQuad3;

    invoke-direct {v3, v2}, Lorg/cocos2d/types/ccQuad3;-><init>([F)V

    return-object v3

    .line 212
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->originalVertices:Ljava/nio/FloatBuffer;

    add-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v2, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reuse(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 232
    iget v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->reuseGrid_:I

    if-lez v3, :cond_0

    .line 233
    iget-object v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->x:I

    iget-object v4, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v4, v4, Lorg/cocos2d/types/ccGridSize;->y:I

    mul-int v1, v3, v4

    .line 234
    .local v1, "numQuads":I
    mul-int/lit8 v2, v1, 0xc

    .line 235
    .local v2, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 239
    iget v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->reuseGrid_:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->reuseGrid_:I

    .line 241
    .end local v0    # "i":I
    .end local v1    # "numQuads":I
    .end local v2    # "total":I
    :cond_0
    return-void

    .line 236
    .restart local v0    # "i":I
    .restart local v1    # "numQuads":I
    .restart local v2    # "total":I
    :cond_1
    iget-object v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->originalVertices:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTile(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccQuad3;)V
    .locals 6
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "coords"    # Lorg/cocos2d/types/ccQuad3;

    .prologue
    .line 198
    iget-object v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    iget v4, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    mul-int/2addr v3, v4

    iget v4, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v1, v3, 0x3

    .line 199
    .local v1, "idx":I
    invoke-virtual {p2}, Lorg/cocos2d/types/ccQuad3;->toFloatArray()[F

    move-result-object v2

    .line 200
    .local v2, "vertArray":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    .line 203
    iget-object v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    return-void

    .line 201
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    add-int v4, v1, v0

    aget v5, v2, v0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public tile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccQuad3;
    .locals 6
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    const/16 v5, 0xc

    .line 220
    iget-object v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    iget v4, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    mul-int/2addr v3, v4

    iget v4, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v1, v3, 0x3

    .line 222
    .local v1, "idx":I
    new-array v2, v5, [F

    .line 223
    .local v2, "vertArray":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 227
    new-instance v3, Lorg/cocos2d/types/ccQuad3;

    invoke-direct {v3, v2}, Lorg/cocos2d/types/ccQuad3;-><init>([F)V

    return-object v3

    .line 224
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/grid/CCTiledGrid3D;->vertices:Ljava/nio/FloatBuffer;

    add-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v2, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
