.class public abstract Lcom/sns/game/dialog/base/CCDialog;
.super Lorg/cocos2d/layers/CCLayer;
.source "CCDialog.java"


# instance fields
.field protected actionCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

.field protected actionPathIn:Ljava/lang/String;

.field protected actionPathOut:Ljava/lang/String;

.field protected backgroundBox:Lorg/cocos2d/nodes/CCSprite;

.field protected cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

.field protected cancelFinishCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

.field protected isDoActionUpdatePath:Z

.field public isIgnoredSetTouchEnabledWithCaller:Z

.field protected isSetActionPathMode:Z

.field protected isSwallowTouch:Z

.field protected maskOff_:Lorg/cocos2d/nodes/CCSprite;

.field protected parentCaller:Lorg/cocos2d/layers/CCLayer;

.field protected parentFinalTop:Lorg/cocos2d/nodes/CCNode;

.field protected showCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

.field protected zOrder_:I


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 2
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sns/game/dialog/base/CCDialog;->isSwallowTouch:Z

    .line 86
    iput-boolean v1, p0, Lcom/sns/game/dialog/base/CCDialog;->isIgnoredSetTouchEnabledWithCaller:Z

    .line 359
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sns/game/dialog/base/CCDialog;->zOrder_:I

    .line 46
    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/base/CCDialog;->setIsTouchEnabled(Z)V

    .line 47
    invoke-direct {p0}, Lcom/sns/game/dialog/base/CCDialog;->setFrameCache()V

    .line 48
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->setParentCaller(Lorg/cocos2d/layers/CCLayer;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->setActionCallTag(Lorg/cocos2d/layers/CCLayer;)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;I)V
    .locals 2
    .param p1, "callLayer"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "zOrder"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sns/game/dialog/base/CCDialog;->isSwallowTouch:Z

    .line 86
    iput-boolean v1, p0, Lcom/sns/game/dialog/base/CCDialog;->isIgnoredSetTouchEnabledWithCaller:Z

    .line 359
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sns/game/dialog/base/CCDialog;->zOrder_:I

    .line 53
    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/base/CCDialog;->setIsTouchEnabled(Z)V

    .line 54
    invoke-direct {p0}, Lcom/sns/game/dialog/base/CCDialog;->setFrameCache()V

    .line 55
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->setParentCaller(Lorg/cocos2d/layers/CCLayer;)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/sns/game/dialog/base/CCDialog;->setZOrder(I)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->setActionCallTag(Lorg/cocos2d/layers/CCLayer;)V

    .line 58
    return-void
.end method

