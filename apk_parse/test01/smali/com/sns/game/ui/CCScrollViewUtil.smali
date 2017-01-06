.class public final Lcom/sns/game/ui/CCScrollViewUtil;
.super Ljava/lang/Object;
.source "CCScrollViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static slidingToBottom(Lorg/cocos2d/extensions/scroll/CCScrollView;FF)V
    .locals 3
    .param p0, "targetView"    # Lorg/cocos2d/extensions/scroll/CCScrollView;
    .param p1, "slideStep"    # F
    .param p2, "slideTime"    # F

    .prologue
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->getContainer()Lorg/cocos2d/extensions/scroll/CCClipNode;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->numberOfRunningActions()I

    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 22
    :goto_0
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 15
    .local v0, "contentOffset":Lorg/cocos2d/types/CGPoint;
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 17
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, v0, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v2, p1

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 16
    invoke-virtual {p0, v1, p2}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;F)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 19
    invoke-virtual {p0, v1, p2}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;F)V

    goto :goto_0
.end method

.method public static slidingToLeft(Lorg/cocos2d/extensions/scroll/CCScrollView;FF)V
    .locals 3
    .param p0, "targetView"    # Lorg/cocos2d/extensions/scroll/CCScrollView;
    .param p1, "slideStep"    # F
    .param p2, "slideTime"    # F

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->getContainer()Lorg/cocos2d/extensions/scroll/CCClipNode;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->numberOfRunningActions()I

    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 48
    .local v0, "offsetPos":Lorg/cocos2d/types/CGPoint;
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v1, v2

    add-float/2addr v1, p1

    .line 49
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 52
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 51
    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;F)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v1, v2

    .line 56
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 54
    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;F)V

    goto :goto_0
.end method

.method public static slidingToRight(Lorg/cocos2d/extensions/scroll/CCScrollView;FF)V
    .locals 3
    .param p0, "targetView"    # Lorg/cocos2d/extensions/scroll/CCScrollView;
    .param p1, "slideStep"    # F
    .param p2, "slideTime"    # F

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->getContainer()Lorg/cocos2d/extensions/scroll/CCClipNode;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->numberOfRunningActions()I

    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 67
    .local v0, "offsetPos":Lorg/cocos2d/types/CGPoint;
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 69
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v1, p1

    .line 70
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 69
    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;F)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v2, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 72
    invoke-virtual {p0, v1, p2}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;F)V

    goto :goto_0
.end method

.method public static slidingToTop(Lorg/cocos2d/extensions/scroll/CCScrollView;FF)V
    .locals 4
    .param p0, "targetView"    # Lorg/cocos2d/extensions/scroll/CCScrollView;
    .param p1, "slideStep"    # F
    .param p2, "slideTime"    # F

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->getContainer()Lorg/cocos2d/extensions/scroll/CCClipNode;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->numberOfRunningActions()I

    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 31
    .local v0, "contentOffset":Lorg/cocos2d/types/CGPoint;
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v1, v2

    add-float/2addr v1, p1

    .line 32
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 33
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    .line 34
    iget v2, v0, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v2, p1

    .line 33
    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;F)V

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    .line 37
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCScrollView;->contentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v2, v3

    .line 36
    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentOffset(Lorg/cocos2d/types/CGPoint;F)V

    goto :goto_0
.end method
