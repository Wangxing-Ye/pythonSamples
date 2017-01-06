.class public Lorg/cocos2d/types/ccQuad2;
.super Ljava/lang/Object;
.source "ccQuad2.java"


# static fields
.field public static final size:I = 0x8


# instance fields
.field public bl_x:F

.field public bl_y:F

.field public br_x:F

.field public br_y:F

.field public tl_x:F

.field public tl_y:F

.field public tr_x:F

.field public tr_y:F


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 25
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lorg/cocos2d/types/ccQuad2;-><init>(FFFFFFFF)V

    .line 26
    return-void
.end method

.method public constructor <init>(FFFFFFFF)V
    .locals 0
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F
    .param p5, "e"    # F
    .param p6, "f"    # F
    .param p7, "g"    # F
    .param p8, "h"    # F

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lorg/cocos2d/types/ccQuad2;->tl_x:F

    .line 15
    iput p2, p0, Lorg/cocos2d/types/ccQuad2;->tl_y:F

    .line 16
    iput p3, p0, Lorg/cocos2d/types/ccQuad2;->tr_x:F

    .line 17
    iput p4, p0, Lorg/cocos2d/types/ccQuad2;->tr_y:F

    .line 18
    iput p5, p0, Lorg/cocos2d/types/ccQuad2;->bl_x:F

    .line 19
    iput p6, p0, Lorg/cocos2d/types/ccQuad2;->bl_y:F

    .line 20
    iput p7, p0, Lorg/cocos2d/types/ccQuad2;->br_x:F

    .line 21
    iput p8, p0, Lorg/cocos2d/types/ccQuad2;->br_y:F

    .line 22
    return-void
.end method

.method public constructor <init>([F)V
    .locals 9
    .param p1, "f"    # [F

    .prologue
    .line 29
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    .line 30
    const/4 v0, 0x2

    aget v3, p1, v0

    const/4 v0, 0x3

    aget v4, p1, v0

    .line 31
    const/4 v0, 0x4

    aget v5, p1, v0

    const/4 v0, 0x5

    aget v6, p1, v0

    .line 32
    const/4 v0, 0x6

    aget v7, p1, v0

    const/4 v0, 0x7

    aget v8, p1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/cocos2d/types/ccQuad2;-><init>(FFFFFFFF)V

    .line 34
    return-void
.end method


# virtual methods
.method public toFloatArray()[F
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2d/types/ccQuad2;->tl_x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/cocos2d/types/ccQuad2;->tl_y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 38
    iget v2, p0, Lorg/cocos2d/types/ccQuad2;->tr_x:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/cocos2d/types/ccQuad2;->tr_y:F

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 39
    iget v2, p0, Lorg/cocos2d/types/ccQuad2;->bl_x:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lorg/cocos2d/types/ccQuad2;->bl_y:F

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 40
    iget v2, p0, Lorg/cocos2d/types/ccQuad2;->br_x:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lorg/cocos2d/types/ccQuad2;->br_y:F

    aput v2, v0, v1

    .line 37
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CCQuad2: ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/types/ccQuad2;->tl_x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad2;->tl_y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    iget v1, p0, Lorg/cocos2d/types/ccQuad2;->tr_x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad2;->tr_y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    iget v1, p0, Lorg/cocos2d/types/ccQuad2;->bl_x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad2;->bl_y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    iget v1, p0, Lorg/cocos2d/types/ccQuad2;->br_x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccQuad2;->br_y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
