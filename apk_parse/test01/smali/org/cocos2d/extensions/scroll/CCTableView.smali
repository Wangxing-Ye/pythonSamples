.class public Lorg/cocos2d/extensions/scroll/CCTableView;
.super Lorg/cocos2d/extensions/scroll/CCScrollView;
.source "CCTableView.java"

# interfaces
.implements Lorg/cocos2d/extensions/scroll/CCScrollViewDelegate;


# static fields
.field public static final CCTableViewFillBottomUp:I = 0x2

.field public static final CCTableViewFillTopDown:I = 0x1


# instance fields
.field public dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

.field event_:Landroid/view/MotionEvent;

.field m_cellsFreed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/extensions/scroll/CCTableViewCell;",
            ">;"
        }
    .end annotation
.end field

.field m_cellsUsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/extensions/scroll/CCTableViewCell;",
            ">;"
        }
    .end annotation
.end field

.field m_indices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m_vordering:I

.field public tDelegate:Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;

.field public verticalFillOrder:I


# direct methods
.method public constructor <init>(Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "size"    # Lorg/cocos2d/types/CGSize;
    .param p2, "container"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v1, 0x2

    .line 78
    invoke-direct {p0, p1}, Lorg/cocos2d/extensions/scroll/CCScrollView;-><init>(Lorg/cocos2d/types/CGSize;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsFreed:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_indices:Ljava/util/HashSet;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->tDelegate:Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;

    .line 85
    iput v1, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_vordering:I

    .line 86
    iput v1, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    .line 88
    iput-object p0, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->delegate:Lorg/cocos2d/extensions/scroll/CCScrollViewDelegate;

    .line 89
    return-void
.end method

.method private __indexFromOffset(Lorg/cocos2d/types/CGPoint;)I
    .locals 4
    .param p1, "offset"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 314
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v2, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->cellSizeForTable(Lorg/cocos2d/extensions/scroll/CCTableView;)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 316
    .local v0, "cellSize":Lorg/cocos2d/types/CGSize;
    iget v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    packed-switch v2, :pswitch_data_0

    .line 321
    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v3, v0, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 325
    .local v1, "index":I
    :goto_0
    return v1

    .line 318
    .end local v1    # "index":I
    :pswitch_0
    iget v2, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, v0, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 319
    .restart local v1    # "index":I
    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private __offsetFromIndex(I)Lorg/cocos2d/types/CGPoint;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 281
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v2, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->cellSizeForTable(Lorg/cocos2d/extensions/scroll/CCTableView;)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 282
    .local v0, "cellSize":Lorg/cocos2d/types/CGSize;
    iget v2, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    packed-switch v2, :pswitch_data_0

    .line 287
    iget v2, v0, Lorg/cocos2d/types/CGSize;->height:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    invoke-static {v4, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 291
    .local v1, "offset":Lorg/cocos2d/types/CGPoint;
    :goto_0
    return-object v1

    .line 284
    .end local v1    # "offset":Lorg/cocos2d/types/CGPoint;
    :pswitch_0
    iget v2, v0, Lorg/cocos2d/types/CGSize;->width:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    invoke-static {v2, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 285
    .restart local v1    # "offset":Lorg/cocos2d/types/CGPoint;
    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private _addCellIfNecessary(Lorg/cocos2d/extensions/scroll/CCTableViewCell;)V
    .locals 4
    .param p1, "cell"    # Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .prologue
    .line 228
    invoke-virtual {p1}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    if-eq v2, v3, :cond_0

    .line 229
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v2, p1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 233
    :cond_0
    const/4 v1, 0x0

    .line 234
    .local v1, "inserted":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 241
    :goto_1
    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_indices:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getObjectID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    return-void

    .line 235
    :cond_2
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    invoke-virtual {v2}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getObjectID()I

    move-result v2

    invoke-virtual {p1}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getObjectID()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 236
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_1

    .line 234
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _cellWithIndex(I)Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    .locals 4
    .param p1, "cellIndex"    # I

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, "found":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    iget-object v3, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_indices:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 335
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 348
    :cond_1
    :goto_0
    return-object v0

    .line 336
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 338
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    iget-object v3, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 339
    iget-object v3, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    invoke-virtual {v3}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getObjectID()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 340
    iget-object v3, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "found":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    check-cast v0, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .line 341
    .restart local v0    # "found":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    goto :goto_0

    .line 338
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private _indexFromOffset(Lorg/cocos2d/types/CGPoint;)I
    .locals 6
    .param p1, "offset"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 297
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v4, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->numberOfCellsInTableView(Lorg/cocos2d/extensions/scroll/CCTableView;)I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 299
    .local v2, "maxIdx":I
    iget v4, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v5, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v4, v5}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 300
    .local v3, "newOffset":Lorg/cocos2d/types/CGPoint;
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v4, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->cellSizeForTable(Lorg/cocos2d/extensions/scroll/CCTableView;)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 301
    .local v0, "cellSize":Lorg/cocos2d/types/CGSize;
    iget v4, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_vordering:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 302
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v4}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v4

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    iget v5, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v4, v5

    iget v5, v0, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v4, v5

    iput v4, v3, Lorg/cocos2d/types/CGPoint;->y:F

    .line 304
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v3}, Lorg/cocos2d/extensions/scroll/CCTableView;->__indexFromOffset(Lorg/cocos2d/types/CGPoint;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 305
    .local v1, "index":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 306
    return v1
.end method

.method private _moveCellOutOfSight(Lorg/cocos2d/extensions/scroll/CCTableViewCell;)V
    .locals 4
    .param p1, "cell"    # Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .prologue
    .line 353
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsFreed:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 357
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_indices:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 358
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 366
    :goto_0
    invoke-virtual {p1}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->reset()V

    .line 367
    invoke-virtual {p1}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    if-ne v2, v3, :cond_1

    .line 368
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lorg/cocos2d/extensions/scroll/CCClipNode;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 370
    :cond_1
    return-void

    .line 359
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 360
    .local v1, "number":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getObjectID()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 361
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_indices:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private _offsetFromIndex(I)Lorg/cocos2d/types/CGPoint;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->__offsetFromIndex(I)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 269
    .local v1, "offset":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v2, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->cellSizeForTable(Lorg/cocos2d/extensions/scroll/CCTableView;)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 270
    .local v0, "cellSize":Lorg/cocos2d/types/CGSize;
    iget v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_vordering:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 271
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v2}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v2, v3

    iget v3, v0, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v2, v3

    iput v2, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 273
    :cond_0
    return-object v1
.end method

.method private _setIndex(ILorg/cocos2d/extensions/scroll/CCTableViewCell;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "cell"    # Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .prologue
    const/4 v0, 0x0

    .line 374
    invoke-static {v0, v0}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 375
    invoke-direct {p0, p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->_offsetFromIndex(I)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 376
    invoke-virtual {p2, p1}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->setObjectID(I)V

    .line 377
    return-void
.end method

.method private cellAtIndex(I)Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->_cellWithIndex(I)Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    move-result-object v0

    return-object v0
.end method

.method private insertCellAtIndex(I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    .line 182
    return-void
.end method

.method private removeCellAtIndex(I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    .line 211
    return-void
.end method

.method private setMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 492
    iput-object p1, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->event_:Landroid/view/MotionEvent;

    .line 493
    return-void
.end method

.method private updateCellAtIndex(I)V
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 136
    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v1, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->numberOfCellsInTableView(Lorg/cocos2d/extensions/scroll/CCTableView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-direct {p0, p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->_cellWithIndex(I)Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    move-result-object v0

    .line 143
    .local v0, "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    if-eqz v0, :cond_2

    .line 144
    invoke-direct {p0, v0}, Lorg/cocos2d/extensions/scroll/CCTableView;->_moveCellOutOfSight(Lorg/cocos2d/extensions/scroll/CCTableViewCell;)V

    .line 146
    :cond_2
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v1, p0, p1}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->tableCellAtIndex(Lorg/cocos2d/extensions/scroll/CCTableView;I)Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    move-result-object v0

    .line 147
    invoke-direct {p0, p1, v0}, Lorg/cocos2d/extensions/scroll/CCTableView;->_setIndex(ILorg/cocos2d/extensions/scroll/CCTableViewCell;)V

    .line 148
    invoke-direct {p0, v0}, Lorg/cocos2d/extensions/scroll/CCTableView;->_addCellIfNecessary(Lorg/cocos2d/extensions/scroll/CCTableViewCell;)V

    goto :goto_0
.end method

.method public static view(Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/extensions/scroll/CCTableView;
    .locals 1
    .param p0, "dataSource"    # Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;
    .param p1, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/cocos2d/extensions/scroll/CCTableView;->view(Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/extensions/scroll/CCTableView;

    move-result-object v0

    return-object v0
.end method

.method public static view(Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/extensions/scroll/CCTableView;
    .locals 1
    .param p0, "dataSource"    # Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;
    .param p1, "size"    # Lorg/cocos2d/types/CGSize;
    .param p2, "container"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 69
    new-instance v0, Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-direct {v0, p1, p2}, Lorg/cocos2d/extensions/scroll/CCTableView;-><init>(Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCNode;)V

    .line 70
    .local v0, "table":Lorg/cocos2d/extensions/scroll/CCTableView;
    iput-object p0, v0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    .line 71
    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCTableView;->_updateContentSize()V

    .line 73
    return-object v0
.end method


# virtual methods
.method _updateContentSize()V
    .locals 6

    .prologue
    .line 251
    iget-object v3, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v3, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->cellSizeForTable(Lorg/cocos2d/extensions/scroll/CCTableView;)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 252
    .local v1, "cellSize":Lorg/cocos2d/types/CGSize;
    iget-object v3, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v3, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->numberOfCellsInTableView(Lorg/cocos2d/extensions/scroll/CCTableView;)I

    move-result v0

    .line 254
    .local v0, "cellCount":I
    iget v3, p0, Lorg/cocos2d/extensions/scroll/CCScrollView;->direction:I

    packed-switch v3, :pswitch_data_0

    .line 259
    iget v3, v1, Lorg/cocos2d/types/CGSize;->width:F

    int-to-float v4, v0

    iget v5, v1, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 262
    .local v2, "size":Lorg/cocos2d/types/CGSize;
    :goto_0
    invoke-virtual {p0, v2}, Lorg/cocos2d/extensions/scroll/CCTableView;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 263
    return-void

    .line 256
    .end local v2    # "size":Lorg/cocos2d/types/CGSize;
    :pswitch_0
    int-to-float v3, v0

    iget v4, v1, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v3, v4

    iget v4, v1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v3, v4}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 257
    .restart local v2    # "size":Lorg/cocos2d/types/CGSize;
    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 455
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCTableView;->getVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 456
    const/4 v4, 0x0

    .line 480
    :goto_0
    return v4

    .line 460
    :cond_0
    iget-boolean v4, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->touchMoved_:Z

    if-nez v4, :cond_2

    .line 465
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v4, p1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->convertTouchToNodeSpace(Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 466
    .local v3, "point":Lorg/cocos2d/types/CGPoint;
    iget v4, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_vordering:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 467
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v4, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->cellSizeForTable(Lorg/cocos2d/extensions/scroll/CCTableView;)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 468
    .local v1, "cellSize":Lorg/cocos2d/types/CGSize;
    iget v4, v3, Lorg/cocos2d/types/CGPoint;->y:F

    iget v5, v1, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v4, v5

    iput v4, v3, Lorg/cocos2d/types/CGPoint;->y:F

    .line 470
    .end local v1    # "cellSize":Lorg/cocos2d/types/CGSize;
    :cond_1
    invoke-direct {p0, v3}, Lorg/cocos2d/extensions/scroll/CCTableView;->_indexFromOffset(Lorg/cocos2d/types/CGPoint;)I

    move-result v2

    .line 471
    .local v2, "index":I
    invoke-direct {p0, v2}, Lorg/cocos2d/extensions/scroll/CCTableView;->_cellWithIndex(I)Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    move-result-object v0

    .line 473
    .local v0, "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    if-eqz v0, :cond_2

    .line 474
    invoke-direct {p0, p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->setMotionEvent(Landroid/view/MotionEvent;)V

    .line 475
    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->tDelegate:Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;

    invoke-interface {v4, p0, v0}, Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;->tableCellTouched(Lorg/cocos2d/extensions/scroll/CCTableView;Lorg/cocos2d/extensions/scroll/CCTableViewCell;)V

    .line 476
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setMotionEvent(Landroid/view/MotionEvent;)V

    .line 480
    .end local v0    # "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    .end local v2    # "index":I
    .end local v3    # "point":Lorg/cocos2d/types/CGPoint;
    :cond_2
    invoke-super {p0, p1}, Lorg/cocos2d/extensions/scroll/CCScrollView;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public dequeueCell()Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsFreed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    .line 220
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsFreed:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .line 221
    .local v0, "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsFreed:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->event_:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public reloadData()V
    .locals 4

    .prologue
    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 120
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_indices:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCTableView;->_updateContentSize()V

    .line 124
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v2, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->numberOfCellsInTableView(Lorg/cocos2d/extensions/scroll/CCTableView;)I

    move-result v2

    if-lez v2, :cond_0

    .line 125
    invoke-virtual {p0, p0}, Lorg/cocos2d/extensions/scroll/CCTableView;->scrollViewDidScroll(Lorg/cocos2d/extensions/scroll/CCScrollView;)V

    .line 127
    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .line 112
    .local v0, "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsFreed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsFreed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->setObjectID(I)V

    .line 114
    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->reset()V

    .line 115
    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    if-ne v2, v3, :cond_2

    .line 116
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/cocos2d/extensions/scroll/CCClipNode;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 110
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public scrollViewDidScroll(Lorg/cocos2d/extensions/scroll/CCScrollView;)V
    .locals 13
    .param p1, "view"    # Lorg/cocos2d/extensions/scroll/CCScrollView;

    .prologue
    .line 385
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v10, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->numberOfCellsInTableView(Lorg/cocos2d/extensions/scroll/CCTableView;)I

    move-result v7

    .line 387
    .local v7, "maxIdx":I
    if-nez v7, :cond_1

    .line 451
    :cond_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCTableView;->contentOffset()Lorg/cocos2d/types/CGPoint;

    move-result-object v10

    const/high16 v11, -0x40800000    # -1.0f

    invoke-static {v10, v11}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    .line 392
    .local v8, "offset":Lorg/cocos2d/types/CGPoint;
    add-int/lit8 v10, v7, -0x1

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 394
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    invoke-interface {v10, p0}, Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;->cellSizeForTable(Lorg/cocos2d/extensions/scroll/CCTableView;)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 396
    .local v2, "cellSize":Lorg/cocos2d/types/CGSize;
    iget v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_vordering:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 397
    iget v10, v8, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v11, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v11, v11, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v12, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v12}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getScaleY()F

    move-result v12

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iget v11, v2, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v10, v11

    iput v10, v8, Lorg/cocos2d/types/CGPoint;->y:F

    .line 399
    :cond_2
    invoke-direct {p0, v8}, Lorg/cocos2d/extensions/scroll/CCTableView;->_indexFromOffset(Lorg/cocos2d/types/CGPoint;)I

    move-result v9

    .line 400
    .local v9, "startIdx":I
    iget v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_vordering:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 401
    iget v10, v8, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v11, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v11, v11, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v12, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v12}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getScaleY()F

    move-result v12

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    iput v10, v8, Lorg/cocos2d/types/CGPoint;->y:F

    .line 405
    :goto_0
    iget v10, v8, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v11, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v11, v11, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v12, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v12}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getScaleX()F

    move-result v12

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v8, Lorg/cocos2d/types/CGPoint;->x:F

    .line 407
    invoke-direct {p0, v8}, Lorg/cocos2d/extensions/scroll/CCTableView;->_indexFromOffset(Lorg/cocos2d/types/CGPoint;)I

    move-result v3

    .line 410
    .local v3, "endIdx":I
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 411
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    invoke-virtual {v10}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getObjectID()I

    move-result v5

    .line 412
    .local v5, "idx":I
    :goto_1
    if-lt v5, v9, :cond_8

    .line 424
    .end local v5    # "idx":I
    :cond_3
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 425
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    invoke-virtual {v10}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getObjectID()I

    move-result v5

    .line 426
    .restart local v5    # "idx":I
    :goto_2
    if-gt v5, v7, :cond_4

    if-gt v5, v3, :cond_9

    .line 437
    .end local v5    # "idx":I
    :cond_4
    move v4, v9

    .local v4, "i":I
    :goto_3
    if-gt v4, v3, :cond_0

    .line 439
    const/4 v0, 0x1

    .line 440
    .local v0, "canUpdate":Z
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_indices:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 441
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_a

    .line 449
    :goto_4
    if-eqz v0, :cond_6

    invoke-direct {p0, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->updateCellAtIndex(I)V

    .line 437
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 403
    .end local v0    # "canUpdate":Z
    .end local v3    # "endIdx":I
    .end local v4    # "i":I
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    iget v10, v8, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v11, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->viewSize:Lorg/cocos2d/types/CGSize;

    iget v11, v11, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v12, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->container_:Lorg/cocos2d/extensions/scroll/CCClipNode;

    invoke-virtual {v12}, Lorg/cocos2d/extensions/scroll/CCClipNode;->getScaleY()F

    move-result v12

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v8, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0

    .line 413
    .restart local v3    # "endIdx":I
    .restart local v5    # "idx":I
    :cond_8
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .line 414
    .local v1, "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    invoke-direct {p0, v1}, Lorg/cocos2d/extensions/scroll/CCTableView;->_moveCellOutOfSight(Lorg/cocos2d/extensions/scroll/CCTableViewCell;)V

    .line 415
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 416
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    invoke-virtual {v10}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getObjectID()I

    move-result v5

    goto :goto_1

    .line 427
    .end local v1    # "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    :cond_9
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .line 428
    .restart local v1    # "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    invoke-direct {p0, v1}, Lorg/cocos2d/extensions/scroll/CCTableView;->_moveCellOutOfSight(Lorg/cocos2d/extensions/scroll/CCTableViewCell;)V

    .line 429
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 430
    iget-object v10, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    invoke-virtual {v10}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->getObjectID()I

    move-result v5

    goto :goto_2

    .line 442
    .end local v1    # "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    .end local v5    # "idx":I
    .restart local v0    # "canUpdate":Z
    .restart local v4    # "i":I
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v4, v10, :cond_5

    .line 443
    const/4 v0, 0x0

    .line 444
    goto :goto_4
.end method

.method public scrollViewDidZoom(Lorg/cocos2d/extensions/scroll/CCScrollView;)V
    .locals 0
    .param p1, "view"    # Lorg/cocos2d/extensions/scroll/CCScrollView;

    .prologue
    .line 487
    return-void
.end method

.method public setVerticalFillOrder(I)V
    .locals 1
    .param p1, "fillOrder"    # I

    .prologue
    .line 93
    iget v0, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_vordering:I

    if-eq v0, p1, :cond_0

    .line 94
    iput p1, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_vordering:I

    .line 101
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableView;->m_cellsUsed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/CCTableView;->reloadData()V

    .line 105
    :cond_0
    return-void
.end method
