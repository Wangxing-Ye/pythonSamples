.class Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;
.super Lorg/cocos2d/menus/CCMenuItem;
.source "CCTopDataPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sns/game/layer/object/CCTopDataPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CCTopBar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/object/CCTopDataPanel;


# direct methods
.method public constructor <init>(Lcom/sns/game/layer/object/CCTopDataPanel;Lcom/sns/game/database/bean/UserTop;I)V
    .locals 3
    .param p2, "uTop"    # Lcom/sns/game/database/bean/UserTop;
    .param p3, "rankTag"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    iput-object p1, p0, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->this$0:Lcom/sns/game/layer/object/CCTopDataPanel;

    .line 335
    invoke-direct {p0, v0, v0}, Lorg/cocos2d/menus/CCMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->setVisible(Z)V

    .line 338
    invoke-virtual {p0, v2, v2}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->setAnchorPoint(FF)V

    .line 339
    # getter for: Lcom/sns/game/layer/object/CCTopDataPanel;->cellSize:Lorg/cocos2d/types/CGSize;
    invoke-static {p1}, Lcom/sns/game/layer/object/CCTopDataPanel;->access$0(Lcom/sns/game/layer/object/CCTopDataPanel;)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 340
    if-eqz p2, :cond_0

    .line 341
    invoke-direct {p0, p2, p3, v1}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->setRankNumAs(Lcom/sns/game/database/bean/UserTop;II)V

    .line 342
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->setRankBar(Lcom/sns/game/database/bean/UserTop;II)V

    .line 343
    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->setNickNameLabel(Lcom/sns/game/database/bean/UserTop;I)V

    :cond_0
    return-void

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNickNameLabel(Lcom/sns/game/database/bean/UserTop;I)V
    .locals 7
    .param p1, "uTop"    # Lcom/sns/game/database/bean/UserTop;
    .param p2, "z"    # I

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/16 v5, 0x1e

    .line 390
    const-string v1, " "

    const-string v2, ""

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;FI)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v0

    .line 391
    .local v0, "nicknameLabel":Lorg/cocos2d/nodes/CCLabel;
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserTop;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabel;->setString(Ljava/lang/CharSequence;)V

    .line 392
    invoke-static {v5, v5, v5}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabel;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 393
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lorg/cocos2d/nodes/CCLabel;->setAnchorPoint(FF)V

    .line 394
    const/high16 v1, 0x42c00000    # 96.0f

    invoke-virtual {p0}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabel;->setPosition(FF)V

    .line 395
    invoke-virtual {p0, v0, p2}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 396
    return-void
.end method

