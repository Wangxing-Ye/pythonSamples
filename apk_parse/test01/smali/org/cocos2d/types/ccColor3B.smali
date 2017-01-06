.class public Lorg/cocos2d/types/ccColor3B;
.super Ljava/lang/Object;
.source "ccColor3B.java"


# static fields
.field public static final ccBLACK:Lorg/cocos2d/types/ccColor3B;

.field public static final ccBLUE:Lorg/cocos2d/types/ccColor3B;

.field public static final ccGRAY:Lorg/cocos2d/types/ccColor3B;

.field public static final ccGREEN:Lorg/cocos2d/types/ccColor3B;

.field public static final ccMAGENTA:Lorg/cocos2d/types/ccColor3B;

.field public static final ccORANGE:Lorg/cocos2d/types/ccColor3B;

.field public static final ccRED:Lorg/cocos2d/types/ccColor3B;

.field public static final ccWHITE:Lorg/cocos2d/types/ccColor3B;

.field public static final ccYELLOW:Lorg/cocos2d/types/ccColor3B;

.field public static final size:I = 0x3


# instance fields
.field public b:I

.field public g:I

.field public r:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa6

    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 11
    invoke-static {v2, v2, v2}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    .line 13
    invoke-static {v2, v2, v1}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/types/ccColor3B;->ccYELLOW:Lorg/cocos2d/types/ccColor3B;

    .line 15
    invoke-static {v1, v1, v2}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/types/ccColor3B;->ccBLUE:Lorg/cocos2d/types/ccColor3B;

    .line 17
    invoke-static {v1, v2, v1}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/types/ccColor3B;->ccGREEN:Lorg/cocos2d/types/ccColor3B;

    .line 19
    invoke-static {v2, v1, v1}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/types/ccColor3B;->ccRED:Lorg/cocos2d/types/ccColor3B;

    .line 21
    invoke-static {v2, v1, v2}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/types/ccColor3B;->ccMAGENTA:Lorg/cocos2d/types/ccColor3B;

    .line 23
    invoke-static {v1, v1, v1}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/types/ccColor3B;->ccBLACK:Lorg/cocos2d/types/ccColor3B;

    .line 25
    const/16 v0, 0x7f

    invoke-static {v2, v0, v1}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/types/ccColor3B;->ccORANGE:Lorg/cocos2d/types/ccColor3B;

    .line 27
    invoke-static {v3, v3, v3}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/types/ccColor3B;->ccGRAY:Lorg/cocos2d/types/ccColor3B;

    .line 6
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "rr"    # I
    .param p2, "gg"    # I
    .param p3, "bb"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/cocos2d/types/ccColor3B;->r:I

    .line 42
    iput p2, p0, Lorg/cocos2d/types/ccColor3B;->g:I

    .line 43
    iput p3, p0, Lorg/cocos2d/types/ccColor3B;->b:I

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/types/ccColor3B;)V
    .locals 1
    .param p1, "c"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget v0, p1, Lorg/cocos2d/types/ccColor3B;->r:I

    iput v0, p0, Lorg/cocos2d/types/ccColor3B;->r:I

    .line 36
    iget v0, p1, Lorg/cocos2d/types/ccColor3B;->g:I

    iput v0, p0, Lorg/cocos2d/types/ccColor3B;->g:I

    .line 37
    iget v0, p1, Lorg/cocos2d/types/ccColor3B;->b:I

    iput v0, p0, Lorg/cocos2d/types/ccColor3B;->b:I

    .line 38
    return-void
.end method

.method public static ccc3(III)Lorg/cocos2d/types/ccColor3B;
    .locals 1
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .prologue
    .line 59
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public set(Lorg/cocos2d/types/ccColor3B;)V
    .locals 1
    .param p1, "color"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 47
    iget v0, p1, Lorg/cocos2d/types/ccColor3B;->r:I

    iput v0, p0, Lorg/cocos2d/types/ccColor3B;->r:I

    .line 48
    iget v0, p1, Lorg/cocos2d/types/ccColor3B;->g:I

    iput v0, p0, Lorg/cocos2d/types/ccColor3B;->g:I

    .line 49
    iget v0, p1, Lorg/cocos2d/types/ccColor3B;->b:I

    iput v0, p0, Lorg/cocos2d/types/ccColor3B;->b:I

    .line 50
    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2d/types/ccColor3B;->r:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/cocos2d/types/ccColor3B;->g:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/cocos2d/types/ccColor3B;->b:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "< r="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/types/ccColor3B;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccColor3B;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccColor3B;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
