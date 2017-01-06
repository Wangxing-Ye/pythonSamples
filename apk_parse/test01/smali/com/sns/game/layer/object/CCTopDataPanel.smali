.class public Lcom/sns/game/layer/object/CCTopDataPanel;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCTopDataPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;
    }
.end annotation


# instance fields
.field private cellInterval:Lorg/cocos2d/types/CGSize;

.field private cellSize:Lorg/cocos2d/types/CGSize;

.field private colCount:I

.field private containerPos:Lorg/cocos2d/types/CGPoint;

.field private dialogParent_:Lcom/sns/game/dialog/base/CCDialog;

.field private listTops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/UserTop;",
            ">;"
        }
    .end annotation
.end field

.field private rowCount:I

.field private slideStep:F

.field private tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

.field private tableViewPos:Lorg/cocos2d/types/CGPoint;

.field private uiNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;"
        }
    .end annotation
.end field

.field private visibleSize:Lorg/cocos2d/types/CGSize;


# direct methods
.method private constructor <init>(Lcom/sns/game/dialog/base/CCDialog;)V
    .locals 6
    .param p1, "parent"    # Lcom/sns/game/dialog/base/CCDialog;

    .prologue
    const v5, 0x43888000    # 273.0f

    const v4, 0x44368000    # 730.0f

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->listTops:Ljava/util/List;

    .line 180
    invoke-static {v4, v5}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->visibleSize:Lorg/cocos2d/types/CGSize;

    .line 181
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v3, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->cellInterval:Lorg/cocos2d/types/CGSize;

    .line 182
    const/high16 v1, 0x42840000    # 66.0f

    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->cellInterval:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v1, v2

    invoke-static {v4, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->cellSize:Lorg/cocos2d/types/CGSize;

    .line 183
    invoke-static {v3, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableViewPos:Lorg/cocos2d/types/CGPoint;

    .line 184
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->containerPos:Lorg/cocos2d/types/CGPoint;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->uiNodes:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->dialogParent_:Lcom/sns/game/dialog/base/CCDialog;

    .line 46
    invoke-static {v4, v5}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 47
    .local v0, "s":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/object/CCTopDataPanel;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 48
    invoke-virtual {p0, v3, v3}, Lcom/sns/game/layer/object/CCTopDataPanel;->setAnchorPoint(FF)V

    .line 49
    const/high16 v1, 0x42880000    # 68.0f

    invoke-virtual {p0, v3, v1}, Lcom/sns/game/layer/object/CCTopDataPanel;->setPosition(FF)V

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/layer/object/CCTopDataPanel;)Lorg/cocos2d/types/CGSize;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->cellSize:Lorg/cocos2d/types/CGSize;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sns/game/layer/object/CCTopDataPanel;)Lcom/sns/game/dialog/base/CCDialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->dialogParent_:Lcom/sns/game/dialog/base/CCDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sns/game/layer/object/CCTopDataPanel;Lorg/cocos2d/extensions/scroll/CCTableViewCell;I)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/sns/game/layer/object/CCTopDataPanel;->addCellToTableView(Lorg/cocos2d/extensions/scroll/CCTableViewCell;I)V

    return-void
.end method

.method private addCellToTableView(Lorg/cocos2d/extensions/scroll/CCTableViewCell;I)V
    .locals 8
    .param p1, "cell"    # Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    .param p2, "rowIdx"    # I

    .prologue
    .line 291
    iget-object v6, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->uiNodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 292
    .local v1, "dsSize":I
    invoke-virtual {p0}, Lcom/sns/game/layer/object/CCTopDataPanel;->getColCount()I

    move-result v6

    invoke-static {v1, p2, v6}, Lorg/cocos2d/extensions/scroll/util/CCTableViewUtil;->asDataSourceStartIndexByCell(III)I

    move-result v3

    .line 293
    .local v3, "startIndex":I
    invoke-virtual {p0}, Lcom/sns/game/layer/object/CCTopDataPanel;->getColCount()I

    move-result v6

    invoke-static {v1, p2, v6}, Lorg/cocos2d/extensions/scroll/util/CCTableViewUtil;->asDataSourceCountByCell(III)I

    move-result v0

    .line 295
    .local v0, "cellCount":I
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->removeAllChildren(Z)V

    .line 296
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 301
    return-void

    .line 297
    :cond_0
    iget-object v6, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->uiNodes:Ljava/util/List;

    add-int v7, v3, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/nodes/CCNode;

    .local v4, "targetNode":Lorg/cocos2d/nodes/CCNode;
    move-object v5, v4

    .line 298
    check-cast v5, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;

    .line 299
    .local v5, "uListBar":Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;
    invoke-virtual {p1, v5}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static ccPanel(Lcom/sns/game/dialog/base/CCDialog;)Lcom/sns/game/layer/object/CCTopDataPanel;
    .locals 1
    .param p0, "parent"    # Lcom/sns/game/dialog/base/CCDialog;

    .prologue
    .line 41
    new-instance v0, Lcom/sns/game/layer/object/CCTopDataPanel;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/object/CCTopDataPanel;-><init>(Lcom/sns/game/dialog/base/CCDialog;)V

    return-object v0
