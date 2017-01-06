.class public Lcom/sns/game/dialog/CCWeaponGiftDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCWeaponGiftDialog.java"


# instance fields
.field private btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private onGetCallback:Lcom/sns/game/util/LogicalHandleCallBack;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 0
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 31
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->onCreateCall()V

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/dialog/CCWeaponGiftDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->notifyToast(Ljava/lang/String;)V

    return-void
.end method

.method private activate2Pay(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 3
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 193
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v0

    .line 194
    .local v0, "delegate":Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    invoke-direct {p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->onTakeWithSuccesslglCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v2}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccWithItemSpriteCallBack(Lorg/cocos2d/layers/CCLayer;Lorg/cocos2d/menus/CCMenuItemSprite;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    move-result-object v1

    .line 195
    .local v1, "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 196
    return-void
.end method

.method public static ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCWeaponGiftDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 25
    new-instance v0, Lcom/sns/game/dialog/CCWeaponGiftDialog;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 26
    .local v0, "dialog":Lcom/sns/game/dialog/CCWeaponGiftDialog;
    return-object v0
.end method

.method private onTakeWithSuccesslglCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/sns/game/dialog/CCWeaponGiftDialog$1;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog$1;-><init>(Lcom/sns/game/dialog/CCWeaponGiftDialog;)V

    return-object v0
.end method

.method private setBtnClose()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f400000    # 0.75f

    .line 236
    const-string v1, "WeaponGiftDialog_Btn_Close.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 237
    .local v0, "normalSprite":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnCloseWithCallback"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 238
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x42500000    # 52.0f

    const v3, 0x43ae8000    # 349.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 239
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 240
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 241
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 242
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 243
    return-void
.end method

.method private setBtnGet()V
    .locals 7

    .prologue
    const/16 v6, 0x112

    const/4 v5, 0x1

    const/high16 v4, 0x3f400000    # 0.75f

    .line 157
    const-string v1, "WeaponGiftDialog_Btn_Get.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 158
    .local v0, "normalSprite":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnGetWithCallback"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 159
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x439a0000    # 308.0f

    const/high16 v3, 0x43320000    # 178.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 160
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 161
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 162
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 163
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 166
    const-string v1, "button_g1.png"

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 167
    const-string v1, "btnGetWithCallback"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 168
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x440e0000    # 568.0f

    const v3, 0x43ae8000    # 349.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 169
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 170
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 171
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 172
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 174
    return-void
.end method

.method private setPayDesc(I)V
    .locals 6
    .param p1, "z"    # I

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 140
    sget-boolean v3, Lcom/sns/game/util/GameConstant;->B_GAME_PAYDESC:Z

    if-eqz v3, :cond_0

    .line 141
    invoke-static {}, Lcom/sns/game/sdk/third/SdkManager;->getInstance()Lcom/sns/game/sdk/third/SdkManager;

    move-result-object v0

    .line 142
    .local v0, "_sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sns/game/sdk/third/SdkManager;->getPayDescInGame(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "word":Ljava/lang/String;
    const-string v3, ""

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v2, v3, v4}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v1

    .line 144
    .local v1, "payDesc":Lorg/cocos2d/nodes/CCLabel;
    invoke-virtual {v1, v5, v5}, Lorg/cocos2d/nodes/CCLabel;->setAnchorPoint(FF)V

    .line 145
    const/high16 v3, 0x439a0000    # 308.0f

    const/high16 v4, 0x41100000    # 9.0f

    invoke-virtual {v1, v3, v4}, Lorg/cocos2d/nodes/CCLabel;->setPosition(FF)V

    .line 146
    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCLabel;->setOpacity(I)V

    .line 147
    iget-object v3, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3, v1, p1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 149
    .end local v0    # "_sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    .end local v1    # "payDesc":Lorg/cocos2d/nodes/CCLabel;
    .end local v2    # "word":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "UI/WeaponGiftDialog_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 74
    return-void
.end method

.method public btnCloseWithCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 249
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 250
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 252
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->setIsTouchEnabled(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnGetWithCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 180
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 181
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 183
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->setIsTouchEnabled(Z)V

    .line 184
    invoke-direct {p0, v2}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->activate2Pay(Lorg/cocos2d/menus/CCMenuItemSprite;)V
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
    .line 44
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 45
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->onCancelFinishCallBack()V

    .line 46
    return-void
.end method

.method public callback_selector_showStartAnimation()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showStartAnimation()V

    .line 38
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->onShowCallBack()V

    .line 39
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

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

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

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

.method protected createSelf()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "WeaponGiftDialog_UI_Box.png"

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->setBackgroundBoxWidthMaskOff(Ljava/lang/String;F)V

    .line 60
    invoke-direct {p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->setBtnGet()V

    .line 61
    invoke-direct {p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->setBtnClose()V

    .line 62
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "\u6b66\u5668\u793c\u5305\u6846"

    return-object v0
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->addTexturesToCache()V

    .line 52
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->createSelf()V

    .line 53
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->sortChildren()V

    .line 54
    return-void
.end method

.method public onGetCallback()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->onGetCallback:Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->onGetCallback:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v0}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 132
    :cond_0
    return-void
.end method

.method protected recycleSelf()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public setOnGetCallback(Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0
    .param p1, "onGetCallback"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->onGetCallback:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 136
    return-void
.end method

.method protected sortChildren()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 79
    const-string v1, "WeaponGiftDialog_Img_5z.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 80
    .local v0, "spWuzhe":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v1, 0x43c40000    # 392.0f

    const/high16 v2, 0x43550000    # 213.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 81
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1, v0, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 82
    iget-object v1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    new-array v2, v3, [Lorg/cocos2d/nodes/CCNode;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    invoke-virtual {v1, v5, v2}, Lorg/cocos2d/nodes/CCSprite;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 83
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->setPayDesc(I)V

    .line 84
    return-void
.end method
