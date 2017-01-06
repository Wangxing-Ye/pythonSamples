.class public Lorg/cocos2d/extensions/scroll/CCClipNode;
.super Lorg/cocos2d/layers/CCLayer;
.source "CCClipNode.java"


# static fields
.field public static final RECT_ORIGIN_INVALID:I = 0x1869f

.field static pos:Lorg/cocos2d/types/CGPoint;

.field static pos2:Lorg/cocos2d/types/CGPoint;

.field static rect:Lorg/cocos2d/types/CGRect;


# instance fields
.field _clippedRect:Lorg/cocos2d/types/CGRect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    .line 20
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    .line 21
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/extensions/scroll/CCClipNode;->rect:Lorg/cocos2d/types/CGRect;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 16
    const v0, 0x47c35000    # 100000.0f

    invoke-static {v0, v1, v1, v1}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCClipNode;->_clippedRect:Lorg/cocos2d/types/CGRect;

    .line 17
    return-void
.end method

.method private clipRectFromRect()V
    .locals 9

    .prologue
    .line 24
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 27
    .local v0, "size":Lorg/cocos2d/types/CGSize;
    sget-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCClipNode;->_clippedRect:Lorg/cocos2d/types/CGRect;

    iget-object v6, v6, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v5, v6}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    .line 29
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v5

    sget-object v6, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->x:F

    sget-object v7, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->y:F

    sget-object v8, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v5, v6, v7, v8}, Lorg/cocos2d/nodes/CCNode;->convertToWorldSpace(FFLorg/cocos2d/types/CGPoint;)V

    .line 30
    sget-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    iget v6, v0, Lorg/cocos2d/types/CGSize;->height:F

    sget-object v7, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/types/CGPoint;->y:F

    .line 31
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v5

    sget-object v6, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v5, v6}, Lorg/cocos2d/nodes/CCDirector;->convertToUI(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    sput-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    .line 34
    sget-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCClipNode;->_clippedRect:Lorg/cocos2d/types/CGRect;

    iget-object v6, v6, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v5, v6}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    .line 35
    sget-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCClipNode;->_clippedRect:Lorg/cocos2d/types/CGRect;

    iget-object v6, v6, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v6, v6, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v7, p0, Lorg/cocos2d/extensions/scroll/CCClipNode;->_clippedRect:Lorg/cocos2d/types/CGRect;

    iget-object v7, v7, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    sput-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    .line 36
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v5

    sget-object v6, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->x:F

    sget-object v7, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->y:F

    sget-object v8, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v5, v6, v7, v8}, Lorg/cocos2d/nodes/CCNode;->convertToWorldSpace(FFLorg/cocos2d/types/CGPoint;)V

    .line 37
    sget-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    iget v6, v0, Lorg/cocos2d/types/CGSize;->height:F

    sget-object v7, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/types/CGPoint;->y:F

    .line 38
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v5

    sget-object v6, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v5, v6}, Lorg/cocos2d/nodes/CCDirector;->convertToUI(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    sput-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    .line 40
    sget-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->x:F

    sget-object v6, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 41
    .local v1, "x1":F
    sget-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->y:F

    sget-object v6, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 42
    .local v3, "y1":F
    sget-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->x:F

    sget-object v6, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 43
    .local v2, "x2":F
    sget-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->y:F

    sget-object v6, Lorg/cocos2d/extensions/scroll/CCClipNode;->pos2:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 45
    .local v4, "y2":F
    sget-object v5, Lorg/cocos2d/extensions/scroll/CCClipNode;->rect:Lorg/cocos2d/types/CGRect;

    sub-float v6, v2, v1

    sub-float v7, v4, v3

    invoke-virtual {v5, v1, v3, v6, v7}, Lorg/cocos2d/types/CGRect;->set(FFFF)V

    .line 48
    return-void
.end method


# virtual methods
.method public setClipRect(Lorg/cocos2d/types/CGRect;)V
    .locals 0
    .param p1, "clippedRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/cocos2d/extensions/scroll/CCClipNode;->_clippedRect:Lorg/cocos2d/types/CGRect;

    .line 66
    return-void
.end method

.method public visit(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v5, 0xc11

    const v4, 0x47c34f80    # 99999.0f

    .line 53
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCClipNode;->_clippedRect:Lorg/cocos2d/types/CGRect;

    iget-object v0, v0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lorg/cocos2d/extensions/scroll/CCClipNode;->clipRectFromRect()V

    .line 55
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 56
    sget-object v0, Lorg/cocos2d/extensions/scroll/CCClipNode;->rect:Lorg/cocos2d/types/CGRect;

    iget-object v0, v0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-int v0, v0

    sget-object v1, Lorg/cocos2d/extensions/scroll/CCClipNode;->rect:Lorg/cocos2d/types/CGRect;

    iget-object v1, v1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-int v1, v1

    sget-object v2, Lorg/cocos2d/extensions/scroll/CCClipNode;->rect:Lorg/cocos2d/types/CGRect;

    iget-object v2, v2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v2, v2

    sget-object v3, Lorg/cocos2d/extensions/scroll/CCClipNode;->rect:Lorg/cocos2d/types/CGRect;

    iget-object v3, v3, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v3, v3

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/layers/CCLayer;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 60
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCClipNode;->_clippedRect:Lorg/cocos2d/types/CGRect;

    iget-object v0, v0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 61
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 62
    :cond_1
    return-void
.end method