.end method

.method private recycleSelf()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method private setTableViewCells(I)V
    .locals 9
    .param p1, "rankTag"    # I

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, "cellIndex":I
    :try_start_0
    iget-object v7, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->listTops:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 275
    .local v2, "dataCount":I
    invoke-virtual {p0}, Lcom/sns/game/layer/object/CCTopDataPanel;->getColCount()I

    move-result v7

    invoke-static {v2, v7}, Lorg/cocos2d/extensions/scroll/util/CCTableViewUtil;->converToCellFullCount(II)I

    move-result v0

    .line 276
    .local v0, "cellFullCount":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 288
    .end local v0    # "cellFullCount":I
    .end local v2    # "dataCount":I
    :goto_1
    return-void

    .line 277
    .restart local v0    # "cellFullCount":I
    .restart local v2    # "dataCount":I
    :cond_0
    if-ge v1, v2, :cond_1

    const/4 v4, 0x0

    .line 278
    .local v4, "empty":Z
    :goto_2
    if-nez v4, :cond_2

    iget-object v7, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->listTops:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sns/game/database/bean/UserTop;

    move-object v6, v7

    .line 279
    .local v6, "uTop":Lcom/sns/game/database/bean/UserTop;
    :goto_3
    new-instance v5, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;

    invoke-direct {v5, p0, v6, p1}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;-><init>(Lcom/sns/game/layer/object/CCTopDataPanel;Lcom/sns/game/database/bean/UserTop;I)V

    .line 280
    .local v5, "uListBar":Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->setAnchorPoint(FF)V

    .line 281
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->setPosition(FF)V

    .line 282
    iget-object v7, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->uiNodes:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v4    # "empty":Z
    .end local v5    # "uListBar":Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;
    .end local v6    # "uTop":Lcom/sns/game/database/bean/UserTop;
    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    .line 278
    .restart local v4    # "empty":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 285
    .end local v0    # "cellFullCount":I
    .end local v2    # "dataCount":I
    .end local v4    # "empty":Z
    :catch_0
    move-exception v3

    .line 286
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v1}, Lorg/cocos2d/extensions/scroll/CCTableView;->isTouchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v1, p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->ccTouchesBegan(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v1}, Lorg/cocos2d/extensions/scroll/CCTableView;->isTouchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v1, p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->ccTouchesEnded(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 80
    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public createSelf(I)V
    .locals 1
    .param p1, "rankTag"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sns/game/layer/object/CCTopDataPanel;->updateTopListView(Lorg/json/JSONObject;I)V

    .line 101
    return-void
.end method

.method public debugCreateSelf(Ljava/lang/String;I)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "rankTag"    # I

    .prologue
    .line 92
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "jObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v1, p2}, Lcom/sns/game/layer/object/CCTopDataPanel;->updateTopListView(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "jObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getColCount()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->colCount:I

    return v0
.end method

.method public getDataSource()Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/sns/game/layer/object/CCTopDataPanel$3;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/object/CCTopDataPanel$3;-><init>(Lcom/sns/game/layer/object/CCTopDataPanel;)V

    return-object v0
.end method

.method public getDelegate()Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/sns/game/layer/object/CCTopDataPanel$2;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/object/CCTopDataPanel$2;-><init>(Lcom/sns/game/layer/object/CCTopDataPanel;)V

    return-object v0
.end method

.method public getInTvContainerPos()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->containerPos:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->rowCount:I

    return v0
.end method

.method public getSlideStep()F
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->slideStep:F

    return v0
.end method

.method public getTableView()Lorg/cocos2d/extensions/scroll/CCTableView;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    return-object v0
.end method

.method public removeSelf()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 87
    invoke-direct {p0}, Lcom/sns/game/layer/object/CCTopDataPanel;->recycleSelf()V

    .line 88
    return-void
.end method

.method public setColCount(I)V
    .locals 0
    .param p1, "colCount"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->colCount:I

    .line 317
    return-void
.end method

.method public setContainerPos(Lorg/cocos2d/types/CGPoint;)V
    .locals 1
    .param p1, "containerPos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->containerPos:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, p1}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    .line 321
    return-void
.end method

.method public setRowCount(I)V
    .locals 0
    .param p1, "rowCount"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->rowCount:I

    .line 309
    return-void
.end method

.method public setSlideStep(F)V
    .locals 0
    .param p1, "slideStep"    # F

    .prologue
    .line 328
    iput p1, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->slideStep:F

    .line 329
    return-void
.end method

.method public setTableView(Lorg/cocos2d/nodes/CCNode;II)V
    .locals 7
    .param p1, "parent"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I
    .param p3, "rankTag"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 189
    invoke-virtual {p0, v6}, Lcom/sns/game/layer/object/CCTopDataPanel;->setColCount(I)V

    .line 190
    invoke-direct {p0, p3}, Lcom/sns/game/layer/object/CCTopDataPanel;->setTableViewCells(I)V

    .line 191
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->uiNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/sns/game/layer/object/CCTopDataPanel;->getColCount()I

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/extensions/scroll/util/CCTableViewUtil;->getTableRowCount(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/object/CCTopDataPanel;->setRowCount(I)V

    .line 192
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->visibleSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget v3, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->rowCount:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->cellSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/object/CCTopDataPanel;->setContainerPos(Lorg/cocos2d/types/CGPoint;)V

    .line 193
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->cellSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sns/game/layer/object/CCTopDataPanel;->setSlideStep(F)V

    .line 196
    invoke-virtual {p0}, Lcom/sns/game/layer/object/CCTopDataPanel;->getDelegate()Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;

    move-result-object v1

    .line 197
    .local v1, "delegate":Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;
    invoke-virtual {p0}, Lcom/sns/game/layer/object/CCTopDataPanel;->getDataSource()Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    move-result-object v0

    .line 198
    .local v0, "dataSource":Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->visibleSize:Lorg/cocos2d/types/CGSize;

    invoke-static {v0, v2}, Lorg/cocos2d/extensions/scroll/CCTableView;->view(Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/extensions/scroll/CCTableView;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    .line 199
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    iput-object v1, v2, Lorg/cocos2d/extensions/scroll/CCTableView;->tDelegate:Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;

    .line 200
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    iput-object v0, v2, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    .line 201
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v2, v5, v5}, Lorg/cocos2d/extensions/scroll/CCTableView;->setAnchorPoint(FF)V

    .line 202
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    iget-object v3, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableViewPos:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v2, v3}, Lorg/cocos2d/extensions/scroll/CCTableView;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 203
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v3, 0x2

    iput v3, v2, Lorg/cocos2d/extensions/scroll/CCTableView;->direction:I

    .line 204
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v2, v6}, Lorg/cocos2d/extensions/scroll/CCTableView;->setVerticalFillOrder(I)V

    .line 205
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v2}, Lorg/cocos2d/extensions/scroll/CCTableView;->getContainer()Lorg/cocos2d/extensions/scroll/CCClipNode;

    move-result-object v2

    iget-object v3, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->containerPos:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v2, v3}, Lorg/cocos2d/extensions/scroll/CCClipNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 206
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v2}, Lorg/cocos2d/extensions/scroll/CCTableView;->reloadData()V

    .line 207
    iget-object v2, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {p1, v2, p2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 209
    return-void
.end method

.method public updateInTabTableView(ZLorg/cocos2d/types/CGPoint;)V
    .locals 1
    .param p1, "v"    # Z
    .param p2, "offsetPos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v0, p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->setVisible(Z)V

    .line 220
    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v0, p2}, Lorg/cocos2d/extensions/scroll/CCTableView;->setContentOffset(Lorg/cocos2d/types/CGPoint;)V

    .line 222
    return-void
