.class public Lcom/sns/game/ccobjects/CCGoldCounterLayer;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCGoldCounterLayer.java"


# instance fields
.field private _number:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    return-void
.end method

.method private addColNumbers(I)V
    .locals 11
    .param p1, "col"    # I

    .prologue
    .line 45
    const/16 v6, 0xa

    .line 46
    .local v6, "row":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 58
    mul-int/lit8 v7, p1, 0xe

    int-to-float v7, v7

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v7, v8}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 59
    return-void

    .line 47
    :cond_0
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 48
    .local v5, "presenters":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lorg/cocos2d/nodes/CCNode;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, v6, :cond_1

    .line 54
    invoke-static {v5}, Lcom/sns/game/ccobjects/CCCounter;->create(Lcom/badlogic/gdx/utils/Array;)Lcom/sns/game/ccobjects/CCCounter;

    move-result-object v1

    .line 55
    .local v1, "counter":Lcom/sns/game/ccobjects/CCCounter;
    mul-int/lit8 v7, v2, 0xe

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/sns/game/ccobjects/CCCounter;->setPosition(FF)V

    .line 56
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7, v2}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "counter":Lcom/sns/game/ccobjects/CCCounter;
    :cond_1
    const-string v0, "UI/New_Num_x_14x25.png"

    .line 50
    .local v0, "charmapfile":Ljava/lang/String;
    const-string v7, ""

    const/16 v8, 0xe

    const/16 v9, 0x19

    const/16 v10, 0x30

    invoke-static {v7, v0, v8, v9, v10}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v4

    .line 51
    .local v4, "labelAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static create()Lcom/sns/game/ccobjects/CCGoldCounterLayer;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/sns/game/ccobjects/CCGoldCounterLayer;

    invoke-direct {v0}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;-><init>()V

    .line 17
    .local v0, "goldCounterLayer":Lcom/sns/game/ccobjects/CCGoldCounterLayer;
    return-object v0
.end method

.method private numberWithStrLen(I)I
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 75
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private setNumber(IIZ)V
    .locals 9
    .param p1, "number"    # I
    .param p2, "ceiling"    # I
    .param p3, "isAnim"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->numberWithStrLen(I)I

    move-result v0

    .line 64
    .local v0, "col":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 65
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 66
    iput p1, p0, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->_number:I

    .line 67
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 72
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    check-cast v1, Lcom/sns/game/ccobjects/CCCounter;

    .line 69
    .local v1, "counter":Lcom/sns/game/ccobjects/CCCounter;
    iget v4, p0, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->_number:I

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    sub-int v7, v0, v3

    add-int/lit8 v7, v7, -0x1

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    div-int/2addr v4, v5

    rem-int/lit8 v2, v4, 0xa

    .line 70
    .local v2, "digit":I
    invoke-virtual {v1, v2, p3}, Lcom/sns/game/ccobjects/CCCounter;->setDigit(IZ)V

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public updateNumbers(IIZ)V
    .locals 2
    .param p1, "number"    # I
    .param p2, "ceiling"    # I
    .param p3, "isAnim"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->numberWithStrLen(I)I

    move-result v0

    .line 29
    .local v0, "strLen":I
    iget-object v1, p0, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->children_:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->children_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 31
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->removeAllChildren(Z)V

    .line 32
    invoke-direct {p0, v0}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->addColNumbers(I)V

    .line 40
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->setNumber(IIZ)V

    .line 41
    return-void
.end method

.method public updateNumbers(IZ)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "isAnim"    # Z

    .prologue
    .line 22
    const v0, 0xf423f

    invoke-virtual {p0, p1, v0, p2}, Lcom/sns/game/ccobjects/CCGoldCounterLayer;->updateNumbers(IIZ)V

    .line 23
    return-void
.end method
