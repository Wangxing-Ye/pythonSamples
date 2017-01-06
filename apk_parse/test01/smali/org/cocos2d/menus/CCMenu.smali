.class public Lorg/cocos2d/menus/CCMenu;
.super Lorg/cocos2d/layers/CCLayer;
.source "CCMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/menus/CCMenu$MenuState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final kDefaultPadding:I = 0x5


# instance fields
.field private color_:Lorg/cocos2d/types/ccColor3B;

.field private opacity_:I

.field protected selectedItem:Lorg/cocos2d/menus/CCMenuItem;

.field protected state:Lorg/cocos2d/menus/CCMenu$MenuState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/cocos2d/menus/CCMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/menus/CCMenu;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected varargs constructor <init>([Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 6
    .param p1, "items"    # [Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 67
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 68
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/cocos2d/menus/CCMenu;->isTouchEnabled_:Z

    .line 71
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 73
    .local v2, "s":Lorg/cocos2d/types/CGSize;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/cocos2d/menus/CCMenu;->setRelativeAnchorPoint(Z)V

    .line 74
    invoke-virtual {p0, v4, v4}, Lorg/cocos2d/menus/CCMenu;->setAnchorPoint(FF)V

    .line 75
    invoke-virtual {p0, v2}, Lorg/cocos2d/menus/CCMenu;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 76
    iget v3, v2, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v3, v5

    iget v4, v2, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/menus/CCMenu;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_1

    .line 85
    .end local v0    # "i":I
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    .line 86
    sget-object v3, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateWaiting:Lorg/cocos2d/menus/CCMenu$MenuState;

    iput-object v3, p0, Lorg/cocos2d/menus/CCMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    .line 87
    return-void

    .line 80
    .restart local v0    # "i":I
    :cond_1
    aget-object v1, p1, v0

    .line 81
    .local v1, "item":Lorg/cocos2d/menus/CCMenuItem;
    invoke-virtual {p0, v1, v0}, Lorg/cocos2d/menus/CCMenu;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static menu()Lorg/cocos2d/menus/CCMenu;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lorg/cocos2d/menus/CCMenu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/cocos2d/menus/CCMenu;-><init>([Lorg/cocos2d/menus/CCMenuItem;)V

    return-object v0
.end method

.method public static varargs menu([Lorg/cocos2d/menus/CCMenuItem;)Lorg/cocos2d/menus/CCMenu;
    .locals 1
    .param p0, "items"    # [Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 59
    new-instance v0, Lorg/cocos2d/menus/CCMenu;

    invoke-direct {v0, p0}, Lorg/cocos2d/menus/CCMenu;-><init>([Lorg/cocos2d/menus/CCMenuItem;)V

    return-object v0
.end method


# virtual methods
.method public addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;
    .locals 1
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I
    .param p3, "tag"    # I

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method public alignItemsHorizontally()V
    .locals 1

    .prologue
    .line 213
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0}, Lorg/cocos2d/menus/CCMenu;->alignItemsHorizontally(F)V

    .line 214
    return-void
.end method

.method public alignItemsHorizontally(F)V
    .locals 7
    .param p1, "padding"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 220
    neg-float v1, p1

    .line 221
    .local v1, "width":F
    iget-object v3, p0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 225
    neg-float v3, v1

    div-float v2, v3, v6

    .line 226
    .local v2, "x":F
    iget-object v3, p0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 230
    return-void

    .line 221
    .end local v2    # "x":F
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 222
    .local v0, "item":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v4

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, p1

    add-float/2addr v1, v4

    goto :goto_0

    .line 226
    .end local v0    # "item":Lorg/cocos2d/nodes/CCNode;
    .restart local v2    # "x":F
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 227
    .restart local v0    # "item":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v4

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v4, v2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 228
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v4

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, p1

    add-float/2addr v2, v4

    goto :goto_1
.end method

.method public alignItemsInColumns([I)V
    .locals 16
    .param p1, "columns"    # [I

    .prologue
    .line 236
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v8, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v13, v0

    if-lt v3, v13, :cond_0

    .line 241
    const/4 v2, -0x5

    .line 242
    .local v2, "height":I
    const/4 v5, 0x0

    .local v5, "row":I
    const/4 v7, 0x0

    .local v7, "rowHeight":I
    const/4 v1, 0x0

    .line 243
    .local v1, "columnsOccupied":I
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v3, v13, :cond_1

    .line 262
    sget-boolean v13, Lorg/cocos2d/menus/CCMenu;->$assertionsDisabled:Z

    if-nez v13, :cond_5

    if-nez v1, :cond_5

    new-instance v13, Ljava/lang/AssertionError;

    const-string v14, "Too many rows/columns for available menu items."

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 238
    .end local v1    # "columnsOccupied":I
    .end local v2    # "height":I
    .end local v5    # "row":I
    .end local v7    # "rowHeight":I
    :cond_0
    aget v13, p1, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .restart local v1    # "columnsOccupied":I
    .restart local v2    # "height":I
    .restart local v5    # "row":I
    .restart local v7    # "rowHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/menus/CCMenuItem;

    .line 245
    .local v4, "item":Lorg/cocos2d/menus/CCMenuItem;
    sget-boolean v13, Lorg/cocos2d/menus/CCMenu;->$assertionsDisabled:Z

    if-nez v13, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v5, v13, :cond_2

    new-instance v13, Ljava/lang/AssertionError;

    const-string v14, "Too many menu items for the amount of rows/columns."

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 247
    :cond_2
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 248
    .local v6, "rowColumns":I
    sget-boolean v13, Lorg/cocos2d/menus/CCMenu;->$assertionsDisabled:Z

    if-nez v13, :cond_3

    if-nez v6, :cond_3

    new-instance v13, Ljava/lang/AssertionError;

    const-string v14, "Can\'t have zero columns on a row"

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 250
    :cond_3
    int-to-float v13, v7

    invoke-virtual {v4}, Lorg/cocos2d/menus/CCMenuItem;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v14

    iget v14, v14, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    float-to-int v7, v13

    .line 251
    add-int/lit8 v1, v1, 0x1

    .line 253
    if-lt v1, v6, :cond_4

    .line 254
    add-int/lit8 v13, v7, 0x5

    add-int/2addr v2, v13

    .line 256
    const/4 v1, 0x0

    .line 257
    const/4 v7, 0x0

    .line 258
    add-int/lit8 v5, v5, 0x1

    .line 243
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    .end local v4    # "item":Lorg/cocos2d/menus/CCMenuItem;
    .end local v6    # "rowColumns":I
    :cond_5
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v13

    invoke-virtual {v13}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v10

    .line 266
    .local v10, "winSize":Lorg/cocos2d/types/CGSize;
    const/4 v5, 0x0

    .line 267
    const/4 v7, 0x0

    .line 268
    const/4 v6, 0x0

    .line 269
    .restart local v6    # "rowColumns":I
    const/4 v9, 0x0

    .local v9, "w":F
    const/4 v11, 0x0

    .local v11, "x":F
    div-int/lit8 v13, v2, 0x2

    int-to-float v12, v13

    .line 270
    .local v12, "y":F
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v3, v13, :cond_6

    .line 293
    return-void

    .line 271
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/menus/CCMenuItem;

    .line 272
    .restart local v4    # "item":Lorg/cocos2d/menus/CCMenuItem;
    if-nez v6, :cond_7

    .line 273
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 274
    iget v13, v10, Lorg/cocos2d/types/CGSize;->width:F

    add-int/lit8 v14, v6, 0x1

    int-to-float v14, v14

    div-float v9, v13, v14

    .line 275
    move v11, v9

    .line 278
    :cond_7
    invoke-virtual {v4}, Lorg/cocos2d/menus/CCMenuItem;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v13

    iget v13, v13, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v13, v13

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 279
    iget v13, v10, Lorg/cocos2d/types/CGSize;->width:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float v13, v11, v13

    invoke-virtual {v4}, Lorg/cocos2d/menus/CCMenuItem;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v14

    iget v14, v14, Lorg/cocos2d/types/CGSize;->height:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v14, v12, v14

    invoke-static {v13, v14}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/cocos2d/menus/CCMenuItem;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 281
    const/high16 v13, 0x41200000    # 10.0f

    add-float/2addr v13, v9

    add-float/2addr v11, v13

    .line 282
    add-int/lit8 v1, v1, 0x1

    .line 284
    if-lt v1, v6, :cond_8

    .line 285
    add-int/lit8 v13, v7, 0x5

    int-to-float v13, v13

    sub-float/2addr v12, v13

    .line 287
    const/4 v1, 0x0

    .line 288
    const/4 v6, 0x0

    .line 289
    const/4 v7, 0x0

    .line 290
    add-int/lit8 v5, v5, 0x1

    .line 270
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public alignItemsInRows([I)V
    .locals 18
    .param p1, "rows"    # [I

    .prologue
    .line 299
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v7, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v15, v0

    if-lt v8, v15, :cond_0

    .line 304
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v6, "columnWidths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v3, "columnHeights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v11, -0xa

    .local v11, "width":I
    const/4 v2, -0x5

    .line 308
    .local v2, "columnHeight":I
    const/4 v1, 0x0

    .local v1, "column":I
    const/4 v5, 0x0

    .local v5, "columnWidth":I
    const/4 v10, 0x0

    .line 309
    .local v10, "rowsOccupied":I
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lt v8, v15, :cond_1

    .line 332
    sget-boolean v15, Lorg/cocos2d/menus/CCMenu;->$assertionsDisabled:Z

    if-nez v15, :cond_5

    if-nez v10, :cond_5

    new-instance v15, Ljava/lang/AssertionError;

    const-string v16, "Too many rows/columns for available menu items."

    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15

    .line 301
    .end local v1    # "column":I
    .end local v2    # "columnHeight":I
    .end local v3    # "columnHeights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "columnWidth":I
    .end local v6    # "columnWidths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "rowsOccupied":I
    .end local v11    # "width":I
    :cond_0
    aget v15, p1, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 310
    .restart local v1    # "column":I
    .restart local v2    # "columnHeight":I
    .restart local v3    # "columnHeights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5    # "columnWidth":I
    .restart local v6    # "columnWidths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "rowsOccupied":I
    .restart local v11    # "width":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/cocos2d/menus/CCMenuItem;

    .line 311
    .local v9, "item":Lorg/cocos2d/menus/CCMenuItem;
    sget-boolean v15, Lorg/cocos2d/menus/CCMenu;->$assertionsDisabled:Z

    if-nez v15, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v1, v15, :cond_2

    new-instance v15, Ljava/lang/AssertionError;

    const-string v16, "Too many menu items for the amount of rows/columns."

    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15

    .line 313
    :cond_2
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 314
    .local v4, "columnRows":I
    sget-boolean v15, Lorg/cocos2d/menus/CCMenu;->$assertionsDisabled:Z

    if-nez v15, :cond_3

    if-nez v4, :cond_3

    new-instance v15, Ljava/lang/AssertionError;

    const-string v16, "Can\'t have zero rows on a column"

    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15

    .line 316
    :cond_3
    int-to-float v15, v5

    invoke-virtual {v9}, Lorg/cocos2d/menus/CCMenuItem;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    float-to-int v5, v15

    .line 317
    int-to-float v15, v2

    invoke-virtual {v9}, Lorg/cocos2d/menus/CCMenuItem;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v16, v0

    const/high16 v17, 0x40a00000    # 5.0f

    add-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v2, v15

    .line 318
    add-int/lit8 v10, v10, 0x1

    .line 320
    if-lt v10, v4, :cond_4

    .line 321
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v15, v5, 0xa

    add-int/2addr v11, v15

    .line 325
    const/4 v10, 0x0

    .line 326
    const/4 v5, 0x0

    .line 327
    const/4 v2, -0x5

    .line 328
    add-int/lit8 v1, v1, 0x1

    .line 309
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 334
    .end local v4    # "columnRows":I
    .end local v9    # "item":Lorg/cocos2d/menus/CCMenuItem;
    :cond_5
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v15

    invoke-virtual {v15}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v12

    .line 336
    .local v12, "winSize":Lorg/cocos2d/types/CGSize;
    const/4 v1, 0x0

    .line 337
    const/4 v5, 0x0

    .line 338
    const/4 v4, 0x0

    .line 339
    .restart local v4    # "columnRows":I
    neg-int v15, v11

    div-int/lit8 v15, v15, 0x2

    int-to-float v13, v15

    .local v13, "x":F
    const/4 v14, 0x0

    .line 340
    .local v14, "y":F
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lt v8, v15, :cond_6

    .line 362
    return-void

    .line 341
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/cocos2d/menus/CCMenuItem;

    .line 342
    .restart local v9    # "item":Lorg/cocos2d/menus/CCMenuItem;
    if-nez v4, :cond_7

    .line 343
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 344
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-float v15, v15

    iget v0, v12, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v14, v15, v16

    .line 347
    :cond_7
    int-to-float v15, v5

    invoke-virtual {v9}, Lorg/cocos2d/menus/CCMenuItem;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    float-to-int v5, v15

    .line 348
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    add-float/2addr v15, v13

    iget v0, v12, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v16, v14, v16

    invoke-static/range {v15 .. v16}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/cocos2d/menus/CCMenuItem;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 350
    invoke-virtual {v9}, Lorg/cocos2d/menus/CCMenuItem;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v15

    iget v15, v15, Lorg/cocos2d/types/CGSize;->height:F

    const/high16 v16, 0x41200000    # 10.0f

    add-float v15, v15, v16

    sub-float/2addr v14, v15

    .line 351
    add-int/lit8 v10, v10, 0x1

    .line 353
    if-lt v10, v4, :cond_8

    .line 354
    add-int/lit8 v15, v5, 0x5

    int-to-float v15, v15

    add-float/2addr v13, v15

    .line 356
    const/4 v10, 0x0

    .line 357
    const/4 v4, 0x0

    .line 358
    const/4 v5, 0x0

    .line 359
    add-int/lit8 v1, v1, 0x1

    .line 340
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public alignItemsVertically()V
    .locals 1

    .prologue
    .line 189
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0}, Lorg/cocos2d/menus/CCMenu;->alignItemsVertically(F)V

    .line 190
    return-void
.end method

.method public alignItemsVertically(F)V
    .locals 8
    .param p1, "padding"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 196
    neg-float v0, p1

    .line 197
    .local v0, "height":F
    iget-object v4, p0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 201
    div-float v3, v0, v7

    .line 202
    .local v3, "y":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 207
    return-void

    .line 197
    .end local v1    # "i":I
    .end local v3    # "y":F
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCNode;

    .line 198
    .local v2, "item":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v5

    iget v5, v5, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCNode;->getScaleY()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, p1

    add-float/2addr v0, v5

    goto :goto_0

    .line 203
    .end local v2    # "item":Lorg/cocos2d/nodes/CCNode;
    .restart local v1    # "i":I
    .restart local v3    # "y":F
    :cond_1
    iget-object v4, p0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/menus/CCMenuItem;

    .line 204
    .local v2, "item":Lorg/cocos2d/menus/CCMenuItem;
    const/4 v4, 0x0

    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItem;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v5

    iget v5, v5, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItem;->getScaleY()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    sub-float v5, v3, v5

    invoke-virtual {v2, v4, v5}, Lorg/cocos2d/menus/CCMenuItem;->setPosition(FF)V

    .line 205
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItem;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v4

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItem;->getScaleY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, p1

    sub-float/2addr v3, v4

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    sget-object v2, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateWaiting:Lorg/cocos2d/menus/CCMenu$MenuState;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/cocos2d/menus/CCMenu;->visible_:Z

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, Lorg/cocos2d/menus/CCMenu;->itemForTouch(Landroid/view/MotionEvent;)Lorg/cocos2d/menus/CCMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    .line 125
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    if-eqz v1, :cond_0

    .line 126
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->selected()V

    .line 127
    sget-object v0, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateTrackingTouch:Lorg/cocos2d/menus/CCMenu$MenuState;

    iput-object v0, p0, Lorg/cocos2d/menus/CCMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    .line 128
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ccTouchesCancelled(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    sget-object v1, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateTrackingTouch:Lorg/cocos2d/menus/CCMenu$MenuState;

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->unselected()V

    .line 156
    :cond_0
    sget-object v0, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateWaiting:Lorg/cocos2d/menus/CCMenu$MenuState;

    iput-object v0, p0, Lorg/cocos2d/menus/CCMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    .line 157
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    sget-object v1, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateTrackingTouch:Lorg/cocos2d/menus/CCMenu$MenuState;

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->unselected()V

    .line 139
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItem;->activate()V

    .line 142
    :cond_0
    sget-object v0, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateWaiting:Lorg/cocos2d/menus/CCMenu$MenuState;

    iput-object v0, p0, Lorg/cocos2d/menus/CCMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    .line 143
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenu;->state:Lorg/cocos2d/menus/CCMenu$MenuState;

    sget-object v2, Lorg/cocos2d/menus/CCMenu$MenuState;->kMenuStateTrackingTouch:Lorg/cocos2d/menus/CCMenu$MenuState;

    if-ne v1, v2, :cond_2

    .line 166
    invoke-virtual {p0, p1}, Lorg/cocos2d/menus/CCMenu;->itemForTouch(Landroid/view/MotionEvent;)Lorg/cocos2d/menus/CCMenuItem;

    move-result-object v0

    .line 168
    .local v0, "currentItem":Lorg/cocos2d/menus/CCMenuItem;
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    if-eq v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v1}, Lorg/cocos2d/menus/CCMenuItem;->unselected()V

    .line 172
    :cond_0
    iput-object v0, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    .line 173
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    invoke-virtual {v1}, Lorg/cocos2d/menus/CCMenuItem;->selected()V

    .line 177
    :cond_1
    const/4 v1, 0x1

    .line 180
    .end local v0    # "currentItem":Lorg/cocos2d/menus/CCMenuItem;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/cocos2d/menus/CCMenu;->opacity_:I

    return v0
.end method

.method public getSelectedItem()Lorg/cocos2d/menus/CCMenuItem;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    return-object v0
.end method

.method protected itemForTouch(Landroid/view/MotionEvent;)Lorg/cocos2d/menus/CCMenuItem;
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 365
    iget-object v9, p0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    if-nez v9, :cond_0

    .line 366
    const/4 v7, 0x0

    .line 397
    :goto_0
    return-object v7

    .line 368
    :cond_0
    invoke-static {}, Lorg/cocos2d/types/util/PoolHolder;->getInstance()Lorg/cocos2d/types/util/PoolHolder;

    move-result-object v0

    .line 369
    .local v0, "holder":Lorg/cocos2d/types/util/PoolHolder;
    invoke-virtual {v0}, Lorg/cocos2d/types/util/PoolHolder;->getCGPointPool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v4

    .line 370
    .local v4, "pointPool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<Lorg/cocos2d/types/CGPoint;>;"
    invoke-virtual {v0}, Lorg/cocos2d/types/util/PoolHolder;->getCGRectPool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v6

    .line 372
    .local v6, "rectPool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<Lorg/cocos2d/types/CGRect;>;"
    invoke-virtual {v4}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cocos2d/types/CGPoint;

    .line 373
    .local v8, "touchLocation":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {v4}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/types/CGPoint;

    .line 374
    .local v3, "local":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {v6}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/types/CGRect;

    .line 376
    .local v5, "r":Lorg/cocos2d/types/CGRect;
    const/4 v7, 0x0

    .line 378
    .local v7, "retItem":Lorg/cocos2d/menus/CCMenuItem;
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11, v8}, Lorg/cocos2d/nodes/CCDirector;->convertToGL(FFLorg/cocos2d/types/CGPoint;)V

    .line 380
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v9, p0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_1

    .line 393
    :goto_2
    invoke-virtual {v4, v8}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 394
    invoke-virtual {v4, v3}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 395
    invoke-virtual {v6, v5}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v9, p0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/menus/CCMenuItem;

    .line 382
    .local v2, "item":Lorg/cocos2d/menus/CCMenuItem;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItem;->getVisible()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItem;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 383
    iget v9, v8, Lorg/cocos2d/types/CGPoint;->x:F

    iget v10, v8, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v2, v9, v10, v3}, Lorg/cocos2d/menus/CCMenuItem;->convertToNodeSpace(FFLorg/cocos2d/types/CGPoint;)V

    .line 384
    invoke-virtual {v2, v5}, Lorg/cocos2d/menus/CCMenuItem;->rect(Lorg/cocos2d/types/CGRect;)V

    .line 385
    iget-object v9, v5, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    invoke-static {v9}, Lorg/cocos2d/types/util/CGPointUtil;->zero(Lorg/cocos2d/types/CGPoint;)V

    .line 386
    invoke-static {v5, v3}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 387
    move-object v7, v2

    .line 388
    goto :goto_2

    .line 380
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected registerWithTouchDispatcher()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    const v1, -0x7fffffff

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lorg/cocos2d/events/CCTouchDispatcher;->addTargetedDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;IZ)V

    .line 55
    return-void
.end method

.method public setColor(Lorg/cocos2d/types/ccColor3B;)V
    .locals 3
    .param p1, "color"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenu;->color_:Lorg/cocos2d/types/ccColor3B;

    .line 113
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    return-void

    .line 113
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 114
    .local v0, "item":Lorg/cocos2d/nodes/CCNode;
    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    .end local v0    # "item":Lorg/cocos2d/nodes/CCNode;
    iget-object v2, p0, Lorg/cocos2d/menus/CCMenu;->color_:Lorg/cocos2d/types/ccColor3B;

    invoke-interface {v0, v2}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    goto :goto_0
.end method

.method public setOpacity(I)V
    .locals 3
    .param p1, "newOpacity"    # I

    .prologue
    .line 99
    iput p1, p0, Lorg/cocos2d/menus/CCMenu;->opacity_:I

    .line 100
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/cocos2d/menus/CCMenu;->children_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    return-void

    .line 101
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 102
    .local v0, "item":Lorg/cocos2d/nodes/CCNode;
    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    .end local v0    # "item":Lorg/cocos2d/nodes/CCNode;
    iget v2, p0, Lorg/cocos2d/menus/CCMenu;->opacity_:I

    invoke-interface {v0, v2}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    goto :goto_0
.end method

.method public setSelectedItem(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 0
    .param p1, "selectedItem"    # Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenu;->selectedItem:Lorg/cocos2d/menus/CCMenuItem;

    .line 50
    return-void
.end method
