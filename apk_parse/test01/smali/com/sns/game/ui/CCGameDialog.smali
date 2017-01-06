.class public abstract Lcom/sns/game/ui/CCGameDialog;
.super Lorg/cocos2d/layers/CCLayer;
.source "CCGameDialog.java"


# instance fields
.field protected actionCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

.field protected actionPathIn:Ljava/lang/String;

.field protected actionPathOut:Ljava/lang/String;

.field protected backgroundBox:Lorg/cocos2d/nodes/CCSprite;

.field protected cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

.field protected isDoActionUpdatePath:Z

.field protected isSetActionPath:Z

.field protected parentCaller:Lorg/cocos2d/layers/CCLayer;

.field protected parentFinalTop:Lorg/cocos2d/nodes/CCNode;

.field protected zOrder_:I


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 1
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 195
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sns/game/ui/CCGameDialog;->zOrder_:I

    .line 34
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameDialog;->setFrameCache()V

    .line 35
    invoke-direct {p0, p1}, Lcom/sns/game/ui/CCGameDialog;->setParentCaller(Lorg/cocos2d/layers/CCLayer;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/sns/game/ui/CCGameDialog;->setActionCallTag(Lorg/cocos2d/layers/CCLayer;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;I)V
    .locals 1
    .param p1, "callLayer"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "zOrder"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 195
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sns/game/ui/CCGameDialog;->zOrder_:I

    .line 40
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameDialog;->setFrameCache()V

    .line 41
    invoke-direct {p0, p1}, Lcom/sns/game/ui/CCGameDialog;->setParentCaller(Lorg/cocos2d/layers/CCLayer;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/sns/game/ui/CCGameDialog;->setZOrder(I)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/sns/game/ui/CCGameDialog;->setActionCallTag(Lorg/cocos2d/layers/CCLayer;)V

    .line 44
    return-void
.end method

.method private depthSearchParentNode(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "childNode"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "parentNode":Lorg/cocos2d/nodes/CCNode;
    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_0

    .line 400
    instance-of v1, v0, Lorg/cocos2d/layers/CCScene;

    if-nez v1, :cond_0

    .line 401
    invoke-direct {p0, v0}, Lcom/sns/game/ui/CCGameDialog;->depthSearchParentNode(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    move-result-object p1

    .line 405
    .end local p1    # "childNode":Lorg/cocos2d/nodes/CCNode;
    :cond_0
    return-object p1
.end method

.method private setChildLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;Z)V
    .locals 5
    .param p1, "parentNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "enabled"    # Z

    .prologue
    .line 409
    if-eqz p1, :cond_2

    .line 410
    instance-of v3, p1, Lorg/cocos2d/layers/CCLayer;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 411
    check-cast v3, Lorg/cocos2d/layers/CCLayer;

    invoke-virtual {v3, p2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 413
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 414
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 422
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :cond_2
    return-void

    .line 414
    .restart local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 415
    .local v0, "ccNode":Lorg/cocos2d/nodes/CCNode;
    instance-of v4, v0, Lorg/cocos2d/layers/CCLayer;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 416
    check-cast v1, Lorg/cocos2d/layers/CCLayer;

    .line 417
    .local v1, "childLayer":Lorg/cocos2d/layers/CCLayer;
    invoke-virtual {v1, p2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 418
    invoke-direct {p0, v1, p2}, Lcom/sns/game/ui/CCGameDialog;->setChildLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;Z)V

    goto :goto_0
.end method

.method private setFrameCache()V
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 386
    return-void
.end method

.method private setParentCaller(Lorg/cocos2d/layers/CCLayer;)V
    .locals 1
    .param p1, "parentCaller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/sns/game/ui/CCGameDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    .line 392
    invoke-direct {p0, p1}, Lcom/sns/game/ui/CCGameDialog;->depthSearchParentNode(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    .line 393
    return-void
.end method

.method private setParentLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;ZZ)V
    .locals 2
    .param p1, "parentNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "enabled"    # Z
    .param p3, "depthSearch"    # Z

    .prologue
    .line 425
    if-eqz p1, :cond_1

    .line 426
    if-nez p3, :cond_0

    .line 427
    instance-of v1, p1, Lorg/cocos2d/layers/CCLayer;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 428
    check-cast v0, Lorg/cocos2d/layers/CCLayer;

    .line 429
    .local v0, "parentLayer":Lorg/cocos2d/layers/CCLayer;
    invoke-virtual {v0, p2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 430
    invoke-direct {p0, v0, p2}, Lcom/sns/game/ui/CCGameDialog;->setChildLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 434
    .end local v0    # "parentLayer":Lorg/cocos2d/layers/CCLayer;
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    instance-of v1, v1, Lorg/cocos2d/layers/CCLayer;

    if-eqz v1, :cond_2

    .line 436
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/layers/CCLayer;

    .line 437
    .restart local v0    # "parentLayer":Lorg/cocos2d/layers/CCLayer;
    invoke-virtual {v0, p2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 438
    invoke-direct {p0, v0, p2}, Lcom/sns/game/ui/CCGameDialog;->setChildLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 443
    .end local v0    # "parentLayer":Lorg/cocos2d/layers/CCLayer;
    :goto_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    .line 442
    invoke-direct {p0, v1, p2, p3}, Lcom/sns/game/ui/CCGameDialog;->setParentLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;ZZ)V

    .line 446
    :cond_1
    return-void

    .line 440
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sns/game/ui/CCGameDialog;->setChildLayerIsTouchEnabled(Lorg/cocos2d/nodes/CCNode;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected activateUpdateBanner(Ljava/lang/String;)V
    .locals 4
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v1

    invoke-static {v1}, Lcom/sns/game/util/GameConstant;->LayerTagName(Lcom/sns/game/util/GameConstant$LayerTag;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "Context":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 173
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
    .line 183
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v1

    invoke-static {v1}, Lcom/sns/game/util/GameConstant;->LayerTagName(Lcom/sns/game/util/GameConstant$LayerTag;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "Context":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 193
    :goto_0
    return-void

    .line 186
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

.method protected activateUpdatePath(Lcom/sns/game/util/GameConstant$LayerTag;Lcom/sns/game/util/GameConstant$LayerTag;)V
    .locals 5
    .param p1, "outTag"    # Lcom/sns/game/util/GameConstant$LayerTag;
    .param p2, "inTag"    # Lcom/sns/game/util/GameConstant$LayerTag;

    .prologue
    .line 154
    invoke-static {p1}, Lcom/sns/game/util/GameConstant;->LayerTagName(Lcom/sns/game/util/GameConstant$LayerTag;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "ContextIDA":Ljava/lang/String;
    invoke-static {p2}, Lcom/sns/game/util/GameConstant;->LayerTagName(Lcom/sns/game/util/GameConstant$LayerTag;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "ContextIDB":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-eqz v1, :cond_0

    .line 159
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

.method protected activateUpdatePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ContextIDA"    # Ljava/lang/String;
    .param p2, "ContextIDB"    # Ljava/lang/String;

    .prologue
    .line 163
    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    if-eqz p2, :cond_0

    .line 166
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
    .line 124
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->isDoActionUpdatePath()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->isSetActionPathMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->getActionCallTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/ui/CCGameDialog;->activateUpdatePath(Lcom/sns/game/util/GameConstant$LayerTag;Lcom/sns/game/util/GameConstant$LayerTag;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->actionPathIn:Ljava/lang/String;

    iget-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->actionPathOut:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/ui/CCGameDialog;->activateUpdatePath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected activateUpdatePathOut()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->isDoActionUpdatePath()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->isSetActionPathMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->getActionCallTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/ui/CCGameDialog;->activateUpdatePath(Lcom/sns/game/util/GameConstant$LayerTag;Lcom/sns/game/util/GameConstant$LayerTag;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->actionPathOut:Ljava/lang/String;

    iget-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->actionPathIn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/ui/CCGameDialog;->activateUpdatePath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected addFramesToCache()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameDialog;->setFrameCache()V

    .line 293
    :cond_0
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
    .line 296
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

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
    .line 304
    .local p1, "plistArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/util/List;)V

    .line 305
    return-void
.end method

.method protected varargs addSpriteFrames([Ljava/lang/String;)V
    .locals 1
    .param p1, "plistArray"    # [Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames([Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 1

    .prologue
    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->onEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showStartAnimation()V
    .locals 3

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->activateUpdatePathIn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->showCancelAnimation()V

    .line 62
    return-void
.end method

.method protected abstract createSelf()V
.end method

.method public getActionCallTag()Lcom/sns/game/util/GameConstant$LayerTag;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->actionCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    return-object v0
.end method

.method protected getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

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
    .line 316
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

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
    .line 326
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

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
    .line 320
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

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
    .line 312
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrames([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getZOrder()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/sns/game/ui/CCGameDialog;->zOrder_:I

    return v0
.end method

.method protected handleLogicalToMsg(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "pare"    # Landroid/os/Parcelable;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 350
    :cond_0
    :try_start_0
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 351
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    const v2, 0x9c9c

    invoke-virtual {v0, v2, p1}, Lcom/sns/game/activity/GameActivityss;->handleCallBackToMsg(ILandroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    :catch_0
    move-exception v1

    .line 353
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

    .line 358
    const/4 v2, 0x0

    .line 359
    .local v2, "invocation":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 360
    .local v5, "targetCallback":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 361
    .local v4, "selector":Ljava/lang/String;
    const/4 v3, 0x0

    .line 363
    .local v3, "passObj":Ljava/lang/Object;
    move-object v5, p1

    .line 364
    move-object v4, p2

    .line 365
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 366
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 367
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 369
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz v5, :cond_3

    move v8, v6

    .line 370
    :goto_0
    if-eqz v2, :cond_4

    :goto_1
    and-int/2addr v6, v8

    if-eqz v6, :cond_2

    .line 371
    if-eqz p3, :cond_1

    .line 374
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 376
    .end local v3    # "passObj":Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :cond_2
    :goto_2
    return-void

    .restart local v3    # "passObj":Ljava/lang/Object;
    :cond_3
    move v8, v7

    .line 369
    goto :goto_0

    :cond_4
    move v6, v7

    .line 370
    goto :goto_1

    .line 378
    .end local v3    # "passObj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public isDoActionUpdatePath()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sns/game/ui/CCGameDialog;->isDoActionUpdatePath:Z

    return v0
.end method

.method public isSetActionPathMode()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sns/game/ui/CCGameDialog;->isSetActionPath:Z

    return v0
.end method

.method public layerTag()Lcom/sns/game/util/GameConstant$LayerTag;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sns/game/util/GameConstant$LayerTag;->valueOf(Ljava/lang/String;)Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v0

    return-object v0
.end method

.method protected notifyShowToast(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {p1}, Lcom/sns/game/util/CCUtil;->notifyToast(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method protected onEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->removeSelf()V

    .line 66
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 71
    :cond_0
    iput-object v2, p0, Lcom/sns/game/ui/CCGameDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    .line 72
    iput-object v2, p0, Lcom/sns/game/ui/CCGameDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    .line 73
    return-void
.end method

.method protected abstract recycleSelf()V
.end method

.method protected releaseTexture(Ljava/lang/String;)V
    .locals 1
    .param p1, "textureKeyName"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCTextureCache;->releaseTexture(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public removeSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-super {p0}, Lorg/cocos2d/layers/CCLayer;->removeSelf()V

    .line 278
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->activateUpdatePathOut()V

    .line 280
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 284
    :cond_0
    iput-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 285
    iput-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    .line 286
    return-void
.end method

.method protected removeSpriteFrames(Ljava/lang/String;)V
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->removeSpriteFrames(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public setActionCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V
    .locals 0
    .param p1, "tag"    # Lcom/sns/game/util/GameConstant$LayerTag;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sns/game/ui/CCGameDialog;->actionCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 114
    return-void
.end method

.method protected setActionCallTag(Lorg/cocos2d/layers/CCLayer;)V
    .locals 2
    .param p1, "callLayer"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 117
    instance-of v1, p1, Lcom/sns/game/ui/CCGameLayer;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 118
    check-cast v0, Lcom/sns/game/ui/CCGameLayer;

    .line 119
    .local v0, "gameLayer":Lcom/sns/game/ui/CCGameLayer;
    invoke-virtual {v0}, Lcom/sns/game/ui/CCGameLayer;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->actionCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 121
    .end local v0    # "gameLayer":Lcom/sns/game/ui/CCGameLayer;
    :cond_0
    return-void
.end method

.method public setActionInOutPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "in"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sns/game/ui/CCGameDialog;->actionPathIn:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/sns/game/ui/CCGameDialog;->actionPathOut:Ljava/lang/String;

    .line 104
    return-void
.end method

.method protected setBackgroundBox(Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v1, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    .line 210
    .local v0, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    if-eqz v0, :cond_0

    .line 211
    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 216
    iget-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1}, Lcom/sns/game/ui/CCGameDialog;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 217
    iget-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sns/game/ui/CCGameDialog;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 218
    sget-object v1, Lcom/sns/game/util/DeviceManager;->posZero_:Lorg/cocos2d/types/CGPoint;

    sget-object v2, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    const/4 v3, 0x1

    new-array v3, v3, [[F

    const/4 v4, 0x0

    .line 219
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    aput-object v5, v3, v4

    .line 218
    invoke-virtual {p0, v1, v2, v3}, Lcom/sns/game/ui/CCGameDialog;->setLayoutTo(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;[[F)V

    .line 220
    return-void

    .line 213
    :cond_0
    invoke-static {p1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    goto :goto_0

    .line 219
    nop

    :array_0
    .array-data 4
        0x41500000    # 13.0f
        0x0
    .end array-data
.end method

.method public setDoActionUpdatePath(Z)V
    .locals 0
    .param p1, "isDoActionUpdatePath"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sns/game/ui/CCGameDialog;->isDoActionUpdatePath:Z

    .line 87
    return-void
.end method

.method public setSetActionPathMode(Z)V
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sns/game/ui/CCGameDialog;->isSetActionPath:Z

    .line 99
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/sns/game/ui/CCGameDialog;->zOrder_:I

    .line 204
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    if-nez v0, :cond_2

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->removeSelf()V

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/cocos2d/nodes/CCNode;->containsChild(Lorg/cocos2d/nodes/CCNode;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lcom/sns/game/ui/CCGameDialog;->zOrder_:I

    invoke-virtual {v0, p0, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 56
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameDialog;->showStartAnimation()V

    goto :goto_0
.end method

.method protected showCancelAnimation()V
    .locals 5

    .prologue
    .line 255
    iget-object v2, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v2, :cond_0

    .line 257
    const v2, 0x3e19999a    # 0.15f

    invoke-static {v2}, Lcom/sns/game/actions/CCDepthFadeOut;->action(F)Lcom/sns/game/actions/CCDepthFadeOut;

    move-result-object v0

    .line 259
    .local v0, "depthFadeOut":Lcom/sns/game/actions/CCDepthFadeOut;
    const-string v2, "callback_selector_showCancelAnimation"

    invoke-static {p0, v2}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v1

    .line 260
    .local v1, "func":Lorg/cocos2d/actions/instant/CCCallFunc;
    iget-object v2, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 262
    .end local v0    # "depthFadeOut":Lcom/sns/game/actions/CCDepthFadeOut;
    .end local v1    # "func":Lorg/cocos2d/actions/instant/CCCallFunc;
    :cond_0
    return-void
.end method

.method protected showStartAnimation()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3d99999a    # 0.075f

    .line 232
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sns/game/ui/CCGameDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    .line 234
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

    .line 235
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

    .line 236
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

    .line 237
    const-string v4, "callback_selector_showStartAnimation"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 233
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 239
    :cond_0
    return-void
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
    .line 331
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
