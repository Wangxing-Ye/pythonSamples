.class public Lcom/sns/game/layer/GameHelpLayer;
.super Lcom/sns/game/ui/CCGameLayer;
.source "GameHelpLayer.java"

# interfaces
.implements Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;
.implements Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;


# static fields
.field private static layer:Lcom/sns/game/layer/GameHelpLayer;


# instance fields
.field private background:Lorg/cocos2d/nodes/CCSprite;

.field private btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

.field cellSize:Lorg/cocos2d/types/CGSize;

.field colCount:I

.field private introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

.field rowCount:I

.field private slideStep:F

.field private tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

.field visibleSize:Lorg/cocos2d/types/CGSize;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x44480000    # 800.0f

    .line 43
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameLayer;-><init>()V

    .line 318
    const/4 v0, 0x1

    iput v0, p0, Lcom/sns/game/layer/GameHelpLayer;->colCount:I

    .line 319
    const/4 v0, 0x4

    iput v0, p0, Lcom/sns/game/layer/GameHelpLayer;->rowCount:I

    .line 320
    const v0, 0x43d68000    # 429.0f

    invoke-static {v1, v0}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->visibleSize:Lorg/cocos2d/types/CGSize;

    .line 321
    const v0, 0x43e68000    # 461.0f

    invoke-static {v1, v0}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->cellSize:Lorg/cocos2d/types/CGSize;

    .line 44
    return-void
.end method

.method private addChildNodesToCell(Lorg/cocos2d/extensions/scroll/CCTableViewCell;I)V
    .locals 5
    .param p1, "cell"    # Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    .param p2, "rowIdx"    # I

    .prologue
    .line 353
    iget v3, p0, Lcom/sns/game/layer/GameHelpLayer;->rowCount:I

    invoke-direct {p0, v3, p2}, Lcom/sns/game/layer/GameHelpLayer;->asStartIndexByCell(II)I

    move-result v2

    .line 354
    .local v2, "startIndex":I
    iget v3, p0, Lcom/sns/game/layer/GameHelpLayer;->rowCount:I

    invoke-direct {p0, v3, p2}, Lcom/sns/game/layer/GameHelpLayer;->asCountByCell(II)I

    move-result v0

    .line 356
    .local v0, "cellCount":I
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->removeAllChildren(Z)V

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 361
    return-void

    .line 359
    :cond_0
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    add-int v4, v2, v1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private asCountByCell(II)I
    .locals 4
    .param p1, "size"    # I
    .param p2, "rowIdx"    # I

    .prologue
    .line 370
    add-int/lit8 v1, p2, 0x1

    .line 371
    .local v1, "row":I
    iget v2, p0, Lcom/sns/game/layer/GameHelpLayer;->colCount:I

    mul-int/2addr v2, v1

    if-le v2, p1, :cond_0

    .line 372
    iget v2, p0, Lcom/sns/game/layer/GameHelpLayer;->colCount:I

    iget v3, p0, Lcom/sns/game/layer/GameHelpLayer;->colCount:I

    mul-int/2addr v3, v1

    sub-int/2addr v3, p1

    sub-int v0, v2, v3

    .line 373
    .local v0, "count":I
    :goto_0
    return v0

    .line 372
    .end local v0    # "count":I
    :cond_0
    iget v0, p0, Lcom/sns/game/layer/GameHelpLayer;->colCount:I

    goto :goto_0
.end method

.method private asStartIndexByCell(II)I
    .locals 3
    .param p1, "size"    # I
    .param p2, "rowIdx"    # I

    .prologue
    .line 364
    iget v1, p0, Lcom/sns/game/layer/GameHelpLayer;->colCount:I

    mul-int/2addr v1, p2

    if-le v1, p1, :cond_0

    .line 365
    add-int/lit8 v1, p2, -0x1

    iget v2, p0, Lcom/sns/game/layer/GameHelpLayer;->colCount:I

    mul-int v0, v1, v2

    .line 366
    .local v0, "startIndex":I
    :goto_0
    return v0

    .line 365
    .end local v0    # "startIndex":I
    :cond_0
    iget v1, p0, Lcom/sns/game/layer/GameHelpLayer;->colCount:I

    mul-int v0, p2, v1

    goto :goto_0
.end method

