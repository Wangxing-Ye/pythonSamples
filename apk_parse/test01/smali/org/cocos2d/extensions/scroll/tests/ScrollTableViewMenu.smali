.class public Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;
.super Lorg/cocos2d/layers/CCLayer;
.source "ScrollTableViewMenu.java"

# interfaces
.implements Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;
.implements Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;


# instance fields
.field private cellSize_:Lorg/cocos2d/types/CGSize;

.field private elements_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tableView_:Lorg/cocos2d/extensions/scroll/CCTableView;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/high16 v2, 0x429a0000    # 77.0f

    .line 35
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 36
    const/high16 v1, 0x429c0000    # 78.0f

    invoke-static {v2, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->cellSize_:Lorg/cocos2d/types/CGSize;

    .line 37
    invoke-virtual {p0, v4}, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->setIsTouchEnabled(Z)V

    .line 38
    iput-object p1, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->elements_:Ljava/util/ArrayList;

    .line 46
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 47
    .local v0, "winSize":Lorg/cocos2d/types/CGSize;
    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v2, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/cocos2d/extensions/scroll/CCTableView;->view(Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/extensions/scroll/CCTableView;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->tableView_:Lorg/cocos2d/extensions/scroll/CCTableView;

    .line 48
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->tableView_:Lorg/cocos2d/extensions/scroll/CCTableView;

    iput-object p0, v1, Lorg/cocos2d/extensions/scroll/CCTableView;->tDelegate:Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;

    .line 49
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->tableView_:Lorg/cocos2d/extensions/scroll/CCTableView;

    iput-object p0, v1, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    .line 52
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->tableView_:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/extensions/scroll/CCTableView;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 55
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->tableView_:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v1, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setVerticalFillOrder(I)V

    .line 57
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->tableView_:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {p0, v1}, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 61
    iget-object v1, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->tableView_:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v1}, Lorg/cocos2d/extensions/scroll/CCTableView;->reloadData()V

    .line 62
    return-void
.end method

.method public static menu(Ljava/util/ArrayList;)Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;

    invoke-direct {v0, p0}, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->containsTouchLocation(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cellSizeForTable(Lorg/cocos2d/extensions/scroll/CCTableView;)Lorg/cocos2d/types/CGSize;
    .locals 1
    .param p1, "table"    # Lorg/cocos2d/extensions/scroll/CCTableView;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->cellSize_:Lorg/cocos2d/types/CGSize;

    return-object v0
.end method

.method public containsTouchLocation(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    iget-object v2, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->tableView_:Lorg/cocos2d/extensions/scroll/CCTableView;

    iget-object v1, v2, Lorg/cocos2d/extensions/scroll/CCTableView;->viewSize:Lorg/cocos2d/types/CGSize;

    .line 90
    .local v1, "s":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {p0}, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    iget v4, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget v5, v1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v2, v3, v4, v5}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .line 91
    .local v0, "r":Lorg/cocos2d/types/CGRect;
    invoke-virtual {p0, p1}, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->convertTouchToNodeSpace(Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    return v2
.end method

.method public getPosition()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->tableView_:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCTableView;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public numberOfCellsInTableView(Lorg/cocos2d/extensions/scroll/CCTableView;)I
    .locals 1
    .param p1, "table"    # Lorg/cocos2d/extensions/scroll/CCTableView;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->elements_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public registerWithTouchDispatcher()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lorg/cocos2d/events/CCTouchDispatcher;->addTargetedDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;IZ)V

    .line 85
    return-void
.end method

.method public setPosition(Lorg/cocos2d/types/CGPoint;)V
    .locals 1
    .param p1, "position"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->tableView_:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v0, p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 68
    return-void
.end method

.method public tableCellAtIndex(Lorg/cocos2d/extensions/scroll/CCTableView;I)Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    .locals 8
    .param p1, "table"    # Lorg/cocos2d/extensions/scroll/CCTableView;
    .param p2, "idx"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/16 v5, 0xff

    .line 117
    invoke-virtual {p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->dequeueCell()Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;

    .line 118
    .local v0, "cell":Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;

    .end local v0    # "cell":Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;
    invoke-direct {v0}, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;-><init>()V

    .line 122
    .restart local v0    # "cell":Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->elements_:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 124
    .local v1, "image":Lorg/cocos2d/nodes/CCSprite;
    add-int/lit8 v3, p2, 0x1

    div-int v3, v5, v3

    add-int/lit8 v4, p2, 0x1

    div-int v4, v5, v4

    invoke-static {v3, v4, v5}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 125
    invoke-virtual {v0, v1}, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->setSprite(Lorg/cocos2d/nodes/CCSprite;)V

    .line 126
    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->getSprite()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->cellSize_:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v5

    iget v5, v5, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/ScrollTableViewMenu;->cellSize_:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v6

    iget v6, v6, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v7

    invoke-static {v4, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 127
    return-object v0
.end method

.method public tableCellTouched(Lorg/cocos2d/extensions/scroll/CCTableView;Lorg/cocos2d/extensions/scroll/CCTableViewCell;)V
    .locals 0
    .param p1, "table"    # Lorg/cocos2d/extensions/scroll/CCTableView;
    .param p2, "cell"    # Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .prologue
    .line 105
    return-void
.end method
