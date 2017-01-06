.class public Lorg/cocos2d/types/ccQuad3;
.super Ljava/lang/Object;
.source "ccQuad3.java"


# static fields
.field public static final size:I = 0xc


# instance fields
.field public bl_x:F

.field public bl_y:F

.field public bl_z:F

.field public br_x:F

.field public br_y:F

.field public br_z:F

.field public tl_x:F

.field public tl_y:F

.field public tl_z:F

.field public tr_x:F

.field public tr_y:F

.field public tr_z:F


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 14
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    move v12, v1

    invoke-direct/range {v0 .. v12}, Lorg/cocos2d/types/ccQuad3;-><init>(FFFFFFFFFFFF)V

    .line 15
    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFF)V
    .locals 0
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F
    .param p5, "e"    # F
    .param p6, "f"    # F
    .param p7, "g"    # F
    .param p8, "h"    # F
    .param p9, "i"    # F
    .param p10, "j"    # F
    .param p11, "k"    # F
    .param p12, "l"    # F

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    .line 27
    iput p2, p0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    .line 28
    iput p3, p0, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    .line 29
    iput p4, p0, Lorg/cocos2d/types/ccQuad3;->br_x:F

    .line 30
    iput p5, p0, Lorg/cocos2d/types/ccQuad3;->br_y:F

    .line 31
    iput p6, p0, Lorg/cocos2d/types/ccQuad3;->br_z:F

    .line 32
    iput p7, p0, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    .line 33
    iput p8, p0, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    .line 34
    iput p9, p0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    .line 35
    iput p10, p0, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    .line 36
    iput p11, p0, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    .line 37
    iput p12, p0, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    .line 38
    return-void
.end method

.method public constructor <init>([F)V
    .locals 13
    .param p1, "f"    # [F

    .prologue
    .line 18
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    const/4 v0, 0x2

    aget v3, p1, v0

    .line 19
    const/4 v0, 0x3

    aget v4, p1, v0

    const/4 v0, 0x4

    aget v5, p1, v0

    const/4 v0, 0x5

    aget v6, p1, v0

    .line 20
    const/4 v0, 0x6

    aget v7, p1, v0

    const/4 v0, 0x7

    aget v8, p1, v0

    const/16 v0, 0x8

    aget v9, p1, v0

    .line 21
    const/16 v0, 0x9

    aget v10, p1, v0

    const/16 v0, 0xa

    aget v11, p1, v0

    const/16 v0, 0xb

    aget v12, p1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lorg/cocos2d/types/ccQuad3;-><init>(FFFFFFFFFFFF)V

    .line 23
    return-void
.end method


# virtual methods
.method public toFloatArray()[F
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0xc

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 42
    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->br_x:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->br_y:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->br_z:F

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 43
    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    aput v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 44
    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    aput v2, v0, v1

    .line 41
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CCQuad3: ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->br_x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->br_y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
