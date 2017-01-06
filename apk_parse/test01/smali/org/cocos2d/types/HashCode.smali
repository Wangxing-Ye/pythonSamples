.class final Lorg/cocos2d/types/HashCode;
.super Ljava/lang/Object;
.source "CGAffineTransform.java"


# instance fields
.field private final hashCode:Lorg/cocos2d/types/HashCode;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    new-instance v0, Lorg/cocos2d/types/HashCode;

    invoke-direct {v0}, Lorg/cocos2d/types/HashCode;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/types/HashCode;->hashCode:Lorg/cocos2d/types/HashCode;

    .line 1233
    return-void
.end method


# virtual methods
.method public final append(D)Lorg/cocos2d/types/HashCode;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1282
    iget-object v0, p0, Lorg/cocos2d/types/HashCode;->hashCode:Lorg/cocos2d/types/HashCode;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/types/HashCode;->append(D)Lorg/cocos2d/types/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final append(F)Lorg/cocos2d/types/HashCode;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1272
    iget-object v0, p0, Lorg/cocos2d/types/HashCode;->hashCode:Lorg/cocos2d/types/HashCode;

    invoke-virtual {v0, p1}, Lorg/cocos2d/types/HashCode;->append(F)Lorg/cocos2d/types/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final append(I)Lorg/cocos2d/types/HashCode;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1252
    iget-object v0, p0, Lorg/cocos2d/types/HashCode;->hashCode:Lorg/cocos2d/types/HashCode;

    invoke-virtual {v0, p1}, Lorg/cocos2d/types/HashCode;->append(I)Lorg/cocos2d/types/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final append(J)Lorg/cocos2d/types/HashCode;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1262
    iget-object v0, p0, Lorg/cocos2d/types/HashCode;->hashCode:Lorg/cocos2d/types/HashCode;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/types/HashCode;->append(J)Lorg/cocos2d/types/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final append(Ljava/lang/Object;)Lorg/cocos2d/types/HashCode;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1302
    iget-object v0, p0, Lorg/cocos2d/types/HashCode;->hashCode:Lorg/cocos2d/types/HashCode;

    invoke-virtual {v0, p1}, Lorg/cocos2d/types/HashCode;->append(Ljava/lang/Object;)Lorg/cocos2d/types/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final append(Z)Lorg/cocos2d/types/HashCode;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1292
    iget-object v0, p0, Lorg/cocos2d/types/HashCode;->hashCode:Lorg/cocos2d/types/HashCode;

    invoke-virtual {v0, p1}, Lorg/cocos2d/types/HashCode;->append(Z)Lorg/cocos2d/types/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lorg/cocos2d/types/HashCode;->hashCode:Lorg/cocos2d/types/HashCode;

    invoke-virtual {v0}, Lorg/cocos2d/types/HashCode;->hashCode()I

    move-result v0

    return v0
.end method
