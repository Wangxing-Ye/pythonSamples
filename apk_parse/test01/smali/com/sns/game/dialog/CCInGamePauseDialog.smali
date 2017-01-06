.class public Lcom/sns/game/dialog/CCInGamePauseDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCInGamePauseDialog.java"


# instance fields
.field private btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

.field public btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnTag:I


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 1
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnTag:I

    .line 34
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->onCreateCall()V

    .line 36
    return-void
.end method

.method public static dialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCInGamePauseDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 28
    new-instance v0, Lcom/sns/game/dialog/CCInGamePauseDialog;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCInGamePauseDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 29
    .local v0, "dialog":Lcom/sns/game/dialog/CCInGamePauseDialog;
    return-object v0
.end method

.method private setBtnKefu(Lorg/cocos2d/types/CGPoint;)V
    .locals 4
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v3, 0x1

    .line 234
    const-string v1, "InGamePause_Dialog_Btn_Kefu.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 235
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnKefuWithCallback"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 236
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 237
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 238
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 239
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v1, v3, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 240
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 241
    return-void
.end method

.method private setBtnLiBao(Lorg/cocos2d/types/CGPoint;)V
    .locals 4
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 268
    :try_start_0
    const-string v2, "GiftBag_UI_Icon.png"

    invoke-virtual {p0, v2}, Lcom/sns/game/dialog/CCInGamePauseDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 269
    .local v1, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    if-nez v1, :cond_0

    .line 271
    const-string v2, "point.png"

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 272
    const-string v2, "btnLibaoWithCallback"

    invoke-static {v1, p0, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 273
    iget-object v2, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V

    .line 278
    :goto_0
    iget-object v2, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v2, p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 279
    iget-object v2, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v3, 0x3f266666    # 0.65f

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setScale(F)V

    .line 280
    iget-object v2, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 281
    iget-object v2, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 282
    iget-object v2, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 283
    iget-object v2, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 288
    .end local v1    # "normalSp":Lorg/cocos2d/nodes/CCSprite;
    :goto_1
    return-void

    .line 276
    .restart local v1    # "normalSp":Lorg/cocos2d/nodes/CCSprite;
    :cond_0
    const-string v2, "btnLibaoWithCallback"

    invoke-static {v1, p0, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v1    # "normalSp":Lorg/cocos2d/nodes/CCSprite;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private setBtnMenu(Lorg/cocos2d/types/CGPoint;)V
    .locals 5
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 174
    const-string v1, "InGamePause_Dialog_UI_Menu.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 175
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btn_CallBack"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 176
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setUserData(Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v3, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 178
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 179
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 180
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 181
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 182
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 183
    return-void
.end method

.method private setBtnResume(Lorg/cocos2d/types/CGPoint;)V
    .locals 5
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 160
    const-string v1, "InGamePause_Dialog_UI_Btn_Resume.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 161
    .local v0, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btn_CallBack"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 162
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setUserData(Ljava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 164
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 165
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 166
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 167
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 168
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 169
    return-void
.end method

.method private switchToTarget(ILorg/cocos2d/layers/CCLayer;)V
    .locals 3
    .param p1, "btnTag"    # I
    .param p2, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 199
    move-object v0, p2

    check-cast v0, Lcom/sns/game/ui/CCGameLayer;

    .line 200
    .local v0, "inLayer":Lcom/sns/game/ui/CCGameLayer;
    packed-switch p1, :pswitch_data_0

    .line 229
    :goto_0
    :pswitch_0
    return-void

    .line 222
    :pswitch_1
    invoke-static {}, Lcom/sns/game/layer/CCNewMenuMainLayer;->ccLayer()Lcom/sns/game/layer/CCNewMenuMainLayer;

    move-result-object v1

    .line 223
    .local v1, "toLayer":Lcom/sns/game/ui/CCGameLayer;
    invoke-virtual {v0}, Lcom/sns/game/ui/CCGameLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sns/game/ui/CCGameLayer;->setUserDoCallPath(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Lcom/sns/game/ui/CCGameLayer;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sns/game/ui/CCGameLayer;->setTargetCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "UI/InGamePause_Dialog_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 75
    return-void
.end method

.method public btnKefuWithCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 246
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v3, v0

    .line 247
    .local v3, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 249
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setIsTouchEnabled(Z)V

    .line 250
    iget-object v4, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    invoke-static {v4}, Lcom/sns/game/dialog/CCKefuTousuDialog;->ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCKefuTousuDialog;

    move-result-object v1

    .line 251
    .local v1, "dialog":Lcom/sns/game/dialog/CCKefuTousuDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sns/game/dialog/CCKefuTousuDialog;->setIgnoredSetTouchEnabledWithCaller(Z)V

    .line 252
    new-instance v4, Lcom/sns/game/dialog/CCInGamePauseDialog$1;

    invoke-direct {v4, p0}, Lcom/sns/game/dialog/CCInGamePauseDialog$1;-><init>(Lcom/sns/game/dialog/CCInGamePauseDialog;)V

    invoke-virtual {v1, v4}, Lcom/sns/game/dialog/CCKefuTousuDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 257
    invoke-virtual {v1}, Lcom/sns/game/dialog/CCKefuTousuDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1    # "dialog":Lcom/sns/game/dialog/CCKefuTousuDialog;
    .end local v3    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnLibaoWithCallback(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 293
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v4, v0

    .line 294
    .local v4, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 296
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setIsTouchEnabled(Z)V

    .line 298
    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    check-cast v3, Lcom/sns/game/layer/CCNewGameLayer;

    .line 299
    .local v3, "ngLayer":Lcom/sns/game/layer/CCNewGameLayer;
    invoke-static {p0}, Lcom/sns/game/dialog/CCGiftBagDialog;->ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCGiftBagDialog;

    move-result-object v1

    .line 300
    .local v1, "dialog":Lcom/sns/game/dialog/CCGiftBagDialog;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/sns/game/dialog/CCGiftBagDialog;->setGiftBagTag(I)V

    .line 301
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/sns/game/dialog/CCGiftBagDialog;->setIgnoredSetTouchEnabledWithCaller(Z)V

    .line 302
    invoke-virtual {v3, v4}, Lcom/sns/game/layer/CCNewGameLayer;->takeGiftLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sns/game/dialog/CCGiftBagDialog;->setTakeGiftCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 303
    new-instance v5, Lcom/sns/game/dialog/CCInGamePauseDialog$2;

    invoke-direct {v5, p0}, Lcom/sns/game/dialog/CCInGamePauseDialog$2;-><init>(Lcom/sns/game/dialog/CCInGamePauseDialog;)V

    invoke-virtual {v1, v5}, Lcom/sns/game/dialog/CCGiftBagDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 308
    invoke-virtual {v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v1    # "dialog":Lcom/sns/game/dialog/CCGiftBagDialog;
    .end local v3    # "ngLayer":Lcom/sns/game/layer/CCNewGameLayer;
    .end local v4    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btn_CallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 188
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 189
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 190
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setIsTouchEnabled(Z)V

    .line 191
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getUserData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setBtnTag(I)V

    .line 192
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    .line 66
    .local v0, "caller":Lorg/cocos2d/layers/CCLayer;
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 67
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->onCancelFinishHandleObj([Ljava/lang/Object;)V

    .line 68
    iget v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnTag:I

    invoke-direct {p0, v1, v0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->switchToTarget(ILorg/cocos2d/layers/CCLayer;)V

    .line 69
    return-void
.end method

.method public callback_selector_showStartAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showStartAnimation()V

    .line 58
    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setIsTouchEnabled(Z)V

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->onShowHandleObj([Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 140
    const/4 v1, 0x5

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    const/4 v1, 0x5

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected createSelf()V
    .locals 3

    .prologue
    const/high16 v2, 0x43280000    # 168.0f

    .line 80
    const-string v0, "InGamePause_Dialog_UI_BOX.png"

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setBackgroundBoxWidthMaskOff(Ljava/lang/String;F)V

    .line 81
    const/high16 v0, 0x43500000    # 208.0f

    invoke-static {v2, v0}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setBtnResume(Lorg/cocos2d/types/CGPoint;)V

    .line 82
    const/high16 v0, 0x42ec0000    # 118.0f

    invoke-static {v2, v0}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setBtnMenu(Lorg/cocos2d/types/CGPoint;)V

    .line 83
    const/high16 v0, 0x43830000    # 262.0f

    const/high16 v1, 0x422c0000    # 43.0f

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setBtnKefu(Lorg/cocos2d/types/CGPoint;)V

    .line 84
    const/high16 v0, 0x426c0000    # 59.0f

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setBtnLiBao(Lorg/cocos2d/types/CGPoint;)V

    .line 86
    return-void
.end method

.method public getBtnTag()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnTag:I

    return v0
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    const-string v0, "\u6e38\u620f\u4e2d\u6682\u505c\u63d0\u793a\u6846"

    return-object v0
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->addTexturesToCache()V

    .line 42
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->createSelf()V

    .line 43
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCInGamePauseDialog;->sortChildren()V

    .line 44
    return-void
.end method

.method protected recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeSelf()V

    .line 101
    :cond_2
    iput-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 102
    iput-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 103
    iput-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 104
    return-void
.end method

.method public setBtnTag(I)V
    .locals 0
    .param p1, "btnTag"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnTag:I

    .line 155
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->show()V

    .line 50
    const/16 v0, 0x115

    invoke-static {v0}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 52
    return-void
.end method

.method protected sortChildren()V
    .locals 6

    .prologue
    .line 109
    const-string v1, "InGamePause_Dialog_Img_tousu.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 110
    .local v0, "spTousu":Lorg/cocos2d/nodes/CCSprite;
    const v1, 0x43928000    # 293.0f

    const/high16 v2, 0x42ca0000    # 101.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 111
    iget-object v1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/16 v2, 0xa

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/cocos2d/nodes/CCNode;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnResume:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnMenu:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnKefu:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibao:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 112
    return-void
.end method
