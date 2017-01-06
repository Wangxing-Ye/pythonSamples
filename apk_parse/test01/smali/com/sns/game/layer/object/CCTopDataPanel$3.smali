.class Lcom/sns/game/layer/object/CCTopDataPanel$3;
.super Ljava/lang/Object;
.source "CCTopDataPanel.java"

# interfaces
.implements Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/object/CCTopDataPanel;->getDataSource()Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/object/CCTopDataPanel;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/object/CCTopDataPanel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/object/CCTopDataPanel$3;->this$0:Lcom/sns/game/layer/object/CCTopDataPanel;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cellSizeForTable(Lorg/cocos2d/extensions/scroll/CCTableView;)Lorg/cocos2d/types/CGSize;
    .locals 1
    .param p1, "table"    # Lorg/cocos2d/extensions/scroll/CCTableView;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel$3;->this$0:Lcom/sns/game/layer/object/CCTopDataPanel;

    # getter for: Lcom/sns/game/layer/object/CCTopDataPanel;->cellSize:Lorg/cocos2d/types/CGSize;
    invoke-static {v0}, Lcom/sns/game/layer/object/CCTopDataPanel;->access$0(Lcom/sns/game/layer/object/CCTopDataPanel;)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    return-object v0
.end method

.method public numberOfCellsInTableView(Lorg/cocos2d/extensions/scroll/CCTableView;)I
    .locals 1
    .param p1, "table"    # Lorg/cocos2d/extensions/scroll/CCTableView;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sns/game/layer/object/CCTopDataPanel$3;->this$0:Lcom/sns/game/layer/object/CCTopDataPanel;

    invoke-virtual {v0}, Lcom/sns/game/layer/object/CCTopDataPanel;->getRowCount()I

    move-result v0

    return v0
.end method

.method public tableCellAtIndex(Lorg/cocos2d/extensions/scroll/CCTableView;I)Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    .locals 2
    .param p1, "table"    # Lorg/cocos2d/extensions/scroll/CCTableView;
    .param p2, "idx"    # I

    .prologue
    .line 249
    invoke-virtual {p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->dequeueCell()Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    move-result-object v0

    .line 250
    .local v0, "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .end local v0    # "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    invoke-direct {v0}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;-><init>()V

    .line 253
    .restart local v0    # "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    :cond_0
    iget-object v1, p0, Lcom/sns/game/layer/object/CCTopDataPanel$3;->this$0:Lcom/sns/game/layer/object/CCTopDataPanel;

    # invokes: Lcom/sns/game/layer/object/CCTopDataPanel;->addCellToTableView(Lorg/cocos2d/extensions/scroll/CCTableViewCell;I)V
    invoke-static {v1, v0, p2}, Lcom/sns/game/layer/object/CCTopDataPanel;->access$2(Lcom/sns/game/layer/object/CCTopDataPanel;Lorg/cocos2d/extensions/scroll/CCTableViewCell;I)V

    .line 254
    return-object v0
.end method