.method private setRankBar(Lcom/sns/game/database/bean/UserTop;II)V
    .locals 12
    .param p1, "uTop"    # Lcom/sns/game/database/bean/UserTop;
    .param p2, "rankTag"    # I
    .param p3, "zOrder"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 363
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    .line 364
    .local v5, "uState":Lcom/sns/game/database/bean/UserState;
    iget-object v7, v5, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v7}, Lcom/sns/game/database/bean/UserTop;->getServerId()I

    move-result v7

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserTop;->getServerId()I

    move-result v8

    if-ne v7, v8, :cond_0

    move v1, v6

    .line 365
    .local v1, "checkIdentity":Z
    :goto_0
    if-ne p2, v6, :cond_1

    const-string v4, "Jbb"

    .line 366
    .local v4, "tagName":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    const-string v2, "01"

    .line 367
    .local v2, "idName":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->this$0:Lcom/sns/game/layer/object/CCTopDataPanel;

    # getter for: Lcom/sns/game/layer/object/CCTopDataPanel;->dialogParent_:Lcom/sns/game/dialog/base/CCDialog;
    invoke-static {v7}, Lcom/sns/game/layer/object/CCTopDataPanel;->access$1(Lcom/sns/game/layer/object/CCTopDataPanel;)Lcom/sns/game/dialog/base/CCDialog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GameTop_UI_Img_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Bar_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sns/game/dialog/base/CCDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 368
    .local v0, "bar":Lorg/cocos2d/nodes/CCSprite;
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lorg/cocos2d/nodes/CCSprite;->setTag(I)V

    .line 369
    invoke-virtual {v0, v10, v10}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 370
    const/high16 v7, 0x42a00000    # 80.0f

    invoke-virtual {v0, v7, v10}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 371
    invoke-virtual {p0, v0, p3}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 373
    const-string v7, ""

    const-string v8, "UI/New_Num_x_16x22.png"

    const/16 v9, 0x10

    const/16 v10, 0x16

    const/16 v11, 0x30

    invoke-static {v7, v8, v9, v10, v11}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v3

    .line 374
    .local v3, "scoreAs":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {v3, v6}, Lorg/cocos2d/nodes/CCLabelAtlas;->setTag(I)V

    .line 375
    invoke-virtual {v0, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 376
    if-ne p2, v6, :cond_3

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserTop;->getGoldNum()I

    move-result v6

    :goto_3
    invoke-virtual {p0, v0, v6}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->updateRankScore(Lorg/cocos2d/nodes/CCSprite;I)V

    .line 378
    return-void

    .line 364
    .end local v0    # "bar":Lorg/cocos2d/nodes/CCSprite;
    .end local v1    # "checkIdentity":Z
    .end local v2    # "idName":Ljava/lang/String;
    .end local v3    # "scoreAs":Lorg/cocos2d/nodes/CCLabelAtlas;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 365
    .restart local v1    # "checkIdentity":Z
    :cond_1
    const-string v4, "Lsb"

    goto :goto_1

    .line 366
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_2
    const-string v2, "02"

    goto :goto_2

    .line 376
    .restart local v0    # "bar":Lorg/cocos2d/nodes/CCSprite;
    .restart local v2    # "idName":Ljava/lang/String;
    .restart local v3    # "scoreAs":Lorg/cocos2d/nodes/CCLabelAtlas;
    :cond_3
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserTop;->getKillNum()I

    move-result v6

    goto :goto_3
.end method

.method private setRankNumAs(Lcom/sns/game/database/bean/UserTop;II)V
    .locals 6
    .param p1, "uTop"    # Lcom/sns/game/database/bean/UserTop;
    .param p2, "rankTag"    # I
    .param p3, "zOrder"    # I

    .prologue
    .line 348
    const-string v1, ""

    const-string v2, "UI/New_Num_x_14x17.png"

    const/16 v3, 0xe

    const/16 v4, 0x11

    const/16 v5, 0x30

    invoke-static {v1, v2, v3, v4, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 349
    .local v0, "rankNumAs":Lorg/cocos2d/nodes/CCLabelAtlas;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserTop;->getgRankNum()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->updateRankNum(Lorg/cocos2d/nodes/CCLabelAtlas;I)V

    .line 350
    invoke-virtual {p0, v0, p3}, Lcom/sns/game/layer/object/CCTopDataPanel$CCTopBar;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 351
    return-void

    .line 349
    :cond_0
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserTop;->getkRankNum()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public updateRankNum(Lorg/cocos2d/nodes/CCLabelAtlas;I)V
    .locals 3
    .param p1, "rankNumAs"    # Lorg/cocos2d/nodes/CCLabelAtlas;
    .param p2, "num"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 354
    if-eqz p1, :cond_0

    .line 355
    if-lez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setVisible(Z)V

    .line 356
    invoke-virtual {p1, v2, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 357
    const/high16 v0, 0x42160000    # 37.5f

    const/high16 v2, 0x42040000    # 33.0f

    invoke-virtual {p1, v0, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 358
    if-lez p2, :cond_2

    .end local p2    # "num":I
    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 360
    :cond_0
    return-void

    .restart local p2    # "num":I
    :cond_1
    move v0, v1

    .line 355
    goto :goto_0

    :cond_2
    move p2, v1

    .line 358
    goto :goto_1
.end method

.method public updateRankScore(Lorg/cocos2d/nodes/CCSprite;I)V
    .locals 3
    .param p1, "bar"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "score"    # I

    .prologue
    .line 381
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 382
    .local v0, "scoreAs":Lorg/cocos2d/nodes/CCLabelAtlas;
    if-eqz v0, :cond_0

    .line 383
    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 384
    const v1, 0x43afa000    # 351.25f

    const/high16 v2, 0x41fa0000    # 31.25f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 385
    if-lez p2, :cond_1

    .end local p2    # "score":I
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 387
    :cond_0
    return-void

    .line 385
    .restart local p2    # "score":I
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method