.method private depthFade(Lorg/cocos2d/nodes/CCNode;F)V
    .locals 6
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "t"    # F

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 415
    if-eqz p1, :cond_2

    .line 417
    instance-of v2, p1, Lorg/cocos2d/protocols/CCRGBAProtocol;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 418
    check-cast v2, Lorg/cocos2d/protocols/CCRGBAProtocol;

    mul-float v3, v5, p2

    float-to-int v3, v3

    invoke-interface {v2, v3}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    .line 420
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 421
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    if-eqz v1, :cond_2

    .line 422
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 432
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :cond_2
    return-void

    .line 422
    .restart local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 423
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    instance-of v2, v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    if-eqz v2, :cond_4

    move-object v2, v0

    .line 424
    check-cast v2, Lorg/cocos2d/protocols/CCRGBAProtocol;

    mul-float v4, v5, p2

    float-to-int v4, v4

    invoke-interface {v2, v4}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    .line 426
    :cond_4
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 427
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 428
    invoke-direct {p0, v0, p2}, Lcom/sns/game/layer/GameHelpLayer;->depthFade(Lorg/cocos2d/nodes/CCNode;F)V

    goto :goto_0
.end method

.method public static getLayer()Lcom/sns/game/layer/GameHelpLayer;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sns/game/layer/GameHelpLayer;->layer:Lcom/sns/game/layer/GameHelpLayer;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/sns/game/layer/GameHelpLayer;

    invoke-direct {v0}, Lcom/sns/game/layer/GameHelpLayer;-><init>()V

    sput-object v0, Lcom/sns/game/layer/GameHelpLayer;->layer:Lcom/sns/game/layer/GameHelpLayer;

    .line 34
    :cond_0
    sget-object v0, Lcom/sns/game/layer/GameHelpLayer;->layer:Lcom/sns/game/layer/GameHelpLayer;

    return-object v0
.end method

.method public static oneSelf()Lcom/sns/game/layer/GameHelpLayer;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sns/game/layer/GameHelpLayer;->layer:Lcom/sns/game/layer/GameHelpLayer;

    return-object v0
.end method

.method private setBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    const-string v0, "Bg_UI_Shared_x_Frame.jpg"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/GameHelpLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    .line 239
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 240
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 241
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/GameHelpLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 242
    return-void
.end method

.method private setBtnBack()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 247
    const-string v1, "GameHelp_UI_Btn_Back.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/GameHelpLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 248
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnBack_CallBack"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 249
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v2, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 250
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x443e4000    # 761.0f

    const/high16 v3, 0x43e00000    # 448.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 251
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 252
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 253
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 254
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 255
    return-void
.end method