.method private ccTouchedHandle(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItem;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 584
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 585
    .local v0, "itemSp":Lorg/cocos2d/menus/CCMenuItemSprite;
    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->isOnlySelectedMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    invoke-virtual {v0, p2}, Lorg/cocos2d/menus/CCMenuItemSprite;->ccTouchSelected(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 603
    :goto_0
    return v1

    .line 589
    :cond_0
    const/4 v1, 0x0

    .line 590
    .local v1, "touched":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 593
    :pswitch_0
    invoke-static {p1, p2}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesBegan(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 594
    goto :goto_0

    .line 596
    :pswitch_1
    invoke-static {p1, p2}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesMoved(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 597
    goto :goto_0

    .line 599
    :pswitch_2
    invoke-static {p1, p2}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesEnded(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private depthSearchParentNode(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "childNode"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "parentNode":Lorg/cocos2d/nodes/CCNode;
    if-eqz p1, :cond_0

    .line 684
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_0

    .line 686
    instance-of v1, v0, Lorg/cocos2d/layers/CCScene;

    if-nez v1, :cond_0

    .line 687
    invoke-direct {p0, v0}, Lcom/sns/game/dialog/base/CCDialog;->depthSearchParentNode(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    move-result-object p1

    .line 691
    .end local p1    # "childNode":Lorg/cocos2d/nodes/CCNode;
    :cond_0
    return-object p1
.end method

.method private setChildLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;Z)V
    .locals 5
    .param p1, "parentNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "enabled"    # Z

    .prologue
    .line 695
    if-eqz p1, :cond_2

    .line 696
    instance-of v3, p1, Lorg/cocos2d/layers/CCLayer;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 697
    check-cast v3, Lorg/cocos2d/layers/CCLayer;

    invoke-virtual {v3, p2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 699
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 700
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 708
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :cond_2
    return-void

    .line 700
    .restart local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 701
    .local v0, "ccNode":Lorg/cocos2d/nodes/CCNode;
    instance-of v4, v0, Lorg/cocos2d/layers/CCLayer;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 702
    check-cast v1, Lorg/cocos2d/layers/CCLayer;

    .line 703
    .local v1, "childLayer":Lorg/cocos2d/layers/CCLayer;
    invoke-virtual {v1, p2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 704
    invoke-direct {p0, v1, p2}, Lcom/sns/game/dialog/base/CCDialog;->setChildLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;Z)V

    goto :goto_0
.end method

.method private setFrameCache()V
    .locals 1

    .prologue
    .line 671
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 672
    return-void
.end method

.method private setParentCaller(Lorg/cocos2d/layers/CCLayer;)V
    .locals 1
    .param p1, "parentCaller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/sns/game/dialog/base/CCDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    .line 678
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->depthSearchParentNode(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    .line 679
    return-void
.end method

.method private setParentLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;ZZ)V
    .locals 2
    .param p1, "parentNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "enabled"    # Z
    .param p3, "depthSearch"    # Z

    .prologue
    .line 712
    if-eqz p1, :cond_1

    .line 713
    if-nez p3, :cond_0

    .line 714
    instance-of v1, p1, Lorg/cocos2d/layers/CCLayer;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 715
    check-cast v0, Lorg/cocos2d/layers/CCLayer;

    .line 716
    .local v0, "parentLayer":Lorg/cocos2d/layers/CCLayer;
    invoke-virtual {v0, p2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 717
    invoke-direct {p0, v0, p2}, Lcom/sns/game/dialog/base/CCDialog;->setChildLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 721
    .end local v0    # "parentLayer":Lorg/cocos2d/layers/CCLayer;
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 722
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    instance-of v1, v1, Lorg/cocos2d/layers/CCLayer;

    if-eqz v1, :cond_2

    .line 723
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/layers/CCLayer;

    .line 724
    .restart local v0    # "parentLayer":Lorg/cocos2d/layers/CCLayer;
    invoke-virtual {v0, p2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 725
    invoke-direct {p0, v0, p2}, Lcom/sns/game/dialog/base/CCDialog;->setChildLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 730
    .end local v0    # "parentLayer":Lorg/cocos2d/layers/CCLayer;
    :goto_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    .line 729
    invoke-direct {p0, v1, p2, p3}, Lcom/sns/game/dialog/base/CCDialog;->setParentLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;ZZ)V

    .line 733
    :cond_1
    return-void

    .line 727
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sns/game/dialog/base/CCDialog;->setChildLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected activateUpdateBanner(Ljava/lang/String;)V
    .locals 4
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->getUserDoPathName()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "Context":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string v1, "UserAction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UpdateBanner: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected activateUpdateBanner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "Name"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->getUserDoPathName()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "Context":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 296
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string v1, "UserAction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UpdateBanner: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected activateUpdateBanner(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "Name"    # Ljava/lang/String;
    .param p3, "isLogicalHandle"    # Z

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->getUserDoPathName()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "Context":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 314
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string v1, "UserAction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UpdateBanner: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected activateUpdateBanner(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "Name"    # Ljava/lang/String;
    .param p2, "isLogicalHandle"    # Z

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->getUserDoPathName()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "Context":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 270
    :cond_0
    if-nez p2, :cond_1

    .line 272
    const-string v1, "UserAction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UpdateBanner: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_1
    new-instance v1, Lcom/sns/game/dialog/base/CCDialog$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/sns/game/dialog/base/CCDialog$1;-><init>(Lcom/sns/game/dialog/base/CCDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/base/CCDialog;->handleLogicalToMsg(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected activateUpdatePath(Lcom/sns/game/util/GameConstant$LayerTag;Lcom/sns/game/util/GameConstant$LayerTag;)V
    .locals 5
    .param p1, "outTag"    # Lcom/sns/game/util/GameConstant$LayerTag;
    .param p2, "inTag"    # Lcom/sns/game/util/GameConstant$LayerTag;

    .prologue
    .line 233
    invoke-static {p1}, Lcom/sns/game/util/GameConstant;->LayerTagName(Lcom/sns/game/util/GameConstant$LayerTag;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "ContextIDA":Ljava/lang/String;
    invoke-static {p2}, Lcom/sns/game/util/GameConstant;->LayerTagName(Lcom/sns/game/util/GameConstant$LayerTag;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "ContextIDB":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    if-eqz v1, :cond_0

    .line 238
    const-string v2, "UserAction"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpdatePath: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u2192\u2192\u2192"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public activateUpdatePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ContextIDA"    # Ljava/lang/String;
    .param p2, "ContextIDB"    # Ljava/lang/String;

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    if-eqz p2, :cond_0

    .line 245
    const-string v0, "UserAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdatePath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2192\u2192\u2192"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected activateUpdatePathIn()V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->isDoActionUpdatePath()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->isSetActionPathMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->getActionCallTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/base/CCDialog;->activateUpdatePath(Lcom/sns/game/util/GameConstant$LayerTag;Lcom/sns/game/util/GameConstant$LayerTag;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->actionPathIn:Ljava/lang/String;

    iget-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->actionPathOut:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/base/CCDialog;->activateUpdatePath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected activateUpdatePathOut()V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->isDoActionUpdatePath()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->isSetActionPathMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->getActionCallTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/base/CCDialog;->activateUpdatePath(Lcom/sns/game/util/GameConstant$LayerTag;Lcom/sns/game/util/GameConstant$LayerTag;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->actionPathOut:Ljava/lang/String;

    iget-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->actionPathIn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/base/CCDialog;->activateUpdatePath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected activateUpdatePayOk(II)V
    .locals 3
    .param p1, "money"    # I
    .param p2, "id"    # I

    .prologue
    .line 318
    const-string v0, "UserAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "payOK: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method protected addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected addSpriteFrames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;
    .param p2, "imgFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected addSpriteFrames(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "plistArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/util/List;)V

    .line 490
    return-void
.end method

.method protected varargs addSpriteFrames([Ljava/lang/String;)V
    .locals 1
    .param p1, "plistArray"    # [Ljava/lang/String;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames([Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method protected addSpriteFramesByJPG(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "plist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    const-string v1, ".jpg"

    invoke-virtual {v0, p1, v1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected abstract addTexturesToCache()V
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 1

    .prologue
    .line 444
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->onEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showStartAnimation()V
    .locals 3

    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 419
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/base/CCDialog;->setIsTouchEnabled(Z)V

    .line 421
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->activateUpdatePathIn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->showCancelAnimation()V

    .line 131
    return-void
.end method

.method protected ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V
    .locals 4
    .param p1, "targetLayer"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 608
    :try_start_0
    invoke-static {}, Lorg/cocos2d/layers/CCScene;->node()Lorg/cocos2d/layers/CCScene;

    move-result-object v1

    .line 609
    .local v1, "scene":Lorg/cocos2d/layers/CCScene;
    invoke-virtual {v1, p1}, Lorg/cocos2d/layers/CCScene;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 610
    invoke-static {v1}, Lcom/sns/game/util/DeviceManager;->setCocos2dViewWinSize(Lorg/cocos2d/nodes/CCNode;)V

    .line 611
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Lorg/cocos2d/transitions/CCFadeTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCFadeTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCDirector;->replaceScene(Lorg/cocos2d/layers/CCScene;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    .end local v1    # "scene":Lorg/cocos2d/layers/CCScene;
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected varargs ccTouchedTargetChildrenFromNodes(Landroid/view/MotionEvent;[Lorg/cocos2d/nodes/CCNode;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nodes"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 560
    const/4 v1, 0x0

    .line 561
    .local v1, "touched":Z
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 565
    :cond_0
    return v1

    .line 561
    :cond_1
    aget-object v0, p2, v2

    .line 562
    .local v0, "targetNode":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {p0, v0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 563
    if-nez v1, :cond_0

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected ccTouchedTargetChildrenFromNodes(Ljava/util/Collection;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/cocos2d/nodes/CCNode;>;"
    const/4 v1, 0x0

    .line 552
    .local v1, "touched":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 556
    :goto_0
    return v1

    .line 552
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 553
    .local v0, "targetNode":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {p0, v0, p2}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 554
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected varargs ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "menuItems"    # [Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 540
    const/4 v1, 0x0

    .line 541
    .local v1, "touched":Z
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 546
    :cond_0
    return v1

    .line 541
    :cond_1
    aget-object v0, p2, v2

    .line 543
    .local v0, "targetItem":Lorg/cocos2d/menus/CCMenuItem;
    invoke-direct {p0, v0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchedHandle(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 544
    if-nez v1, :cond_0

    .line 541
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected ccTouchedTargetMenuItems(Ljava/util/Collection;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/cocos2d/menus/CCMenuItem;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "menuItems":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/cocos2d/menus/CCMenuItem;>;"
    const/4 v1, 0x0

    .line 530
    .local v1, "touched":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 535
    :goto_0
    return v1

    .line 530
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/menus/CCMenuItem;

    .line 532
    .local v0, "targetItem":Lorg/cocos2d/menus/CCMenuItem;
    invoke-direct {p0, v0, p2}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchedHandle(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 533
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 569
    const/4 v3, 0x0

    .line 570
    .local v3, "touched":Z
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 571
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 578
    :goto_0
    return v3

    .line 571
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 572
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    instance-of v5, v0, Lorg/cocos2d/menus/CCMenuItem;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 573
    check-cast v2, Lorg/cocos2d/menus/CCMenuItem;

    .line 574
    .local v2, "targetItem":Lorg/cocos2d/menus/CCMenuItem;
    invoke-direct {p0, v2, p2}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchedHandle(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 575
    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method protected abstract createSelf()V
.end method

.method protected debugToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Debug\u8c03\u8bd5:\u3010"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/base/CCDialog;->notifyToast(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public getActionCallTag()Lcom/sns/game/util/GameConstant$LayerTag;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->actionCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    return-object v0
.end method

.method public getBackgroundBox()Lorg/cocos2d/nodes/CCSprite;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method

.method protected getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    return-object v0
.end method

.method protected getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getSpriteFrames(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "startFrameIdx"    # I
    .param p4, "endFrameIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrames(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getSpriteFrames(Ljava/lang/String;[I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;
    .param p2, "sequence"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrames(Ljava/lang/String;[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getSpriteFrames([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrames([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUserDoPathName()Ljava/lang/String;
.end method

.method public getZOrder()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/sns/game/dialog/base/CCDialog;->zOrder_:I

    return v0
.end method

.method protected handleLogicalToMsg(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "pare"    # Landroid/os/Parcelable;

    .prologue
    .line 629
    if-nez p1, :cond_0

    .line 635
    :goto_0
    return-void

    .line 630
    :cond_0
    :try_start_0
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 631
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    const v2, 0x9c9c

    invoke-virtual {v0, v2, p1}, Lcom/sns/game/activity/GameActivityss;->handleCallBackToMsg(ILandroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 632
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    :catch_0
    move-exception v1

    .line 633
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected varargs invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "rec"    # Ljava/lang/Object;
    .param p2, "cb"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 643
    const/4 v2, 0x0

    .line 644
    .local v2, "invocation":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 645
    .local v5, "targetCallback":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 646
    .local v4, "selector":Ljava/lang/String;
    const/4 v3, 0x0

    .line 649
    .local v3, "passObj":Ljava/lang/Object;
    move-object v5, p1

    .line 650
    move-object v4, p2

    .line 652
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 653
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 654
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 657
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz v5, :cond_3

    move v8, v6

    :goto_0
    if-eqz v2, :cond_4

    :goto_1
    and-int/2addr v6, v8

    if-eqz v6, :cond_2

    .line 658
    if-eqz p3, :cond_1

    .line 659
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 661
    .end local v3    # "passObj":Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_2
    :goto_2
    return-void

    .restart local v3    # "passObj":Ljava/lang/Object;
    :cond_3
    move v8, v7

    .line 657
    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_1

    .line 664
    .end local v3    # "passObj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public isDoActionUpdatePath()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/sns/game/dialog/base/CCDialog;->isDoActionUpdatePath:Z

    return v0
.end method

.method public isIgnoredSetTouchEnabledWithCaller()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sns/game/dialog/base/CCDialog;->isIgnoredSetTouchEnabledWithCaller:Z

    return v0
.end method

.method public isSetActionPathMode()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/sns/game/dialog/base/CCDialog;->isSetActionPathMode:Z

    return v0
.end method

.method public isSwallowTouch()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sns/game/dialog/base/CCDialog;->isSwallowTouch:Z

    return v0
.end method

.method public layerTag()Lcom/sns/game/util/GameConstant$LayerTag;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sns/game/util/GameConstant$LayerTag;->valueOf(Ljava/lang/String;)Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v0

    return-object v0
.end method

.method protected notifyToast(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 624
    invoke-static {p1}, Lcom/sns/game/util/CCUtil;->notifyToast(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method protected onCancelFinishCallBack()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cancelFinishCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cancelFinishCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v0}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 348
    :cond_0
    return-void
.end method

.method protected varargs onCancelFinishHandleObj([Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cancelFinishCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cancelFinishCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v0, p0, p1}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 353
    :cond_0
    return-void
.end method

.method protected onCreateBeforeCall()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method protected varargs onCreateCall(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 62
    return-void
.end method

.method protected onCreateFinishCall()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected onEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->removeSelf()V

    .line 136
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    if-eqz v0, :cond_0

    .line 137
    iget-boolean v0, p0, Lcom/sns/game/dialog/base/CCDialog;->isIgnoredSetTouchEnabledWithCaller:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 142
    :cond_0
    iput-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    .line 143
    iput-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    .line 144
    return-void
.end method

.method protected onShowCallBack()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->showCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->showCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v0}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 336
    :cond_0
    return-void
.end method

.method protected varargs onShowHandleObj([Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->showCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->showCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v0, p0, p1}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 341
    :cond_0
    return-void
.end method

.method protected abstract recycleSelf()V
.end method

.method protected registerWithTouchDispatcher()V
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    const v1, -0x7fffffff

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lorg/cocos2d/events/CCTouchDispatcher;->addTargetedDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;IZ)V

    .line 150
    return-void
.end method

.method protected releaseTexture(Ljava/lang/String;)V
    .locals 1
    .param p1, "textureKeyName"    # Ljava/lang/String;

    .prologue
    .line 524
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCTextureCache;->releaseTexture(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public removeSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 454
    invoke-super {p0}, Lorg/cocos2d/layers/CCLayer;->removeSelf()V

    .line 455
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->activateUpdatePathOut()V

    .line 457
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 465
    :cond_1
    iput-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 466
    iput-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    .line 467
    iput-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    .line 469
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->recycleSelf()V

    .line 470
    return-void
.end method

.method protected removeSpriteFrames(Ljava/lang/String;)V
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->removeSpriteFrames(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public setActionCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V
    .locals 0
    .param p1, "tag"    # Lcom/sns/game/util/GameConstant$LayerTag;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sns/game/dialog/base/CCDialog;->actionCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 193
    return-void
.end method

.method protected setActionCallTag(Lorg/cocos2d/layers/CCLayer;)V
    .locals 2
    .param p1, "callLayer"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 196
    instance-of v1, p1, Lcom/sns/game/ui/CCGameLayer;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 197
    check-cast v0, Lcom/sns/game/ui/CCGameLayer;

    .line 198
    .local v0, "gameLayer":Lcom/sns/game/ui/CCGameLayer;
    invoke-virtual {v0}, Lcom/sns/game/ui/CCGameLayer;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->actionCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 200
    .end local v0    # "gameLayer":Lcom/sns/game/ui/CCGameLayer;
    :cond_0
    return-void
.end method

.method public setActionInOutPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "in"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sns/game/dialog/base/CCDialog;->actionPathIn:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/sns/game/dialog/base/CCDialog;->actionPathOut:Ljava/lang/String;

    .line 183
    return-void
.end method

.method protected setBackgroundBox(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v1, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    .line 376
    .local v0, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    .line 379
    :goto_0
    iget-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 380
    iget-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/base/CCDialog;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 381
    iget-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/base/CCDialog;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 382
    sget-object v1, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/base/CCDialog;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 383
    return-void

    .line 377
    :cond_0
    invoke-static {p1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    goto :goto_0
.end method

.method protected setBackgroundBoxWidthMaskOff(Ljava/lang/String;F)V
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "s"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 386
    invoke-virtual {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 387
    invoke-static {v5, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 388
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 389
    .local v2, "pos":Lorg/cocos2d/types/CGPoint;
    sget-object v3, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    .line 390
    .local v3, "size":Lorg/cocos2d/types/CGSize;
    sget-object v1, Lorg/cocos2d/types/ccColor3B;->ccBLACK:Lorg/cocos2d/types/ccColor3B;

    .line 391
    .local v1, "color3b":Lorg/cocos2d/types/ccColor3B;
    invoke-static {v0, v2, v3, v1, p2}, Lcom/sns/game/util/CCUtil;->asMaskOffSprite(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/ccColor3B;F)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    iput-object v4, p0, Lcom/sns/game/dialog/base/CCDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    .line 392
    iget-object v4, p0, Lcom/sns/game/dialog/base/CCDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 393
    iget-object v4, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v5, p0, Lcom/sns/game/dialog/base/CCDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 394
    return-void
.end method

.method public setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sns/game/dialog/base/CCDialog;->cancelFinishCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 357
    return-void
.end method

.method public setDoActionUpdatePath(Z)V
    .locals 0
    .param p1, "isDoActionUpdatePath"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/sns/game/dialog/base/CCDialog;->isDoActionUpdatePath:Z

    .line 164
    return-void
.end method

.method public setIgnoredSetTouchEnabledWithCaller(Z)V
    .locals 0
    .param p1, "isIngored"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sns/game/dialog/base/CCDialog;->isIgnoredSetTouchEnabledWithCaller:Z

    .line 94
    return-void
.end method

.method public setSetActionPathMode(Z)V
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/sns/game/dialog/base/CCDialog;->isSetActionPathMode:Z

    .line 178
    return-void
.end method

.method public setShowCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0
    .param p1, "showCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sns/game/dialog/base/CCDialog;->showCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 331
    return-void
.end method

.method public setSwallowTouch(Z)V
    .locals 0
    .param p1, "isSwallowTouch"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/sns/game/dialog/base/CCDialog;->isSwallowTouch:Z

    .line 84
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 367
    iput p1, p0, Lcom/sns/game/dialog/base/CCDialog;->zOrder_:I

    .line 368
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    if-nez v2, :cond_2

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->removeSelf()V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/cocos2d/nodes/CCNode;->containsChild(Lorg/cocos2d/nodes/CCNode;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    iget-boolean v2, p0, Lcom/sns/game/dialog/base/CCDialog;->isIgnoredSetTouchEnabledWithCaller:Z

    if-nez v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    iget v3, p0, Lcom/sns/game/dialog/base/CCDialog;->zOrder_:I

    invoke-virtual {v2, p0, v3}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 111
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->showStartAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 117
    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    if-eqz v2, :cond_1

    .line 119
    :try_start_1
    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/sns/game/dialog/base/CCDialog;->removeSelf()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 121
    :catch_1
    move-exception v1

    .line 122
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected showCancelAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 429
    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v4}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v2, :cond_1

    .line 434
    const v2, 0x3e19999a    # 0.15f

    invoke-static {v2}, Lcom/sns/game/actions/CCDepthFadeOut;->action(F)Lcom/sns/game/actions/CCDepthFadeOut;

    move-result-object v0

    .line 436
    .local v0, "depthFadeOut":Lcom/sns/game/actions/CCDepthFadeOut;
    const-string v2, "callback_selector_showCancelAnimation"

    invoke-static {p0, v2}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v1

    .line 437
    .local v1, "func":Lorg/cocos2d/actions/instant/CCCallFunc;
    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 439
    .end local v0    # "depthFadeOut":Lcom/sns/game/actions/CCDepthFadeOut;
    .end local v1    # "func":Lorg/cocos2d/actions/instant/CCCallFunc;
    :cond_1
    return-void
.end method

.method protected showStartAnimation()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3d99999a    # 0.075f

    .line 401
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sns/game/dialog/base/CCDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    .line 403
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v6, v1}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 404
    const v4, 0x3d4ccccd    # 0.05f

    const/high16 v5, 0x3fa00000    # 1.25f

    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 405
    const v4, 0x3d8f5c29    # 0.07f

    const v5, 0x3f89999a    # 1.075f

    invoke-static {v4, v5}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 406
    const-string v4, "callback_selector_showStartAnimation"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 402
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 408
    :cond_0
    return-void
.end method

.method protected abstract sortChildren()V
.end method

.method protected sortSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    return-object v0
.end method
