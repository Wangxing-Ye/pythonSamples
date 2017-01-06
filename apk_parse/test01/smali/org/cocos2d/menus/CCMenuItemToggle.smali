.class public Lorg/cocos2d/menus/CCMenuItemToggle;
.super Lorg/cocos2d/menus/CCMenuItem;
.source "CCMenuItemToggle.java"


# instance fields
.field color_:Lorg/cocos2d/types/ccColor3B;

.field private opacity_:B

.field private selectedIndex_:I

.field private subItems_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/menus/CCMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;[Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 2
    .param p1, "t"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "sel"    # Ljava/lang/String;
    .param p3, "items"    # [Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/menus/CCMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->selectedIndex_:I

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/menus/CCMenuItemToggle;->setSelectedIndex(I)V

    .line 52
    return-void
.end method

.method public static varargs item(Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;[Lorg/cocos2d/menus/CCMenuItem;)Lorg/cocos2d/menus/CCMenuItemToggle;
    .locals 1
    .param p0, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "selector"    # Ljava/lang/String;
    .param p2, "items"    # [Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 39
    new-instance v0, Lorg/cocos2d/menus/CCMenuItemToggle;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/menus/CCMenuItemToggle;-><init>(Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;[Lorg/cocos2d/menus/CCMenuItem;)V

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    .line 88
    iget-boolean v1, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->isEnabled_:Z

    if-eqz v1, :cond_0

    .line 89
    iget v1, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->selectedIndex_:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v0, v1, v2

    .line 90
    .local v0, "newIndex":I
    invoke-virtual {p0, v0}, Lorg/cocos2d/menus/CCMenuItemToggle;->setSelectedIndex(I)V

    .line 93
    .end local v0    # "newIndex":I
    :cond_0
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenuItem;->activate()V

    .line 94
    return-void
.end method

.method public getOpacity()B
    .locals 1

    .prologue
    .line 115
    iget-byte v0, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->opacity_:B

    return v0
.end method

.method public getSubItemsRef()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/menus/CCMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public selected()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenuItem;->selected()V

    .line 75
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->selectedIndex_:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->selected()V

    .line 76
    return-void
.end method

.method public selectedIndex()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->selectedIndex_:I

    return v0
.end method

.method public selectedItem()Lorg/cocos2d/menus/CCMenuItem;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->selectedIndex_:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/menus/CCMenuItem;

    return-object v0
.end method

.method public setColor(Lorg/cocos2d/types/ccColor3B;)V
    .locals 3
    .param p1, "color"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->color_:Lorg/cocos2d/types/ccColor3B;

    .line 120
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    return-void

    .line 120
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/menus/CCMenuItem;

    .line 121
    .local v0, "item":Lorg/cocos2d/menus/CCMenuItem;
    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    .end local v0    # "item":Lorg/cocos2d/menus/CCMenuItem;
    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    goto :goto_0
.end method

.method public setIsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 98
    invoke-super {p0, p1}, Lorg/cocos2d/menus/CCMenuItem;->setIsEnabled(Z)V

    .line 99
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    return-void

    .line 99
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/menus/CCMenuItem;

    .line 100
    .local v0, "item":Lorg/cocos2d/menus/CCMenuItem;
    invoke-virtual {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->setIsEnabled(Z)V

    goto :goto_0
.end method

.method public setOpacity(B)V
    .locals 3
    .param p1, "opacity"    # B

    .prologue
    .line 109
    iput-byte p1, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->opacity_:B

    .line 110
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    return-void

    .line 110
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/menus/CCMenuItem;

    .line 111
    .local v0, "item":Lorg/cocos2d/menus/CCMenuItem;
    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    .end local v0    # "item":Lorg/cocos2d/menus/CCMenuItem;
    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    goto :goto_0
.end method

.method public setSelectedIndex(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    const v5, -0x3f3fafff

    const/high16 v4, 0x40000000    # 2.0f

    .line 55
    iget v2, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->selectedIndex_:I

    if-eq p1, v2, :cond_0

    .line 56
    iput p1, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->selectedIndex_:I

    .line 57
    invoke-virtual {p0, v5, v6}, Lorg/cocos2d/menus/CCMenuItemToggle;->removeChildByTag(IZ)V

    .line 59
    iget-object v2, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    iget v3, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->selectedIndex_:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/menus/CCMenuItem;

    .line 60
    .local v0, "item":Lorg/cocos2d/menus/CCMenuItem;
    invoke-virtual {p0, v0, v6, v5}, Lorg/cocos2d/menus/CCMenuItemToggle;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 62
    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 63
    .local v1, "s":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0, v1}, Lorg/cocos2d/menus/CCMenuItemToggle;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 64
    iget v2, v1, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v2, v4

    iget v3, v1, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/menus/CCMenuItem;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 66
    .end local v0    # "item":Lorg/cocos2d/menus/CCMenuItem;
    .end local v1    # "s":Lorg/cocos2d/types/CGSize;
    :cond_0
    return-void
.end method

.method public unselected()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenuItem;->unselected()V

    .line 81
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->subItems_:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/menus/CCMenuItemToggle;->selectedIndex_:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->unselected()V

    .line 82
    return-void
.end method
