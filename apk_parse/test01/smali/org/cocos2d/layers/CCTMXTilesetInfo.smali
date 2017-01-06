.class public Lorg/cocos2d/layers/CCTMXTilesetInfo;
.super Ljava/lang/Object;
.source "CCTMXTilesetInfo.java"


# instance fields
.field firstGid:I

.field imageSize:Lorg/cocos2d/types/CGSize;

.field margin:I

.field name:Ljava/lang/String;

.field sourceImage:Ljava/lang/String;

.field spacing:I

.field tileSize:Lorg/cocos2d/types/CGSize;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rectForGID(I)Lorg/cocos2d/types/CGRect;
    .locals 6
    .param p1, "gid"    # I

    .prologue
    .line 33
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->tileSize:Lorg/cocos2d/types/CGSize;

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGRect;->make(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 35
    .local v1, "rect":Lorg/cocos2d/types/CGRect;
    iget v2, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->firstGid:I

    sub-int/2addr p1, v2

    .line 37
    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->imageSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget v3, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->margin:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->spacing:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->tileSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v4, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->spacing:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 39
    .local v0, "max_x":I
    iget-object v2, v1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    rem-int v3, p1, v0

    int-to-float v3, v3

    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->tileSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    iget v5, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->spacing:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->margin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lorg/cocos2d/types/CGPoint;->x:F

    .line 40
    iget-object v2, v1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    div-int v3, p1, v0

    int-to-float v3, v3

    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->tileSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    iget v5, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->spacing:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->margin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 42
    return-object v1
.end method
