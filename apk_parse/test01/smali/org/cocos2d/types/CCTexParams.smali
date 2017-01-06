.class public Lorg/cocos2d/types/CCTexParams;
.super Ljava/lang/Object;
.source "CCTexParams.java"


# instance fields
.field public magFilter:I

.field public minFilter:I

.field public wrapS:I

.field public wrapT:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "mag"    # I
    .param p3, "s"    # I
    .param p4, "t"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lorg/cocos2d/types/CCTexParams;->minFilter:I

    .line 11
    iput p2, p0, Lorg/cocos2d/types/CCTexParams;->magFilter:I

    .line 12
    iput p3, p0, Lorg/cocos2d/types/CCTexParams;->wrapS:I

    .line 13
    iput p4, p0, Lorg/cocos2d/types/CCTexParams;->wrapT:I

    .line 14
    return-void
.end method


# virtual methods
.method public copy()Lorg/cocos2d/types/CCTexParams;
    .locals 5

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/types/CCTexParams;

    iget v1, p0, Lorg/cocos2d/types/CCTexParams;->minFilter:I

    iget v2, p0, Lorg/cocos2d/types/CCTexParams;->magFilter:I

    iget v3, p0, Lorg/cocos2d/types/CCTexParams;->wrapS:I

    iget v4, p0, Lorg/cocos2d/types/CCTexParams;->wrapT:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/types/CCTexParams;-><init>(IIII)V

    return-object v0
.end method

.method public set(IIII)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "mag"    # I
    .param p3, "s"    # I
    .param p4, "t"    # I

    .prologue
    .line 21
    iput p1, p0, Lorg/cocos2d/types/CCTexParams;->minFilter:I

    .line 22
    iput p2, p0, Lorg/cocos2d/types/CCTexParams;->magFilter:I

    .line 23
    iput p3, p0, Lorg/cocos2d/types/CCTexParams;->wrapS:I

    .line 24
    iput p4, p0, Lorg/cocos2d/types/CCTexParams;->wrapT:I

    .line 25
    return-void
.end method

.method public set(Lorg/cocos2d/types/CCTexParams;)V
    .locals 4
    .param p1, "texParams"    # Lorg/cocos2d/types/CCTexParams;

    .prologue
    .line 28
    iget v0, p1, Lorg/cocos2d/types/CCTexParams;->minFilter:I

    iget v1, p1, Lorg/cocos2d/types/CCTexParams;->magFilter:I

    iget v2, p1, Lorg/cocos2d/types/CCTexParams;->wrapS:I

    iget v3, p1, Lorg/cocos2d/types/CCTexParams;->wrapT:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/cocos2d/types/CCTexParams;->set(IIII)V

    .line 29
    return-void
.end method
