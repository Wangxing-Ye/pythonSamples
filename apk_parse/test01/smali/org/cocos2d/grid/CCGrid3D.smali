.class public Lorg/cocos2d/grid/CCGrid3D;
.super Lorg/cocos2d/grid/CCGridBase;
.source "CCGrid3D.java"


# instance fields
.field protected indices:Ljava/nio/ShortBuffer;

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field protected originalVertices:Ljava/nio/FloatBuffer;

.field protected texCoordinates:Ljava/nio/FloatBuffer;

.field protected vertices:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lorg/cocos2d/types/ccGridSize;)V
    .locals 0
    .param p1, "gSize"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/cocos2d/grid/CCGridBase;-><init>(Lorg/cocos2d/types/ccGridSize;)V

    .line 28
    invoke-virtual {p0}, Lorg/cocos2d/grid/CCGrid3D;->calculateVertexPoints()V

    .line 29
    return-void
.end method


# virtual methods
.method public blit(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v8, 0x8076

    const/16 v7, 0x1406

    const/4 v6, 0x0

    .line 33
    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->x:I

    iget-object v4, p0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v4, v4, Lorg/cocos2d/types/ccGridSize;->y:I

    mul-int v1, v3, v4

    .line 38
    .local v1, "n":I
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 40
    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 42
    .local v2, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 44
    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 45
    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 51
    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    const/4 v3, 0x3

    iget-object v4, p0, Lorg/cocos2d/grid/CCGrid3D;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v3, v7, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 54
    const/4 v3, 0x2

    iget-object v4, p0, Lorg/cocos2d/grid/CCGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v3, v7, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 55
    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    const/4 v3, 0x4

    mul-int/lit8 v4, v1, 0x6

    const/16 v5, 0x1403

    iget-object v6, p0, Lorg/cocos2d/grid/CCGrid3D;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 60
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 61
    return-void

    .line 47
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 48
    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 49
    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 46
    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public calculateVertexPoints()V
    .locals 34

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsWide()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v24, v0

    .line 66
    .local v24, "width":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsHigh()I

    move-result v31

    move/from16 v0, v31

    int-to-float v12, v0

    .line 71
    .local v12, "height":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->x:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    mul-int/lit8 v31, v31, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->y:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    mul-int v31, v31, v32

    mul-int/lit8 v31, v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v23

    .line 72
    .local v23, "vfb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->x:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    mul-int/lit8 v31, v31, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->y:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    mul-int v31, v31, v32

    mul-int/lit8 v31, v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 77
    .local v18, "ofb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/grid/CCGrid3D;->originalVertices:Ljava/nio/FloatBuffer;

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->x:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    mul-int/lit8 v31, v31, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->y:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    mul-int v31, v31, v32

    mul-int/lit8 v31, v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v22

    .line 82
    .local v22, "tfb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/grid/CCGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->x:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    mul-int/lit8 v31, v31, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->y:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    mul-int v31, v31, v32

    mul-int/lit8 v31, v31, 0x2

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 87
    .local v15, "isb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/grid/CCGrid3D;->indices:Ljava/nio/ShortBuffer;

    .line 91
    const/16 v28, 0x0

    .local v28, "y":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->y:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-lt v0, v1, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    const/16 v25, 0x0

    .local v25, "x":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->x:I

    move/from16 v31, v0

    move/from16 v0, v25

    move/from16 v1, v31

    if-lt v0, v1, :cond_2

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->indices:Ljava/nio/ShortBuffer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->originalVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->originalVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    return-void

    .line 92
    .end local v25    # "x":I
    :cond_0
    const/16 v25, 0x0

    .restart local v25    # "x":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->x:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v25

    move/from16 v1, v31

    if-lt v0, v1, :cond_1

    .line 91
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 93
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->x:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    mul-int v31, v31, v28

    add-int v14, v31, v25

    .line 95
    .local v14, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    mul-int/lit8 v32, v14, 0x3

    add-int/lit8 v32, v32, 0x0

    const/high16 v33, -0x40800000    # -1.0f

    invoke-virtual/range {v31 .. v33}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    mul-int/lit8 v32, v14, 0x3

    add-int/lit8 v32, v32, 0x1

    const/high16 v33, -0x40800000    # -1.0f

    invoke-virtual/range {v31 .. v33}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    mul-int/lit8 v32, v14, 0x3

    add-int/lit8 v32, v32, 0x2

    const/high16 v33, -0x40800000    # -1.0f

    invoke-virtual/range {v31 .. v33}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    mul-int/lit8 v32, v14, 0x2

    add-int/lit8 v32, v32, 0x0

    const/high16 v33, -0x40800000    # -1.0f

    invoke-virtual/range {v31 .. v33}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    mul-int/lit8 v32, v14, 0x2

    add-int/lit8 v32, v32, 0x1

    const/high16 v33, -0x40800000    # -1.0f

    invoke-virtual/range {v31 .. v33}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 92
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 105
    .end local v14    # "idx":I
    :cond_2
    const/16 v28, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->y:I

    move/from16 v31, v0

    move/from16 v0, v28

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    .line 104
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    .line 106
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->x:I

    move/from16 v31, v0

    mul-int v31, v31, v28

    add-int v14, v31, v25

    .line 108
    .restart local v14    # "idx":I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->step_:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v32, v0

    mul-float v26, v31, v32

    .line 109
    .local v26, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->step_:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v31, v0

    add-float v27, v26, v31

    .line 110
    .local v27, "x2":F
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->step_:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v32, v0

    mul-float v29, v31, v32

    .line 111
    .local v29, "y1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->step_:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v31, v0

    add-float v30, v29, v31

    .line 113
    .local v30, "y2":F
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/grid/CCGrid3D;->getGridHeight()I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    mul-int v31, v31, v25

    add-int v31, v31, v28

    move/from16 v0, v31

    int-to-short v4, v0

    .line 114
    .local v4, "a":S
    add-int/lit8 v31, v25, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/grid/CCGrid3D;->getGridHeight()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    mul-int v31, v31, v32

    add-int v31, v31, v28

    move/from16 v0, v31

    int-to-short v5, v0

    .line 115
    .local v5, "b":S
    add-int/lit8 v31, v25, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/grid/CCGrid3D;->getGridHeight()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    mul-int v31, v31, v32

    add-int/lit8 v32, v28, 0x1

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-short v6, v0

    .line 116
    .local v6, "c":S
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/grid/CCGrid3D;->getGridHeight()I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    mul-int v31, v31, v25

    add-int/lit8 v32, v28, 0x1

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-short v7, v0

    .line 118
    .local v7, "d":S
    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [S

    move-object/from16 v19, v0

    const/16 v31, 0x0

    aput-short v4, v19, v31

    const/16 v31, 0x1

    aput-short v5, v19, v31

    const/16 v31, 0x2

    aput-short v7, v19, v31

    const/16 v31, 0x3

    aput-short v5, v19, v31

    const/16 v31, 0x4

    aput-short v6, v19, v31

    const/16 v31, 0x5

    aput-short v7, v19, v31

    .line 120
    .local v19, "tempidx":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->indices:Ljava/nio/ShortBuffer;

    move-object/from16 v31, v0

    mul-int/lit8 v32, v14, 0x6

    invoke-virtual/range {v31 .. v32}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->indices:Ljava/nio/ShortBuffer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x6

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 123
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v31, 0x0

    mul-int/lit8 v32, v4, 0x3

    aput v32, v16, v31

    const/16 v31, 0x1

    mul-int/lit8 v32, v5, 0x3

    aput v32, v16, v31

    const/16 v31, 0x2

    mul-int/lit8 v32, v6, 0x3

    aput v32, v16, v31

    const/16 v31, 0x3

    mul-int/lit8 v32, v7, 0x3

    aput v32, v16, v31

    .line 124
    .local v16, "l1":[I
    new-instance v8, Lorg/cocos2d/types/CCVertex3D;

    const/16 v31, 0x0

    move/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-direct {v8, v0, v1, v2}, Lorg/cocos2d/types/CCVertex3D;-><init>(FFF)V

    .line 125
    .local v8, "e":Lorg/cocos2d/types/CCVertex3D;
    new-instance v9, Lorg/cocos2d/types/CCVertex3D;

    const/16 v31, 0x0

    move/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-direct {v9, v0, v1, v2}, Lorg/cocos2d/types/CCVertex3D;-><init>(FFF)V

    .line 126
    .local v9, "f":Lorg/cocos2d/types/CCVertex3D;
    new-instance v10, Lorg/cocos2d/types/CCVertex3D;

    const/16 v31, 0x0

    move/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v10, v0, v1, v2}, Lorg/cocos2d/types/CCVertex3D;-><init>(FFF)V

    .line 127
    .local v10, "g":Lorg/cocos2d/types/CCVertex3D;
    new-instance v11, Lorg/cocos2d/types/CCVertex3D;

    const/16 v31, 0x0

    move/from16 v0, v26

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v11, v0, v1, v2}, Lorg/cocos2d/types/CCVertex3D;-><init>(FFF)V

    .line 129
    .local v11, "h":Lorg/cocos2d/types/CCVertex3D;
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Lorg/cocos2d/types/CCVertex3D;

    move-object/from16 v17, v0

    const/16 v31, 0x0

    aput-object v8, v17, v31

    const/16 v31, 0x1

    aput-object v9, v17, v31

    const/16 v31, 0x2

    aput-object v10, v17, v31

    const/16 v31, 0x3

    aput-object v11, v17, v31

    .line 131
    .local v17, "l2":[Lorg/cocos2d/types/CCVertex3D;
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v31, 0x0

    mul-int/lit8 v32, v4, 0x2

    aput v32, v20, v31

    const/16 v31, 0x1

    mul-int/lit8 v32, v5, 0x2

    aput v32, v20, v31

    const/16 v31, 0x2

    mul-int/lit8 v32, v6, 0x2

    aput v32, v20, v31

    const/16 v31, 0x3

    mul-int/lit8 v32, v7, 0x2

    aput v32, v20, v31

    .line 132
    .local v20, "tex1":[I
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Lorg/cocos2d/types/CGPoint;

    move-object/from16 v21, v0

    const/16 v31, 0x0

    move/from16 v0, v26

    move/from16 v1, v29

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v32

    aput-object v32, v21, v31

    const/16 v31, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v32

    aput-object v32, v21, v31

    const/16 v31, 0x2

    move/from16 v0, v27

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v32

    aput-object v32, v21, v31

    const/16 v31, 0x3

    move/from16 v0, v26

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v32

    aput-object v32, v21, v31

    .line 134
    .local v21, "tex2":[Lorg/cocos2d/types/CGPoint;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    const/16 v31, 0x4

    move/from16 v0, v31

    if-lt v13, v0, :cond_4

    .line 105
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3

    .line 135
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    aget v32, v16, v13

    add-int/lit8 v32, v32, 0x0

    aget-object v33, v17, v13

    move-object/from16 v0, v33

    iget v0, v0, Lorg/cocos2d/types/CCVertex3D;->x:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    aget v32, v16, v13

    add-int/lit8 v32, v32, 0x1

    aget-object v33, v17, v13

    move-object/from16 v0, v33

    iget v0, v0, Lorg/cocos2d/types/CCVertex3D;->y:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    aget v32, v16, v13

    add-int/lit8 v32, v32, 0x2

    aget-object v33, v17, v13

    move-object/from16 v0, v33

    iget v0, v0, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    aget v32, v20, v13

    add-int/lit8 v32, v32, 0x0

    aget-object v33, v21, v13

    move-object/from16 v0, v33

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v33, v0

    div-float v33, v33, v24

    invoke-virtual/range {v31 .. v33}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/grid/CCGrid3D;->texCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    aget v32, v20, v13

    add-int/lit8 v32, v32, 0x1

    aget-object v33, v21, v13

    move-object/from16 v0, v33

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v33, v0

    div-float v33, v33, v12

    invoke-virtual/range {v31 .. v33}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 134
    add-int/lit8 v13, v13, 0x1

    goto :goto_4
.end method

.method public originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;
    .locals 6
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 162
    iget v2, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget v3, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x3

    .line 163
    .local v0, "index":I
    new-instance v1, Lorg/cocos2d/types/CCVertex3D;

    iget-object v2, p0, Lorg/cocos2d/grid/CCGrid3D;->originalVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->originalVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iget-object v4, p0, Lorg/cocos2d/grid/CCGrid3D;->originalVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/cocos2d/types/CCVertex3D;-><init>(FFF)V

    .line 165
    .local v1, "vert":Lorg/cocos2d/types/CCVertex3D;
    return-object v1
.end method

.method public reuse(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 178
    iget v0, p0, Lorg/cocos2d/grid/CCGrid3D;->reuseGrid_:I

    if-lez v0, :cond_0

    .line 180
    iget v0, p0, Lorg/cocos2d/grid/CCGrid3D;->reuseGrid_:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/cocos2d/grid/CCGrid3D;->reuseGrid_:I

    .line 183
    :cond_0
    return-void
.end method

.method public setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V
    .locals 4
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "vertex"    # Lorg/cocos2d/types/CCVertex3D;

    .prologue
    .line 170
    iget v1, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    iget-object v2, p0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v2, v2, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iget v2, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x3

    .line 171
    .local v0, "index":I
    iget-object v1, p0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x0

    iget v3, p2, Lorg/cocos2d/types/CCVertex3D;->x:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 172
    iget-object v1, p0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x1

    iget v3, p2, Lorg/cocos2d/types/CCVertex3D;->y:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 173
    iget-object v1, p0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x2

    iget v3, p2, Lorg/cocos2d/types/CCVertex3D;->z:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 174
    return-void
.end method

.method public vertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;
    .locals 6
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 154
    iget v2, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget v3, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x3

    .line 155
    .local v0, "index":I
    new-instance v1, Lorg/cocos2d/types/CCVertex3D;

    iget-object v2, p0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iget-object v4, p0, Lorg/cocos2d/grid/CCGrid3D;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/cocos2d/types/CCVertex3D;-><init>(FFF)V

    .line 157
    .local v1, "vert":Lorg/cocos2d/types/CCVertex3D;
    return-object v1
.end method
