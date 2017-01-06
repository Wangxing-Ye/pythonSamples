.class public Lorg/cocos2d/types/CGAffineTransform;
.super Ljava/lang/Object;
.source "CGAffineTransform.java"


# static fields
.field public static final TYPE_FLIP:I = 0x40

.field public static final TYPE_GENERAL_ROTATION:I = 0x10

.field public static final TYPE_GENERAL_SCALE:I = 0x4

.field public static final TYPE_GENERAL_TRANSFORM:I = 0x20

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MASK_ROTATION:I = 0x18

.field public static final TYPE_MASK_SCALE:I = 0x6

.field public static final TYPE_QUADRANT_ROTATION:I = 0x8

.field public static final TYPE_TRANSLATION:I = 0x1

.field public static final TYPE_UNIFORM_SCALE:I = 0x2

.field static final TYPE_UNKNOWN:I = -0x1

.field public static final ZERO:D = 1.0E-10

.field private static final serialVersionUID:J = 0x127891154ad5ff62L


# instance fields
.field public m00:D

.field public m01:D

.field public m02:D

.field public m10:D

.field public m11:D

.field public m12:D

.field transient type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 155
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 157
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 1
    .param p1, "m00"    # D
    .param p3, "m10"    # D
    .param p5, "m01"    # D
    .param p7, "m11"    # D
    .param p9, "m02"    # D
    .param p11, "m12"    # D

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 211
    iput-wide p1, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 212
    iput-wide p3, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 213
    iput-wide p5, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 214
    iput-wide p7, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 215
    iput-wide p9, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 216
    iput-wide p11, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 217
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2
    .param p1, "m00"    # F
    .param p2, "m10"    # F
    .param p3, "m01"    # F
    .param p4, "m11"    # F
    .param p5, "m02"    # F
    .param p6, "m12"    # F

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 189
    float-to-double v0, p1

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 190
    float-to-double v0, p2

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 191
    float-to-double v0, p3

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 192
    float-to-double v0, p4

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 193
    float-to-double v0, p5

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 194
    float-to-double v0, p6

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 195
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/types/CGAffineTransform;)V
    .locals 2
    .param p1, "t"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iget v0, p1, Lorg/cocos2d/types/CGAffineTransform;->type:I

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 167
    iget-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 168
    iget-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 169
    iget-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 170
    iget-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 171
    iget-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 172
    iget-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 173
    return-void
.end method

