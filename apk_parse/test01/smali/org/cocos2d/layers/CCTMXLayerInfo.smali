.class public Lorg/cocos2d/layers/CCTMXLayerInfo;
.super Ljava/lang/Object;
.source "CCTMXLayerInfo.java"


# instance fields
.field layerSize:Lorg/cocos2d/types/CGSize;

.field maxGID:I

.field minGID:I

.field name:Ljava/lang/String;

.field offset:Lorg/cocos2d/types/CGPoint;

.field opacity:I

.field ownTiles:Z

.field properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tiles:Ljava/nio/IntBuffer;

.field visible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0xff

    iput v0, p0, Lorg/cocos2d/layers/CCTMXLayerInfo;->opacity:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/layers/CCTMXLayerInfo;->ownTiles:Z

    .line 33
    const v0, 0x186a0

    iput v0, p0, Lorg/cocos2d/layers/CCTMXLayerInfo;->minGID:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/layers/CCTMXLayerInfo;->maxGID:I

    .line 35
    iput-object v1, p0, Lorg/cocos2d/layers/CCTMXLayerInfo;->name:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/cocos2d/layers/CCTMXLayerInfo;->tiles:Ljava/nio/IntBuffer;

    .line 37
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/layers/CCTMXLayerInfo;->offset:Lorg/cocos2d/types/CGPoint;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/layers/CCTMXLayerInfo;->properties:Ljava/util/HashMap;

    .line 39
    return-void
.end method
