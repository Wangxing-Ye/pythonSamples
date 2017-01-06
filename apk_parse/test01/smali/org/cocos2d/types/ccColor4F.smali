.class public Lorg/cocos2d/types/ccColor4F;
.super Ljava/lang/Object;
.source "ccColor4F.java"


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->a:F

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->b:F

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->g:F

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 14
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "rr"    # F
    .param p2, "gg"    # F
    .param p3, "bb"    # F
    .param p4, "aa"    # F

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 18
    iput p2, p0, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 19
    iput p3, p0, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 20
    iput p4, p0, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/types/ccColor3B;)V
    .locals 1
    .param p1, "c"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget v0, p1, Lorg/cocos2d/types/ccColor3B;->r:I

    div-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 41
    iget v0, p1, Lorg/cocos2d/types/ccColor3B;->g:I

    div-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 42
    iget v0, p1, Lorg/cocos2d/types/ccColor3B;->b:I

    div-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/types/ccColor4B;)V
    .locals 1
    .param p1, "c"    # Lorg/cocos2d/types/ccColor4B;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget v0, p1, Lorg/cocos2d/types/ccColor4B;->r:I

    div-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 33
    iget v0, p1, Lorg/cocos2d/types/ccColor4B;->g:I

    div-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 34
    iget v0, p1, Lorg/cocos2d/types/ccColor4B;->b:I

    div-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 35
    iget v0, p1, Lorg/cocos2d/types/ccColor4B;->a:I

    div-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/types/ccColor4F;)V
    .locals 1
    .param p1, "c"    # Lorg/cocos2d/types/ccColor4F;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget v0, p1, Lorg/cocos2d/types/ccColor4F;->r:F

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 25
    iget v0, p1, Lorg/cocos2d/types/ccColor4F;->g:F

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 26
    iget v0, p1, Lorg/cocos2d/types/ccColor4F;->b:F

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 27
    iget v0, p1, Lorg/cocos2d/types/ccColor4F;->a:F

    iput v0, p0, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 28
    return-void
.end method

.method public static ccc4FEqual(Lorg/cocos2d/types/ccColor4F;Lorg/cocos2d/types/ccColor4F;)Z
    .locals 2
    .param p0, "a"    # Lorg/cocos2d/types/ccColor4F;
    .param p1, "b"    # Lorg/cocos2d/types/ccColor4F;

    .prologue
    .line 71
    iget v0, p0, Lorg/cocos2d/types/ccColor4F;->r:F

    iget v1, p1, Lorg/cocos2d/types/ccColor4F;->r:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/types/ccColor4F;->g:F

    iget v1, p1, Lorg/cocos2d/types/ccColor4F;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/types/ccColor4F;->b:F

    iget v1, p1, Lorg/cocos2d/types/ccColor4F;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/types/ccColor4F;->a:F

    iget v1, p1, Lorg/cocos2d/types/ccColor4F;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ccc4FFromccc3B(Lorg/cocos2d/types/ccColor3B;)Lorg/cocos2d/types/ccColor4F;
    .locals 5
    .param p0, "c"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 55
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    iget v1, p0, Lorg/cocos2d/types/ccColor3B;->r:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lorg/cocos2d/types/ccColor3B;->g:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, p0, Lorg/cocos2d/types/ccColor3B;->b:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/types/ccColor4F;-><init>(FFFF)V

    return-object v0
.end method

.method public static ccc4FFromccc4B(Lorg/cocos2d/types/ccColor4B;)Lorg/cocos2d/types/ccColor4F;
    .locals 6
    .param p0, "c"    # Lorg/cocos2d/types/ccColor4B;

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 63
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    iget v1, p0, Lorg/cocos2d/types/ccColor4B;->r:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, p0, Lorg/cocos2d/types/ccColor4B;->g:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lorg/cocos2d/types/ccColor4B;->b:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lorg/cocos2d/types/ccColor4B;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/types/ccColor4F;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public toFloatArray()[F
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2d/types/ccColor4F;->r:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/cocos2d/types/ccColor4F;->g:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/cocos2d/types/ccColor4F;->b:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/cocos2d/types/ccColor4F;->a:F

    aput v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "< r="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/types/ccColor4F;->r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccColor4F;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccColor4F;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccColor4F;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
