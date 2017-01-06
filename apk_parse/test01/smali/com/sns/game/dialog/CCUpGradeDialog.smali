.class public Lcom/sns/game/dialog/CCUpGradeDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCUpGradeDialog.java"


# instance fields
.field private bean:Lcom/sns/game/database/bean/UserLevelBean;

.field private btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field private level:I

.field private levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/database/bean/UserLevelBean;)V
    .locals 1
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "levelBean"    # Lcom/sns/game/database/bean/UserLevelBean;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lcom/sns/game/dialog/CCUpGradeDialog;->onCreateCall(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static dialog(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/database/bean/UserLevelBean;)Lcom/sns/game/dialog/CCUpGradeDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p1, "levelBean"    # Lcom/sns/game/database/bean/UserLevelBean;

    .prologue
    .line 20
    new-instance v0, Lcom/sns/game/dialog/CCUpGradeDialog;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/dialog/CCUpGradeDialog;-><init>(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/database/bean/UserLevelBean;)V

    .line 21
    .local v0, "dialog":Lcom/sns/game/dialog/CCUpGradeDialog;
    return-object v0
.end method

.method private setBean(Lcom/sns/game/database/bean/UserLevelBean;)V
    .locals 1
    .param p1, "bean"    # Lcom/sns/game/database/bean/UserLevelBean;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->bean:Lcom/sns/game/database/bean/UserLevelBean;

    .line 165
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserLevelBean;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->level:I

    .line 166
    return-void
.end method

.method private setGoldAtlas()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 230
    const-string v0, ""

    const-string v1, "UI/New_Num_x_16x22.png"

    const/16 v2, 0x10

    const/16 v3, 0x16

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 231
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 232
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x432c0000    # 172.0f

    const/high16 v2, 0x42e80000    # 116.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 233
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->bean:Lcom/sns/game/database/bean/UserLevelBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserLevelBean;->getReward_gold()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method private setLevelAtlas()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 213
    const-string v0, ""

    const-string v1, "UI/New_Num_x_16x15.png"

    const/16 v2, 0x10

    const/16 v3, 0xf

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 214
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 215
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x436a0000    # 234.0f

    const/high16 v2, 0x433b0000    # 187.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 216
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->bean:Lcom/sns/game/database/bean/UserLevelBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserLevelBean;->getLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public btnClose_CallBack(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 184
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 185
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 188
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCUpGradeDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->bean:Lcom/sns/game/database/bean/UserLevelBean;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCUpGradeDialog;->onCancelFinishHandleObj([Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public callback_selector_showStartAnimation()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showStartAnimation()V

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->bean:Lcom/sns/game/database/bean/UserLevelBean;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCUpGradeDialog;->onShowHandleObj([Ljava/lang/Object;)V

    .line 68
    const-string v0, "updateTouched"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/CCUpGradeDialog;->schedule(Ljava/lang/String;F)V

    .line 69
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesBegan(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 143
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesEnded(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 157
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v0, p1}, Lorg/cocos2d/menus/CCMenuItem;->ccTouchesMoved(Lorg/cocos2d/menus/CCMenuItem;Landroid/view/MotionEvent;)Z

    .line 150
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected createSelf()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "UI/UpGrade_Dialog_UI_Box.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCUpGradeDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/sns/game/dialog/CCUpGradeDialog;->setLevelAtlas()V

    .line 93
    invoke-direct {p0}, Lcom/sns/game/dialog/CCUpGradeDialog;->setGoldAtlas()V

    .line 94
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCUpGradeDialog;->setBtnClose()V

    .line 95
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const-string v0, "\u5347\u7ea7\u63d0\u793a\u6846"

    return-object v0
.end method

.method protected varargs onCreateCall(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 33
    move-object v0, p1

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    .line 34
    .local v0, "ulBean":Lcom/sns/game/database/bean/UserLevelBean;
    invoke-direct {p0, v0}, Lcom/sns/game/dialog/CCUpGradeDialog;->setBean(Lcom/sns/game/database/bean/UserLevelBean;)V

    .line 35
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCUpGradeDialog;->addTexturesToCache()V

    .line 36
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCUpGradeDialog;->createSelf()V

    .line 37
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCUpGradeDialog;->sortChildren()V

    .line 38
    return-void
.end method

.method protected recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 119
    :cond_2
    iput-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 120
    iput-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 121
    iput-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 125
    return-void
.end method

.method public setBtnClose()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 171
    const-string v1, "UI/UpGrade_Dialog_UI_Box.png"

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 172
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnClose_CallBack"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 173
    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setOpacity(I)V

    .line 174
    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v3, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 175
    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0}, Lcom/sns/game/dialog/CCUpGradeDialog;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 176
    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 177
    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 178
    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 179
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->show()V

    .line 60
    const/16 v0, 0x118

    invoke-static {v0}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 61
    return-void
.end method

.method protected sortChildren()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 134
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->levelAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 135
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 136
    iget-object v0, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 137
    return-void
.end method

.method public updateTouched(F)V
    .locals 4
    .param p1, "arg"    # F

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCUpGradeDialog;->isTouchEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCUpGradeDialog;->setIsTouchEnabled(Z)V

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    invoke-virtual {v1}, Lorg/cocos2d/layers/CCLayer;->isTouchEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 48
    :cond_1
    const-string v1, "Test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this \tisTouchEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sns/game/dialog/CCUpGradeDialog;->isTouchEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "Test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parent \tisTouchEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sns/game/dialog/CCUpGradeDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    invoke-virtual {v3}, Lorg/cocos2d/layers/CCLayer;->isTouchEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
