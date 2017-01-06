.class public Lcom/sns/game/ui/CJRewardDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CJRewardDialog.java"


# instance fields
.field private btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private destroyNum:I

.field private goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field private score:I

.field private zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;II)V
    .locals 3
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "score"    # I
    .param p3, "destroyNum"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p0, v0}, Lcom/sns/game/ui/CJRewardDialog;->onCreateCall(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method private setGoldNumAtlas()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 227
    const-string v0, ""

    const-string v1, "UI/New_Num_x_16x22.png"

    const/16 v2, 0x10

    const/16 v3, 0x16

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 228
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 229
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x432e0000    # 174.0f

    const/high16 v2, 0x42e20000    # 113.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 230
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    iget v1, p0, Lcom/sns/game/ui/CJRewardDialog;->score:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method

.method private setZombieNumAtlas()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 218
    const-string v0, ""

    const-string v1, "UI/New_Num_x_16x22.png"

    const/16 v2, 0x10

    const/16 v3, 0x16

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 219
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 220
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x432e0000    # 174.0f

    const/high16 v2, 0x43360000    # 182.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 221
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    iget v1, p0, Lcom/sns/game/ui/CJRewardDialog;->destroyNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 222
    return-void
.end method

.method public static sharedDialog(Lorg/cocos2d/layers/CCLayer;II)Lcom/sns/game/ui/CJRewardDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p1, "score"    # I
    .param p2, "destroyNum"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/sns/game/ui/CJRewardDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/ui/CJRewardDialog;-><init>(Lorg/cocos2d/layers/CCLayer;II)V

    .line 22
    .local v0, "dialog":Lcom/sns/game/ui/CJRewardDialog;
    return-object v0
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "UI/GameMode_Dialog_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/CJRewardDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 74
    return-void
.end method

.method public btnBack_CallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 182
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 183
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 184
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/ui/CJRewardDialog;->setIsTouchEnabled(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/sns/game/ui/CJRewardDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 66
    invoke-virtual {p0}, Lcom/sns/game/ui/CJRewardDialog;->onCancelFinishCallBack()V

    .line 67
    return-void
.end method

.method public callback_selector_showStartAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 53
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showStartAnimation()V

    .line 54
    iget-object v2, p0, Lcom/sns/game/ui/CJRewardDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    instance-of v2, v2, Lcom/sns/game/layer/CCCJNewLayer;

    if-eqz v2, :cond_0

    .line 55
    iget-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    check-cast v1, Lcom/sns/game/layer/CCCJNewLayer;

    .line 56
    .local v1, "targetLayer":Lcom/sns/game/layer/CCCJNewLayer;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sns/game/ui/CJRewardDialog;->score:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Lcom/sns/game/layer/CCCJNewLayer;->sharedCallBack(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v0

    .line 57
    .local v0, "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    invoke-virtual {v0}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 58
    const-string v2, "GETREWARD_"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5f69\u91d1\u6a21\u5f0f\u5956\u52b1_\u5956\u52b1\u91d1\u5e01x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sns/game/ui/CJRewardDialog;->score:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sns/game/ui/CJRewardDialog;->activateUpdateBanner(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0    # "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    .end local v1    # "targetLayer":Lcom/sns/game/layer/CCCJNewLayer;
    :cond_0
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesBegan(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 138
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesEnded(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 152
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesMoved(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 145
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected createSelf()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "GameMode_Dialog_UI_Box.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/CJRewardDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sns/game/ui/CJRewardDialog;->setBtnBack()V

    .line 84
    invoke-direct {p0}, Lcom/sns/game/ui/CJRewardDialog;->setZombieNumAtlas()V

    .line 85
    invoke-direct {p0}, Lcom/sns/game/ui/CJRewardDialog;->setGoldNumAtlas()V

    .line 86
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "\u5f69\u91d1\u6a21\u5f0f\u7ed3\u7b97\u63d0\u793a\u6846"

    return-object v0
.end method

.method protected varargs onCreateCall(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 34
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 35
    .local v1, "score":I
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    .local v0, "destroyNum":I
    invoke-virtual {p0, v1}, Lcom/sns/game/ui/CJRewardDialog;->setScore(I)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/sns/game/ui/CJRewardDialog;->setDestroyNum(I)V

    .line 38
    invoke-virtual {p0}, Lcom/sns/game/ui/CJRewardDialog;->addTexturesToCache()V

    .line 39
    invoke-virtual {p0}, Lcom/sns/game/ui/CJRewardDialog;->createSelf()V

    .line 40
    invoke-virtual {p0}, Lcom/sns/game/ui/CJRewardDialog;->sortChildren()V

    .line 41
    return-void
.end method

.method protected recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 112
    :cond_2
    iput-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 113
    iput-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 114
    iput-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 115
    return-void
.end method

.method public setBtnBack()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 169
    const-string v1, "GameMode_Dialog_UI_Btn_Back.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/ui/CJRewardDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 170
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnBack_CallBack"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 171
    iget-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v2, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 172
    iget-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x438f0000    # 286.0f

    const/high16 v3, 0x424c0000    # 51.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 173
    iget-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 174
    iget-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 175
    iget-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 176
    iget-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 177
    return-void
.end method

.method public setDestroyNum(I)V
    .locals 0
    .param p1, "destroyNum"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/sns/game/ui/CJRewardDialog;->destroyNum:I

    .line 164
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/sns/game/ui/CJRewardDialog;->score:I

    .line 160
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->show()V

    .line 47
    const/16 v0, 0x115

    invoke-static {v0}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 48
    return-void
.end method

.method protected sortChildren()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 121
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 124
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 125
    iget-object v0, p0, Lcom/sns/game/ui/CJRewardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/CJRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 126
    return-void
.end method
