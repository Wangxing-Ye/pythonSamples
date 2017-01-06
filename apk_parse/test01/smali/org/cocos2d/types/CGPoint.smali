.class public Lorg/cocos2d/types/CGPoint;
.super Ljava/lang/Object;
.source "CGPoint.java"


# static fields
.field private static final ZERO_POINT:Lorg/cocos2d/types/CGPoint;

.field private static final kCGPointEpsilon:F = 1.2E-7f


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    new-instance v0, Lorg/cocos2d/types/CGPoint;

    invoke-direct {v0, v1, v1}, Lorg/cocos2d/types/CGPoint;-><init>(FF)V

    sput-object v0, Lorg/cocos2d/types/CGPoint;->ZERO_POINT:Lorg/cocos2d/types/CGPoint;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, v0}, Lorg/cocos2d/types/CGPoint;-><init>(FF)V

    .line 24
    return-void
.end method

.method private constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 28
    iput p2, p0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 29
    return-void
.end method

.method public static applyAffineTransform(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGPoint;
    .locals 1
    .param p0, "aPoint"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "aTransform"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 55
    invoke-virtual {p1, p0}, Lorg/cocos2d/types/CGAffineTransform;->applyTransform(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccp(FF)Lorg/cocos2d/types/CGPoint;
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 65
    new-instance v0, Lorg/cocos2d/types/CGPoint;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/types/CGPoint;-><init>(FF)V

    return-object v0
.end method

.method public static ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 3
    .param p0, "v1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "v2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 86
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpAngle(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F
    .locals 3
    .param p0, "a"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "b"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 281
    invoke-static {p0}, Lorg/cocos2d/types/CGPoint;->ccpNormalize(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-static {p1}, Lorg/cocos2d/types/CGPoint;->ccpNormalize(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 282
    .local v0, "angle":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3400d959    # 1.2E-7f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .line 283
    .end local v0    # "angle":F
    :cond_0
    return v0
.end method

.method public static ccpAngleSigned(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F
    .locals 7
    .param p0, "a"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "b"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 361
    invoke-static {p0}, Lorg/cocos2d/types/CGPoint;->ccpNormalize(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 362
    .local v0, "a2":Lorg/cocos2d/types/CGPoint;
    invoke-static {p1}, Lorg/cocos2d/types/CGPoint;->ccpNormalize(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 363
    .local v2, "b2":Lorg/cocos2d/types/CGPoint;
    iget v3, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, v2, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v3, v4

    iget v4, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v5, v2, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v0, v2}, Lorg/cocos2d/types/CGPoint;->ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 364
    .local v1, "angle":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3400d959    # 1.2E-7f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v1, 0x0

    .line 365
    .end local v1    # "angle":F
    :cond_0
    return v1
.end method

.method public static ccpCalcRotate(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F
    .locals 7
    .param p0, "from"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "to"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/high16 v6, 0x43340000    # 180.0f

    const/4 v5, 0x0

    .line 260
    iget v3, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, p0, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float v2, v3, v4

    .line 261
    .local v2, "o":F
    iget v3, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v4, p0, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float v0, v3, v4

    .line 262
    .local v0, "a":F
    div-float v3, v2, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Lorg/cocos2d/config/ccMacros;->CC_RADIANS_TO_DEGREES(F)F

    move-result v1

    .line 264
    .local v1, "at":F
    cmpg-float v3, v0, v5

    if-gez v3, :cond_0

    .line 265
    cmpg-float v3, v2, v5

    if-gez v3, :cond_1

    .line 266
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float v1, v6, v3

    .line 271
    :cond_0
    :goto_0
    return v1

    .line 268
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v1, v6, v3

    goto :goto_0
.end method

.method public static ccpClamp(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 4
    .param p0, "p"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "min_inclusive"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "max_inclusive"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 320
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, p2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->clampf(FFF)F

    move-result v0

    .line 321
    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v3, p2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v1, v2, v3}, Lorg/cocos2d/types/CGPoint;->clampf(FFF)F

    move-result v1

    .line 320
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpCompMult(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 3
    .param p0, "a"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "b"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 352
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpCross(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F
    .locals 3
    .param p0, "v1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "v2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 136
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F
    .locals 1
    .param p0, "v1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "v2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 216
    invoke-static {p0, p1}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/types/CGPoint;->ccpLength(Lorg/cocos2d/types/CGPoint;)F

    move-result v0

    return v0
.end method

.method public static ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F
    .locals 3
    .param p0, "v1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "v2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 126
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static ccpForAngle(F)Lorg/cocos2d/types/CGPoint;
    .locals 3
    .param p0, "a"    # F

    .prologue
    .line 236
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpFromSize(Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p0, "s"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 330
    iget v0, p0, Lorg/cocos2d/types/CGSize;->width:F

    iget v1, p0, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpFuzzyEqual(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;F)Z
    .locals 2
    .param p0, "a"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "b"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "var"    # F

    .prologue
    .line 339
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v0, p2

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v1, p2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 340
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v0, p2

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v1, p2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ccpLength(Lorg/cocos2d/types/CGPoint;)F
    .locals 2
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 206
    invoke-static {p0}, Lorg/cocos2d/types/CGPoint;->ccpLengthSQ(Lorg/cocos2d/types/CGPoint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static ccpLengthSQ(Lorg/cocos2d/types/CGPoint;)F
    .locals 1
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 196
    invoke-static {p0, p0}, Lorg/cocos2d/types/CGPoint;->ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v0

    return v0
.end method

.method public static ccpLerp(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p0, "a"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "b"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "alpha"    # F

    .prologue
    .line 296
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0, v0}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpLineIntersect(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z
    .locals 13
    .param p0, "p1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "p2"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "p3"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "p4"    # Lorg/cocos2d/types/CGPoint;
    .param p4, "ret"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 415
    invoke-static {p0, p2}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    .line 417
    .local v8, "p13":Lorg/cocos2d/types/CGPoint;
    move-object/from16 v0, p3

    invoke-static {v0, p2}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v10

    .line 421
    .local v10, "p43":Lorg/cocos2d/types/CGPoint;
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v11

    const v12, 0x3400d959    # 1.2E-7f

    invoke-static {v10, v11, v12}, Lorg/cocos2d/types/CGPoint;->ccpFuzzyEqual(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;F)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 422
    const/4 v11, 0x0

    .line 444
    :goto_0
    return v11

    .line 424
    :cond_0
    invoke-static {p1, p0}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v9

    .line 427
    .local v9, "p21":Lorg/cocos2d/types/CGPoint;
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v11

    const v12, 0x3400d959    # 1.2E-7f

    invoke-static {v9, v11, v12}, Lorg/cocos2d/types/CGPoint;->ccpFuzzyEqual(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;F)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 428
    const/4 v11, 0x0

    goto :goto_0

    .line 430
    :cond_1
    invoke-static {v8, v10}, Lorg/cocos2d/types/CGPoint;->ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v2

    .line 431
    .local v2, "d1343":F
    invoke-static {v10, v9}, Lorg/cocos2d/types/CGPoint;->ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v4

    .line 432
    .local v4, "d4321":F
    invoke-static {v8, v9}, Lorg/cocos2d/types/CGPoint;->ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v1

    .line 433
    .local v1, "d1321":F
    invoke-static {v10, v10}, Lorg/cocos2d/types/CGPoint;->ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v5

    .line 434
    .local v5, "d4343":F
    invoke-static {v9, v9}, Lorg/cocos2d/types/CGPoint;->ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v3

    .line 436
    .local v3, "d2121":F
    mul-float v11, v3, v5

    mul-float v12, v4, v4

    sub-float v6, v11, v12

    .line 437
    .local v6, "denom":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x3400d959    # 1.2E-7f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_2

    .line 438
    const/4 v11, 0x0

    goto :goto_0

    .line 439
    :cond_2
    mul-float v11, v2, v4

    mul-float v12, v1, v5

    sub-float v7, v11, v12

    .line 441
    .local v7, "numer":F
    div-float v11, v7, v6

    move-object/from16 v0, p4

    iput v11, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 442
    move-object/from16 v0, p4

    iget v11, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v11, v4

    add-float/2addr v11, v2

    div-float/2addr v11, v5

    move-object/from16 v0, p4

    iput v11, v0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 444
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public static ccpMidpoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p0, "v1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "v2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 116
    invoke-static {p0, p1}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "s"    # F

    .prologue
    .line 106
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpNeg(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 76
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    neg-float v0, v0

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpNormalize(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0}, Lorg/cocos2d/types/CGPoint;->ccpLength(Lorg/cocos2d/types/CGPoint;)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpPerp(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 146
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v0, v0

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpProject(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p0, "v1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "v2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 166
    invoke-static {p0, p1}, Lorg/cocos2d/types/CGPoint;->ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v0

    invoke-static {p1, p1}, Lorg/cocos2d/types/CGPoint;->ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpRPerp(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 156
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->x:F

    neg-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpRotate(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 4
    .param p0, "v1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "v2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 176
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v3, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpRotateByAngle(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;
    .locals 6
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "pivot"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "angle"    # F

    .prologue
    .line 378
    invoke-static {p0, p1}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 379
    .local v1, "r":Lorg/cocos2d/types/CGPoint;
    iget v3, v1, Lorg/cocos2d/types/CGPoint;->x:F

    .line 380
    .local v3, "t":F
    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 381
    .local v0, "cosa":F
    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 382
    .local v2, "sina":F
    mul-float v4, v3, v0

    iget v5, v1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iput v4, v1, Lorg/cocos2d/types/CGPoint;->x:F

    .line 383
    mul-float v4, v3, v2

    iget v5, v1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 384
    invoke-static {v1, p1}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 385
    return-object v1
.end method

.method public static ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 3
    .param p0, "v1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "v2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 96
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ccpToAngle(Lorg/cocos2d/types/CGPoint;)F
    .locals 4
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 246
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-double v0, v0

    iget v2, p0, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static ccpUnrotate(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 4
    .param p0, "v1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "v2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 186
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, p1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static clampf(FFF)F
    .locals 2
    .param p0, "value"    # F
    .param p1, "min_inclusive"    # F
    .param p2, "max_inclusive"    # F

    .prologue
    .line 305
    cmpl-float v1, p1, p2

    if-lez v1, :cond_0

    .line 306
    move v0, p1

    .line 307
    .local v0, "tmp":F
    move p1, p2

    .line 308
    move p2, v0

    .line 311
    .end local v0    # "tmp":F
    :cond_0
    cmpg-float v1, p0, p1

    if-gez v1, :cond_1

    .end local p1    # "min_inclusive":F
    :goto_0
    return p1

    .restart local p1    # "min_inclusive":F
    :cond_1
    cmpg-float v1, p0, p2

    if-gez v1, :cond_2

    move p1, p0

    goto :goto_0

    :cond_2
    move p1, p2

    goto :goto_0
.end method

.method public static equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z
    .locals 2
    .param p0, "p1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "p2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 51
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getZero()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/cocos2d/types/CGPoint;->ZERO_POINT:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public static make(FF)Lorg/cocos2d/types/CGPoint;
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 19
    new-instance v0, Lorg/cocos2d/types/CGPoint;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/types/CGPoint;-><init>(FF)V

    return-object v0
.end method

.method public static zero()Lorg/cocos2d/types/CGPoint;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    new-instance v0, Lorg/cocos2d/types/CGPoint;

    invoke-direct {v0, v1, v1}, Lorg/cocos2d/types/CGPoint;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public set(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 35
    iput p1, p0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 36
    iput p2, p0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 37
    return-void
.end method

.method public set(Lorg/cocos2d/types/CGPoint;)V
    .locals 1
    .param p1, "p"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 40
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 41
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
