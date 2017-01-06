.class public Lcom/sns/game/dialog/CCKefuTousuDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCKefuTousuDialog.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 0
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 22
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCKefuTousuDialog;->onCreateCall()V

    .line 23
    return-void
.end method

.method public static ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCKefuTousuDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 16
    new-instance v0, Lcom/sns/game/dialog/CCKefuTousuDialog;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCKefuTousuDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 17
    .local v0, "dialog":Lcom/sns/game/dialog/CCKefuTousuDialog;
    return-object v0
.end method

.method private setBtnClose()Lorg/cocos2d/menus/CCMenuItemSprite;
    .locals 4

    .prologue
    .line 106
    const-string v2, "KefuDailog_Btn_Close.png"

    invoke-virtual {p0, v2}, Lcom/sns/game/dialog/CCKefuTousuDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 107
    .local v1, "normalSprite":Lorg/cocos2d/nodes/CCSprite;
    const-string v2, "btnCloseWithCallback"

    invoke-static {v1, p0, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v0

    .line 108
    .local v0, "btnClose":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/high16 v2, 0x43930000    # 294.0f

    const/high16 v3, 0x41f80000    # 31.0f

    invoke-virtual {v0, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 109
    const/4 v2, 0x1

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v0, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 110
    const/16 v2, 0x112

    invoke-virtual {v0, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 112
    return-object v0
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "UI/KefuDailog_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCKefuTousuDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 56
    return-void
.end method

.method public btnCloseWithCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 118
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 119
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 120
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCKefuTousuDialog;->setIsTouchEnabled(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCKefuTousuDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
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
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCKefuTousuDialog;->onCancelFinishCallBack()V

    .line 39
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCKefuTousuDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCKefuTousuDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCKefuTousuDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCKefuTousuDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCKefuTousuDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCKefuTousuDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected createSelf()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "KefuDailog_UI_Box.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCKefuTousuDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "\u5ba2\u670d\u6295\u8bc9\u6846"

    return-object v0
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCKefuTousuDialog;->addTexturesToCache()V

    .line 29
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCKefuTousuDialog;->createSelf()V

    .line 30
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCKefuTousuDialog;->sortChildren()V

    .line 31
    return-void
.end method

.method protected recycleSelf()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method protected sortChildren()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sns/game/dialog/CCKefuTousuDialog;->setBtnClose()Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v0

    .line 62
    .local v0, "btnClose":Lorg/cocos2d/menus/CCMenuItemSprite;
    iget-object v1, p0, Lcom/sns/game/dialog/CCKefuTousuDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 63
    return-void
.end method
