.class public final Lcom/badlogic/gdx/math/Intersector;
.super Ljava/lang/Object;
.source "Intersector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Intersector$SplitTriangle;
    }
.end annotation


# static fields
.field static best:Lcom/badlogic/gdx/math/Vector3;

.field private static final dir:Lcom/badlogic/gdx/math/Vector3;

.field private static final i:Lcom/badlogic/gdx/math/Vector3;

.field static intersection:Lcom/badlogic/gdx/math/Vector3;

.field private static final p:Lcom/badlogic/gdx/math/Plane;

.field private static final start:Lcom/badlogic/gdx/math/Vector3;

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static tmp1:Lcom/badlogic/gdx/math/Vector3;

.field static tmp2:Lcom/badlogic/gdx/math/Vector3;

.field static tmp3:Lcom/badlogic/gdx/math/Vector3;

.field private static final v0:Lcom/badlogic/gdx/math/Vector3;

.field private static final v1:Lcom/badlogic/gdx/math/Vector3;

.field private static final v2:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    .line 272
    new-instance v0, Lcom/badlogic/gdx/math/Plane;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    .line 273
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 312
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 313
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    .line 414
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 415
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    .line 416
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    .line 417
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 418
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 827
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static det(FFFF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 588
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method static detd(DDDD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .prologue
    .line 592
    mul-double v0, p0, p6

    mul-double v2, p2, p4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceLinePoint(FFFFFF)F
    .locals 4
    .param p0, "startX"    # F
    .param p1, "startY"    # F
    .param p2, "endX"    # F
    .param p3, "endY"    # F
    .param p4, "pointX"    # F
    .param p5, "pointY"    # F

    .prologue
    .line 164
    sub-float v1, p2, p0

    sub-float v2, p2, p0

    mul-float/2addr v1, v2

    sub-float v2, p3, p1

    sub-float v3, p3, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 165
    .local v0, "normalLength":F
    sub-float v1, p4, p0

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    sub-float v2, p5, p1

    sub-float v3, p2, p0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static distanceLinePoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 6
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v5, 0x0

    .line 143
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 144
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 145
    .local v0, "l2":F
    cmpl-float v2, v0, v5

    if-nez v2, :cond_0

    .line 146
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    .line 160
    :goto_0
    return v2

    .line 148
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 149
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 150
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 151
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 153
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    div-float v1, v2, v0

    .line 154
    .local v1, "t":F
    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    .line 155
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    goto :goto_0

    .line 156
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    goto :goto_0

    .line 158
    :cond_2
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 159
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 160
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    goto :goto_0
.end method

.method public static getLowestPositiveRoot(FFF)F
    .locals 10
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    const/high16 v6, 0x7fc00000    # NaNf

    const/4 v9, 0x0

    .line 39
    mul-float v7, p1, p1

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v8, p0

    mul-float/2addr v8, p2

    sub-float v0, v7, v8

    .line 40
    .local v0, "det":F
    cmpg-float v7, v0, v9

    if-gez v7, :cond_1

    move v2, v6

    .line 57
    :cond_0
    :goto_0
    return v2

    .line 42
    :cond_1
    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    .line 43
    .local v4, "sqrtD":F
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, p0

    div-float v1, v7, v8

    .line 44
    .local v1, "invA":F
    neg-float v7, p1

    sub-float/2addr v7, v4

    mul-float v2, v7, v1

    .line 45
    .local v2, "r1":F
    neg-float v7, p1

    add-float/2addr v7, v4

    mul-float v3, v7, v1

    .line 47
    .local v3, "r2":F
    cmpl-float v7, v2, v3

    if-lez v7, :cond_2

    .line 48
    move v5, v3

    .line 49
    .local v5, "tmp":F
    move v3, v2

    .line 50
    move v2, v5

    .line 53
    .end local v5    # "tmp":F
    :cond_2
    cmpl-float v7, v2, v9

    if-gtz v7, :cond_0

    .line 55
    cmpl-float v7, v3, v9

    if-lez v7, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v6

    .line 57
    goto :goto_0
.end method

.method public static intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F
    .locals 7
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F
    .param p6, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p7, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v4, 0x0

    .line 257
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, p3, p4, p5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 258
    .local v1, "direction":Lcom/badlogic/gdx/math/Vector3;
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    .line 259
    .local v2, "origin":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 260
    .local v0, "denom":F
    cmpl-float v5, v0, v4

    if-eqz v5, :cond_1

    .line 261
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v5

    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v6

    add-float/2addr v5, v6

    neg-float v5, v5

    div-float v3, v5, v0

    .line 262
    .local v3, "t":F
    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    if-eqz p7, :cond_0

    invoke-virtual {p7, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 269
    .end local v3    # "t":F
    :cond_0
    :goto_0
    return v3

    .line 264
    :cond_1
    invoke-virtual {p6, v2}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v5, v6, :cond_3

    .line 265
    if-eqz p7, :cond_2

    invoke-virtual {p7, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    move v3, v4

    .line 266
    goto :goto_0

    .line 269
    :cond_3
    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public static intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 18
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p3"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "p4"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 548
    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x1":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v10, "y1":F
    move-object/from16 v0, p1

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v6, "x2":F
    move-object/from16 v0, p1

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v11, "y2":F
    move-object/from16 v0, p2

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v7, "x3":F
    move-object/from16 v0, p2

    iget v12, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v12, "y3":F
    move-object/from16 v0, p3

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v8, "x4":F
    move-object/from16 v0, p3

    iget v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 550
    .local v13, "y4":F
    invoke-static {v5, v10, v6, v11}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v1

    .line 551
    .local v1, "det1":F
    invoke-static {v7, v12, v8, v13}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v2

    .line 552
    .local v2, "det2":F
    sub-float v14, v5, v6

    sub-float v15, v10, v11

    sub-float v16, v7, v8

    sub-float v17, v12, v13

    invoke-static/range {v14 .. v17}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v3

    .line 554
    .local v3, "det3":F
    sub-float v14, v5, v6

    sub-float v15, v7, v8

    invoke-static {v1, v14, v2, v15}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v14

    div-float v4, v14, v3

    .line 555
    .local v4, "x":F
    sub-float v14, v10, v11

    sub-float v15, v12, v13

    invoke-static {v1, v14, v2, v15}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v14

    div-float v9, v14, v3

    .line 557
    .local v9, "y":F
    move-object/from16 v0, p4

    iput v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 558
    move-object/from16 v0, p4

    iput v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 560
    const/4 v14, 0x1

    return v14
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 10
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "box"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 375
    iget-object v8, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v2, v9, v8

    .line 376
    .local v2, "divX":F
    iget-object v8, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v3, v9, v8

    .line 377
    .local v3, "divY":F
    iget-object v8, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float v4, v9, v8

    .line 379
    .local v4, "divZ":F
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v8, v9

    mul-float v0, v8, v2

    .line 380
    .local v0, "a":F
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v8, v9

    mul-float v1, v8, v2

    .line 381
    .local v1, "b":F
    cmpg-float v8, v0, v1

    if-gez v8, :cond_6

    .line 382
    move v6, v0

    .line 383
    .local v6, "min":F
    move v5, v1

    .line 389
    .local v5, "max":F
    :goto_0
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v8, v9

    mul-float v0, v8, v3

    .line 390
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v8, v9

    mul-float v1, v8, v3

    .line 391
    cmpl-float v8, v0, v1

    if-lez v8, :cond_0

    .line 392
    move v7, v0

    .line 393
    .local v7, "t":F
    move v0, v1

    .line 394
    move v1, v7

    .line 397
    .end local v7    # "t":F
    :cond_0
    cmpl-float v8, v0, v6

    if-lez v8, :cond_1

    move v6, v0

    .line 398
    :cond_1
    cmpg-float v8, v1, v5

    if-gez v8, :cond_2

    move v5, v1

    .line 400
    :cond_2
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v8, v9

    mul-float v0, v8, v4

    .line 401
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v8, v9

    mul-float v1, v8, v4

    .line 402
    cmpl-float v8, v0, v1

    if-lez v8, :cond_3

    .line 403
    move v7, v0

    .line 404
    .restart local v7    # "t":F
    move v0, v1

    .line 405
    move v1, v7

    .line 408
    .end local v7    # "t":F
    :cond_3
    cmpl-float v8, v0, v6

    if-lez v8, :cond_4

    move v6, v0

    .line 409
    :cond_4
    cmpg-float v8, v1, v5

    if-gez v8, :cond_5

    move v5, v1

    .line 411
    :cond_5
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_7

    cmpl-float v8, v5, v6

    if-ltz v8, :cond_7

    const/4 v8, 0x1

    :goto_1
    return v8

    .line 385
    .end local v5    # "max":F
    .end local v6    # "min":F
    :cond_6
    move v6, v1

    .line 386
    .restart local v6    # "min":F
    move v5, v0

    .restart local v5    # "max":F
    goto :goto_0

    .line 411
    :cond_7
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 7
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 228
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 229
    .local v0, "denom":F
    cmpl-float v4, v0, v6

    if-eqz v4, :cond_3

    .line 230
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v5

    add-float/2addr v4, v5

    neg-float v4, v4

    div-float v1, v4, v0

    .line 231
    .local v1, "t":F
    cmpg-float v4, v1, v6

    if-gez v4, :cond_1

    .line 239
    .end local v1    # "t":F
    :cond_0
    :goto_0
    return v2

    .line 233
    .restart local v1    # "t":F
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    move v2, v3

    .line 234
    goto :goto_0

    .line 235
    .end local v1    # "t":F
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v4, v5, :cond_0

    .line 236
    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_4
    move v2, v3

    .line 237
    goto :goto_0
.end method

.method public static intersectRaySphere(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 11
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"    # F
    .param p3, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 323
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 324
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 325
    const/high16 v8, 0x40000000    # 2.0f

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v9

    mul-float v0, v8, v9

    .line 326
    .local v0, "b":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v8

    mul-float v9, p2, p2

    sub-float v1, v8, v9

    .line 327
    .local v1, "c":F
    mul-float v8, v0, v0

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v1

    sub-float v2, v8, v9

    .line 328
    .local v2, "disc":F
    const/4 v8, 0x0

    cmpg-float v8, v2, v8

    if-gez v8, :cond_0

    const/4 v8, 0x0

    .line 363
    :goto_0
    return v8

    .line 331
    :cond_0
    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 333
    .local v3, "distSqrt":F
    const/4 v8, 0x0

    cmpg-float v8, v0, v8

    if-gez v8, :cond_2

    .line 334
    neg-float v8, v0

    sub-float/2addr v8, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v4, v8, v9

    .line 339
    .local v4, "q":F
    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    div-float v5, v4, v8

    .line 340
    .local v5, "t0":F
    div-float v6, v1, v4

    .line 343
    .local v6, "t1":F
    cmpl-float v8, v5, v6

    if-lez v8, :cond_1

    .line 345
    move v7, v5

    .line 346
    .local v7, "temp":F
    move v5, v6

    .line 347
    move v6, v7

    .line 353
    .end local v7    # "temp":F
    :cond_1
    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gez v8, :cond_3

    const/4 v8, 0x0

    goto :goto_0

    .line 336
    .end local v4    # "q":F
    .end local v5    # "t0":F
    .end local v6    # "t1":F
    :cond_2
    neg-float v8, v0

    add-float/2addr v8, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v4, v8, v9

    .restart local v4    # "q":F
    goto :goto_1

    .line 356
    .restart local v5    # "t0":F
    .restart local v6    # "t1":F
    :cond_3
    const/4 v8, 0x0

    cmpg-float v8, v5, v8

    if-gez v8, :cond_5

    .line 357
    if-eqz p3, :cond_4

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 358
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 362
    :cond_5
    if-eqz p3, :cond_6

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 363
    :cond_6
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 10
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "t1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "t2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "t3"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 284
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    invoke-virtual {v8, p1, p2, p3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 285
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v8, v9}, Lcom/badlogic/gdx/math/Intersector;->intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    .line 307
    :goto_0
    return v8

    .line 287
    :cond_0
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 288
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 289
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 291
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 292
    .local v1, "dot00":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 293
    .local v2, "dot01":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 294
    .local v3, "dot02":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 295
    .local v4, "dot11":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v5

    .line 297
    .local v5, "dot12":F
    mul-float v8, v1, v4

    mul-float v9, v2, v2

    sub-float v0, v8, v9

    .line 298
    .local v0, "denom":F
    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    .line 300
    :cond_1
    mul-float v8, v4, v3

    mul-float v9, v2, v5

    sub-float/2addr v8, v9

    div-float v6, v8, v0

    .line 301
    .local v6, "u":F
    mul-float v8, v1, v5

    mul-float v9, v2, v3

    sub-float/2addr v8, v9

    div-float v7, v8, v0

    .line 303
    .local v7, "v":F
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_3

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_3

    add-float v8, v6, v7

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 304
    if-eqz p4, :cond_2

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 305
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 307
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;Ljava/util/List;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector3;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "triangles":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector3;>;"
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 504
    .local v3, "min_dist":F
    const/4 v1, 0x0

    .line 506
    .local v1, "hit":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x3

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "triangle list size is not a multiple of 3"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 508
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-lt v2, v5, :cond_1

    .line 521
    if-nez v1, :cond_3

    .line 522
    const/4 v5, 0x0

    .line 525
    :goto_1
    return v5

    .line 509
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v7, v2, 0x2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Vector3;

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    .line 511
    .local v4, "result":Z
    if-eqz v4, :cond_2

    .line 512
    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 513
    .local v0, "dist":F
    cmpg-float v5, v0, v3

    if-gez v5, :cond_2

    .line 514
    move v3, v0

    .line 515
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 516
    const/4 v1, 0x1

    .line 508
    .end local v0    # "dist":F
    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 524
    .end local v4    # "result":Z
    :cond_3
    if-eqz p2, :cond_4

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 525
    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 11
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "triangles"    # [F
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 427
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 428
    .local v3, "min_dist":F
    const/4 v1, 0x0

    .line 430
    .local v1, "hit":Z
    array-length v5, p1

    div-int/lit8 v5, v5, 0x3

    rem-int/lit8 v5, v5, 0x3

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "triangle list size is not a multiple of 3"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 432
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x6

    if-lt v2, v5, :cond_1

    .line 447
    if-nez v1, :cond_3

    .line 448
    const/4 v5, 0x0

    .line 451
    :goto_1
    return v5

    .line 433
    :cond_1
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v6, p1, v2

    add-int/lit8 v7, v2, 0x1

    aget v7, p1, v7

    add-int/lit8 v8, v2, 0x2

    aget v8, p1, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    .line 434
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v7, v2, 0x3

    aget v7, p1, v7

    add-int/lit8 v8, v2, 0x4

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x5

    aget v9, p1, v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    .line 435
    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v8, v2, 0x6

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x7

    aget v9, p1, v9

    add-int/lit8 v10, v2, 0x8

    aget v10, p1, v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 433
    invoke-static {p0, v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    .line 437
    .local v4, "result":Z
    if-eqz v4, :cond_2

    .line 438
    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 439
    .local v0, "dist":F
    cmpg-float v5, v0, v3

    if-gez v5, :cond_2

    .line 440
    move v3, v0

    .line 441
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 442
    const/4 v1, 0x1

    .line 432
    .end local v0    # "dist":F
    :cond_2
    add-int/lit8 v2, v2, 0x9

    goto :goto_0

    .line 450
    .end local v4    # "result":Z
    :cond_3
    if-eqz p2, :cond_4

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 451
    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[F[SILcom/badlogic/gdx/math/Vector3;)Z
    .locals 15
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "vertices"    # [F
    .param p2, "indices"    # [S
    .param p3, "vertexSize"    # I
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 464
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 465
    .local v7, "min_dist":F
    const/4 v2, 0x0

    .line 467
    .local v2, "hit":Z
    move-object/from16 v0, p2

    array-length v9, v0

    rem-int/lit8 v9, v9, 0x3

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "triangle list size is not a multiple of 3"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 469
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v9, v0

    if-lt v3, v9, :cond_1

    .line 488
    if-nez v2, :cond_3

    .line 489
    const/4 v9, 0x0

    .line 492
    :goto_1
    return v9

    .line 470
    :cond_1
    aget-short v9, p2, v3

    mul-int v4, v9, p3

    .line 471
    .local v4, "i1":I
    add-int/lit8 v9, v3, 0x1

    aget-short v9, p2, v9

    mul-int v5, v9, p3

    .line 472
    .local v5, "i2":I
    add-int/lit8 v9, v3, 0x2

    aget-short v9, p2, v9

    mul-int v6, v9, p3

    .line 474
    .local v6, "i3":I
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v10, p1, v4

    add-int/lit8 v11, v4, 0x1

    aget v11, p1, v11

    add-int/lit8 v12, v4, 0x2

    aget v12, p1, v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    .line 475
    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    aget v11, p1, v5

    add-int/lit8 v12, v5, 0x1

    aget v12, p1, v12

    add-int/lit8 v13, v5, 0x2

    aget v13, p1, v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    .line 476
    sget-object v11, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    aget v12, p1, v6

    add-int/lit8 v13, v6, 0x1

    aget v13, p1, v13

    add-int/lit8 v14, v6, 0x2

    aget v14, p1, v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    sget-object v12, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 474
    invoke-static {p0, v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v8

    .line 478
    .local v8, "result":Z
    if-eqz v8, :cond_2

    .line 479
    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v1

    .line 480
    .local v1, "dist":F
    cmpg-float v9, v1, v7

    if-gez v9, :cond_2

    .line 481
    move v7, v1

    .line 482
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 483
    const/4 v2, 0x1

    .line 469
    .end local v1    # "dist":F
    :cond_2
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 491
    .end local v4    # "i1":I
    .end local v5    # "i2":I
    .end local v6    # "i3":I
    .end local v8    # "result":Z
    :cond_3
    if-eqz p4, :cond_4

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 492
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public static intersectRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .param p0, "a"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p1, "b"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 535
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 9
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "squareRadius"    # F

    .prologue
    const/4 v8, 0x0

    .line 176
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 177
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 178
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 179
    .local v0, "l":F
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 180
    .local v1, "u":F
    cmpg-float v4, v1, v8

    if-gtz v4, :cond_0

    .line 181
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 189
    :goto_0
    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v2, v4, v5

    .line 190
    .local v2, "x":F
    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v3, v4, v5

    .line 192
    .local v3, "y":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    cmpg-float v4, v4, p3

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 182
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_0
    cmpl-float v4, v1, v0

    if-ltz v4, :cond_1

    .line 183
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 185
    :cond_1
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 186
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v5, v6

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 192
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static intersectSegmentCircleDisplace(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)F
    .locals 8
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "radius"    # F
    .param p4, "displacement"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v7, 0x0

    .line 206
    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 207
    .local v1, "u":F
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    .line 208
    .local v0, "d":F
    mul-float v3, v0, v0

    div-float/2addr v1, v3

    .line 209
    cmpg-float v3, v1, v7

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v2

    .line 210
    :cond_1
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 211
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 212
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->dst(FFF)F

    move-result v0

    .line 213
    cmpg-float v3, v0, p3

    if-gez v3, :cond_0

    .line 214
    invoke-virtual {p4, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move v2, v0

    .line 215
    goto :goto_0
.end method

.method public static intersectSegmentPlane(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 5
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p3, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 90
    .local v1, "dir":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 91
    .local v0, "denom":F
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v4

    add-float/2addr v3, v4

    neg-float v3, v3

    div-float v2, v3, v0

    .line 92
    .local v2, "t":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 95
    :goto_0
    return v3

    .line 94
    :cond_1
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 95
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 15
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p3"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "p4"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 572
    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v4, "x1":F
    iget v8, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v8, "y1":F
    move-object/from16 v0, p1

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x2":F
    move-object/from16 v0, p1

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v9, "y2":F
    move-object/from16 v0, p2

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v6, "x3":F
    move-object/from16 v0, p2

    iget v10, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v10, "y3":F
    move-object/from16 v0, p3

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v7, "x4":F
    move-object/from16 v0, p3

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 574
    .local v11, "y4":F
    sub-float v12, v11, v10

    sub-float v13, v5, v4

    mul-float/2addr v12, v13

    sub-float v13, v7, v6

    sub-float v14, v9, v8

    mul-float/2addr v13, v14

    sub-float v1, v12, v13

    .line 575
    .local v1, "d":F
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    .line 584
    :goto_0
    return v12

    .line 577
    :cond_0
    sub-float v12, v7, v6

    sub-float v13, v8, v10

    mul-float/2addr v12, v13

    sub-float v13, v11, v10

    sub-float v14, v4, v6

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    div-float v2, v12, v1

    .line 578
    .local v2, "ua":F
    sub-float v12, v5, v4

    sub-float v13, v8, v10

    mul-float/2addr v12, v13

    sub-float v13, v9, v8

    sub-float v14, v4, v6

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    div-float v3, v12, v1

    .line 580
    .local v3, "ub":F
    const/4 v12, 0x0

    cmpg-float v12, v2, v12

    if-ltz v12, :cond_1

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v2, v12

    if-lez v12, :cond_2

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 581
    :cond_2
    const/4 v12, 0x0

    cmpg-float v12, v3, v12

    if-ltz v12, :cond_3

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v3, v12

    if-lez v12, :cond_4

    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 583
    :cond_4
    if-eqz p4, :cond_5

    sub-float v12, v5, v4

    mul-float/2addr v12, v2

    add-float/2addr v12, v4

    sub-float v13, v9, v8

    mul-float/2addr v13, v2

    add-float/2addr v13, v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 584
    :cond_5
    const/4 v12, 0x1

    goto :goto_0
.end method

.method public static isPointInPolygon(Ljava/util/List;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 7
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "polygon":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 120
    .local v1, "j":I
    const/4 v2, 0x0

    .line 121
    .local v2, "oddNodes":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 132
    return v2

    .line 122
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_2

    .line 123
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 124
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v5, v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v3, v6, v3

    div-float/2addr v5, v3

    .line 125
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v3, v6, v3

    mul-float/2addr v3, v5

    .line 124
    add-float/2addr v3, v4

    .line 125
    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 126
    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 129
    :cond_3
    :goto_1
    move v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 126
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .param p0, "point"    # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "t1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "t2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "t3"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 73
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 74
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 75
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 77
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 78
    .local v0, "ab":F
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 79
    .local v1, "ac":F
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 80
    .local v3, "bc":F
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 82
    .local v4, "cc":F
    mul-float v6, v3, v1

    mul-float v7, v4, v0

    sub-float/2addr v6, v7

    cmpg-float v6, v6, v8

    if-gez v6, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v5

    .line 83
    :cond_1
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 84
    .local v2, "bb":F
    mul-float v6, v0, v3

    mul-float v7, v1, v2

    sub-float/2addr v6, v7

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_0

    .line 85
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x0

    .line 843
    new-instance v1, Lcom/badlogic/gdx/math/Plane;

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-direct {v1, v4, v6}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    .line 844
    .local v1, "plane":Lcom/badlogic/gdx/math/Plane;
    new-instance v2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;-><init>(I)V

    .line 845
    .local v2, "split":Lcom/badlogic/gdx/math/Intersector$SplitTriangle;
    new-array v0, v7, [F

    fill-array-data v0, :array_0

    .line 846
    .local v0, "fTriangle":[F
    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/Intersector;->splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V

    .line 847
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 849
    new-array v3, v7, [F

    fill-array-data v3, :array_1

    .line 850
    .local v3, "triangle":[F
    invoke-static {v3, v1, v2}, Lcom/badlogic/gdx/math/Intersector;->splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V

    .line 851
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 852
    return-void

    .line 845
    :array_0
    .array-data 4
        -0x3ee00000    # -10.0f
        0x0
        0x41200000    # 10.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x3ee00000    # -10.0f
        0x0
        0x41200000    # 10.0f
    .end array-data

    .line 849
    :array_1
    .array-data 4
        -0x3ee00000    # -10.0f
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        -0x3ee00000    # -10.0f
        0x0
        -0x3ee00000    # -10.0f
    .end array-data
.end method

.method public static overlapCircleRectangle(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 5
    .param p0, "c"    # Lcom/badlogic/gdx/math/Circle;
    .param p1, "r"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 611
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 612
    .local v0, "closestX":F
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 614
    .local v1, "closestY":F
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 615
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 620
    :cond_0
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 621
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 626
    :cond_1
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, v2

    .line 627
    mul-float/2addr v0, v0

    .line 628
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, v2

    .line 629
    mul-float/2addr v1, v1

    .line 631
    add-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 616
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 617
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v0, v2, v3

    goto :goto_0

    .line 622
    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 623
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v1, v2, v3

    goto :goto_1

    .line 631
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static overlapCircles(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Circle;)Z
    .locals 6
    .param p0, "c1"    # Lcom/badlogic/gdx/math/Circle;
    .param p1, "c2"    # Lcom/badlogic/gdx/math/Circle;

    .prologue
    .line 596
    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float v2, v4, v5

    .line 597
    .local v2, "x":F
    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float v3, v4, v5

    .line 598
    .local v3, "y":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float v0, v4, v5

    .line 599
    .local v0, "distance":F
    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    add-float v1, v4, v5

    .line 600
    .local v1, "radiusSum":F
    mul-float v4, v1, v1

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 1
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Polygon;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Polygon;

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    return v0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 3
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Polygon;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Polygon;
    .param p2, "separation"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v0

    .line 652
    .local v0, "verts1":[F
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    .line 653
    .local v1, "verts2":[F
    invoke-static {v0, v1, p2}, Lcom/badlogic/gdx/math/Intersector;->separateConvexPolygons([F[FLcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0, p2}, Lcom/badlogic/gdx/math/Intersector;->separateConvexPolygons([F[FLcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static overlapRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .param p0, "r1"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p1, "r2"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 604
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 605
    const/4 v0, 0x1

    .line 607
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pointLineSide(FFFFFF)I
    .locals 3
    .param p0, "linePoint1X"    # F
    .param p1, "linePoint1Y"    # F
    .param p2, "linePoint2X"    # F
    .param p3, "linePoint2Y"    # F
    .param p4, "pointX"    # F
    .param p5, "pointY"    # F

    .prologue
    .line 108
    sub-float v0, p2, p0

    sub-float v1, p5, p1

    mul-float/2addr v0, v1

    sub-float v1, p3, p1

    .line 109
    sub-float v2, p4, p0

    mul-float/2addr v1, v2

    .line 108
    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I
    .locals 4
    .param p0, "linePoint1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "linePoint2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 102
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 103
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 102
    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method static separateConvexPolygons([F[FLcom/badlogic/gdx/math/Vector2;)Z
    .locals 16
    .param p0, "verts1"    # [F
    .param p1, "verts2"    # [F
    .param p2, "separation"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 664
    move-object/from16 v0, p0

    array-length v6, v0

    .line 665
    .local v6, "length1":I
    move-object/from16 v0, p1

    array-length v7, v0

    .line 667
    .local v7, "length2":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 703
    const/4 v14, 0x0

    :goto_1
    return v14

    .line 669
    :cond_0
    add-int/lit8 v14, v2, 0x1

    rem-int v3, v14, v6

    .line 672
    .local v3, "j":I
    add-int/lit8 v14, v3, 0x1

    aget v14, p0, v14

    add-int/lit8 v15, v2, 0x1

    aget v15, p0, v15

    sub-float v12, v14, v15

    .line 673
    .local v12, "projX":F
    aget v14, p0, v2

    aget v15, p0, v3

    sub-float v13, v14, v15

    .line 676
    .local v13, "projY":F
    mul-float v14, v12, v12

    mul-float v15, v13, v13

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v5, v14

    .line 677
    .local v5, "length":F
    div-float/2addr v12, v5

    .line 678
    div-float/2addr v13, v5

    .line 681
    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    .local v10, "min1":F
    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    .line 682
    .local v8, "max1":F
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    if-lt v4, v6, :cond_3

    .line 689
    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    .local v11, "min2":F
    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    .line 690
    .local v9, "max2":F
    const/4 v4, 0x0

    :goto_3
    if-lt v4, v7, :cond_6

    .line 697
    cmpg-float v14, v8, v11

    if-ltz v14, :cond_1

    cmpg-float v14, v9, v10

    if-gez v14, :cond_9

    .line 698
    :cond_1
    if-eqz p2, :cond_2

    neg-float v14, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 699
    :cond_2
    const/4 v14, 0x1

    goto :goto_1

    .line 683
    .end local v9    # "max2":F
    .end local v11    # "min2":F
    :cond_3
    aget v14, p0, v4

    mul-float/2addr v14, v12

    add-int/lit8 v15, v4, 0x1

    aget v15, p0, v15

    mul-float/2addr v15, v13

    add-float v1, v14, v15

    .line 684
    .local v1, "dot":F
    cmpg-float v14, v1, v10

    if-gez v14, :cond_4

    move v10, v1

    .line 685
    :cond_4
    cmpl-float v14, v1, v8

    if-lez v14, :cond_5

    move v8, v1

    .line 682
    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 691
    .end local v1    # "dot":F
    .restart local v9    # "max2":F
    .restart local v11    # "min2":F
    :cond_6
    aget v14, p1, v4

    mul-float/2addr v14, v12

    add-int/lit8 v15, v4, 0x1

    aget v15, p1, v15

    mul-float/2addr v15, v13

    add-float v1, v14, v15

    .line 692
    .restart local v1    # "dot":F
    cmpg-float v14, v1, v11

    if-gez v14, :cond_7

    move v11, v1

    .line 693
    :cond_7
    cmpl-float v14, v1, v9

    if-lez v14, :cond_8

    move v9, v1

    .line 690
    :cond_8
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 667
    .end local v1    # "dot":F
    :cond_9
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method private static splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V
    .locals 12
    .param p0, "vertices"    # [F
    .param p1, "s"    # I
    .param p2, "e"    # I
    .param p3, "stride"    # I
    .param p4, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p5, "split"    # [F
    .param p6, "offset"    # I

    .prologue
    .line 829
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    .line 830
    aget v3, p0, p2

    add-int/lit8 v4, p2, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, p2, 0x2

    aget v5, p0, v5

    .line 831
    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v6, p4

    .line 829
    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/math/Intersector;->intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F

    move-result v11

    .line 832
    .local v11, "t":F
    add-int/lit8 v0, p6, 0x0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v1, p5, v0

    .line 833
    add-int/lit8 v0, p6, 0x1

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p5, v0

    .line 834
    add-int/lit8 v0, p6, 0x2

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p5, v0

    .line 835
    const/4 v10, 0x3

    .local v10, "i":I
    :goto_0
    if-lt v10, p3, :cond_0

    .line 840
    return-void

    .line 836
    :cond_0
    add-int v0, p1, v10

    aget v8, p0, v0

    .line 837
    .local v8, "a":F
    add-int v0, p2, v10

    aget v9, p0, v0

    .line 838
    .local v9, "b":F
    add-int v0, p6, v10

    sub-float v1, v9, v8

    mul-float/2addr v1, v11

    add-float/2addr v1, v8

    aput v1, p5, v0

    .line 835
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public static splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V
    .locals 12
    .param p0, "triangle"    # [F
    .param p1, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p2, "split"    # Lcom/badlogic/gdx/math/Intersector$SplitTriangle;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 730
    array-length v0, p0

    div-int/lit8 v3, v0, 0x3

    .line 731
    .local v3, "stride":I
    aget v0, p0, v6

    aget v4, p0, v10

    aget v5, p0, v11

    invoke-virtual {p1, v0, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v4, :cond_0

    move v7, v10

    .line 732
    .local v7, "r1":Z
    :goto_0
    add-int/lit8 v0, v3, 0x0

    aget v0, p0, v0

    add-int/lit8 v4, v3, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, v3, 0x2

    aget v5, p0, v5

    invoke-virtual {p1, v0, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v4, :cond_1

    move v8, v10

    .line 733
    .local v8, "r2":Z
    :goto_1
    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, 0x0

    aget v0, p0, v0

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p0, v4

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v5, p0, v5

    invoke-virtual {p1, v0, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v4, :cond_2

    move v9, v10

    .line 735
    .local v9, "r3":Z
    :goto_2
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->reset()V

    .line 738
    if-ne v7, v8, :cond_4

    if-ne v8, v9, :cond_4

    .line 739
    iput v10, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    .line 740
    if-eqz v7, :cond_3

    .line 741
    iput v10, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 742
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    array-length v4, p0

    invoke-static {p0, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    :goto_3
    return-void

    .end local v7    # "r1":Z
    .end local v8    # "r2":Z
    .end local v9    # "r3":Z
    :cond_0
    move v7, v6

    .line 731
    goto :goto_0

    .restart local v7    # "r1":Z
    :cond_1
    move v8, v6

    .line 732
    goto :goto_1

    .restart local v8    # "r2":Z
    :cond_2
    move v9, v6

    .line 733
    goto :goto_2

    .line 744
    .restart local v9    # "r3":Z
    :cond_3
    iput v10, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 745
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    array-length v4, p0

    invoke-static {p0, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 751
    :cond_4
    const/4 v0, 0x3

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    .line 752
    if-eqz v7, :cond_6

    move v4, v10

    :goto_4
    if-eqz v8, :cond_7

    move v0, v10

    :goto_5
    add-int/2addr v4, v0

    if-eqz v9, :cond_8

    move v0, v10

    :goto_6
    add-int/2addr v0, v4

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 753
    iget v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    iget v4, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    sub-int/2addr v0, v4

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 758
    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 761
    const/4 v1, 0x0

    .line 762
    .local v1, "first":I
    move v2, v3

    .line 763
    .local v2, "second":I
    if-eq v7, v8, :cond_a

    .line 765
    iget-object v5, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 768
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 769
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 772
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v6

    :goto_7
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 773
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 780
    :goto_8
    move v1, v3

    .line 781
    add-int v2, v3, v3

    .line 782
    if-eq v8, v9, :cond_c

    .line 784
    iget-object v5, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 787
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 788
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 791
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v6

    :goto_9
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 792
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 799
    :goto_a
    add-int v1, v3, v3

    .line 800
    const/4 v2, 0x0

    .line 801
    if-eq v9, v7, :cond_d

    .line 803
    iget-object v5, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 806
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 807
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 810
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    if-eqz v0, :cond_5

    move v10, v6

    :cond_5
    invoke-virtual {p2, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 811
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 818
    :goto_b
    iget v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    if-ne v0, v11, :cond_e

    .line 819
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v4, v3, 0x2

    iget-object v5, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v10, v3, 0x3

    mul-int/lit8 v11, v3, 0x2

    invoke-static {v0, v4, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    iget-object v4, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v5, v3, 0x5

    invoke-static {v0, v6, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    .end local v1    # "first":I
    .end local v2    # "second":I
    :cond_6
    move v4, v6

    .line 752
    goto/16 :goto_4

    :cond_7
    move v0, v6

    goto/16 :goto_5

    :cond_8
    move v0, v6

    goto/16 :goto_6

    .restart local v1    # "first":I
    .restart local v2    # "second":I
    :cond_9
    move v0, v10

    .line 772
    goto :goto_7

    .line 776
    :cond_a
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_8

    :cond_b
    move v0, v10

    .line 791
    goto :goto_9

    .line 795
    :cond_c
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_a

    .line 814
    :cond_d
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_b

    .line 822
    :cond_e
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v4, v3, 0x2

    iget-object v5, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v10, v3, 0x3

    mul-int/lit8 v11, v3, 0x2

    invoke-static {v0, v4, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    iget-object v4, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v5, v3, 0x5

    invoke-static {v0, v6, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3
.end method
