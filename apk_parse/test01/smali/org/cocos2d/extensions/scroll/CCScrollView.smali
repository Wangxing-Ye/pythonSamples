.class public Lorg/cocos2d/extensions/scroll/CCScrollView;
.super Lorg/cocos2d/layers/CCLayer;
.source "CCScrollView.java"


# static fields
.field private static final BOUNCE_DURATION:F = 0.35f

.field public static final CCScrollViewDirectionBoth:I = 0x3

.field public static final CCScrollViewDirectionHorizontal:I = 0x1

.field public static final CCScrollViewDirectionVertical:I = 0x2

.field private static final INSET_RATIO:F = 0.3f

.field private static final SCROLL_DEACCEL_DIST:F = 1.0f

.field private static final SCROLL_DEACCEL_RATE:F = 0.95f


# instance fields
.field public bounces:Z

.field private clipsToBounds:Z

.field container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

.field public delegate:Lorg/cocos2d/extensions/scroll/CCScrollViewDelegate;

.field public direction:I

.field public isDragging:Landroid/R$bool;

.field isDragging_:Z

.field isScrollLock:Z

.field maxInset_:Lorg/cocos2d/types/CGPoint;

.field minInset_:Lorg/cocos2d/types/CGPoint;

.field scrollDistance_:Lorg/cocos2d/types/CGPoint;

.field touchLength_:F

.field touchMoved_:Z

.field touchPoint_:Lorg/cocos2d/types/CGPoint;

.field public viewSize:Lorg/cocos2d/types/CGSize;


