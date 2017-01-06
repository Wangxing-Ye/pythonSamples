.class public Lorg/cocos2d/types/CCBezierConfig;
.super Ljava/lang/Object;
.source "CCBezierConfig.java"


# instance fields
.field public controlPoint_1:Lorg/cocos2d/types/CGPoint;

.field public controlPoint_2:Lorg/cocos2d/types/CGPoint;

.field public endPosition:Lorg/cocos2d/types/CGPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static bezierAt(FFFFF)F
    .locals 11
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F
    .param p4, "t"    # F

    .prologue
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 22
    sub-float v0, v8, p4

    float-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, p0

    mul-double/2addr v0, v2

    .line 23
    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, p4

    float-to-double v2, v2

    sub-float v4, v8, p4

    float-to-double v4, v4

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    .line 22
    add-double/2addr v0, v2

    .line 24
    float-to-double v2, p4

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v6

    sub-float v4, v8, p4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    float-to-double v4, p2

    mul-double/2addr v2, v4

    .line 22
    add-double/2addr v0, v2

    .line 25
    float-to-double v2, p4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, p3

    mul-double/2addr v2, v4

    .line 22
    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
