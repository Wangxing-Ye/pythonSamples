.class public Lorg/cocos2d/actions/tile/Tile;
.super Ljava/lang/Object;
.source "Tile.java"


# instance fields
.field delta:Lorg/cocos2d/types/ccGridSize;

.field position:Lorg/cocos2d/types/CGPoint;

.field startPosition:Lorg/cocos2d/types/CGPoint;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/ccGridSize;)V
    .locals 2
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "startPos"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "gs"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/tile/Tile;->position:Lorg/cocos2d/types/CGPoint;

    .line 21
    iget v0, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/tile/Tile;->startPosition:Lorg/cocos2d/types/CGPoint;

    .line 22
    iget v0, p3, Lorg/cocos2d/types/ccGridSize;->x:I

    iget v1, p3, Lorg/cocos2d/types/ccGridSize;->y:I

    invoke-static {v0, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/tile/Tile;->delta:Lorg/cocos2d/types/ccGridSize;

    .line 23
    return-void
.end method

.method public static make()Lorg/cocos2d/actions/tile/Tile;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/actions/tile/Tile;

    invoke-direct {v0}, Lorg/cocos2d/actions/tile/Tile;-><init>()V

    return-object v0
.end method

.method public static make(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/actions/tile/Tile;
    .locals 1
    .param p0, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "startPos"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "gs"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/actions/tile/Tile;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/actions/tile/Tile;-><init>(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/ccGridSize;)V

    return-object v0
.end method
