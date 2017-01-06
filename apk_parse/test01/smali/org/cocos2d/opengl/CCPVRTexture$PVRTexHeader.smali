.class Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;
.super Ljava/lang/Object;
.source "CCPVRTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/opengl/CCPVRTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PVRTexHeader"
.end annotation


# static fields
.field public static final SIZE:I = 0x34


# instance fields
.field bb:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    .line 26
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 27
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    return-void
.end method


# virtual methods
.method public bitmaskAlpha()I
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public bitmaskBlue()I
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public bitmaskGreen()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public bitmaskRed()I
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public bpp()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public dataLength()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public flags()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public headerLength()I
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public height()I
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public numMipmaps()I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public numSurfs()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public pvrTag()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public width()I
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/cocos2d/opengl/CCPVRTexture$PVRTexHeader;->bb:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method
