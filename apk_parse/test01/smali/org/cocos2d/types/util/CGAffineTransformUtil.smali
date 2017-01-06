.class public final Lorg/cocos2d/types/util/CGAffineTransformUtil;
.super Ljava/lang/Object;
.source "CGAffineTransformUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGAffineTransform;)V
    .locals 0
    .param p0, "src"    # Lorg/cocos2d/types/CGAffineTransform;
    .param p1, "dst"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 8
    invoke-virtual {p1, p0}, Lorg/cocos2d/types/CGAffineTransform;->setTransform(Lorg/cocos2d/types/CGAffineTransform;)V

    .line 9
    return-void
.end method

.method public static inverse(Lorg/cocos2d/types/CGAffineTransform;)V
    .locals 23
    .param p0, "tr"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 12
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/types/CGAffineTransform;->getDeterminant()D

    move-result-wide v15

    .line 13
    .local v15, "det":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 14
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v17, v2, v15

    .line 15
    .local v17, "invDet":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double v3, v2, v17

    .line 16
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    neg-double v5, v5

    mul-double v5, v5, v17

    .line 17
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    neg-double v7, v7

    mul-double v7, v7, v17

    .line 18
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double v9, v9, v17

    .line 19
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    move-wide/from16 v19, v0

    mul-double v13, v13, v19

    sub-double/2addr v11, v13

    mul-double v11, v11, v17

    .line 20
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    move-wide/from16 v19, v0

    mul-double v13, v13, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    sub-double v13, v13, v19

    mul-double v13, v13, v17

    move-object/from16 v2, p0

    .line 15
    invoke-virtual/range {v2 .. v14}, Lorg/cocos2d/types/CGAffineTransform;->setTransform(DDDDDD)V

    .line 23
    .end local v17    # "invDet":D
    :cond_0
    return-void
.end method

.method public static inverse(Lorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGAffineTransform;)V
    .locals 23
    .param p0, "src"    # Lorg/cocos2d/types/CGAffineTransform;
    .param p1, "dst"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 26
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/types/CGAffineTransform;->getDeterminant()D

    move-result-wide v15

    .line 27
    .local v15, "det":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 29
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/cocos2d/types/CGAffineTransform;->setTransform(Lorg/cocos2d/types/CGAffineTransform;)V

    .line 40
    :goto_0
    return-void

    .line 31
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v17, v2, v15

    .line 32
    .local v17, "invDet":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double v3, v2, v17

    .line 33
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    neg-double v5, v5

    mul-double v5, v5, v17

    .line 34
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    neg-double v7, v7

    mul-double v7, v7, v17

    .line 35
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double v9, v9, v17

    .line 36
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    move-wide/from16 v19, v0

    mul-double v13, v13, v19

    sub-double/2addr v11, v13

    mul-double v11, v11, v17

    .line 37
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    move-wide/from16 v19, v0

    mul-double v13, v13, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    sub-double v13, v13, v19

    mul-double v13, v13, v17

    move-object/from16 v2, p1

    .line 32
    invoke-virtual/range {v2 .. v14}, Lorg/cocos2d/types/CGAffineTransform;->setTransform(DDDDDD)V

    goto :goto_0
.end method

.method public static multiply(Lorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGAffineTransform;)V
    .locals 0
    .param p0, "t"    # Lorg/cocos2d/types/CGAffineTransform;
    .param p1, "m"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lorg/cocos2d/types/CGAffineTransform;->multiply(Lorg/cocos2d/types/CGAffineTransform;)V

    .line 44
    return-void
.end method

.method public static preConcate(Lorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGAffineTransform;)V
    .locals 20
    .param p0, "t1"    # Lorg/cocos2d/types/CGAffineTransform;
    .param p1, "t2"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 52
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v2, v14, v16

    .line 53
    .local v2, "m00":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v4, v14, v16

    .line 54
    .local v4, "m01":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v8, v14, v16

    .line 55
    .local v8, "m10":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v10, v14, v16

    .line 56
    .local v10, "m11":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    move-wide/from16 v16, v0

    add-double v6, v14, v16

    .line 57
    .local v6, "m02":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    move-wide/from16 v16, v0

    add-double v12, v14, v16

    .line 59
    .local v12, "m12":D
    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 60
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 61
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 62
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 63
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 64
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 65
    return-void
.end method