.method private setBtnScrollBtns()V
    .locals 7

    .prologue
    const/16 v6, 0x112

    const/high16 v5, 0x43c80000    # 400.0f

    const/4 v4, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 275
    const-string v0, "GameHelp_UI_Img_Arrow.png"

    .line 277
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/GameHelpLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    const-string v2, "btnScrollBtn_CallBack"

    invoke-static {v1, p0, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 278
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setTag(I)V

    .line 279
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setRotation(F)V

    .line 280
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v3, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 281
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x43d80000    # 432.0f

    invoke-virtual {v1, v5, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 282
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 283
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 284
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 285
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 288
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/GameHelpLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    const-string v2, "btnScrollBtn_CallBack"

    invoke-static {v1, p0, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 289
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setTag(I)V

    .line 290
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v3, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 291
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v5, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 292
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 293
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 294
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 295
    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 296
    return-void
.end method

.method private setIntroduceNodes()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x42380000    # 46.0f

    const/high16 v4, 0x42000000    # 32.0f

    const/4 v3, 0x0

    .line 379
    iget v0, p0, Lcom/sns/game/layer/GameHelpLayer;->rowCount:I

    new-array v0, v0, [Lorg/cocos2d/nodes/CCSprite;

    iput-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    .line 381
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    .line 383
    const-string v1, "UI/GameHelp_UI_Img_1.png"

    .line 381
    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    aput-object v1, v0, v2

    .line 384
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3, v3}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 385
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v0, v0, v2

    const/high16 v1, 0x424c0000    # 51.0f

    invoke-virtual {v0, v1, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 387
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x2

    .line 389
    const-string v2, "UI/GameHelp_UI_Img_3.png"

    .line 387
    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    aput-object v2, v0, v1

    .line 390
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v3, v3}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 391
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v5, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 393
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x3

    .line 395
    const-string v2, "UI/GameHelp_UI_Img_4.png"

    .line 393
    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    aput-object v2, v0, v1

    .line 396
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v3, v3}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 397
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v5, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 405
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    .line 407
    const-string v1, "UI/GameHelp_UI_Img_2.png"

    .line 405
    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    aput-object v1, v0, v6

    .line 408
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3, v3}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 409
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    aget-object v0, v0, v6

    invoke-virtual {v0, v5, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 411
    return-void
.end method

.method private setTableView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 337
    invoke-direct {p0}, Lcom/sns/game/layer/GameHelpLayer;->setIntroduceNodes()V

    .line 338
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->cellSize:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/GameHelpLayer;->setSlideStep(F)V

    .line 341
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->visibleSize:Lorg/cocos2d/types/CGSize;

    invoke-static {p0, v0}, Lorg/cocos2d/extensions/scroll/CCTableView;->view(Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/extensions/scroll/CCTableView;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    .line 342
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    iput-object p0, v0, Lorg/cocos2d/extensions/scroll/CCTableView;->tDelegate:Lorg/cocos2d/extensions/scroll/CCTableViewDelegate;

    .line 343
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    iput-object p0, v0, Lorg/cocos2d/extensions/scroll/CCTableView;->dataSource:Lorg/cocos2d/extensions/scroll/CCTableViewDataSource;

    .line 344
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v4, v1}, Lorg/cocos2d/extensions/scroll/CCTableView;->setPosition(FF)V

    .line 345
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/cocos2d/extensions/scroll/CCTableView;->setDirection(I)V

    .line 346
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/extensions/scroll/CCTableView;->setVerticalFillOrder(I)V

    .line 347
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCTableView;->getContainer()Lorg/cocos2d/extensions/scroll/CCClipNode;

    move-result-object v0

    iget-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->visibleSize:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    iget v2, p0, Lcom/sns/game/layer/GameHelpLayer;->rowCount:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->cellSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Lorg/cocos2d/extensions/scroll/CCClipNode;->setPosition(FF)V

    .line 348
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCTableView;->reloadData()V

    .line 350
    return-void
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 129
    const-string v0, "background/Bg_UI_Shared_x.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/GameHelpLayer;->addSpriteFramesByJPG(Ljava/lang/String;)Ljava/util/Set;

    .line 130
    const-string v0, "UI/GameHelp_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/GameHelpLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 131
    return-void
.end method

.method public btnBack_CallBack(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 260
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v3, v0

    .line 261
    .local v3, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 262
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sns/game/layer/GameHelpLayer;->setIsTouchEnabled(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/sns/game/layer/GameHelpLayer;->getCallTagLayer()Lorg/cocos2d/layers/CCLayer;

    move-result-object v2

    check-cast v2, Lcom/sns/game/ui/CCGameLayer;

    .line 264
    .local v2, "layer":Lcom/sns/game/ui/CCGameLayer;
    invoke-virtual {p0}, Lcom/sns/game/layer/GameHelpLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sns/game/ui/CCGameLayer;->setUserDoCallPath(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, v2}, Lcom/sns/game/layer/GameHelpLayer;->ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v2    # "layer":Lcom/sns/game/ui/CCGameLayer;
    .end local v3    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnScrollBtn_CallBack(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 301
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 302
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getTag()I

    move-result v3

    .line 303
    .local v3, "targetTag":I
    packed-switch v3, :pswitch_data_0

    .line 316
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .end local v3    # "targetTag":I
    :goto_0
    return-void

    .line 306
    .restart local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .restart local v3    # "targetTag":I
    :pswitch_0
    iget-object v4, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    iget v5, p0, Lcom/sns/game/layer/GameHelpLayer;->slideStep:F

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {v4, v5, v6}, Lcom/sns/game/ui/CCScrollViewUtil;->slidingToTop(Lorg/cocos2d/extensions/scroll/CCScrollView;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .end local v3    # "targetTag":I
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 309
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .restart local v3    # "targetTag":I
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    iget v5, p0, Lcom/sns/game/layer/GameHelpLayer;->slideStep:F

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {v4, v5, v6}, Lcom/sns/game/ui/CCScrollViewUtil;->slidingToBottom(Lorg/cocos2d/extensions/scroll/CCScrollView;FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, "touched":Z
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sns/game/layer/GameHelpLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z

    move-result v1

    .line 176
    if-eqz v1, :cond_0

    .line 177
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setIsTouchEnabled(Z)V

    move v2, v1

    .line 194
    .end local v1    # "touched":Z
    .local v2, "touched":Z
    :goto_0
    return v2

    .line 180
    .end local v2    # "touched":Z
    .restart local v1    # "touched":Z
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sns/game/layer/GameHelpLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z

    move-result v1

    .line 181
    if-eqz v1, :cond_1

    .line 182
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setIsScrollLock(Z)V

    .line 183
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setIsTouchEnabled(Z)V

    move v2, v1

    .line 184
    .end local v1    # "touched":Z
    .restart local v2    # "touched":Z
    goto :goto_0

    .line 187
    .end local v2    # "touched":Z
    .restart local v1    # "touched":Z
    :cond_1
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {p0, v3, v4}, Lcom/sns/game/layer/GameHelpLayer;->depthFade(Lorg/cocos2d/nodes/CCNode;F)V

    .line 188
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setIsScrollLock(Z)V

    .line 189
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setIsTouchEnabled(Z)V

    .line 190
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v3, p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->ccTouchesBegan(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 194
    .end local v1    # "touched":Z
    .restart local v2    # "touched":Z
    goto :goto_0

    .line 191
    .end local v2    # "touched":Z
    .restart local v1    # "touched":Z
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, "touched":Z
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sns/game/layer/GameHelpLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z

    move-result v1

    .line 203
    if-eqz v1, :cond_0

    .line 204
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setIsTouchEnabled(Z)V

    move v2, v1

    .line 221
    .end local v1    # "touched":Z
    .local v2, "touched":Z
    :goto_0
    return v2

    .line 207
    .end local v2    # "touched":Z
    .restart local v1    # "touched":Z
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sns/game/layer/GameHelpLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z

    move-result v1

    .line 208
    if-eqz v1, :cond_1

    .line 209
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setIsScrollLock(Z)V

    .line 210
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setIsTouchEnabled(Z)V

    move v2, v1

    .line 211
    .end local v1    # "touched":Z
    .restart local v2    # "touched":Z
    goto :goto_0

    .line 214
    .end local v2    # "touched":Z
    .restart local v1    # "touched":Z
    :cond_1
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4}, Lcom/sns/game/layer/GameHelpLayer;->depthFade(Lorg/cocos2d/nodes/CCNode;F)V

    .line 215
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setIsScrollLock(Z)V

    .line 216
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/cocos2d/extensions/scroll/CCTableView;->setIsTouchEnabled(Z)V

    .line 217
    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v3, p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->ccTouchesEnded(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 221
    .end local v1    # "touched":Z
    .restart local v2    # "touched":Z
    goto :goto_0

    .line 218
    .end local v2    # "touched":Z
    .restart local v1    # "touched":Z
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 228
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/layer/GameHelpLayer;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public cellSizeForTable(Lorg/cocos2d/extensions/scroll/CCTableView;)Lorg/cocos2d/types/CGSize;
    .locals 1
    .param p1, "table"    # Lorg/cocos2d/extensions/scroll/CCTableView;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->cellSize:Lorg/cocos2d/types/CGSize;

    return-object v0
.end method

.method protected createSelf()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sns/game/layer/GameHelpLayer;->setBackground()V

    .line 77
    invoke-direct {p0}, Lcom/sns/game/layer/GameHelpLayer;->setBtnBack()V

    .line 78
    invoke-direct {p0}, Lcom/sns/game/layer/GameHelpLayer;->setBtnScrollBtns()V

    .line 79
    invoke-direct {p0}, Lcom/sns/game/layer/GameHelpLayer;->setTableView()V

    .line 80
    return-void
.end method

.method public getSlideStep()F
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/sns/game/layer/GameHelpLayer;->slideStep:F

    return v0
.end method

.method public getTargetCallTag()Lcom/sns/game/util/GameConstant$LayerTag;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->targetCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewMenuMainLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/GameHelpLayer;->setTargetCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->targetCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    return-object v0
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    const-string v0, "\u6e38\u620f\u5e2e\u52a9"

    return-object v0
.end method

.method public numberOfCellsInTableView(Lorg/cocos2d/extensions/scroll/CCTableView;)I
    .locals 1
    .param p1, "table"    # Lorg/cocos2d/extensions/scroll/CCTableView;

    .prologue
    .line 161
    iget v0, p0, Lcom/sns/game/layer/GameHelpLayer;->rowCount:I

    return v0
.end method

.method protected onExitFinishCall()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/sns/game/layer/GameHelpLayer;->layer:Lcom/sns/game/layer/GameHelpLayer;

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/sns/game/layer/GameHelpLayer;->layer:Lcom/sns/game/layer/GameHelpLayer;

    invoke-virtual {v0}, Lcom/sns/game/layer/GameHelpLayer;->recycleSelf()V

    .line 138
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sns/game/layer/GameHelpLayer;->layer:Lcom/sns/game/layer/GameHelpLayer;

    .line 139
    return-void
.end method

.method protected preloadSelf()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "background/Bg_UI_Shared_x.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/GameHelpLayer;->addSpriteFramesByJPG(Ljava/lang/String;)Ljava/util/Set;

    .line 70
    invoke-direct {p0}, Lcom/sns/game/layer/GameHelpLayer;->setBackground()V

    .line 71
    return-void
.end method

.method protected recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/GameHelpLayer;->removeChilds([Lorg/cocos2d/nodes/CCNode;)V

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    invoke-virtual {v0}, Lorg/cocos2d/extensions/scroll/CCTableView;->removeSelf()V

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 104
    :cond_5
    iput-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    .line 105
    iput-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->cellSize:Lorg/cocos2d/types/CGSize;

    .line 106
    iput-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->visibleSize:Lorg/cocos2d/types/CGSize;

    .line 107
    iput-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->introduceNodes:[Lorg/cocos2d/nodes/CCSprite;

    .line 108
    iput-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 109
    iput-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    .line 110
    iput-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 111
    iput-object v1, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 112
    const/4 v0, 0x5

    iput v0, p0, Lcom/sns/game/layer/GameHelpLayer;->rowCount:I

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/sns/game/layer/GameHelpLayer;->colCount:I

    .line 115
    return-void
.end method

.method public setCallerTag(Lcom/sns/game/util/GameConstant$LayerTag;)Lcom/sns/game/layer/GameHelpLayer;
    .locals 1
    .param p1, "tag"    # Lcom/sns/game/util/GameConstant$LayerTag;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/sns/game/layer/GameHelpLayer;->setTargetCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V

    .line 59
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->targetCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewMenuMainLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/GameHelpLayer;->setTargetCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V

    .line 63
    :cond_0
    return-object p0
.end method

.method public setSlideStep(F)V
    .locals 0
    .param p1, "slideStep"    # F

    .prologue
    .line 329
    iput p1, p0, Lcom/sns/game/layer/GameHelpLayer;->slideStep:F

    .line 330
    return-void
.end method

.method protected sortChildren()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 120
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->tableView:Lorg/cocos2d/extensions/scroll/CCTableView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/GameHelpLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 121
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/GameHelpLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 122
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollUp:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v2}, Lcom/sns/game/layer/GameHelpLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 123
    iget-object v0, p0, Lcom/sns/game/layer/GameHelpLayer;->btnScrollDn:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v0, v2}, Lcom/sns/game/layer/GameHelpLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 124
    return-void
.end method

.method public tableCellAtIndex(Lorg/cocos2d/extensions/scroll/CCTableView;I)Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    .locals 1
    .param p1, "table"    # Lorg/cocos2d/extensions/scroll/CCTableView;
    .param p2, "idx"    # I

    .prologue
    .line 150
    invoke-virtual {p1}, Lorg/cocos2d/extensions/scroll/CCTableView;->dequeueCell()Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    move-result-object v0

    .line 151
    .local v0, "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .end local v0    # "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    invoke-direct {v0}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;-><init>()V

    .line 154
    .restart local v0    # "cell":Lorg/cocos2d/extensions/scroll/CCTableViewCell;
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/sns/game/layer/GameHelpLayer;->addChildNodesToCell(Lorg/cocos2d/extensions/scroll/CCTableViewCell;I)V

    .line 155
    return-object v0
.end method

.method public tableCellTouched(Lorg/cocos2d/extensions/scroll/CCTableView;Lorg/cocos2d/extensions/scroll/CCTableViewCell;)V
    .locals 0
    .param p1, "table"    # Lorg/cocos2d/extensions/scroll/CCTableView;
    .param p2, "cell"    # Lorg/cocos2d/extensions/scroll/CCTableViewCell;

    .prologue
    .line 168
    return-void
.end method
