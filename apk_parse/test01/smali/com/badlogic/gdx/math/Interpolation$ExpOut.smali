.class public Lcom/badlogic/gdx/math/Interpolation$ExpOut;
.super Lcom/badlogic/gdx/math/Interpolation$Exp;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpOut"
.end annotation


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "power"    # F

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/math/Interpolation$Exp;-><init>(FF)V

    .line 182
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 5
    .param p1, "a"    # F

    .prologue
    .line 186
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ExpOut;->value:F

    float-to-double v1, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$ExpOut;->power:F

    neg-float v3, v3

    mul-float/2addr v3, p1

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$ExpOut;->min:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$ExpOut;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method