# direct methods
.method public constructor <init>(Lorg/cocos2d/types/CGSize;)V
    .locals 4
    .param p1, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    .line 63
    new-instance v0, Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-direct {v0}, Lorg/cocos2d/extensions/scroll/CCClipNode;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->delegate:Lorg/cocos2d/extensions/scroll/CCScrollViewDelegate;

    .line 66
    iput-boolean v3, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->bounces:Z

    .line 67
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    .line 69
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-static {v2, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 70
    iput v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchLength_:F

    .line 72
    invoke-virtual {p0, v3}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setIsTouchEnabled(Z)V

    .line 73
    invoke-virtual {p0, v3}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setClipToBounds(Z)V

    .line 74
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {p0, v0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 76
    return-void
.end method

.method public static view(Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/extensions/scroll/CCScrollView;
    .locals 1
    .param p0, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 79
    new-instance v0, Lorg/cocos2d/extensions/scroll/CCScrollView;

    invoke-direct {v0, p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;-><init>(Lorg/cocos2d/types/CGSize;)V

    return-object v0
.end method


# virtual methods
.method public addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;
    .locals 1
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I
    .param p3, "aTag"    # I

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-static {v0, v0}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCNode;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 303
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    if-eq v0, p1, :cond_0

    .line 304
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/cocos2d/extensions/scroll/CCClipNode;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 308
    :goto_0
    return-object p0

    .line 306
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    goto :goto_0
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 362
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->getVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 399
    :goto_0
    return v2

    .line 367
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v6, v6, v4, v5}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .line 369
    .local v0, "frame":Lorg/cocos2d/types/CGRect;
    invoke-virtual {p0, p1}, Lorg/cocos2d/extensions/scroll/CCScrollView;->convertTouchToNodeSpace(Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 373
    .local v1, "touch":Lorg/cocos2d/types/CGPoint;
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 374
    invoke-static {v7, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchPoint_:Lorg/cocos2d/types/CGPoint;

    .line 375
    iput-boolean v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->isDragging_:Z

    goto :goto_0

    .line 383
    :cond_1
    iput-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchPoint_:Lorg/cocos2d/types/CGPoint;

    .line 384
    iput-boolean v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchMoved_:Z

    .line 385
    iput-boolean v3, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->isDragging_:Z

    .line 386
    invoke-static {v6, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->scrollDistance_:Lorg/cocos2d/types/CGPoint;

    .line 387
    iput v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchLength_:F

    move v2, v3

    .line 399
    goto :goto_0
.end method

.method public ccTouchesCancelled(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->getVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    :goto_0
    return v0

    .line 483
    :cond_0
    iput-boolean v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->isDragging_:Z

    .line 484
    iput-boolean v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchMoved_:Z

    .line 487
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->getVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    :goto_0
    return v0

    .line 463
    :cond_0
    iget-boolean v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchMoved_:Z

    if-eqz v1, :cond_1

    .line 464
    const-string v1, "deaccelerateScrolling"

    invoke-virtual {p0, v1}, Lorg/cocos2d/extensions/scroll/CCScrollView;->schedule(Ljava/lang/String;)V

    .line 469
    :cond_1
    iput-boolean v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->isDragging_:Z

    .line 470
    iput-boolean v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchMoved_:Z

    .line 473
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 404
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->getVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->isScrollLock:Z

    if-eqz v7, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v5

    .line 407
    :cond_1
    iput-boolean v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchMoved_:Z

    .line 410
    iget-boolean v7, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->isDragging_:Z

    if-eqz v7, :cond_2

    .line 415
    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v6, v6, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v7, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v8, v8, v6, v7}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .line 416
    .local v0, "frame":Lorg/cocos2d/types/CGRect;
    invoke-virtual {p0, p1}, Lorg/cocos2d/extensions/scroll/CCScrollView;->convertTouchToNodeSpace(Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 417
    .local v2, "newPoint":Lorg/cocos2d/types/CGPoint;
    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchPoint_:Lorg/cocos2d/types/CGPoint;

    invoke-static {v2, v6}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 418
    .local v1, "moveDistance":Lorg/cocos2d/types/CGPoint;
    iput-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchPoint_:Lorg/cocos2d/types/CGPoint;

    .line 420
    invoke-static {v0, v2}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 421
    iget v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    packed-switch v6, :pswitch_data_0

    .line 431
    :goto_1
    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    iget-object v7, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v7}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    invoke-static {v7, v1}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/cocos2d/extensions/scroll/CCClipNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 434
    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v6}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v7, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxInset_:Lorg/cocos2d/types/CGPoint;

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 435
    .local v3, "newX":F
    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->minInset_:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 436
    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v6}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v7, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxInset_:Lorg/cocos2d/types/CGPoint;

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 437
    .local v4, "newY":F
    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->minInset_:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 439
    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v6}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float v6, v3, v6

    iget-object v7, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v7}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    iget v7, v7, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float v7, v4, v7

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    iput-object v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->scrollDistance_:Lorg/cocos2d/types/CGPoint;

    .line 440
    invoke-static {v3, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;)V

    goto/16 :goto_0

    .line 423
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    :pswitch_0
    iget v6, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v8, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 424
    goto :goto_1

    .line 426
    :pswitch_1
    iget v6, v1, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v6, v8}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 427
    goto :goto_1

    .end local v0    # "frame":Lorg/cocos2d/types/CGRect;
    .end local v1    # "moveDistance":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "newPoint":Lorg/cocos2d/types/CGPoint;
    :cond_2
    move v5, v6

    .line 453
    goto/16 :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public computeInsets()V
    .locals 4

    .prologue
    const v3, 0x3e99999a    # 0.3f

    .line 182
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxContainerOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxInset_:Lorg/cocos2d/types/CGPoint;

    .line 183
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxInset_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 184
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxInset_:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 183
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxInset_:Lorg/cocos2d/types/CGPoint;

    .line 185
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->minContainerOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->minInset_:Lorg/cocos2d/types/CGPoint;

    .line 186
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->minInset_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 187
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->minInset_:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 186
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->minInset_:Lorg/cocos2d/types/CGPoint;

    .line 188
    return-void
.end method

.method public contentOffset()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public contentSize()Lorg/cocos2d/types/CGSize;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    return-object v0
.end method

.method public deaccelerateScrolling(F)V
    .locals 7
    .param p1, "dt"    # F

    .prologue
    .line 225
    iget-boolean v4, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->isDragging_:Z

    if-eqz v4, :cond_1

    .line 226
    const-string v4, "deaccelerateScrolling"

    invoke-virtual {p0, v4}, Lorg/cocos2d/extensions/scroll/CCScrollView;->unschedule(Ljava/lang/String;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v5}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->scrollDistance_:Lorg/cocos2d/types/CGPoint;

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/extensions/scroll/CCClipNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 235
    iget-boolean v4, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->bounces:Z

    if-eqz v4, :cond_3

    .line 236
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxInset_:Lorg/cocos2d/types/CGPoint;

    .line 237
    .local v0, "maxInset":Lorg/cocos2d/types/CGPoint;
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->minInset_:Lorg/cocos2d/types/CGPoint;

    .line 244
    .local v1, "minInset":Lorg/cocos2d/types/CGPoint;
    :goto_1
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v4}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->x:F

    iget v5, v0, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 245
    .local v2, "newX":F
    iget v4, v1, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 246
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v4}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->y:F

    iget v5, v0, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 247
    .local v3, "newY":F
    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 249
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->scrollDistance_:Lorg/cocos2d/types/CGPoint;

    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v5}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float v5, v2, v5

    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v6}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float v6, v3, v6

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    iput-object v4, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->scrollDistance_:Lorg/cocos2d/types/CGPoint;

    .line 250
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->scrollDistance_:Lorg/cocos2d/types/CGPoint;

    const v5, 0x3f733333    # 0.95f

    invoke-static {v4, v5}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    iput-object v4, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->scrollDistance_:Lorg/cocos2d/types/CGPoint;

    .line 251
    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;)V

    .line 253
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->scrollDistance_:Lorg/cocos2d/types/CGPoint;

    invoke-static {v4}, Lorg/cocos2d/types/CGPoint;->ccpLengthSQ(Lorg/cocos2d/types/CGPoint;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-lez v4, :cond_2

    .line 254
    iget v4, v0, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    .line 255
    iget v4, v0, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    .line 256
    :cond_2
    const-string v4, "deaccelerateScrolling"

    invoke-virtual {p0, v4}, Lorg/cocos2d/extensions/scroll/CCScrollView;->unschedule(Ljava/lang/String;)V

    .line 257
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/cocos2d/extensions/scroll/CCScrollView;->relocateContainer(Z)V

    goto/16 :goto_0

    .line 239
    .end local v0    # "maxInset":Lorg/cocos2d/types/CGPoint;
    .end local v1    # "minInset":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "newX":F
    .end local v3    # "newY":F
    :cond_3
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxContainerOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 240
    .restart local v0    # "maxInset":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->minContainerOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .restart local v1    # "minInset":Lorg/cocos2d/types/CGPoint;
    goto/16 :goto_1
.end method

.method public getContainer()Lorg/cocos2d/extensions/scroll/CCClipNode;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    return-object v0
.end method

.method public getContentSize()Lorg/cocos2d/types/CGSize;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    return v0
.end method

.method public isNodeVisible(Lorg/cocos2d/nodes/CCNode;)Z
    .locals 8
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 101
    .local v0, "offset":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    .line 102
    .local v2, "size":Lorg/cocos2d/types/CGSize;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 106
    .local v1, "scale":F
    iget v4, v0, Lorg/cocos2d/types/CGPoint;->x:F

    neg-float v4, v4

    div-float/2addr v4, v1

    iget v5, v0, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v5, v5

    div-float/2addr v5, v1

    iget v6, v2, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v6, v1

    iget v7, v2, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v7, v1

    invoke-static {v4, v5, v6, v7}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v3

    .line 108
    .local v3, "viewRect":Lorg/cocos2d/types/CGRect;
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->getBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cocos2d/types/CGRect;->intersects(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGRect;)Z

    move-result v4

    return v4
.end method

.method public maxContainerOffset()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-static {v0, v0}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public minContainerOffset()Lorg/cocos2d/types/CGPoint;
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v2}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 220
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v2}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v3, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v3}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 219
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public performedAnimatedScroll(F)V
    .locals 1
    .param p1, "dt"    # F

    .prologue
    .line 266
    iget-boolean v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->isDragging_:Z

    if-eqz v0, :cond_1

    .line 267
    const-string v0, "performedAnimatedScroll"

    invoke-virtual {p0, v0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->unschedule(Ljava/lang/String;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->delegate:Lorg/cocos2d/extensions/scroll/CCScrollViewDelegate;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->delegate:Lorg/cocos2d/extensions/scroll/CCScrollViewDelegate;

    invoke-interface {v0, p0}, Lorg/cocos2d/extensions/scroll/CCScrollViewDelegate;->scrollViewDidScroll(Lorg/cocos2d/extensions/scroll/CCScrollView;)V

    goto :goto_0
.end method

.method public registerWithTouchDispatcher()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lorg/cocos2d/events/CCTouchDispatcher;->addTargetedDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;IZ)V

    .line 85
    return-void
.end method

.method public relocateContainer(Z)V
    .locals 8
    .param p1, "animated"    # Z

    .prologue
    const/4 v7, 0x3

    .line 194
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->minContainerOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 195
    .local v1, "min":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxContainerOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 197
    .local v0, "max":Lorg/cocos2d/types/CGPoint;
    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v5}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 198
    .local v4, "oldPoint":Lorg/cocos2d/types/CGPoint;
    iget v2, v4, Lorg/cocos2d/types/CGPoint;->x:F

    .line 199
    .local v2, "newX":F
    iget v3, v4, Lorg/cocos2d/types/CGPoint;->y:F

    .line 200
    .local v3, "newY":F
    iget v5, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    if-eq v5, v7, :cond_0

    iget v5, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 201
    :cond_0
    iget v5, v0, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 202
    iget v5, v1, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 204
    :cond_1
    iget v5, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    if-eq v5, v7, :cond_2

    iget v5, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 205
    :cond_2
    iget v5, v0, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 206
    iget v5, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 208
    :cond_3
    iget v5, v4, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v5, v3, v5

    if-nez v5, :cond_4

    iget v5, v4, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_5

    .line 209
    :cond_4
    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;Z)V

    .line 211
    :cond_5
    return-void
