.class public Lorg/cocos2d/types/ccBlendFunc;
.super Ljava/lang/Object;
.source "ccBlendFunc.java"


# instance fields
.field public dst:I

.field public src:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    iput v0, p0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "s"    # I
    .param p2, "d"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    .line 12
    iput p2, p0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    .line 13
    return-void
.end method


# virtual methods
.method public getDst()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    return v0
.end method

.method public getSrc()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    return v0
.end method

.method public setDst(I)V
    .locals 0
    .param p1, "d"    # I

    .prologue
    .line 28
    iput p1, p0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    .line 29
    return-void
.end method

.method public setSrc(I)V
    .locals 0
    .param p1, "s"    # I

    .prologue
    .line 20
    iput p1, p0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "< src="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
