.class public Lorg/cocos2d/types/CGSize;
.super Ljava/lang/Object;
.source "CGSize.java"


# static fields
.field private static ZERO_SIZE:Lorg/cocos2d/types/CGSize;


# instance fields
.field public height:F

.field public width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/types/CGSize;->ZERO_SIZE:Lorg/cocos2d/types/CGSize;

    .line 4
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0}, Lorg/cocos2d/types/CGSize;-><init>(FF)V

    .line 9
    return-void
.end method

.method private constructor <init>(FF)V
    .locals 0
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lorg/cocos2d/types/CGSize;->width:F

    .line 13
    iput p2, p0, Lorg/cocos2d/types/CGSize;->height:F

    .line 14
    return-void
.end method

.method public static equalToSize(Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;)Z
    .locals 2
    .param p0, "s1"    # Lorg/cocos2d/types/CGSize;
    .param p1, "s2"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 52
    iget v0, p0, Lorg/cocos2d/types/CGSize;->width:F

    iget v1, p1, Lorg/cocos2d/types/CGSize;->width:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/types/CGSize;->height:F

    iget v1, p1, Lorg/cocos2d/types/CGSize;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getZero()Lorg/cocos2d/types/CGSize;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/cocos2d/types/CGSize;->ZERO_SIZE:Lorg/cocos2d/types/CGSize;

    return-object v0
.end method

.method public static make(FF)Lorg/cocos2d/types/CGSize;
    .locals 1
    .param p0, "w"    # F
    .param p1, "h"    # F

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/types/CGSize;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/types/CGSize;-><init>(FF)V

    return-object v0
.end method

.method public static make(Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGSize;
    .locals 3
    .param p0, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 21
    new-instance v0, Lorg/cocos2d/types/CGSize;

    iget v1, p0, Lorg/cocos2d/types/CGSize;->width:F

    iget v2, p0, Lorg/cocos2d/types/CGSize;->height:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/types/CGSize;-><init>(FF)V

    return-object v0
.end method

.method public static zero()Lorg/cocos2d/types/CGSize;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    new-instance v0, Lorg/cocos2d/types/CGSize;

    invoke-direct {v0, v1, v1}, Lorg/cocos2d/types/CGSize;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/cocos2d/types/CGSize;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/cocos2d/types/CGSize;->width:F

    return v0
.end method

.method public set(FF)V
    .locals 0
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 34
    iput p1, p0, Lorg/cocos2d/types/CGSize;->width:F

    .line 35
    iput p2, p0, Lorg/cocos2d/types/CGSize;->height:F

    .line 36
    return-void
.end method

.method public set(Lorg/cocos2d/types/CGSize;)V
    .locals 1
    .param p1, "s"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 29
    iget v0, p1, Lorg/cocos2d/types/CGSize;->width:F

    iput v0, p0, Lorg/cocos2d/types/CGSize;->width:F

    .line 30
    iget v0, p1, Lorg/cocos2d/types/CGSize;->height:F

    iput v0, p0, Lorg/cocos2d/types/CGSize;->height:F

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