.end method

.method public setClipToBounds(Z)V
    .locals 4
    .param p1, "bClip"    # Z

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-boolean v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->clipsToBounds:Z

    if-eq p1, v1, :cond_0

    .line 90
    if-eqz p1, :cond_1

    .line 91
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v3, v3, v1, v2}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .line 94
    .local v0, "clipRect":Lorg/cocos2d/types/CGRect;
    :goto_0
    iput-boolean p1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->clipsToBounds:Z

    .line 95
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v1, v0}, Lorg/cocos2d/extensions/scroll/CCClipNode;->setClipRect(Lorg/cocos2d/types/CGRect;)V

    .line 97
    .end local v0    # "clipRect":Lorg/cocos2d/types/CGRect;
    :cond_0
    return-void

    .line 93
    :cond_1
    const v1, 0x47c34f80    # 99999.0f

    invoke-static {v1, v3, v3, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .restart local v0    # "clipRect":Lorg/cocos2d/types/CGRect;
    goto :goto_0
.end method

.method public setContentOffset(Lorg/cocos2d/types/CGPoint;)V
    .locals 1
    .param p1, "offset"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;Z)V

    .line 127
    return-void
.end method

.method public setContentOffset(Lorg/cocos2d/types/CGPoint;F)V
    .locals 5
    .param p1, "offset"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "dt"    # F

    .prologue
    .line 151
    invoke-static {p2, p1}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v1

    .line 152
    .local v1, "scroll":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    const-string v2, "stoppedAnimatedScroll"

    invoke-static {p0, v2}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v0

    .line 153
    .local v0, "expire":Lorg/cocos2d/actions/base/CCFiniteTimeAction;
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/extensions/scroll/CCClipNode;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 154
    const-string v2, "performedAnimatedScroll"

    invoke-virtual {p0, v2}, Lorg/cocos2d/extensions/scroll/CCScrollView;->schedule(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public setContentOffset(Lorg/cocos2d/types/CGPoint;Z)V
    .locals 5
    .param p1, "offset"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "animated"    # Z

    .prologue
    .line 130
    if-eqz p2, :cond_1

    .line 131
    const v2, 0x3eb33333    # 0.35f

    invoke-virtual {p0, p1, v2}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;F)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-boolean v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->bounces:Z

    if-nez v2, :cond_2

    .line 134
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->minContainerOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 135
    .local v1, "minOffset":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxContainerOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 137
    .local v0, "maxOffset":Lorg/cocos2d/types/CGPoint;
    iget v2, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, p1, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Lorg/cocos2d/types/CGPoint;->x:F

    .line 138
    iget v2, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v3, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v4, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 140
    .end local v0    # "maxOffset":Lorg/cocos2d/types/CGPoint;
    .end local v1    # "minOffset":Lorg/cocos2d/types/CGPoint;
    :cond_2
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v2, p1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 141
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->delegate:Lorg/cocos2d/extensions/scroll/CCScrollViewDelegate;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->delegate:Lorg/cocos2d/extensions/scroll/CCScrollViewDelegate;

    invoke-interface {v2, p0}, Lorg/cocos2d/extensions/scroll/CCScrollViewDelegate;->scrollViewDidScroll(Lorg/cocos2d/extensions/scroll/CCScrollView;)V

    goto :goto_0
