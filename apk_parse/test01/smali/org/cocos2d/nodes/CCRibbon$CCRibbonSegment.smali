.class public Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
.super Ljava/lang/Object;
.source "CCRibbon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/nodes/CCRibbon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CCRibbonSegment"
.end annotation


# static fields
.field private static final COUNT:I = 0x32


# instance fields
.field begin:I

.field colors:[F

.field coords:[F

.field creationTime:[F

.field end:I

.field finished:Z

.field mColors:Ljava/nio/FloatBuffer;

.field mCoordinates:Ljava/nio/FloatBuffer;

.field mVertices:Ljava/nio/FloatBuffer;

.field verts:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v3, 0x12c

    new-array v3, v3, [F

    iput-object v3, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    .line 39
    const/16 v3, 0xc8

    new-array v3, v3, [F

    iput-object v3, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    .line 40
    const/16 v3, 0x190

    new-array v3, v3, [F

    iput-object v3, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    .line 41
    const/16 v3, 0x32

    new-array v3, v3, [F

    iput-object v3, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->creationTime:[F

    .line 51
    const/16 v3, 0x4b0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 52
    .local v2, "vfb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mVertices:Ljava/nio/FloatBuffer;

    .line 55
    const/16 v3, 0x320

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 56
    .local v1, "tfb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mCoordinates:Ljava/nio/FloatBuffer;

    .line 59
    const/16 v3, 0x640

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mColors:Ljava/nio/FloatBuffer;

    .line 63
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->reset()V

    .line 64
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;FFLorg/cocos2d/types/ccColor4B;)V
    .locals 14
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "curTime"    # F
    .param p3, "fadeTime"    # F
    .param p4, "color"    # Lorg/cocos2d/types/ccColor4B;

    .prologue
    .line 73
    move-object/from16 v0, p4

    iget v8, v0, Lorg/cocos2d/types/ccColor4B;->r:I

    .line 74
    .local v8, "r":I
    move-object/from16 v0, p4

    iget v4, v0, Lorg/cocos2d/types/ccColor4B;->g:I

    .line 75
    .local v4, "g":I
    move-object/from16 v0, p4

    iget v3, v0, Lorg/cocos2d/types/ccColor4B;->b:I

    .line 76
    .local v3, "b":I
    move-object/from16 v0, p4

    iget v1, v0, Lorg/cocos2d/types/ccColor4B;->a:I

    .line 78
    .local v1, "a":I
    iget v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    const/16 v10, 0x32

    if-ge v9, v10, :cond_3

    .line 81
    const/4 v9, 0x0

    cmpl-float v9, p2, v9

    if-nez v9, :cond_0

    .line 83
    int-to-float v9, v8

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    int-to-float v10, v4

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    int-to-float v11, v3

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    int-to-float v12, v1

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v12, v13

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 113
    :goto_0
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v10, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    iget v11, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    mul-int/lit8 v11, v11, 0x3

    mul-int/lit8 v11, v11, 0x2

    iget v12, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    iget v13, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    sub-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x3

    mul-int/lit8 v12, v12, 0x2

    invoke-virtual {v9, v10, v11, v12}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 114
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mVertices:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 118
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mCoordinates:Ljava/nio/FloatBuffer;

    iget-object v10, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    iget v11, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    mul-int/lit8 v11, v11, 0x2

    mul-int/lit8 v11, v11, 0x2

    iget v12, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    iget v13, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    sub-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x2

    mul-int/lit8 v12, v12, 0x2

    invoke-virtual {v9, v10, v11, v12}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 119
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mCoordinates:Ljava/nio/FloatBuffer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mCoordinates:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 122
    const/4 v9, 0x5

    const/4 v10, 0x0

    iget v11, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    iget v12, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    sub-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x2

    invoke-interface {p1, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 125
    :goto_1
    return-void

    .line 86
    :cond_0
    const v9, 0x8076

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 87
    iget v5, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    .line 88
    .local v5, "i":I
    :goto_2
    iget v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    if-lt v5, v9, :cond_1

    .line 107
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mColors:Ljava/nio/FloatBuffer;

    iget-object v10, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    iget v11, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    mul-int/lit8 v11, v11, 0x4

    mul-int/lit8 v11, v11, 0x2

    iget v12, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    iget v13, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    sub-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x4

    mul-int/lit8 v12, v12, 0x2

    invoke-virtual {v9, v10, v11, v12}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 108
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mColors:Ljava/nio/FloatBuffer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    const/4 v9, 0x4

    const/16 v10, 0x1406

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->mColors:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    goto/16 :goto_0

    .line 89
    :cond_1
    mul-int/lit8 v6, v5, 0x8

    .line 90
    .local v6, "idx":I
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    add-int/lit8 v10, v6, 0x0

    int-to-float v11, v8

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    aput v11, v9, v10

    .line 91
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    add-int/lit8 v10, v6, 0x1

    int-to-float v11, v4

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    aput v11, v9, v10

    .line 92
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    add-int/lit8 v10, v6, 0x2

    int-to-float v11, v3

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    aput v11, v9, v10

    .line 93
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    add-int/lit8 v10, v6, 0x4

    int-to-float v11, v8

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    aput v11, v9, v10

    .line 94
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    add-int/lit8 v10, v6, 0x5

    int-to-float v11, v4

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    aput v11, v9, v10

    .line 95
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    add-int/lit8 v10, v6, 0x6

    int-to-float v11, v3

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    aput v11, v9, v10

    .line 96
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->creationTime:[F

    aget v9, v9, v5

    sub-float v9, p2, v9

    div-float v2, v9, p3

    .line 97
    .local v2, "alive":F
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v2, v9

    if-lez v9, :cond_2

    .line 98
    iget v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    .line 99
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    add-int/lit8 v10, v6, 0x3

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 100
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    add-int/lit8 v10, v6, 0x7

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 88
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 102
    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v9, v2

    .line 103
    .local v7, "o":F
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    add-int/lit8 v10, v6, 0x3

    aput v7, v9, v10

    .line 104
    iget-object v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->colors:[F

    add-int/lit8 v10, v6, 0x7

    aput v7, v9, v10

    goto :goto_3

    .line 124
    .end local v2    # "alive":F
    .end local v5    # "i":I
    .end local v6    # "idx":I
    .end local v7    # "o":F
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->finished:Z

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    .line 68
    iput v0, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->begin:I

    .line 69
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->finished:Z

    .line 70
    return-void
.end method
