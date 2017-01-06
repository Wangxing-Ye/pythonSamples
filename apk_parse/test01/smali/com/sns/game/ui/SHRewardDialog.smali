.class public Lcom/sns/game/ui/SHRewardDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "SHRewardDialog.java"


# instance fields
.field private btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private flowerCount:I

.field private goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field private score:I

.field private zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;II)V
    .locals 4
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "score"    # I
    .param p3, "count"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 29
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v1}, Lcom/sns/game/ui/SHRewardDialog;->onCreateCall(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setGoldNumAtlas()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 255
    const-string v0, ""

    const-string v1, "UI/New_Num_x_16x22.png"

    const/16 v2, 0x10

    const/16 v3, 0x16

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 256
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 257
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x432e0000    # 174.0f

    const/high16 v2, 0x42e20000    # 113.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 258
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    iget v1, p0, Lcom/sns/game/ui/SHRewardDialog;->score:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method private setZombieNumAtlas()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 246
    const-string v0, ""

    const-string v1, "UI/New_Num_x_16x22.png"

    const/16 v2, 0x10

    const/16 v3, 0x16

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 247
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 248
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x432e0000    # 174.0f

    const/high16 v2, 0x43360000    # 182.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 249
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    iget v1, p0, Lcom/sns/game/ui/SHRewardDialog;->flowerCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method

.method public static sharedDialog(Lorg/cocos2d/layers/CCLayer;II)Lcom/sns/game/ui/SHRewardDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p1, "score"    # I
    .param p2, "count"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/sns/game/ui/SHRewardDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/ui/SHRewardDialog;-><init>(Lorg/cocos2d/layers/CCLayer;II)V

    .line 22
    .local v0, "dialog":Lcom/sns/game/ui/SHRewardDialog;
    return-object v0
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "UI/GameMode_Dialog_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/SHRewardDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 90
    return-void
.end method

.method public btnBack_CallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 210
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 211
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 212
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/ui/SHRewardDialog;->setIsTouchEnabled(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/sns/game/ui/SHRewardDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 1

    .prologue
    .line 78
    :try_start_0
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 79
    invoke-virtual {p0}, Lcom/sns/game/ui/SHRewardDialog;->onCancelFinishCallBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showStartAnimation()V
    .locals 6

    .prologue
    .line 62
    :try_start_0
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showStartAnimation()V

    .line 63
    iget-object v3, p0, Lcom/sns/game/ui/SHRewardDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    instance-of v3, v3, Lcom/sns/game/layer/CCSHNewLayer;

    if-eqz v3, :cond_0

    .line 64
    iget-object v2, p0, Lcom/sns/game/ui/SHRewardDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    check-cast v2, Lcom/sns/game/layer/CCSHNewLayer;

    .line 65
    .local v2, "targetLayer":Lcom/sns/game/layer/CCSHNewLayer;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sns/game/ui/SHRewardDialog;->score:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Lcom/sns/game/layer/CCSHNewLayer;->sharedCallBack(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v0

    .line 66
    .local v0, "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    invoke-virtual {v0}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 67
    const-string v3, "GETREWARD_"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5b88\u62a4\u6a21\u5f0f\u5956\u52b1_\u5956\u52b1\u91d1\u5e01x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/sns/game/ui/SHRewardDialog;->score:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sns/game/ui/SHRewardDialog;->activateUpdateBanner(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    .end local v2    # "targetLayer":Lcom/sns/game/layer/CCSHNewLayer;
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v1, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesBegan(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v1, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesEnded(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v1, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesMoved(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected createSelf()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "GameMode_Dialog_UI_Box.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/ui/SHRewardDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/sns/game/ui/SHRewardDialog;->setBtnBack()V

    .line 100
    invoke-direct {p0}, Lcom/sns/game/ui/SHRewardDialog;->setZombieNumAtlas()V

    .line 101
    invoke-direct {p0}, Lcom/sns/game/ui/SHRewardDialog;->setGoldNumAtlas()V

    .line 102
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "\u5b88\u62a4\u6a21\u5f0f\u7ed3\u7b97\u63d0\u793a\u6846"

    return-object v0
.end method

.method protected varargs onCreateCall(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 38
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 39
    .local v1, "score":I
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 40
    .local v0, "count":I
    invoke-virtual {p0, v1}, Lcom/sns/game/ui/SHRewardDialog;->setScore(I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/sns/game/ui/SHRewardDialog;->setFlowerCount(I)V

    .line 42
    invoke-virtual {p0}, Lcom/sns/game/ui/SHRewardDialog;->addTexturesToCache()V

    .line 43
    invoke-virtual {p0}, Lcom/sns/game/ui/SHRewardDialog;->createSelf()V

    .line 44
    invoke-virtual {p0}, Lcom/sns/game/ui/SHRewardDialog;->sortChildren()V

    .line 45
    return-void
.end method

.method protected recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 128
    :cond_2
    iput-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 129
    iput-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 130
    iput-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 131
    return-void
.end method

.method public setBtnBack()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 197
    const-string v1, "GameMode_Dialog_UI_Btn_Back.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/ui/SHRewardDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 198
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnBack_CallBack"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 199
    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v2, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 200
    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x438f0000    # 286.0f

    const/high16 v3, 0x424c0000    # 51.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 201
    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 202
    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 203
    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 204
    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 205
    return-void
.end method

.method public setFlowerCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/sns/game/ui/SHRewardDialog;->flowerCount:I

    .line 192
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/sns/game/ui/SHRewardDialog;->score:I

    .line 188
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 51
    :try_start_0
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->show()V

    .line 52
    const/16 v1, 0x115

    invoke-static {v1}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected sortChildren()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 137
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->btnBack:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 140
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->zombieNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 141
    iget-object v0, p0, Lcom/sns/game/ui/SHRewardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/ui/SHRewardDialog;->goldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 142
    return-void
.end method
