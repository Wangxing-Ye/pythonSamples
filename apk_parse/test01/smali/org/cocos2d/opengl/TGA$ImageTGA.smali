.class public Lorg/cocos2d/opengl/TGA$ImageTGA;
.super Ljava/lang/Object;
.source "TGA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/opengl/TGA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageTGA"
.end annotation


# instance fields
.field flipped:I

.field public height:I

.field public imageData:[B

.field pixelDepth:I

.field status:Lorg/cocos2d/opengl/TGA$TGAError;

.field type:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
