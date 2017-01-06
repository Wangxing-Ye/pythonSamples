.class public Lcom/sns/game/dialog/CCZombiePlotDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCZombiePlotDialog.java"


# instance fields
.field private btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private level:I


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;I)V
    .locals 2
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "level"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/CCZombiePlotDialog;->onCreateCall(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static dialog(Lorg/cocos2d/layers/CCLayer;I)Lcom/sns/game/dialog/CCZombiePlotDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p1, "level"    # I

    .prologue
    .line 18
    new-instance v0, Lcom/sns/game/dialog/CCZombiePlotDialog;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/dialog/CCZombiePlotDialog;-><init>(Lorg/cocos2d/layers/CCLayer;I)V

    .line 19
    .local v0, "dialog":Lcom/sns/game/dialog/CCZombiePlotDialog;
    return-object v0
.end method

.method private getBackgroundName(I)Ljava/lang/String;
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZombiePlot_Dialog_UI_Plot_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setBtnClose()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 113
    iget v1, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->level:I

    invoke-direct {p0, v1}, Lcom/sns/game/dialog/CCZombiePlotDialog;->getBackgroundName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCZombiePlotDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 114
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnClose_CallBack"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 115
    iget-object v1, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setOpacity(I)V

    .line 116
    iget-object v1, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v3, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 117
    iget-object v1, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0}, Lcom/sns/game/dialog/CCZombiePlotDialog;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 118
    iget-object v1, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 119
    iget-object v1, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 120
    iget-object v1, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 121
    return-void
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "zombie/ZombiePlot_Dialog_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCZombiePlotDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 49
    return-void
.end method

.method public btnClose_CallBack(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 126
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 127
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 130
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCZombiePlotDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->level:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCZombiePlotDialog;->onCancelFinishHandleObj([Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesBegan(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 79
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesEnded(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 93
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesMoved(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 86
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected createSelf()V
    .locals 2

    .prologue
    .line 54
    iget v1, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->level:I

    invoke-direct {p0, v1}, Lcom/sns/game/dialog/CCZombiePlotDialog;->getBackgroundName(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCZombiePlotDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/sns/game/dialog/CCZombiePlotDialog;->setBtnClose()V

    .line 57
    return-void
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->level:I

    return v0
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "\u50f5\u5c38\u5267\u60c5\u63d0\u793a\u6846"

    return-object v0
.end method

.method protected varargs onCreateCall(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 32
    .local v0, "level":I
    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCZombiePlotDialog;->setLevel(I)V

    .line 33
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCZombiePlotDialog;->addTexturesToCache()V

    .line 34
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCZombiePlotDialog;->createSelf()V

    .line 35
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCZombiePlotDialog;->sortChildren()V

    .line 36
    return-void
.end method

.method protected recycleSelf()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 67
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->level:I

    .line 104
    return-void
.end method

.method protected sortChildren()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCZombiePlotDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 73
    return-void
.end method
