.class public Lcom/sns/game/ccobjects/CCCounter;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCCounter.java"


# static fields
.field public static final k_Counter_Action:I


# instance fields
.field private _digit:I

.field private _presenterNodes:Lorg/cocos2d/nodes/CCNode;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 24
    return-void
.end method

.method public static create(Lcom/badlogic/gdx/utils/Array;)Lcom/sns/game/ccobjects/CCCounter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;)",
            "Lcom/sns/game/ccobjects/CCCounter;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "presenters":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lorg/cocos2d/nodes/CCNode;>;"
    new-instance v0, Lcom/sns/game/ccobjects/CCCounter;

    invoke-direct {v0}, Lcom/sns/game/ccobjects/CCCounter;-><init>()V

    .line 28
    .local v0, "counter":Lcom/sns/game/ccobjects/CCCounter;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sns/game/ccobjects/CCCounter;->init(Lcom/badlogic/gdx/utils/Array;I)V

    .line 29
    return-object v0
.end method

.method public static create(Lcom/badlogic/gdx/utils/Array;I)Lcom/sns/game/ccobjects/CCCounter;
    .locals 1
    .param p1, "digit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;I)",
            "Lcom/sns/game/ccobjects/CCCounter;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "presenters":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lorg/cocos2d/nodes/CCNode;>;"
    new-instance v0, Lcom/sns/game/ccobjects/CCCounter;

    invoke-direct {v0}, Lcom/sns/game/ccobjects/CCCounter;-><init>()V

    .line 34
    .local v0, "counter":Lcom/sns/game/ccobjects/CCCounter;
    invoke-direct {v0, p0, p1}, Lcom/sns/game/ccobjects/CCCounter;->init(Lcom/badlogic/gdx/utils/Array;I)V

    .line 35
    return-object v0
.end method

.method private init(Lcom/badlogic/gdx/utils/Array;I)V
    .locals 6
    .param p2, "digit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "presenters":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lorg/cocos2d/nodes/CCNode;>;"
    const/4 v5, 0x0

    .line 39
    invoke-static {}, Lorg/cocos2d/nodes/CCNode;->node()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    iput-object v3, p0, Lcom/sns/game/ccobjects/CCCounter;->_presenterNodes:Lorg/cocos2d/nodes/CCNode;

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xa

    if-lt v0, v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/sns/game/ccobjects/CCCounter;->_presenterNodes:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {p0, v3}, Lcom/sns/game/ccobjects/CCCounter;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 47
    invoke-virtual {p0, p2, v5}, Lcom/sns/game/ccobjects/CCCounter;->setDigit(IZ)V

    .line 48
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCNode;

    .line 42
    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    int-to-float v4, v0

    mul-float v2, v3, v4

    .line 43
    .local v2, "y":F
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v2

    invoke-static {v3, v4}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 44
    iget-object v3, p0, Lcom/sns/game/ccobjects/CCCounter;->_presenterNodes:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v3, v1, v5, v0}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public animation(IZ)V
    .locals 6
    .param p1, "digit"    # I
    .param p2, "isAnim"    # Z

    .prologue
    const/4 v5, 0x0

    .line 62
    iget-object v3, p0, Lcom/sns/game/ccobjects/CCCounter;->_presenterNodes:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v3, p1}, Lorg/cocos2d/nodes/CCNode;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    .line 63
    .local v2, "presenter":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 64
    .local v0, "dest":Lorg/cocos2d/types/CGPoint;
    if-eqz p2, :cond_0

    .line 65
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/ccobjects/CCCounter;->stopAction(I)V

    .line 67
    const/high16 v3, 0x3f000000    # 0.5f

    iget v4, v0, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v4, v4

    invoke-static {v5, v4}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCMoveTo;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;

    move-result-object v1

    .line 68
    .local v1, "moveTo":Lorg/cocos2d/actions/interval/CCMoveTo;
    iget-object v3, p0, Lcom/sns/game/ccobjects/CCCounter;->_presenterNodes:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v3, v1}, Lorg/cocos2d/nodes/CCNode;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 72
    .end local v1    # "moveTo":Lorg/cocos2d/actions/interval/CCMoveTo;
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/sns/game/ccobjects/CCCounter;->_presenterNodes:Lorg/cocos2d/nodes/CCNode;

    iget v4, v0, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v4, v4

    invoke-static {v5, v4}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0
.end method

.method public getDigit()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/sns/game/ccobjects/CCCounter;->_digit:I

    return v0
.end method

.method public removeSelf()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 92
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCCounter;->_presenterNodes:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCCounter;->_presenterNodes:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/ccobjects/CCCounter;->_presenterNodes:Lorg/cocos2d/nodes/CCNode;

    .line 96
    return-void
.end method

.method public setDigit(IZ)V
    .locals 1
    .param p1, "digit"    # I
    .param p2, "isAnim"    # Z

    .prologue
    .line 51
    iget v0, p0, Lcom/sns/game/ccobjects/CCCounter;->_digit:I

    if-eq v0, p1, :cond_0

    .line 52
    iput p1, p0, Lcom/sns/game/ccobjects/CCCounter;->_digit:I

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/sns/game/ccobjects/CCCounter;->animation(IZ)V

    .line 55
    :cond_0
    return-void
.end method

.method public visit(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v8, 0xc11

    .line 77
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 78
    iget-object v3, p0, Lcom/sns/game/ccobjects/CCCounter;->_presenterNodes:Lorg/cocos2d/nodes/CCNode;

    iget v4, p0, Lcom/sns/game/ccobjects/CCCounter;->_digit:I

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCNode;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    .line 79
    .local v1, "presenter":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 80
    .local v2, "size":Lorg/cocos2d/types/CGSize;
    iget v3, v2, Lorg/cocos2d/types/CGSize;->width:F

    sget v4, Lcom/sns/game/util/DeviceManager;->SCALE_X:F

    mul-float/2addr v3, v4

    iput v3, v2, Lorg/cocos2d/types/CGSize;->width:F

    .line 81
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCCounter;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCCounter;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCCounter;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v3, v4, v5}, Lorg/cocos2d/nodes/CCNode;->convertToWorldSpace(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 82
    .local v0, "location":Lorg/cocos2d/types/CGPoint;
    iget v3, v0, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-int v3, v3

    iget v4, v0, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-int v4, v4

    iget v5, v2, Lorg/cocos2d/types/CGSize;->width:F

    const/high16 v6, 0x3fa00000    # 1.25f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v2, Lorg/cocos2d/types/CGSize;->height:F

    sget v7, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-interface {p1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 83
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 84
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 85
    return-void
.end method
