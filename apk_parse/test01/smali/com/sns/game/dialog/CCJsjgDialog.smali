.class public Lcom/sns/game/dialog/CCJsjgDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCJsjgDialog.java"


# instance fields
.field private btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 0
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 24
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCJsjgDialog;->onCreateCall()V

    .line 25
    return-void
.end method

.method public static ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCJsjgDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 18
    new-instance v0, Lcom/sns/game/dialog/CCJsjgDialog;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCJsjgDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 19
    .local v0, "dialog":Lcom/sns/game/dialog/CCJsjgDialog;
    return-object v0
.end method

.method private setBtnClose()V
    .locals 4

    .prologue
    .line 118
    const-string v1, "UI/JiangshiJiage_Btn_x.png"

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 119
    .local v0, "normalSprite":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnCloseWithCallback"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCJsjgDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 120
    iget-object v1, p0, Lcom/sns/game/dialog/CCJsjgDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x44258000    # 662.0f

    const v3, 0x43bc8000    # 377.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 121
    iget-object v1, p0, Lcom/sns/game/dialog/CCJsjgDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x1

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 122
    iget-object v1, p0, Lcom/sns/game/dialog/CCJsjgDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 123
    return-void
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v0

    .line 65
    .local v0, "cache":Lorg/cocos2d/nodes/CCTextureCache;
    const-string v1, "UI/JiangshiJiage_Box.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    .line 66
    const-string v1, "UI/JiangshiJiage_Btn_x.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    .line 67
    return-void
.end method

.method public btnCloseWithCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 129
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 130
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 131
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCJsjgDialog;->setIsTouchEnabled(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCJsjgDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 38
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCJsjgDialog;->onCancelFinishCallBack()V

    .line 39
    return-void
.end method

.method public callback_selector_showStartAnimation()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showStartAnimation()V

    .line 31
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCJsjgDialog;->onShowCallBack()V

    .line 32
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCJsjgDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCJsjgDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCJsjgDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCJsjgDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCJsjgDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCJsjgDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected createSelf()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "UI/JiangshiJiage_Box.png"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/CCJsjgDialog;->setBackgroundBoxWidthMaskOff(Ljava/lang/String;F)V

    .line 53
    invoke-direct {p0}, Lcom/sns/game/dialog/CCJsjgDialog;->setBtnClose()V

    .line 54
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "\u50f5\u5c38\u4ef7\u683c\u56feUI\u6846"

    return-object v0
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCJsjgDialog;->addTexturesToCache()V

    .line 45
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCJsjgDialog;->createSelf()V

    .line 46
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCJsjgDialog;->sortChildren()V

    .line 47
    return-void
.end method

.method protected recycleSelf()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method protected sortChildren()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sns/game/dialog/CCJsjgDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCJsjgDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 73
    return-void
.end method
