.class public Lcom/badlogic/gdx/math/Interpolation$Elastic;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Elastic"
.end annotation


# instance fields
.field final power:F

.field final value:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "power"    # F

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 196
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    .line 197
    iput p2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    .line 198
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 8
    .param p1, "a"    # F

    .prologue
    const/high16 v7, 0x41a00000    # 20.0f

    const v6, 0x3f8c3958    # 1.0955f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 202
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 203
    mul-float/2addr p1, v5

    .line 204
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p1, v7

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v6

    div-float/2addr v0, v5

    .line 208
    :goto_0
    return v0

    .line 206
    :cond_0
    sub-float p1, v4, p1

    .line 207
    mul-float/2addr p1, v5

    .line 208
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p1, v7

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v6

    div-float/2addr v0, v5

    sub-float v0, v4, v0

    goto :goto_0
.end method