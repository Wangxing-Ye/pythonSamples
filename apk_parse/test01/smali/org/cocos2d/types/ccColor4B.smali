.class public Lorg/cocos2d/types/ccColor4B;
.super Ljava/lang/Object;
.source "ccColor4B.java"


# static fields
.field public static final size:I = 0x4


# instance fields
.field public a:I

.field public b:I

.field public g:I

.field public r:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "rr"    # I
    .param p2, "gg"    # I
    .param p3, "bb"    # I
    .param p4, "aa"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/cocos2d/types/ccColor4B;->r:I

    .line 16
    iput p2, p0, Lorg/cocos2d/types/ccColor4B;->g:I

    .line 17
    iput p3, p0, Lorg/cocos2d/types/ccColor4B;->b:I

    .line 18
    iput p4, p0, Lorg/cocos2d/types/ccColor4B;->a:I

    .line 19
    return-void
.end method

.method public static ccc4(IIII)Lorg/cocos2d/types/ccColor4B;
    .locals 1
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "a"    # I

    .prologue
    .line 31
    new-instance v0, Lorg/cocos2d/types/ccColor4B;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/types/ccColor4B;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public toByteArray()[B
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2d/types/ccColor4B;->r:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/cocos2d/types/ccColor4B;->g:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/cocos2d/types/ccColor4B;->b:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/cocos2d/types/ccColor4B;->a:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public toFloatArray()[F
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2d/types/ccColor4B;->r:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/cocos2d/types/ccColor4B;->g:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/cocos2d/types/ccColor4B;->b:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/cocos2d/types/ccColor4B;->a:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "< r="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/types/ccColor4B;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccColor4B;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccColor4B;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccColor4B;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
