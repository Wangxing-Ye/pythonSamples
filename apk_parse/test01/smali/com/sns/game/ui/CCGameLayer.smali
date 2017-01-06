.class public abstract Lcom/sns/game/ui/CCGameLayer;
.super Lorg/cocos2d/layers/CCLayer;
.source "CCGameLayer.java"


# instance fields
.field protected cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

.field protected isGamePause:Z

.field protected preloadNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;"
        }
    .end annotation
.end field

.field protected targetCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

.field protected userDoCallPath:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 47
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameLayer;->setFrameCache()V

    .line 48
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameLayer;->setPreloadNodeList()V

    .line 49
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->preloadSelf()V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/CCGameLayer;->setIsTouchEnabled(Z)V

    .line 53
    return-void
.end method

.method private ccTouchedHandle(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItem;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 519
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 520
    .local v0, "itemSp":Lorg/cocos2d/menus/CCMenuItemSprite;
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->isOnlySelectedMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    invoke-virtual {v0, p2}, Lorg/cocos2d/menus/CCMenuItemSprite;->ccTouchSelected(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 538
    :goto_0
    return v1

    .line 524
    :cond_0
    const/4 v1, 0x0

    .line 525
    .local v1, "touched":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 528
    :pswitch_0
    invoke-static {p1, p2}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesBegan(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 529
    goto :goto_0

    .line 531
    :pswitch_1
    invoke-static {p1, p2}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesMoved(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 532
    goto :goto_0

    .line 534
    :pswitch_2
    invoke-static {p1, p2}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesEnded(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setFrameCache()V
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 244
    return-void
.end method

.method private setPreloadNodeList()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->preloadNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->preloadNodes:Ljava/util/ArrayList;

    .line 200
    :cond_0
    return-void
.end method

.method private setTouchEnabled(Lorg/cocos2d/layers/CCLayer;Z)V
    .locals 7
    .param p1, "target"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "enabled"    # Z

    .prologue
    .line 377
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 378
    invoke-virtual {p1}, Lorg/cocos2d/layers/CCLayer;->getChildren()Ljava/util/List;

    move-result-object v4

    .line 379
    .local v4, "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 391
    .end local v4    # "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :goto_1
    return-void

    .line 379
    .restart local v4    # "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCNode;

    .line 380
    .local v3, "node":Lorg/cocos2d/nodes/CCNode;
    instance-of v6, v3, Lorg/cocos2d/layers/CCLayer;

    if-eqz v6, :cond_0

    .line 382
    move-object v0, v3

    check-cast v0, Lorg/cocos2d/layers/CCLayer;

    move-object v1, v0

    .line 383
    .local v1, "child":Lorg/cocos2d/layers/CCLayer;
    invoke-virtual {v1, p2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 384
    invoke-direct {p0, v1, p2}, Lcom/sns/game/ui/CCGameLayer;->setTouchEnabled(Lorg/cocos2d/layers/CCLayer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    .end local v1    # "child":Lorg/cocos2d/layers/CCLayer;
    .end local v3    # "node":Lorg/cocos2d/nodes/CCNode;
    .end local v4    # "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method protected activateTouchEnabled()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    invoke-direct {p0, p0, v0}, Lcom/sns/game/ui/CCGameLayer;->setTouchEnabled(Lorg/cocos2d/layers/CCLayer;Z)V

    .line 368
    return-void
.end method

.method public activateUpdateBanner(Ljava/lang/String;)V
    .locals 4
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "Context":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
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

.method public activateUpdateBanner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "Name"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "Context":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    if-eqz p2, :cond_0

    .line 141
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

.method public activateUpdatePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ContextIDA"    # Ljava/lang/String;
    .param p2, "ContextIDB"    # Ljava/lang/String;

    .prologue
    .line 123
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    if-eqz p2, :cond_0

    .line 126
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

.method protected varargs addChilds(I[Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "z"    # I
    .param p2, "childs"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 295
    :try_start_0
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 304
    :goto_1
    return-void

    .line 295
    :cond_0
    aget-object v1, p2, v2

    .line 296
    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {p0, v1, p1}, Lcom/sns/game/ui/CCGameLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "node":Lorg/cocos2d/nodes/CCNode;
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected addPreloadNode(Lorg/cocos2d/nodes/CCNode;)V
    .locals 1
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->preloadNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->preloadNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    return-void
.end method

.method protected varargs addPreloadNodes([Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "nodes"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 205
    :try_start_0
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 212
    :goto_1
    return-void

    .line 205
    :cond_0
    aget-object v0, p1, v2

    .line 206
    .local v0, "ccNode":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {p0, v0}, Lcom/sns/game/ui/CCGameLayer;->addPreloadNode(Lorg/cocos2d/nodes/CCNode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "ccNode":Lorg/cocos2d/nodes/CCNode;
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
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
    .line 247
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

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
    .line 255
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

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
    .line 263
    .local p1, "plistArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/util/List;)V

    .line 264
    return-void
.end method

.method protected varargs addSpriteFrames([Ljava/lang/String;)V
    .locals 1
    .param p1, "plistArray"    # [Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames([Ljava/lang/String;)V

    .line 260
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
    .line 251
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    const-string v1, ".jpg"

    invoke-virtual {v0, p1, v1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected abstract addTexturesToCache()V
.end method

.method public ccControlTouchCallBackAn(Z)Lcom/sns/game/actions/CCLogicalCallBack;
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 342
    new-instance v0, Lcom/sns/game/ui/CCGameLayer$2;

    invoke-direct {v0, p0}, Lcom/sns/game/ui/CCGameLayer$2;-><init>(Lcom/sns/game/ui/CCGameLayer;)V

    .line 350
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 341
    invoke-static {v0, p0, v1}, Lcom/sns/game/actions/CCLogicalCallBack;->action(Lcom/sns/game/util/LogicalHandleCallBack;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sns/game/actions/CCLogicalCallBack;

    move-result-object v0

    return-object v0
.end method

.method protected ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V
    .locals 4
    .param p1, "targetLayer"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 453
    :try_start_0
    invoke-static {}, Lorg/cocos2d/layers/CCScene;->node()Lorg/cocos2d/layers/CCScene;

    move-result-object v1

    .line 454
    .local v1, "scene":Lorg/cocos2d/layers/CCScene;
    invoke-virtual {v1, p1}, Lorg/cocos2d/layers/CCScene;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 455
    invoke-static {v1}, Lcom/sns/game/util/DeviceManager;->setCocos2dViewWinSize(Lorg/cocos2d/nodes/CCNode;)V

    .line 456
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Lorg/cocos2d/transitions/CCFadeTransition;->transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCFadeTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCDirector;->replaceScene(Lorg/cocos2d/layers/CCScene;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v1    # "scene":Lorg/cocos2d/layers/CCScene;
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTargetControlTouchCallBackAn(Lorg/cocos2d/layers/CCLayer;Z)Lcom/sns/game/actions/CCLogicalCallBack;
    .locals 4
    .param p1, "tagLayer"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "enabled"    # Z

    .prologue
    .line 355
    new-instance v0, Lcom/sns/game/ui/CCGameLayer$3;

    invoke-direct {v0, p0}, Lcom/sns/game/ui/CCGameLayer$3;-><init>(Lcom/sns/game/ui/CCGameLayer;)V

    .line 363
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 354
    invoke-static {v0, p1, v1}, Lcom/sns/game/actions/CCLogicalCallBack;->action(Lcom/sns/game/util/LogicalHandleCallBack;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sns/game/actions/CCLogicalCallBack;

    move-result-object v0

    return-object v0
.end method

.method protected varargs ccTouchedTargetChildrenFromNodes(Landroid/view/MotionEvent;[Lorg/cocos2d/nodes/CCNode;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nodes"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 495
    const/4 v1, 0x0

    .line 496
    .local v1, "touched":Z
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 500
    :cond_0
    return v1

    .line 496
    :cond_1
    aget-object v0, p2, v2

    .line 497
    .local v0, "targetNode":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {p0, v0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 498
    if-nez v1, :cond_0

    .line 496
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
    .line 486
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/cocos2d/nodes/CCNode;>;"
    const/4 v1, 0x0

    .line 487
    .local v1, "touched":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 491
    :goto_0
    return v1

    .line 487
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 488
    .local v0, "targetNode":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {p0, v0, p2}, Lcom/sns/game/ui/CCGameLayer;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 489
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected varargs ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "menuItems"    # [Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "touched":Z
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 481
    :cond_0
    return v1

    .line 476
    :cond_1
    aget-object v0, p2, v2

    .line 478
    .local v0, "targetItem":Lorg/cocos2d/menus/CCMenuItem;
    invoke-direct {p0, v0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchedHandle(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 479
    if-nez v1, :cond_0

    .line 476
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
    .line 464
    .local p1, "menuItems":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/cocos2d/menus/CCMenuItem;>;"
    const/4 v1, 0x0

    .line 465
    .local v1, "touched":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 470
    :goto_0
    return v1

    .line 465
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/menus/CCMenuItem;

    .line 467
    .local v0, "targetItem":Lorg/cocos2d/menus/CCMenuItem;
    invoke-direct {p0, v0, p2}, Lcom/sns/game/ui/CCGameLayer;->ccTouchedHandle(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 468
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 504
    const/4 v3, 0x0

    .line 505
    .local v3, "touched":Z
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 506
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 513
    :goto_0
    return v3

    .line 506
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 507
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    instance-of v5, v0, Lorg/cocos2d/menus/CCMenuItem;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 508
    check-cast v2, Lorg/cocos2d/menus/CCMenuItem;

    .line 509
    .local v2, "targetItem":Lorg/cocos2d/menus/CCMenuItem;
    invoke-direct {p0, v2, p2}, Lcom/sns/game/ui/CCGameLayer;->ccTouchedHandle(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 510
    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public controlTouchedLglCallBack(Lorg/cocos2d/layers/CCLayer;Z)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "layer"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "enabled"    # Z

    .prologue
    .line 332
    new-instance v0, Lcom/sns/game/ui/CCGameLayer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/ui/CCGameLayer$1;-><init>(Lcom/sns/game/ui/CCGameLayer;Lorg/cocos2d/layers/CCLayer;Z)V

    return-object v0
.end method

.method public controlTouchedLglCallBack(Z)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 328
    invoke-virtual {p0, p0, p1}, Lcom/sns/game/ui/CCGameLayer;->controlTouchedLglCallBack(Lorg/cocos2d/layers/CCLayer;Z)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createSelf()V
.end method

.method protected debugToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 543
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

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/CCGameLayer;->notifyToast(Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method protected freezeTouchEnabled()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/sns/game/ui/CCGameLayer;->setTouchEnabled(Lorg/cocos2d/layers/CCLayer;Z)V

    .line 372
    return-void
.end method

.method protected getCallTagLayer()Lorg/cocos2d/layers/CCLayer;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->targetCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-static {v0}, Lcom/sns/game/util/GameConstant;->asTagLayer(Lcom/sns/game/util/GameConstant$LayerTag;)Lorg/cocos2d/layers/CCLayer;

    move-result-object v0

    return-object v0
.end method

.method protected getMergeBackground(Ljava/lang/String;)[Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 399
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sns/game/util/CCUtil;->getMergeBackground(Ljava/lang/String;)[Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMergeBackground(Ljava/lang/String;Lorg/cocos2d/types/CGPoint;)[Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 412
    if-eqz p1, :cond_0

    .line 413
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sns/game/util/CCUtil;->getMergeBackground(Ljava/lang/String;Lorg/cocos2d/types/CGPoint;)[Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMergeBackground(Ljava/util/ArrayList;)[Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;)[",
            "Lorg/cocos2d/nodes/CCSprite;"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    if-eqz p1, :cond_0

    .line 406
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sns/game/util/CCUtil;->getMergeBackground(Ljava/util/ArrayList;)[Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMergeBackground(Ljava/util/ArrayList;Lorg/cocos2d/types/CGPoint;)[Lorg/cocos2d/nodes/CCSprite;
    .locals 1
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;",
            "Lorg/cocos2d/types/CGPoint;",
            ")[",
            "Lorg/cocos2d/nodes/CCSprite;"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    if-eqz p1, :cond_0

    .line 420
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sns/game/util/CCUtil;->getMergeBackground(Ljava/util/ArrayList;Lorg/cocos2d/types/CGPoint;)[Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 422
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

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
    .line 275
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

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
    .line 285
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

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
    .line 279
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrames(Ljava/lang/String;[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getSpriteFrames([Ljava/lang/String;)Ljava/util/ArrayList;
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
    .line 271
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrames([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTargetCallTag()Lcom/sns/game/util/GameConstant$LayerTag;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->targetCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    return-object v0
.end method

.method public getUserDoCallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->userDoCallPath:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getUserDoPathName()Ljava/lang/String;
.end method

.method protected handleLogicalToMsg(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "pare"    # Landroid/os/Parcelable;

    .prologue
    .line 556
    if-nez p1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 557
    :cond_0
    :try_start_0
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 558
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    const v2, 0x9c9c

    invoke-virtual {v0, v2, p1}, Lcom/sns/game/activity/GameActivityss;->handleCallBackToMsg(ILandroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    :catch_0
    move-exception v1

    .line 560
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected varargs invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "rec"    # Ljava/lang/Object;
    .param p2, "cb"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 323
    invoke-static {p1, p2, p3}, Lcom/sns/game/util/CCUtil;->invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public isGamePause()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/sns/game/ui/CCGameLayer;->isGamePause:Z

    return v0
.end method

.method protected isLongTimeToLoad()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public layerTag()Lcom/sns/game/util/GameConstant$LayerTag;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sns/game/util/GameConstant$LayerTag;->valueOf(Ljava/lang/String;)Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v0

    return-object v0
.end method

.method protected maskOffNode(Lorg/cocos2d/nodes/CCNode;)V
    .locals 6
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x7f

    .line 426
    if-eqz p1, :cond_0

    .line 428
    instance-of v3, p1, Lorg/cocos2d/menus/CCMenu;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 429
    check-cast v0, Lorg/cocos2d/menus/CCMenu;

    .line 430
    .local v0, "menu":Lorg/cocos2d/menus/CCMenu;
    invoke-virtual {v0, v5}, Lorg/cocos2d/menus/CCMenu;->setIsTouchEnabled(Z)V

    .line 431
    invoke-virtual {v0, v4}, Lorg/cocos2d/menus/CCMenu;->setOpacity(I)V

    .line 449
    .end local v0    # "menu":Lorg/cocos2d/menus/CCMenu;
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    instance-of v3, p1, Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 436
    check-cast v1, Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 437
    .local v1, "menuItem":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 438
    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setOpacity(I)V

    goto :goto_0

    .line 442
    .end local v1    # "menuItem":Lorg/cocos2d/menus/CCMenuItemSprite;
    :cond_2
    instance-of v3, p1, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 443
    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    .line 444
    .local v2, "sprite":Lorg/cocos2d/nodes/CCSprite;
    sget-object v3, Lorg/cocos2d/types/ccColor3B;->ccBLACK:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 445
    invoke-virtual {v2, v4}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    goto :goto_0
.end method

.method protected notifyToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 548
    :try_start_0
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v1, Lcom/sns/game/activity/GameActivityss;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1}, Lcom/sns/game/activity/GameActivityss;->notifyHandler(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onCreateFinishCall()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/CCGameLayer;->setIsTouchEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->getUserDoCallPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/ui/CCGameLayer;->activateUpdatePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method protected onCreateLoadingCall()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/CCGameLayer;->setGamePause(Z)V

    .line 102
    return-void
.end method

.method public onEnterTransitionDidFinish()V
    .locals 3

    .prologue
    .line 70
    :try_start_0
    invoke-super {p0}, Lorg/cocos2d/layers/CCLayer;->onEnterTransitionDidFinish()V

    .line 72
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->removePreloadNodes()V

    .line 73
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->purgeCachedData()V

    .line 74
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCDirector;->reSetDisplayFPS(Z)V

    .line 75
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameLayer;->setFrameCache()V

    .line 77
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->isLongTimeToLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->onCreateLoadingCall()V

    .line 93
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/ui/CCGameLayer;->setGamePause(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->addTexturesToCache()V

    .line 85
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->createSelf()V

    .line 86
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->sortChildren()V

    .line 87
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->onCreateFinishCall()V

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sns/game/ui/CCGameLayer;->setGamePause(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onExit()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lorg/cocos2d/layers/CCLayer;->onExit()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/ui/CCGameLayer;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 149
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->onExitFinishCall()V

    .line 150
    return-void
.end method

.method protected abstract onExitFinishCall()V
.end method

.method protected onGamePause()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onGamePauseWithOut()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method protected onGameResume()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onGameResumeWithOut()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected playLayerMusic(Z)V
    .locals 1
    .param p1, "loop"    # Z

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/sns/game/ui/CCGameLayer;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sns/game/util/SoundManager;->playBackgroundSound(Lcom/sns/game/util/GameConstant$LayerTag;Z)V

    .line 567
    return-void
.end method

.method protected abstract preloadSelf()V
.end method

.method protected abstract recycleSelf()V
.end method

.method protected varargs removeChilds([Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "childs"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 309
    :try_start_0
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 318
    :goto_1
    return-void

    .line 309
    :cond_0
    aget-object v1, p1, v2

    .line 310
    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "node":Lorg/cocos2d/nodes/CCNode;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected removePreloadNodes()V
    .locals 4

    .prologue
    .line 217
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/ui/CCGameLayer;->preloadNodes:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/sns/game/ui/CCGameLayer;->preloadNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 223
    iget-object v2, p0, Lcom/sns/game/ui/CCGameLayer;->preloadNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 225
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sns/game/ui/CCGameLayer;->preloadNodes:Ljava/util/ArrayList;

    .line 230
    :goto_1
    return-void

    .line 219
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 221
    .local v0, "ccNode":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v0    # "ccNode":Lorg/cocos2d/nodes/CCNode;
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public setGamePause(Z)V
    .locals 0
    .param p1, "isGamePause"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/sns/game/ui/CCGameLayer;->isGamePause:Z

    .line 160
    return-void
.end method

.method public setTargetCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V
    .locals 0
    .param p1, "targetCallTag"    # Lcom/sns/game/util/GameConstant$LayerTag;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sns/game/ui/CCGameLayer;->targetCallTag_:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 190
    return-void
.end method

.method public setUserDoCallPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "userDoCallPath"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sns/game/ui/CCGameLayer;->userDoCallPath:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public sharedCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs sharedCallBack(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
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
    .line 289
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
    .line 394
    invoke-virtual {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    return-object v0
.end method

.method public updateMemory(F)V
    .locals 4
    .param p1, "interval"    # F

    .prologue
    .line 238
    const-string v0, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    const-string v2, " | residual memory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sns/game/util/DeviceManager;->getMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->CCLOGINFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method