.method public constructor <init>([D)V
    .locals 3
    .param p1, "matrix"    # [D

    .prologue
    const/4 v2, 0x4

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 265
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 266
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 267
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 268
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 269
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 270
    aget-wide v0, p1, v2

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 271
    const/4 v0, 0x5

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 273
    :cond_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "matrix"    # [F

    .prologue
    const/4 v2, 0x4

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 239
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 240
    const/4 v0, 0x1

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 241
    const/4 v0, 0x2

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 242
    const/4 v0, 0x3

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 243
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 244
    aget v0, p1, v2

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 245
    const/4 v0, 0x5

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 247
    :cond_0
    return-void
.end method

.method public static CGAffineToGL(Lorg/cocos2d/types/CGAffineTransform;[F)V
    .locals 9
    .param p0, "t"    # Lorg/cocos2d/types/CGAffineTransform;
    .param p1, "m"    # [F

    .prologue
    .line 1221
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

    .line 1222
    const/16 v0, 0xa

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p1, v1

    aput v2, p1, v0

    .line 1223
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

    .line 1224
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

    .line 1225
    return-void
.end method

.method public static GLToCGAffine([FLorg/cocos2d/types/CGAffineTransform;)V
    .locals 2
    .param p0, "m"    # [F
    .param p1, "t"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 1228
    const/4 v0, 0x0

    aget v0, p0, v0

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    const/4 v0, 0x4

    aget v0, p0, v0

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    const/16 v0, 0xc

    aget v0, p0, v0

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 1229
    const/4 v0, 0x1

    aget v0, p0, v0

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    const/4 v0, 0x5

    aget v0, p0, v0

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    const/16 v0, 0xd

    aget v0, p0, v0

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 1230
    return-void
.end method

.method public static identity()Lorg/cocos2d/types/CGAffineTransform;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lorg/cocos2d/types/CGAffineTransform;

    invoke-direct {v0}, Lorg/cocos2d/types/CGAffineTransform;-><init>()V

    return-object v0
.end method

.method public static make(DDDDDD)Lorg/cocos2d/types/CGAffineTransform;
    .locals 13
    .param p0, "m00"    # D
    .param p2, "m10"    # D
    .param p4, "m01"    # D
    .param p6, "m11"    # D
    .param p8, "m02"    # D
    .param p10, "m12"    # D

    .prologue
    .line 220
    new-instance v0, Lorg/cocos2d/types/CGAffineTransform;

    move-wide v1, p0

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lorg/cocos2d/types/CGAffineTransform;-><init>(DDDDDD)V

    return-object v0
.end method

.method public static makeRotation(D)Lorg/cocos2d/types/CGAffineTransform;
    .locals 1
    .param p0, "angle"    # D

    .prologue
    .line 637
    new-instance v0, Lorg/cocos2d/types/CGAffineTransform;

    invoke-direct {v0}, Lorg/cocos2d/types/CGAffineTransform;-><init>()V

    .line 638
    .local v0, "t":Lorg/cocos2d/types/CGAffineTransform;
    invoke-virtual {v0, p0, p1}, Lorg/cocos2d/types/CGAffineTransform;->setToRotation(D)V

    .line 639
    return-object v0
.end method

.method public static makeRotation(DDD)Lorg/cocos2d/types/CGAffineTransform;
    .locals 7
    .param p0, "angle"    # D
    .param p2, "x"    # D
    .param p4, "y"    # D

    .prologue
    .line 652
    new-instance v0, Lorg/cocos2d/types/CGAffineTransform;

    invoke-direct {v0}, Lorg/cocos2d/types/CGAffineTransform;-><init>()V

    .local v0, "t":Lorg/cocos2d/types/CGAffineTransform;
    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .line 653
    invoke-virtual/range {v0 .. v6}, Lorg/cocos2d/types/CGAffineTransform;->setToRotation(DDD)V

    .line 654
    return-object v0
.end method

.method public static makeScale(DD)Lorg/cocos2d/types/CGAffineTransform;
    .locals 1
    .param p0, "scx"    # D
    .param p2, "scY"    # D

    .prologue
    .line 606
    new-instance v0, Lorg/cocos2d/types/CGAffineTransform;

    invoke-direct {v0}, Lorg/cocos2d/types/CGAffineTransform;-><init>()V

    .line 607
    .local v0, "t":Lorg/cocos2d/types/CGAffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/cocos2d/types/CGAffineTransform;->setToScale(DD)V

    .line 608
    return-object v0
.end method

.method public static makeShear(DD)Lorg/cocos2d/types/CGAffineTransform;
    .locals 1
    .param p0, "shx"    # D
    .param p2, "shy"    # D

    .prologue
    .line 622
    new-instance v0, Lorg/cocos2d/types/CGAffineTransform;

    invoke-direct {v0}, Lorg/cocos2d/types/CGAffineTransform;-><init>()V

    .line 623
    .local v0, "m":Lorg/cocos2d/types/CGAffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/cocos2d/types/CGAffineTransform;->setToShear(DD)V

    .line 624
    return-object v0
.end method

.method public static makeTranslation(DD)Lorg/cocos2d/types/CGAffineTransform;
    .locals 1
    .param p0, "mx"    # D
    .param p2, "my"    # D

    .prologue
    .line 590
    new-instance v0, Lorg/cocos2d/types/CGAffineTransform;

    invoke-direct {v0}, Lorg/cocos2d/types/CGAffineTransform;-><init>()V

    .line 591
    .local v0, "t":Lorg/cocos2d/types/CGAffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/cocos2d/types/CGAffineTransform;->setToTranslation(DD)V

    .line 592
    return-object v0
.end method

.method public static multiply(Lorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;
    .locals 19
    .param p0, "t1"    # Lorg/cocos2d/types/CGAffineTransform;
    .param p1, "t2"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 717
    new-instance v2, Lorg/cocos2d/types/CGAffineTransform;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    move-object/from16 v0, p1

    iget-wide v7, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 718
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    move-object/from16 v0, p1

    iget-wide v7, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    move-object/from16 v0, p1

    iget-wide v9, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 719
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    move-object/from16 v0, p1

    iget-wide v9, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    move-object/from16 v0, p1

    iget-wide v11, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    .line 720
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    move-object/from16 v0, p1

    iget-wide v11, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    move-object/from16 v0, p1

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    .line 721
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    move-object/from16 v0, p1

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    move-object/from16 v0, p1

    iget-wide v15, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    move-object/from16 v0, p1

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    add-double/2addr v11, v13

    .line 722
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    move-object/from16 v0, p1

    iget-wide v15, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    move-object/from16 v0, p1

    iget-wide v15, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    add-double/2addr v13, v15

    .line 717
    invoke-direct/range {v2 .. v14}, Lorg/cocos2d/types/CGAffineTransform;-><init>(DDDDDD)V

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1211
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1212
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 1213
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1198
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1199
    return-void
.end method


# virtual methods
.method public applyTransform(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 9
    .param p1, "src"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v3, 0x0

    .line 781
    invoke-static {v3, v3}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 783
    .local v0, "dst":Lorg/cocos2d/types/CGPoint;
    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    .line 784
    .local v1, "x":F
    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 786
    .local v2, "y":F
    float-to-double v3, v1

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v3, v5

    float-to-double v5, v2

    iget-wide v7, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 787
    float-to-double v3, v1

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v3, v5

    float-to-double v5, v2

    iget-wide v7, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 788
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1160
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public deltaTransform(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 8
    .param p1, "src"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "dst"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v4, 0x0

    .line 955
    if-nez p2, :cond_0

    .line 956
    invoke-static {v4, v4}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object p2

    .line 959
    :cond_0
    iget v4, p1, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-double v0, v4

    .line 960
    .local v0, "x":D
    iget v4, p1, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-double v2, v4

    .line 962
    .local v2, "y":D
    iget-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p2, Lorg/cocos2d/types/CGPoint;->x:F

    .line 963
    iget-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 964
    return-object p2
.end method

.method public deltaTransform([DI[DII)V
    .locals 10
    .param p1, "src"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [D
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    .prologue
    .line 986
    move v0, p4

    .end local p4    # "dstOff":I
    .local v0, "dstOff":I
    move v1, p2

    .end local p2    # "srcOff":I
    .local v1, "srcOff":I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_0

    .line 992
    return-void

    .line 987
    :cond_0
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v2, p1, v1

    .line 988
    .local v2, "x":D
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v1    # "srcOff":I
    aget-wide v4, p1, p2

    .line 989
    .local v4, "y":D
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "dstOff":I
    .restart local p4    # "dstOff":I
    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    aput-wide v6, p3, v0

    .line 990
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v0    # "dstOff":I
    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    aput-wide v6, p3, p4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1180
    if-ne p1, p0, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return v1

    .line 1183
    :cond_1
    instance-of v3, p1, Lorg/cocos2d/types/CGAffineTransform;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1184
    check-cast v0, Lorg/cocos2d/types/CGAffineTransform;

    .line 1185
    .local v0, "t":Lorg/cocos2d/types/CGAffineTransform;
    iget-wide v3, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    .line 1186
    iget-wide v3, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    .line 1185
    goto :goto_0

    .end local v0    # "t":Lorg/cocos2d/types/CGAffineTransform;
    :cond_3
    move v1, v2

    .line 1188
    goto :goto_0
.end method

.method public getDeterminant()D
    .locals 6

    .prologue
    .line 432
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    iget-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    iget-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getMatrix([D)V
    .locals 4
    .param p1, "matrix"    # [D

    .prologue
    const/4 v3, 0x4

    .line 416
    const/4 v0, 0x0

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    aput-wide v1, p1, v0

    .line 417
    const/4 v0, 0x1

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    aput-wide v1, p1, v0

    .line 418
    const/4 v0, 0x2

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    aput-wide v1, p1, v0

    .line 419
    const/4 v0, 0x3

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    aput-wide v1, p1, v0

    .line 420
    array-length v0, p1

    if-le v0, v3, :cond_0

    .line 421
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    aput-wide v0, p1, v3

    .line 422
    const/4 v0, 0x5

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    aput-wide v1, p1, v0

    .line 424
    :cond_0
    return-void
.end method

.method public getScaleX()D
    .locals 2

    .prologue
    .line 346
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    return-wide v0
.end method

.method public getScaleY()D
    .locals 2

    .prologue
    .line 356
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    return-wide v0
.end method

.method public getShearX()D
    .locals 2

    .prologue
    .line 366
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    return-wide v0
.end method

.method public getShearY()D
    .locals 2

    .prologue
    .line 376
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    return-wide v0
.end method

.method public getTransformConcat(Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;
    .locals 1
    .param p1, "t"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 732
    invoke-static {p1, p0}, Lorg/cocos2d/types/CGAffineTransform;->multiply(Lorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    return-object v0
.end method

.method public getTransformInvert()Lorg/cocos2d/types/CGAffineTransform;
    .locals 21

    .prologue
    .line 756
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/types/CGAffineTransform;->getDeterminant()D

    move-result-wide v15

    .line 757
    .local v15, "det":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 761
    .end local p0    # "this":Lorg/cocos2d/types/CGAffineTransform;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/cocos2d/types/CGAffineTransform;
    :cond_0
    new-instance v2, Lorg/cocos2d/types/CGAffineTransform;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    div-double/2addr v3, v15

    .line 762
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    neg-double v5, v5

    div-double/2addr v5, v15

    .line 763
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    neg-double v7, v7

    div-double/2addr v7, v15

    .line 764
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    div-double/2addr v9, v15

    .line 765
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    move-wide/from16 v17, v0

    mul-double v13, v13, v17

    sub-double/2addr v11, v13

    div-double/2addr v11, v15

    .line 766
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    move-wide/from16 v17, v0

    mul-double v13, v13, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    sub-double v13, v13, v17

    div-double/2addr v13, v15

    .line 761
    invoke-direct/range {v2 .. v14}, Lorg/cocos2d/types/CGAffineTransform;-><init>(DDDDDD)V

    move-object/from16 p0, v2

    goto :goto_0
.end method

.method public getTransformRotate(D)Lorg/cocos2d/types/CGAffineTransform;
    .locals 1
    .param p1, "angle"    # D

    .prologue
    .line 693
    invoke-static {p1, p2}, Lorg/cocos2d/types/CGAffineTransform;->makeRotation(D)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/types/CGAffineTransform;->getTransformConcat(Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    return-object v0
.end method

.method public getTransformScale(DD)Lorg/cocos2d/types/CGAffineTransform;
    .locals 1
    .param p1, "scx"    # D
    .param p3, "scy"    # D

    .prologue
    .line 674
    invoke-static {p1, p2, p3, p4}, Lorg/cocos2d/types/CGAffineTransform;->makeScale(DD)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/types/CGAffineTransform;->getTransformConcat(Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    return-object v0
.end method

.method public getTransformTranslate(DD)Lorg/cocos2d/types/CGAffineTransform;
    .locals 1
    .param p1, "mx"    # D
    .param p3, "my"    # D

    .prologue
    .line 664
    invoke-static {p1, p2, p3, p4}, Lorg/cocos2d/types/CGAffineTransform;->makeTranslation(DD)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/types/CGAffineTransform;->getTransformConcat(Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    return-object v0
.end method

.method public getTranslateX()D
    .locals 2

    .prologue
    .line 385
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    return-wide v0
.end method

.method public getTranslateY()D
    .locals 2

    .prologue
    .line 394
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    return-wide v0
.end method

.method public getType()I
    .locals 15

    .prologue
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/16 v11, 0x0

    .line 300
    iget v5, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 301
    iget v4, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 336
    :cond_0
    :goto_0
    return v4

    .line 304
    :cond_1
    const/4 v4, 0x0

    .line 306
    .local v4, "type":I
    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    iget-wide v7, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    iget-wide v9, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_2

    .line 307
    or-int/lit8 v4, v4, 0x20

    .line 308
    goto :goto_0

    .line 311
    :cond_2
    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_3

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_9

    .line 312
    :cond_3
    or-int/lit8 v4, v4, 0x1

    .line 318
    :cond_4
    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    iget-wide v7, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    iget-wide v9, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    cmpg-double v5, v5, v11

    if-gez v5, :cond_5

    .line 319
    or-int/lit8 v4, v4, 0x40

    .line 322
    :cond_5
    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    iget-wide v7, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    iget-wide v9, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v7, v9

    add-double v0, v5, v7

    .line 323
    .local v0, "dx":D
    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    iget-wide v7, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    iget-wide v9, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v7, v9

    add-double v2, v5, v7

    .line 324
    .local v2, "dy":D
    cmpl-double v5, v0, v2

    if-eqz v5, :cond_a

    .line 325
    or-int/lit8 v4, v4, 0x4

    .line 330
    :cond_6
    :goto_1
    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_7

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_8

    :cond_7
    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_b

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_b

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    cmpg-double v5, v5, v11

    if-ltz v5, :cond_8

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    cmpg-double v5, v5, v11

    if-gez v5, :cond_b

    .line 331
    :cond_8
    or-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 313
    .end local v0    # "dx":D
    .end local v2    # "dy":D
    :cond_9
    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    cmpl-double v5, v5, v13

    if-nez v5, :cond_4

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    cmpl-double v5, v5, v13

    if-nez v5, :cond_4

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_4

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_4

    .line 314
    const/4 v4, 0x0

    .line 315
    goto/16 :goto_0

    .line 326
    .restart local v0    # "dx":D
    .restart local v2    # "dy":D
    :cond_a
    cmpl-double v5, v0, v13

    if-eqz v5, :cond_6

    .line 327
    or-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 332
    :cond_b
    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    cmpl-double v5, v5, v11

    if-nez v5, :cond_c

    iget-wide v5, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_0

    .line 333
    :cond_c
    or-int/lit8 v4, v4, 0x10

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1168
    new-instance v0, Lorg/cocos2d/types/HashCode;

    invoke-direct {v0}, Lorg/cocos2d/types/HashCode;-><init>()V

    .line 1169
    .local v0, "hash":Lorg/cocos2d/types/HashCode;
    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/HashCode;->append(D)Lorg/cocos2d/types/HashCode;

    .line 1170
    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/HashCode;->append(D)Lorg/cocos2d/types/HashCode;

    .line 1171
    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/HashCode;->append(D)Lorg/cocos2d/types/HashCode;

    .line 1172
    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/HashCode;->append(D)Lorg/cocos2d/types/HashCode;

    .line 1173
    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/HashCode;->append(D)Lorg/cocos2d/types/HashCode;

    .line 1174
    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/HashCode;->append(D)Lorg/cocos2d/types/HashCode;

    .line 1175
    invoke-virtual {v0}, Lorg/cocos2d/types/HashCode;->hashCode()I

    move-result v1

    return v1
.end method

.method public inverseTransform(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 10
    .param p1, "src"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "dst"    # Lorg/cocos2d/types/CGPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cocos2d/types/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1008
    invoke-virtual {p0}, Lorg/cocos2d/types/CGAffineTransform;->getDeterminant()D

    move-result-wide v0

    .line 1009
    .local v0, "det":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 1010
    new-instance v6, Lorg/cocos2d/types/NoninvertibleTransformException;

    const-string v7, "Determinant is zero"

    invoke-direct {v6, v7}, Lorg/cocos2d/types/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1013
    :cond_0
    if-nez p2, :cond_1

    .line 1014
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object p2

    .line 1017
    :cond_1
    iget v6, p1, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-double v6, v6

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    sub-double v2, v6, v8

    .line 1018
    .local v2, "x":D
    iget v6, p1, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-double v6, v6

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    sub-double v4, v6, v8

    .line 1020
    .local v4, "y":D
    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    div-double/2addr v6, v0

    double-to-float v6, v6

    iput v6, p2, Lorg/cocos2d/types/CGPoint;->x:F

    .line 1021
    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v6, v4

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    div-double/2addr v6, v0

    double-to-float v6, v6

    iput v6, p2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 1022
    return-object p2
.end method

.method public inverseTransform([DI[DII)V
    .locals 12
    .param p1, "src"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [D
    .param p4, "dstOff"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cocos2d/types/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 1047
    invoke-virtual {p0}, Lorg/cocos2d/types/CGAffineTransform;->getDeterminant()D

    move-result-wide v0

    .line 1048
    .local v0, "det":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 1049
    new-instance v8, Lorg/cocos2d/types/NoninvertibleTransformException;

    const-string v9, "Determinant is zero"

    invoke-direct {v8, v9}, Lorg/cocos2d/types/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1053
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .local v2, "dstOff":I
    .local v3, "srcOff":I
    :cond_0
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v8, p1, v3

    iget-wide v10, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    sub-double v4, v8, v10

    .line 1054
    .local v4, "x":D
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v3    # "srcOff":I
    aget-wide v8, p1, p2

    iget-wide v10, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    sub-double v6, v8, v10

    .line 1055
    .local v6, "y":D
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "dstOff":I
    .restart local p4    # "dstOff":I
    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    div-double/2addr v8, v0

    aput-wide v8, p3, v2

    .line 1056
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v2    # "dstOff":I
    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    div-double/2addr v8, v0

    aput-wide v8, p3, p4

    .line 1052
    .end local v4    # "x":D
    .end local v6    # "y":D
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_0

    .line 1058
    return-void

    .end local v2    # "dstOff":I
    .end local v3    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :cond_1
    move/from16 v2, p4

    .end local p4    # "dstOff":I
    .restart local v2    # "dstOff":I
    move v3, p2

    .end local p2    # "srcOff":I
    .restart local v3    # "srcOff":I
    goto :goto_0
.end method

.method public isIdentity()Z
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lorg/cocos2d/types/CGAffineTransform;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiply(Lorg/cocos2d/types/CGAffineTransform;)V
    .locals 20
    .param p1, "t"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 1114
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

    .line 1115
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

    .line 1116
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

    .line 1117
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

    .line 1118
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

    .line 1119
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

    .line 1121
    .local v12, "m12":D
    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 1122
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 1123
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 1124
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 1125
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 1126
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 1127
    return-void
.end method

.method public preConcatenate(Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;
    .locals 1
    .param p1, "t"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 744
    invoke-static {p0, p1}, Lorg/cocos2d/types/CGAffineTransform;->multiply(Lorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    return-object v0
.end method

.method public rotate(D)V
    .locals 17
    .param p1, "angle"    # D

    .prologue
    .line 1078
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 1079
    .local v11, "sin":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 1080
    .local v1, "cos":D
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    .line 1081
    const-wide/16 v1, 0x0

    .line 1082
    const-wide/16 v13, 0x0

    cmpl-double v13, v11, v13

    if-lez v13, :cond_1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 1088
    :cond_0
    :goto_0
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 1090
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v13, v1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v15, v11

    add-double v3, v13, v15

    .line 1091
    .local v3, "m00":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v13, v1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v15, v11

    add-double v7, v13, v15

    .line 1092
    .local v7, "m10":D
    neg-double v13, v11

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v15, v1

    add-double v5, v13, v15

    .line 1093
    .local v5, "m01":D
    neg-double v13, v11

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v15, v1

    add-double v9, v13, v15

    .line 1095
    .local v9, "m11":D
    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 1096
    move-object/from16 v0, p0

    iput-wide v5, v0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 1097
    move-object/from16 v0, p0

    iput-wide v7, v0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 1098
    move-object/from16 v0, p0

    iput-wide v9, v0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 1099
    return-void

    .line 1082
    .end local v3    # "m00":D
    .end local v5    # "m01":D
    .end local v7    # "m10":D
    .end local v9    # "m11":D
    :cond_1
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 1083
    :cond_2
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v13, v13, v15

    if-gez v13, :cond_0

    .line 1084
    const-wide/16 v11, 0x0

    .line 1085
    const-wide/16 v13, 0x0

    cmpl-double v13, v1, v13

    if-lez v13, :cond_3

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_1
    goto :goto_0

    :cond_3
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method public rotate(DDD)V
    .locals 1
    .param p1, "angle"    # D
    .param p3, "px"    # D
    .param p5, "py"    # D

    .prologue
    .line 705
    invoke-static/range {p1 .. p6}, Lorg/cocos2d/types/CGAffineTransform;->makeRotation(DDD)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/types/CGAffineTransform;->getTransformConcat(Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;

    .line 706
    return-void
.end method

.method public scale(DD)V
    .locals 6
    .param p1, "scx"    # D
    .param p3, "scy"    # D

    .prologue
    .line 1102
    const/4 v4, -0x1

    iput v4, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 1104
    iget-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v4, p1

    iput-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 1105
    iget-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double v2, p1, v4

    .line 1106
    .local v2, "m10":D
    iget-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double v0, p3, v4

    .line 1107
    .local v0, "m01":D
    iget-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v4, p3

    iput-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 1109
    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 1110
    iput-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 1111
    return-void
.end method

.method public set(DDDDDD)V
    .locals 1
    .param p1, "m00"    # D
    .param p3, "m10"    # D
    .param p5, "m01"    # D
    .param p7, "m11"    # D
    .param p9, "m02"    # D
    .param p11, "m12"    # D

    .prologue
    .line 1061
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 1062
    iput-wide p1, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 1063
    iput-wide p3, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 1064
    iput-wide p5, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 1065
    iput-wide p7, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 1066
    iput-wide p9, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 1067
    iput-wide p11, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 1068
    return-void
.end method

.method public setToIdentity()V
    .locals 2

    .prologue
    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 471
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 472
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 473
    return-void
.end method

.method public setToRotation(D)V
    .locals 8
    .param p1, "angle"    # D

    .prologue
    .line 547
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 548
    .local v2, "sin":D
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 549
    .local v0, "cos":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 550
    const-wide/16 v0, 0x0

    .line 551
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 556
    :cond_0
    :goto_0
    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 557
    neg-double v4, v2

    iput-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 558
    iput-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 559
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    iput-wide v4, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 560
    const/4 v4, -0x1

    iput v4, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 561
    return-void

    .line 551
    :cond_1
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 552
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 553
    const-wide/16 v2, 0x0

    .line 554
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_1
    goto :goto_0

    :cond_3
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method public setToRotation(DDD)V
    .locals 6
    .param p1, "angle"    # D
    .param p3, "px"    # D
    .param p5, "py"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 572
    invoke-virtual {p0, p1, p2}, Lorg/cocos2d/types/CGAffineTransform;->setToRotation(D)V

    .line 573
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    sub-double v0, v4, v0

    mul-double/2addr v0, p3

    iget-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v2, p5

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 574
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    sub-double v0, v4, v0

    mul-double/2addr v0, p5

    iget-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v2, p3

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 575
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 576
    return-void
.end method

.method public setToScale(DD)V
    .locals 4
    .param p1, "scx"    # D
    .param p3, "scy"    # D

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 507
    iput-wide p1, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 508
    iput-wide p3, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 509
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 510
    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    cmpl-double v0, p3, v2

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    goto :goto_0
.end method

.method public setToShear(DD)V
    .locals 4
    .param p1, "shx"    # D
    .param p3, "shy"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 527
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 528
    iput-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    iput-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 529
    iput-wide p1, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 530
    iput-wide p3, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 531
    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    cmpl-double v0, p3, v2

    if-eqz v0, :cond_1

    .line 532
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    goto :goto_0
.end method

.method public setToTranslation(DD)V
    .locals 4
    .param p1, "mx"    # D
    .param p3, "my"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 486
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 487
    iput-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    iput-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 488
    iput-wide p1, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 489
    iput-wide p3, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 490
    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    cmpl-double v0, p3, v2

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    goto :goto_0
.end method

.method public setTransform(DDDDDD)V
    .locals 1
    .param p1, "m00"    # D
    .param p3, "m10"    # D
    .param p5, "m01"    # D
    .param p7, "m11"    # D
    .param p9, "m02"    # D
    .param p11, "m12"    # D

    .prologue
    .line 446
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 447
    iput-wide p1, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    .line 448
    iput-wide p3, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    .line 449
    iput-wide p5, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    .line 450
    iput-wide p7, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    .line 451
    iput-wide p9, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 452
    iput-wide p11, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 453
    return-void
.end method

.method public setTransform(Lorg/cocos2d/types/CGAffineTransform;)V
    .locals 13
    .param p1, "t"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 462
    iget-wide v1, p1, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    iget-wide v3, p1, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    iget-wide v5, p1, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    iget-wide v7, p1, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    iget-wide v9, p1, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    iget-wide v11, p1, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/cocos2d/types/CGAffineTransform;->setTransform(DDDDDD)V

    .line 463
    iget v0, p1, Lorg/cocos2d/types/CGAffineTransform;->type:I

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 464
    return-void
.end method

.method public shear(DD)V
    .locals 1
    .param p1, "shx"    # D
    .param p3, "shy"    # D

    .prologue
    .line 684
    invoke-static {p1, p2, p3, p4}, Lorg/cocos2d/types/CGAffineTransform;->makeShear(DD)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/types/CGAffineTransform;->getTransformConcat(Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;

    .line 685
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1154
    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform([DI[DII)V
    .locals 10
    .param p1, "src"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [D
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    .prologue
    .line 838
    const/4 v0, 0x2

    .line 839
    .local v0, "step":I
    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p2

    if-ge p4, v5, :cond_0

    .line 840
    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p2

    add-int/lit8 p2, v5, -0x2

    .line 841
    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p4

    add-int/lit8 p4, v5, -0x2

    .line 842
    const/4 v0, -0x2

    .line 844
    :cond_0
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_1

    .line 852
    return-void

    .line 845
    :cond_1
    add-int/lit8 v5, p2, 0x0

    aget-wide v1, p1, v5

    .line 846
    .local v1, "x":D
    add-int/lit8 v5, p2, 0x1

    aget-wide v3, p1, v5

    .line 847
    .local v3, "y":D
    add-int/lit8 v5, p4, 0x0

    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v6, v1

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    add-double/2addr v6, v8

    aput-wide v6, p3, v5

    .line 848
    add-int/lit8 v5, p4, 0x1

    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v6, v1

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    add-double/2addr v6, v8

    aput-wide v6, p3, v5

    .line 849
    add-int/2addr p2, v0

    .line 850
    add-int/2addr p4, v0

    goto :goto_0
.end method

.method public transform([DI[FII)V
    .locals 10
    .param p1, "src"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [F
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    .prologue
    .line 934
    move v0, p4

    .end local p4    # "dstOff":I
    .local v0, "dstOff":I
    move v1, p2

    .end local p2    # "srcOff":I
    .local v1, "srcOff":I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_0

    .line 940
    return-void

    .line 935
    :cond_0
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v2, p1, v1

    .line 936
    .local v2, "x":D
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v1    # "srcOff":I
    aget-wide v4, p1, p2

    .line 937
    .local v4, "y":D
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "dstOff":I
    .restart local p4    # "dstOff":I
    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p3, v0

    .line 938
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v0    # "dstOff":I
    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p3, p4

    goto :goto_0
.end method

.method public transform([FI[DII)V
    .locals 10
    .param p1, "src"    # [F
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [D
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    .prologue
    .line 907
    move v0, p4

    .end local p4    # "dstOff":I
    .local v0, "dstOff":I
    move v1, p2

    .end local p2    # "srcOff":I
    .local v1, "srcOff":I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_0

    .line 913
    return-void

    .line 908
    :cond_0
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v2, p1, v1

    .line 909
    .local v2, "x":F
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v1    # "srcOff":I
    aget v3, p1, p2

    .line 910
    .local v3, "y":F
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "dstOff":I
    .restart local p4    # "dstOff":I
    float-to-double v4, v2

    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v4, v6

    float-to-double v6, v3

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    add-double/2addr v4, v6

    aput-wide v4, p3, v0

    .line 911
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v0    # "dstOff":I
    float-to-double v4, v2

    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v4, v6

    float-to-double v6, v3

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    add-double/2addr v4, v6

    aput-wide v4, p3, p4

    goto :goto_0
.end method

.method public transform([FI[FII)V
    .locals 10
    .param p1, "src"    # [F
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [F
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    .prologue
    .line 872
    const/4 v0, 0x2

    .line 873
    .local v0, "step":I
    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p2

    if-ge p4, v5, :cond_0

    .line 874
    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p2

    add-int/lit8 p2, v5, -0x2

    .line 875
    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p4

    add-int/lit8 p4, v5, -0x2

    .line 876
    const/4 v0, -0x2

    .line 878
    :cond_0
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_1

    .line 886
    return-void

    .line 879
    :cond_1
    add-int/lit8 v5, p2, 0x0

    aget v5, p1, v5

    float-to-double v1, v5

    .line 880
    .local v1, "x":D
    add-int/lit8 v5, p2, 0x1

    aget v5, p1, v5

    float-to-double v3, v5

    .line 881
    .local v3, "y":D
    add-int/lit8 v5, p4, 0x0

    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v6, v1

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p3, v5

    .line 882
    add-int/lit8 v5, p4, 0x1

    iget-wide v6, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v6, v1

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p3, v5

    .line 883
    add-int/2addr p2, v0

    .line 884
    add-int/2addr p4, v0

    goto :goto_0
.end method

.method public transform([Lorg/cocos2d/types/CGPoint;I[Lorg/cocos2d/types/CGPoint;II)V
    .locals 12
    .param p1, "src"    # [Lorg/cocos2d/types/CGPoint;
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [Lorg/cocos2d/types/CGPoint;
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    .prologue
    .line 806
    move/from16 v0, p4

    .end local p4    # "dstOff":I
    .local v0, "dstOff":I
    move v2, p2

    .end local p2    # "srcOff":I
    .local v2, "srcOff":I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_0

    .line 818
    return-void

    .line 807
    :cond_0
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-object v3, p1, v2

    .line 808
    .local v3, "srcPoint":Lorg/cocos2d/types/CGPoint;
    iget v8, v3, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-double v4, v8

    .line 809
    .local v4, "x":D
    iget v8, v3, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-double v6, v8

    .line 810
    .local v6, "y":D
    aget-object v1, p3, v0

    .line 811
    .local v1, "dstPoint":Lorg/cocos2d/types/CGPoint;
    if-nez v1, :cond_1

    .line 812
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 814
    :cond_1
    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iget-wide v10, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    add-double/2addr v8, v10

    double-to-float v8, v8

    iput v8, v1, Lorg/cocos2d/types/CGPoint;->x:F

    .line 815
    iget-wide v8, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iget-wide v10, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    add-double/2addr v8, v10

    double-to-float v8, v8

    iput v8, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 816
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "dstOff":I
    .restart local p4    # "dstOff":I
    aput-object v1, p3, v0

    move/from16 v0, p4

    .end local p4    # "dstOff":I
    .restart local v0    # "dstOff":I
    move v2, p2

    .end local p2    # "srcOff":I
    .restart local v2    # "srcOff":I
    goto :goto_0
.end method

.method public translate(DD)V
    .locals 4
    .param p1, "mx"    # D
    .param p3, "my"    # D

    .prologue
    .line 1071
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/types/CGAffineTransform;->type:I

    .line 1073
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    .line 1074
    iget-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    .line 1075
    return-void
.end method
