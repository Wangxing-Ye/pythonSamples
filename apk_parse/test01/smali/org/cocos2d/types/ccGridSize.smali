.class public Lorg/cocos2d/types/ccGridSize;
.super Ljava/lang/Object;
.source "ccGridSize.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lorg/cocos2d/types/ccGridSize;->x:I

    .line 15
    iput p2, p0, Lorg/cocos2d/types/ccGridSize;->y:I

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/types/ccGridSize;)V
    .locals 1
    .param p1, "gs"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget v0, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    iput v0, p0, Lorg/cocos2d/types/ccGridSize;->x:I

    .line 20
    iget v0, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    iput v0, p0, Lorg/cocos2d/types/ccGridSize;->y:I

    .line 21
    return-void
.end method

.method public static ccg(II)Lorg/cocos2d/types/ccGridSize;
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 10
    new-instance v0, Lorg/cocos2d/types/ccGridSize;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/types/ccGridSize;-><init>(II)V

    return-object v0
.end method
