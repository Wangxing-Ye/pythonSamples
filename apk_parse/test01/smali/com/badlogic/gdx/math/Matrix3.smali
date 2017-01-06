.class public Lcom/badlogic/gdx/math/Matrix3;
.super Ljava/lang/Object;
.source "Matrix3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEGREE_TO_RAD:F = 0.017453292f

.field public static final M00:I = 0x0

.field public static final M01:I = 0x3

.field public static final M02:I = 0x6

.field public static final M10:I = 0x1

.field public static final M11:I = 0x4

.field public static final M12:I = 0x7

.field public static final M20:I = 0x2

.field public static final M21:I = 0x5

.field public static final M22:I = 0x8

.field private static final serialVersionUID:J = 0x6dbd5498495b94acL


# instance fields
.field private tmp:[F

.field public val:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 42
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    .line 43
    return-void
.end method

.method private static mul([F[F)V
    .locals 12
    .param p0, "mata"    # [F
    .param p1, "matb"    # [F

    .prologue
    .line 326
    const/4 v9, 0x0

    aget v9, p0, v9

    const/4 v10, 0x0

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x3

    aget v10, p0, v10

    const/4 v11, 0x1

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x6

    aget v10, p0, v10

    const/4 v11, 0x2

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v0, v9, v10

    .line 327
    .local v0, "v00":F
    const/4 v9, 0x0

    aget v9, p0, v9

    const/4 v10, 0x3

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x3

    aget v10, p0, v10

    const/4 v11, 0x4

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x6

    aget v10, p0, v10

    const/4 v11, 0x5

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v1, v9, v10

    .line 328
    .local v1, "v01":F
    const/4 v9, 0x0

    aget v9, p0, v9

    const/4 v10, 0x6

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x3

    aget v10, p0, v10

    const/4 v11, 0x7

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x6

    aget v10, p0, v10

    const/16 v11, 0x8

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v2, v9, v10

    .line 330
    .local v2, "v02":F
    const/4 v9, 0x1

    aget v9, p0, v9

    const/4 v10, 0x0

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x4

    aget v10, p0, v10

    const/4 v11, 0x1

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x7

    aget v10, p0, v10

    const/4 v11, 0x2

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v3, v9, v10

    .line 331
    .local v3, "v10":F
    const/4 v9, 0x1

    aget v9, p0, v9

    const/4 v10, 0x3

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x4

    aget v10, p0, v10

    const/4 v11, 0x4

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x7

    aget v10, p0, v10

    const/4 v11, 0x5

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v4, v9, v10

    .line 332
    .local v4, "v11":F
    const/4 v9, 0x1

    aget v9, p0, v9

    const/4 v10, 0x6

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x4

    aget v10, p0, v10

    const/4 v11, 0x7

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x7

    aget v10, p0, v10

    const/16 v11, 0x8

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    .line 334
    .local v5, "v12":F
    const/4 v9, 0x2

    aget v9, p0, v9

    const/4 v10, 0x0

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x5

    aget v10, p0, v10

    const/4 v11, 0x1

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/16 v10, 0x8

    aget v10, p0, v10

    const/4 v11, 0x2

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 335
    .local v6, "v20":F
    const/4 v9, 0x2

    aget v9, p0, v9

    const/4 v10, 0x3

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x5

    aget v10, p0, v10

    const/4 v11, 0x4

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/16 v10, 0x8

    aget v10, p0, v10

    const/4 v11, 0x5

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 336
    .local v7, "v21":F
    const/4 v9, 0x2

    aget v9, p0, v9

    const/4 v10, 0x6

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x5

    aget v10, p0, v10

    const/4 v11, 0x7

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/16 v10, 0x8

    aget v10, p0, v10

    const/16 v11, 0x8

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 338
    .local v8, "v22":F
    const/4 v9, 0x0

    aput v0, p0, v9

    .line 339
    const/4 v9, 0x1

    aput v3, p0, v9

    .line 340
    const/4 v9, 0x2

    aput v6, p0, v9

    .line 341
    const/4 v9, 0x3

    aput v1, p0, v9

    .line 342
    const/4 v9, 0x4

    aput v4, p0, v9

    .line 343
    const/4 v9, 0x5

    aput v7, p0, v9

    .line 344
    const/4 v9, 0x6

    aput v2, p0, v9

    .line 345
    const/4 v9, 0x7

    aput v5, p0, v9

    .line 346
    const/16 v9, 0x8

    aput v8, p0, v9

    .line 347
    return-void
.end method


# virtual methods
.method public det()F
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v8

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    .line 164
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    .line 163
    sub-float/2addr v0, v1

    .line 164
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    .line 163
    sub-float/2addr v0, v1

    .line 164
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    .line 163
    sub-float/2addr v0, v1

    return v0
.end method

.method public getValues()[F
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    return-object v0
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 60
    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix3;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix3;->det()F

    move-result v0

    .line 171
    .local v0, "det":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Can\'t invert a singular matrix"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v0

    .line 175
    .local v1, "inv_det":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v12

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v8

    .line 176
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v9

    .line 177
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v12

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v10

    .line 178
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v11

    .line 179
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v12

    .line 180
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 181
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 182
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 183
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v8

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v12

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v9

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 185
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v3, v3, v8

    mul-float/2addr v3, v1

    aput v3, v2, v8

    .line 186
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v3, v3, v9

    mul-float/2addr v3, v1

    aput v3, v2, v9

    .line 187
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v3, v3, v10

    mul-float/2addr v3, v1

    aput v3, v2, v10

    .line 188
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v3, v3, v11

    mul-float/2addr v3, v1

    aput v3, v2, v11

    .line 189
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v3, v3, v12

    mul-float/2addr v3, v1

    aput v3, v2, v12

    .line 190
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v4, v1

    aput v4, v2, v3

    .line 191
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v4, v1

    aput v4, v2, v3

    .line 192
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v4, v1

    aput v4, v2, v3

    .line 193
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v4, v1

    aput v4, v2, v3

    .line 195
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 13
    .param p1, "m"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 66
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v0, v9, v10

    .line 67
    .local v0, "v00":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v1, v9, v10

    .line 68
    .local v1, "v01":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v2, v9, v10

    .line 70
    .local v2, "v02":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v3, v9, v10

    .line 71
    .local v3, "v10":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v4, v9, v10

    .line 72
    .local v4, "v11":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    .line 74
    .local v5, "v12":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 75
    .local v6, "v20":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 76
    .local v7, "v21":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 78
    .local v8, "v22":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aput v0, v9, v10

    .line 79
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aput v3, v9, v10

    .line 80
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aput v6, v9, v10

    .line 81
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x3

    aput v1, v9, v10

    .line 82
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x4

    aput v4, v9, v10

    .line 83
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x5

    aput v7, v9, v10

    .line 84
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x6

    aput v2, v9, v10

    .line 85
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x7

    aput v5, v9, v10

    .line 86
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v10, 0x8

    aput v8, v9, v10

    .line 88
    return-object p0
.end method

.method public rotate(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 6
    .param p1, "angle"    # F

    .prologue
    const/4 v5, 0x0

    .line 269
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    .line 286
    :goto_0
    return-object p0

    .line 270
    :cond_0
    const v2, 0x3c8efa35

    mul-float/2addr p1, v2

    .line 271
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 272
    .local v0, "cos":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 274
    .local v1, "sin":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 275
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 276
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x2

    aput v5, v2, v3

    .line 278
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x3

    neg-float v4, v1

    aput v4, v2, v3

    .line 279
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    .line 280
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x5

    aput v5, v2, v3

    .line 282
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x6

    aput v5, v2, v3

    .line 283
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x7

    aput v5, v2, v3

    .line 284
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 285
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    goto :goto_0
.end method

.method public scale(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 298
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 299
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 304
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 305
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 306
    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 321
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 322
    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 315
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 316
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 7
    .param p1, "mat"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 205
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    .line 208
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 7
    .param p1, "mat"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v5

    aput v2, v0, v1

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    aput v1, v0, v5

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    aput v1, v0, v6

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    .line 219
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    aput v2, v0, v1

    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    aput v2, v0, v1

    .line 221
    return-object p0
.end method

.method public setToRotation(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 6
    .param p1, "angle"    # F

    .prologue
    const/4 v5, 0x0

    .line 95
    const v2, 0x3c8efa35

    mul-float/2addr p1, v2

    .line 96
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 97
    .local v0, "cos":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 99
    .local v1, "sin":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 100
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 101
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x2

    aput v5, v2, v3

    .line 103
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x3

    neg-float v4, v1

    aput v4, v2, v3

    .line 104
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    .line 105
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aput v5, v2, v3

    .line 107
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x6

    aput v5, v2, v3

    .line 108
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aput v5, v2, v3

    .line 109
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 111
    return-object p0
.end method

.method public setToScaling(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 152
    return-object p0
.end method

.method public setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 131
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 261
    return-object p0
.end method

.method public trn(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 240
    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 230
    return-object p0
.end method