.end method

.method public setContentSize(Lorg/cocos2d/types/CGSize;)V
    .locals 4
    .param p1, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    const v3, 0x3e99999a    # 0.3f

    .line 282
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    if-nez v0, :cond_0

    .line 283
    invoke-super {p0, p1}, Lorg/cocos2d/layers/CCLayer;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 293
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v0, p1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 286
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxContainerOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxInset_:Lorg/cocos2d/types/CGPoint;

    .line 287
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxInset_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 288
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxInset_:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 287
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->maxInset_:Lorg/cocos2d/types/CGPoint;

    .line 289
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->minContainerOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->minInset_:Lorg/cocos2d/types/CGPoint;

    .line 290
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->minInset_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 291
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->minInset_:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 290
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->minInset_:Lorg/cocos2d/types/CGPoint;

    goto :goto_0
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 493
    iput p1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    .line 494
    return-void
.end method

.method public setIsScrollLock(Z)V
    .locals 0
    .param p1, "e"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->isScrollLock:Z

    .line 123
    return-void
.end method

.method public setIsTouchEnabled(Z)V
    .locals 1
    .param p1, "e"    # Z

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-super {p0, p1}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 114
    if-nez p1, :cond_0

    .line 115
    iput-boolean v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->isDragging_:Z

    .line 116
    iput-boolean v0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->touchMoved_:Z

    .line 119
    :cond_0
    return-void
.end method

.method public setViewSize(Lorg/cocos2d/types/CGSize;)V
    .locals 4
    .param p1, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    invoke-static {v1, p1}, Lorg/cocos2d/types/CGSize;->equalToSize(Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iput-object p1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    .line 171
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->computeInsets()V

    .line 174
    iget-boolean v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->clipsToBounds:Z

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v3, v3, v1, v2}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .line 176
    .local v0, "clipRect":Lorg/cocos2d/types/CGRect;
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v1, v0}, Lorg/cocos2d/extensions/scroll/CCClipNode;->setClipRect(Lorg/cocos2d/types/CGRect;)V

    .line 179
    .end local v0    # "clipRect":Lorg/cocos2d/types/CGRect;
    :cond_0
    return-void
.end method

.method public stoppedAnimatedScroll()V
    .locals 1

    .prologue
    .line 262
    const-string v0, "performedAnimatedScroll"

    invoke-virtual {p0, v0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->unschedule(Ljava/lang/String;)V

    .line 263
    return-void
.end method