.end method

.method public updateRankListData(Lorg/json/JSONObject;I)V
    .locals 15
    .param p1, "jObject"    # Lorg/json/JSONObject;
    .param p2, "rankTag"    # I

    .prologue
    .line 112
    :try_start_0
    iget-object v12, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->listTops:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 113
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v12

    if-eqz v12, :cond_0

    .line 116
    const/4 v8, 0x0

    .line 117
    .local v8, "selfRank":I
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 118
    .local v3, "jobjIt":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserTop;>;"
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v9

    .line 120
    .local v9, "uState":Lcom/sns/game/database/bean/UserState;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 153
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-lt v12, v13, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Integer;

    invoke-interface {v12, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Integer;

    .line 155
    .local v7, "rankNumArray":[Ljava/lang/Integer;
    new-instance v12, Lcom/sns/game/layer/object/CCTopDataPanel$1;

    invoke-direct {v12, p0}, Lcom/sns/game/layer/object/CCTopDataPanel$1;-><init>(Lcom/sns/game/layer/object/CCTopDataPanel;)V

    invoke-static {v7, v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 162
    array-length v13, v7

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_0

    aget-object v6, v7, v12

    .line 163
    .local v6, "rankNum":Ljava/lang/Integer;
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sns/game/database/bean/UserTop;

    .line 164
    .local v11, "valueObj":Lcom/sns/game/database/bean/UserTop;
    iget-object v14, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->listTops:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 121
    .end local v6    # "rankNum":Ljava/lang/Integer;
    .end local v7    # "rankNumArray":[Ljava/lang/Integer;
    .end local v11    # "valueObj":Lcom/sns/game/database/bean/UserTop;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 122
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 124
    .local v2, "jArray":Lorg/json/JSONArray;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 125
    .local v6, "rankNum":I
    new-instance v10, Lcom/sns/game/database/bean/UserTop;

    invoke-direct {v10}, Lcom/sns/game/database/bean/UserTop;-><init>()V

    .line 126
    .local v10, "uTop":Lcom/sns/game/database/bean/UserTop;
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/sns/game/database/bean/UserTop;->setServerId(I)V

    .line 127
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/sns/game/database/bean/UserTop;->setNickName(Ljava/lang/String;)V

    .line 128
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_5

    .line 129
    invoke-virtual {v10, v6}, Lcom/sns/game/database/bean/UserTop;->setgRankNum(I)V

    .line 130
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/sns/game/database/bean/UserTop;->setGoldNum(I)V

    .line 132
    :cond_5
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    .line 133
    invoke-virtual {v10, v6}, Lcom/sns/game/database/bean/UserTop;->setkRankNum(I)V

    .line 134
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/sns/game/database/bean/UserTop;->setKillNum(I)V

    .line 136
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v10}, Lcom/sns/game/database/bean/UserTop;->getServerId()I

    move-result v12

    .line 138
    iget-object v13, v9, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v13}, Lcom/sns/game/database/bean/UserTop;->getServerId()I

    move-result v13

    .line 137
    if-ne v12, v13, :cond_2

    .line 139
    move v8, v6

    .line 140
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_7

    .line 141
    iget-object v12, v9, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v12, v6}, Lcom/sns/game/database/bean/UserTop;->setgRankNum(I)V

    .line 142
    iget-object v12, v9, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/sns/game/database/bean/UserTop;->setGoldNum(I)V

    .line 144
    :cond_7
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_8

    .line 145
    iget-object v12, v9, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v12, v6}, Lcom/sns/game/database/bean/UserTop;->setkRankNum(I)V

    .line 146
    iget-object v12, v9, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/sns/game/database/bean/UserTop;->setKillNum(I)V

    .line 148
    :cond_8
    invoke-virtual {v9}, Lcom/sns/game/database/bean/UserState;->saveSelfUserTop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 167
    .end local v2    # "jArray":Lorg/json/JSONArray;
    .end local v3    # "jobjIt":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserTop;>;"
    .end local v6    # "rankNum":I
    .end local v8    # "selfRank":I
    .end local v9    # "uState":Lcom/sns/game/database/bean/UserState;
    .end local v10    # "uTop":Lcom/sns/game/database/bean/UserTop;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public updateTableView(I)V
    .locals 1
    .param p1, "rankTag"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->uiNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCTableView;->removeSelf()V

    .line 214
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, p0, v0, p1}, Lcom/sns/game/layer/object/CCTopDataPanel;->setTableView(Lorg/cocos2d/nodes/CCNode;II)V

    .line 216
    return-void
.end method

.method public updateTopListView(Lorg/json/JSONObject;I)V
    .locals 0
    .param p1, "jObject"    # Lorg/json/JSONObject;
    .param p2, "rankTag"    # I

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/sns/game/layer/object/CCTopDataPanel;->updateRankListData(Lorg/json/JSONObject;I)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/sns/game/layer/object/CCTopDataPanel;->updateTableView(I)V

    .line 175
    return-void
.end method
