.class public Lorg/cocos2d/opengl/CCDrawingPrimitives;
.super Ljava/lang/Object;
.source "CCDrawingPrimitives.java"


# static fields
.field private static tmpFloatBuf:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ccDrawCircle(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/types/CGPoint;FFIZ)V
    .locals 11
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "center"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "r"    # F
    .param p3, "a"    # F
    .param p4, "segments"    # I
    .param p5, "drawLineToCenter"    # Z

    .prologue
    .line 188
    add-int/lit8 v7, p4, 0x2

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Lorg/cocos2d/opengl/CCDrawingPrimitives;->getVertices(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 190
    .local v6, "vertices":Ljava/nio/FloatBuffer;
    const/4 v0, 0x1

    .line 192
    .local v0, "additionalSegment":I
    if-eqz p5, :cond_0

    .line 193
    add-int/lit8 v0, v0, 0x1

    .line 195
    :cond_0
    const v7, 0x40c90fdb

    int-to-float v8, p4

    div-float v1, v7, v8

    .line 196
    .local v1, "coef":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-le v2, p4, :cond_1

    .line 204
    iget v7, p1, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 205
    iget v7, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 207
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 212
    const/16 v7, 0xde1

    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 213
    const v7, 0x8078

    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 214
    const v7, 0x8076

    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 216
    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    invoke-interface {p0, v7, v8, v9, v6}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 217
    const/4 v7, 0x3

    const/4 v8, 0x0

    add-int v9, p4, v0

    invoke-interface {p0, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 220
    const v7, 0x8076

    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 221
    const v7, 0x8078

    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 222
    const/16 v7, 0xde1

    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 223
    return-void

    .line 197
    :cond_1
    int-to-float v7, v2

    mul-float v5, v7, v1

    .line 198
    .local v5, "rads":F
    float-to-double v7, p2

    add-float v9, v5, p3

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    iget v9, p1, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-double v9, v9

    add-double/2addr v7, v9

    double-to-float v3, v7

    .line 199
    .local v3, "j":F
    float-to-double v7, p2

    add-float v9, v5, p3

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    iget v9, p1, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-double v9, v9

    add-double/2addr v7, v9

    double-to-float v4, v7

    .line 201
    .local v4, "k":F
    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 202
    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static ccDrawCubicBezier(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;I)V
    .locals 12
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "origin"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "control1"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "control2"    # Lorg/cocos2d/types/CGPoint;
    .param p4, "destination"    # Lorg/cocos2d/types/CGPoint;
    .param p5, "segments"    # I

    .prologue
    .line 273
    add-int/lit8 v6, p5, 0x1

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Lorg/cocos2d/opengl/CCDrawingPrimitives;->getVertices(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 275
    .local v3, "vertices":Ljava/nio/FloatBuffer;
    const/4 v2, 0x0

    .line 276
    .local v2, "t":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move/from16 v0, p5

    if-lt v1, v0, :cond_0

    .line 284
    move-object/from16 v0, p4

    iget v6, v0, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 285
    move-object/from16 v0, p4

    iget v6, v0, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 287
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 292
    const/16 v6, 0xde1

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 293
    const v6, 0x8078

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 294
    const v6, 0x8076

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 296
    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    invoke-interface {p0, v6, v7, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 297
    const/4 v6, 0x3

    const/4 v7, 0x0

    add-int/lit8 v8, p5, 0x1

    invoke-interface {p0, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 300
    const v6, 0x8076

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 301
    const v6, 0x8078

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 302
    const/16 v6, 0xde1

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 304
    return-void

    .line 278
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v2

    float-to-double v6, v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    mul-float/2addr v7, v2

    iget v8, p2, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    iget v8, p3, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float v7, v2, v2

    mul-float/2addr v7, v2

    move-object/from16 v0, p4

    iget v8, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 279
    .local v4, "x":F
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v2

    float-to-double v6, v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    mul-float/2addr v7, v2

    iget v8, p2, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    iget v8, p3, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float v7, v2, v2

    mul-float/2addr v7, v2

    move-object/from16 v0, p4

    iget v8, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 280
    .local v5, "y":F
    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 281
    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 282
    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p5

    int-to-float v7, v0

    div-float/2addr v6, v7

    add-float/2addr v2, v6

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public static ccDrawLine(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V
    .locals 7
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "origin"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "destination"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const v6, 0x8078

    const v5, 0x8076

    const/16 v4, 0xde1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 111
    const/4 v1, 0x4

    invoke-static {v1}, Lorg/cocos2d/opengl/CCDrawingPrimitives;->getVertices(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 113
    .local v0, "vertices":Ljava/nio/FloatBuffer;
    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 114
    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 115
    iget v1, p2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 116
    iget v1, p2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 117
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 123
    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 124
    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 126
    const/16 v1, 0x1406

    invoke-interface {p0, v3, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 127
    const/4 v1, 0x1

    invoke-interface {p0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 130
    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 131
    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 132
    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 133
    return-void
.end method

.method public static ccDrawPoint(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/types/CGPoint;)V
    .locals 7
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pnt"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const v6, 0x8078

    const v5, 0x8076

    const/16 v4, 0xde1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 53
    invoke-static {v3}, Lorg/cocos2d/opengl/CCDrawingPrimitives;->getVertices(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 55
    .local v0, "vertices":Ljava/nio/FloatBuffer;
    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 56
    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 57
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 63
    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 64
    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 66
    const/16 v1, 0x1406

    invoke-interface {p0, v3, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 67
    const/4 v1, 0x1

    invoke-interface {p0, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 70
    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 71
    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 72
    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 73
    return-void
.end method

.method public static ccDrawPoints(Ljavax/microedition/khronos/opengles/GL10;[Lorg/cocos2d/types/CGPoint;I)V
    .locals 8
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "points"    # [Lorg/cocos2d/types/CGPoint;
    .param p2, "numberOfPoints"    # I

    .prologue
    const v7, 0x8078

    const v6, 0x8076

    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 82
    mul-int/lit8 v2, p2, 0x2

    invoke-static {v2}, Lorg/cocos2d/opengl/CCDrawingPrimitives;->getVertices(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 84
    .local v1, "vertices":Ljava/nio/FloatBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 88
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 94
    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 95
    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 97
    const/4 v2, 0x2

    const/16 v3, 0x1406

    invoke-interface {p0, v2, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 98
    invoke-interface {p0, v4, v4, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 101
    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 102
    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 103
    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 104
    return-void

    .line 85
    :cond_0
    aget-object v2, p1, v0

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 86
    aget-object v2, p1, v0

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ccDrawPoly(Ljavax/microedition/khronos/opengles/GL10;[Lorg/cocos2d/types/CGPoint;IZ)V
    .locals 8
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "poli"    # [Lorg/cocos2d/types/CGPoint;
    .param p2, "numberOfPoints"    # I
    .param p3, "closePolygon"    # Z

    .prologue
    const v7, 0x8078

    const v6, 0x8076

    const/16 v5, 0xde1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 154
    mul-int/lit8 v2, p2, 0x2

    invoke-static {v2}, Lorg/cocos2d/opengl/CCDrawingPrimitives;->getVertices(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 156
    .local v1, "vertices":Ljava/nio/FloatBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 160
    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 166
    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 167
    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 169
    const/16 v2, 0x1406

    invoke-interface {p0, v4, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 170
    if-eqz p3, :cond_1

    .line 171
    invoke-interface {p0, v4, v3, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 176
    :goto_1
    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 177
    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 178
    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 179
    return-void

    .line 157
    :cond_0
    aget-object v2, p1, v0

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 158
    aget-object v2, p1, v0

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    const/4 v2, 0x3

    invoke-interface {p0, v2, v3, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_1
.end method

.method public static ccDrawQuadBezier(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;I)V
    .locals 9
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "origin"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "control"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "destination"    # Lorg/cocos2d/types/CGPoint;
    .param p4, "segments"    # I

    .prologue
    .line 232
    add-int/lit8 v5, p4, 0x1

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lorg/cocos2d/opengl/CCDrawingPrimitives;->getVertices(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 234
    .local v2, "vertices":Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .line 235
    .local v1, "t":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p4, :cond_0

    .line 242
    iget v5, p3, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 243
    iget v5, p3, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 245
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 250
    const/16 v5, 0xde1

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 251
    const v5, 0x8078

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 252
    const v5, 0x8076

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 254
    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-interface {p0, v5, v6, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 255
    const/4 v5, 0x3

    const/4 v6, 0x0

    add-int/lit8 v7, p4, 0x1

    invoke-interface {p0, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 258
    const v5, 0x8076

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 259
    const v5, 0x8078

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 260
    const/16 v5, 0xde1

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 261
    return-void

    .line 236
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v1

    mul-float/2addr v6, v7

    mul-float/2addr v6, v1

    iget v7, p2, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float v6, v1, v1

    iget v7, p3, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 237
    .local v3, "x":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, p1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v1

    mul-float/2addr v6, v7

    mul-float/2addr v6, v1

    iget v7, p2, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float v6, v1, v1

    iget v7, p3, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 238
    .local v4, "y":F
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 239
    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 240
    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, p4

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static ccDrawRect(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/types/CGRect;)V
    .locals 6
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    const/4 v5, 0x1

    .line 136
    const/4 v1, 0x4

    new-array v0, v1, [Lorg/cocos2d/types/CGPoint;

    .line 138
    .local v0, "poli":[Lorg/cocos2d/types/CGPoint;
    const/4 v1, 0x0

    iget-object v2, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v3, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 139
    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v1, v2

    iget-object v2, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    aput-object v1, v0, v5

    .line 140
    const/4 v1, 0x2

    iget-object v2, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v3, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v2, v3

    iget-object v3, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v4, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 141
    const/4 v1, 0x3

    iget-object v2, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v3, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v4, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 143
    array-length v1, v0

    invoke-static {p0, v0, v1, v5}, Lorg/cocos2d/opengl/CCDrawingPrimitives;->ccDrawPoly(Ljavax/microedition/khronos/opengles/GL10;[Lorg/cocos2d/types/CGPoint;IZ)V

    .line 144
    return-void
.end method

.method private static getVertices(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 39
    sget-object v1, Lorg/cocos2d/opengl/CCDrawingPrimitives;->tmpFloatBuf:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/cocos2d/opengl/CCDrawingPrimitives;->tmpFloatBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    if-ge v1, p0, :cond_1

    .line 40
    :cond_0
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 41
    .local v0, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lorg/cocos2d/opengl/CCDrawingPrimitives;->tmpFloatBuf:Ljava/nio/FloatBuffer;

    .line 44
    .end local v0    # "vbb":Ljava/nio/ByteBuffer;
    :cond_1
    sget-object v1, Lorg/cocos2d/opengl/CCDrawingPrimitives;->tmpFloatBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 45
    sget-object v1, Lorg/cocos2d/opengl/CCDrawingPrimitives;->tmpFloatBuf:Ljava/nio/FloatBuffer;

    return-object v1
.end method
