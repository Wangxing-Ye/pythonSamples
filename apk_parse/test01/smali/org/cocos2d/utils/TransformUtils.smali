.class public Lorg/cocos2d/utils/TransformUtils;
.super Ljava/lang/Object;
.source "TransformUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CCAffineToGL(Lorg/cocos2d/types/CGAffineTransform;[F)V
    .locals 9
    .param p0, "t"    # Lorg/cocos2d/types/CGAffineTransform;
    .param p1, "m"    # [F

    .prologue
    .line 14
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/16 v6, 0xb

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput v8, p1, v7

    aput v8, p1, v6

    aput v8, p1, v5

    aput v8, p1, v4

    aput v8, p1, v3

    aput v8, p1, v2

    aput v8, p1, v1

    aput v8, p1, v0

    .line 15
    const/16 v0, 0xa

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p1, v1

    aput v2, p1, v0

    .line 16
    const/4 v0, 0x0

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    double-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x4

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    double-to-float v1, v1

    aput v1, p1, v0

    const/16 v0, 0xc

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    double-to-float v1, v1

    aput v1, p1, v0

    .line 17
    const/4 v0, 0x1

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    double-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x5

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    double-to-float v1, v1

    aput v1, p1, v0

    const/16 v0, 0xd

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    double-to-float v1, v1

    aput v1, p1, v0

    .line 18
    return-void
.end method


# virtual methods
.method GLToCGAffine([FLorg/cocos2d/types/CGAffineTransform;)V
    .locals 2
    .param p1, "m"    # [F
    .param p2, "t"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 22
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p2, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    const/4 v0, 0x4

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p2, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    const/16 v0, 0xc

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p2, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 23
    const/4 v0, 0x1

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p2, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    const/4 v0, 0x5

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p2, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    const/16 v0, 0xd

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p2, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 24
    return-void
.end method
