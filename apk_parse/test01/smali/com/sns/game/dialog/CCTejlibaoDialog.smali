.class public Lcom/sns/game/dialog/CCTejlibaoDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCTejlibaoDialog.java"


# instance fields
.field private btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btng:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private takeGiftCallBack:Lcom/sns/game/util/LogicalHandleCallBack;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 0
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 30
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->onCreateCall()V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/dialog/CCTejlibaoDialog;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->onTakeGiftCallBack()V

    return-void
.end method

.method public static ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCTejlibaoDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 24
    new-instance v0, Lcom/sns/game/dialog/CCTejlibaoDialog;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 25
    .local v0, "dialog":Lcom/sns/game/dialog/CCTejlibaoDialog;
    return-object v0
.end method

.method private getLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 209
    new-instance v0, Lcom/sns/game/dialog/CCTejlibaoDialog$1;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCTejlibaoDialog$1;-><init>(Lcom/sns/game/dialog/CCTejlibaoDialog;)V

    return-object v0
.end method

.method private onTakeGiftCallBack()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->takeGiftCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->takeGiftCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v0}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 154
    :cond_0
    return-void
.end method

.method private setBtnClose()V
    .locals 4

    .prologue
    .line 124
    const-string v1, "Tejlibao_Btn_x.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCTejlibaoDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 125
    .local v0, "normalSprite":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnCloseWithCallback"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 126
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x41a80000    # 21.0f

    const v3, 0x43b98000    # 371.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 127
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x1

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 128
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 129
    return-void
.end method

.method private setBtnConfirm()V
    .locals 7

    .prologue
    const/16 v6, 0x112

    const/4 v5, 0x1

    const/high16 v4, 0x3f400000    # 0.75f

    .line 162
    const-string v1, "Tejlibao_Btn_Confirm.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCTejlibaoDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 163
    .local v0, "normalSprite":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnConfirmWithCallback"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 164
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x43968000    # 301.0f

    const/high16 v3, 0x433b0000    # 187.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 165
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 166
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 169
    const-string v1, "Tejlibao_Btn_g.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCTejlibaoDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 170
    const-string v1, "btnConfirmWithCallback"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btng:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 171
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btng:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x44164000    # 601.0f

    const/high16 v3, 0x43b90000    # 370.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 172
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btng:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 173
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btng:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 175
    return-void
.end method

.method private setPayDesc(I)V
    .locals 6
    .param p1, "z"    # I

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 227
    sget-boolean v3, Lcom/sns/game/util/GameConstant;->B_GAME_PAYDESC:Z

    if-eqz v3, :cond_0

    .line 228
    invoke-static {}, Lcom/sns/game/sdk/third/SdkManager;->getInstance()Lcom/sns/game/sdk/third/SdkManager;

    move-result-object v0

    .line 229
    .local v0, "_sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/sns/game/sdk/third/SdkManager;->getPayDescInGame(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "word":Ljava/lang/String;
    const-string v3, ""

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v2, v3, v4}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v1

    .line 231
    .local v1, "payDesc":Lorg/cocos2d/nodes/CCLabel;
    invoke-virtual {v1, v5, v5}, Lorg/cocos2d/nodes/CCLabel;->setAnchorPoint(FF)V

    .line 232
    const/high16 v3, 0x43a10000    # 322.0f

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v1, v3, v4}, Lorg/cocos2d/nodes/CCLabel;->setPosition(FF)V

    .line 233
    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCLabel;->setOpacity(I)V

    .line 234
    iget-object v3, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3, v1, p1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 237
    .end local v0    # "_sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    .end local v1    # "payDesc":Lorg/cocos2d/nodes/CCLabel;
    .end local v2    # "word":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public activateBilling2TakeGift(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 4
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 200
    :try_start_0
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v0

    .line 201
    .local v0, "delegate":Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/CCTejlibaoDialog;->getLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccWithItemSpriteCallBack(Lorg/cocos2d/layers/CCLayer;Lorg/cocos2d/menus/CCMenuItemSprite;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    move-result-object v1

    .line 202
    .local v1, "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    const/16 v3, 0xf

    invoke-virtual {v0, v3, v1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "delegate":Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    .end local v1    # "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "UI/Tejlibao_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 73
    return-void
.end method

.method public btnCloseWithCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 135
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 136
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 137
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCTejlibaoDialog;->setIsTouchEnabled(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnConfirmWithCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 181
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 182
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 183
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 184
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCTejlibaoDialog;->setIsTouchEnabled(Z)V

    .line 185
    sget v3, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->onTakeGiftCallBack()V

    .line 188
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->cancel()V

    .line 196
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 191
    .restart local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sns/game/dialog/CCTejlibaoDialog;->activateBilling2TakeGift(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 44
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->onCancelFinishCallBack()V

    .line 45
    return-void
.end method

.method public callback_selector_showStartAnimation()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showStartAnimation()V

    .line 37
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->onShowCallBack()V

    .line 38
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCTejlibaoDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
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
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCTejlibaoDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
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
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCTejlibaoDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
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
    .line 58
    const-string v0, "Tejlibao_Box.png"

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/CCTejlibaoDialog;->setBackgroundBoxWidthMaskOff(Ljava/lang/String;F)V

    .line 59
    invoke-direct {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->setBtnClose()V

    .line 60
    invoke-direct {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->setBtnConfirm()V

    .line 61
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "\u7279\u4ef7\u793c\u5305\u6846"

    return-object v0
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->addTexturesToCache()V

    .line 51
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->createSelf()V

    .line 52
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCTejlibaoDialog;->sortChildren()V

    .line 53
    return-void
.end method

.method protected recycleSelf()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public setTakeGiftCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0
    .param p1, "takeGiftCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->takeGiftCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 148
    return-void
.end method

.method protected sortChildren()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 78
    const-string v1, "Tejlibao_Img_1m.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCTejlibaoDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 79
    .local v0, "spImg":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v1, 0x43d20000    # 420.0f

    const/high16 v2, 0x43570000    # 215.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 80
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/cocos2d/nodes/CCNode;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->btng:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lorg/cocos2d/nodes/CCSprite;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 81
    iget-object v1, p0, Lcom/sns/game/dialog/CCTejlibaoDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1, v0, v5}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 82
    invoke-direct {p0, v5}, Lcom/sns/game/dialog/CCTejlibaoDialog;->setPayDesc(I)V

    .line 84
    return-void
.end method
