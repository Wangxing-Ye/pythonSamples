.class public Lcom/sns/game/dialog/CCGiftBagDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCGiftBagDialog.java"


# static fields
.field public static final Focus_Close:I = 0x2

.field public static final Focus_Get:I = 0x1

.field public static final TAG_CZLB:I = 0x3

.field public static final TAG_JXLB:I = 0x2

.field public static final TAG_XSLB:I = 0x1


# instance fields
.field private btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

.field public btnFoucus:I

.field private btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private giftBagTag:I

.field private spTitle:Lorg/cocos2d/nodes/CCSprite;

.field private takeGiftCallBack:Lcom/sns/game/util/LogicalHandleCallBack;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 0
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 45
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGiftBagDialog;->onCreateCall()V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/dialog/CCGiftBagDialog;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGiftBagDialog;->onTakeGiftCallBack()V

    return-void
.end method

.method public static ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCGiftBagDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 40
    new-instance v0, Lcom/sns/game/dialog/CCGiftBagDialog;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCGiftBagDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    return-object v0
.end method

.method private getLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 294
    new-instance v0, Lcom/sns/game/dialog/CCGiftBagDialog$1;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCGiftBagDialog$1;-><init>(Lcom/sns/game/dialog/CCGiftBagDialog;)V

    return-object v0
.end method

.method private onTakeGiftCallBack()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->takeGiftCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->takeGiftCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v0}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 161
    :cond_0
    return-void
.end method

.method private removeAnimChild(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 3
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 312
    const v1, 0x1314f

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeChildByTag(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setBtnClose()V
    .locals 4

    .prologue
    .line 256
    const-string v0, "GiftBag_UI_Btn_Close.png"

    .line 257
    .local v0, "name":Ljava/lang/String;
    const-string v1, "btns_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, p0, v1, v2, v3}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 258
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x42780000    # 62.0f

    const v3, 0x43ae8000    # 349.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 259
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 260
    return-void
.end method

.method private setBtnGet()V
    .locals 6

    .prologue
    const/16 v5, 0x112

    const/4 v4, 0x1

    .line 187
    const-string v0, "GiftBag_UI_Btn_Get.png"

    .line 188
    .local v0, "name":Ljava/lang/String;
    const-string v1, "btns_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v0, p0, v1, v2, v4}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 189
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x439a0000    # 308.0f

    const/high16 v3, 0x43320000    # 178.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 190
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 194
    const-string v0, "button_g1.png"

    .line 195
    const-string v1, "btns_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v0, p0, v1, v2, v4}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 196
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x440e0000    # 568.0f

    const v3, 0x43ae8000    # 349.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 197
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 199
    return-void
.end method

.method private setPayDesc(I)V
    .locals 8
    .param p1, "z"    # I

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 165
    sget-boolean v5, Lcom/sns/game/util/GameConstant;->B_GAME_PAYDESC:Z

    if-eqz v5, :cond_0

    .line 166
    invoke-static {}, Lcom/sns/game/sdk/third/SdkManager;->getInstance()Lcom/sns/game/sdk/third/SdkManager;

    move-result-object v0

    .line 167
    .local v0, "_sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    iget v5, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->giftBagTag:I

    invoke-virtual {p0, v5}, Lcom/sns/game/dialog/CCGiftBagDialog;->getPricingPointByBagTag(I)I

    move-result v2

    .line 168
    .local v2, "pp":I
    invoke-virtual {v0, v2}, Lcom/sns/game/sdk/third/SdkManager;->getPayDescInGame(I)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "word":Ljava/lang/String;
    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "text":Ljava/lang/String;
    const-string v5, ""

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v3, v5, v6}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v1

    .line 171
    .local v1, "payDesc":Lorg/cocos2d/nodes/CCLabel;
    invoke-virtual {v1, v7, v7}, Lorg/cocos2d/nodes/CCLabel;->setAnchorPoint(FF)V

    .line 172
    const/high16 v5, 0x439a0000    # 308.0f

    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v1, v5, v6}, Lorg/cocos2d/nodes/CCLabel;->setPosition(FF)V

    .line 173
    const/16 v5, 0xff

    invoke-virtual {v1, v5}, Lorg/cocos2d/nodes/CCLabel;->setOpacity(I)V

    .line 174
    iget-object v5, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5, v1, p1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 176
    .end local v0    # "_sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    .end local v1    # "payDesc":Lorg/cocos2d/nodes/CCLabel;
    .end local v2    # "pp":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "word":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateButton(Lorg/cocos2d/menus/CCMenuItemSprite;Ljava/lang/String;)V
    .locals 12
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 321
    const v10, 0x1314f

    :try_start_0
    invoke-virtual {p1, v10}, Lorg/cocos2d/menus/CCMenuItemSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    .line 322
    .local v3, "existNode":Lorg/cocos2d/nodes/CCNode;
    if-eqz v3, :cond_0

    .line 351
    .end local v3    # "existNode":Lorg/cocos2d/nodes/CCNode;
    :goto_0
    return-void

    .line 324
    .restart local v3    # "existNode":Lorg/cocos2d/nodes/CCNode;
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v8

    .line 325
    .local v8, "size":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0, p2}, Lcom/sns/game/dialog/CCGiftBagDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 326
    .local v0, "animChild":Lorg/cocos2d/nodes/CCSprite;
    const v10, 0x1314f

    invoke-virtual {v0, v10}, Lorg/cocos2d/nodes/CCSprite;->setTag(I)V

    .line 327
    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v0, v10, v11}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 328
    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v8, v10}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 329
    invoke-virtual {p1, v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 331
    const/high16 v10, 0x3f400000    # 0.75f

    const/high16 v11, 0x3fa00000    # 1.25f

    invoke-static {v10, v11}, Lorg/cocos2d/actions/interval/CCScaleBy;->action(FF)Lorg/cocos2d/actions/interval/CCScaleBy;

    move-result-object v6

    .line 332
    .local v6, "scaleBy":Lorg/cocos2d/actions/interval/CCScaleBy;
    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v10}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v4

    .line 333
    .local v4, "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    const/4 v10, 0x1

    new-array v10, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v6, v10}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v9

    .line 334
    .local v9, "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    invoke-static {v9}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v2

    .line 337
    .local v2, "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    new-instance v10, Lcom/sns/game/dialog/CCGiftBagDialog$2;

    invoke-direct {v10, p0, v0}, Lcom/sns/game/dialog/CCGiftBagDialog$2;-><init>(Lcom/sns/game/dialog/CCGiftBagDialog;Lorg/cocos2d/nodes/CCSprite;)V

    .line 336
    invoke-static {v10}, Lcom/sns/game/actions/CCLogicalCallBack;->action(Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/actions/CCLogicalCallBack;

    move-result-object v5

    .line 345
    .local v5, "lglCallBack":Lcom/sns/game/actions/CCLogicalCallBack;
    const/4 v10, 0x1

    new-array v10, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v2, v10}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v7

    .line 346
    .local v7, "seque":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-static {v7}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    .end local v0    # "animChild":Lorg/cocos2d/nodes/CCSprite;
    .end local v2    # "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    .end local v3    # "existNode":Lorg/cocos2d/nodes/CCNode;
    .end local v4    # "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    .end local v5    # "lglCallBack":Lcom/sns/game/actions/CCLogicalCallBack;
    .end local v6    # "scaleBy":Lorg/cocos2d/actions/interval/CCScaleBy;
    .end local v7    # "seque":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v8    # "size":Lorg/cocos2d/types/CGSize;
    .end local v9    # "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public activateBilling2TakeGift(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 5
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 284
    :try_start_0
    iget v4, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->giftBagTag:I

    invoke-virtual {p0, v4}, Lcom/sns/game/dialog/CCGiftBagDialog;->getPricingPointByBagTag(I)I

    move-result v3

    .line 285
    .local v3, "pp":I
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v0

    .line 286
    .local v0, "delegate":Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/CCGiftBagDialog;->getLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v4

    invoke-virtual {v0, p0, p1, v4}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccWithItemSpriteCallBack(Lorg/cocos2d/layers/CCLayer;Lorg/cocos2d/menus/CCMenuItemSprite;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    move-result-object v1

    .line 287
    .local v1, "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    invoke-virtual {v0, v3, v1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0    # "delegate":Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    .end local v1    # "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    .end local v3    # "pp":I
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "UI/GiftBag_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGiftBagDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 103
    return-void
.end method

.method public btns_CallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 265
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 266
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 267
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCGiftBagDialog;->setIsTouchEnabled(Z)V

    .line 268
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getTag()I

    move-result v3

    iput v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnFoucus:I

    .line 269
    iget v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnFoucus:I

    packed-switch v3, :pswitch_data_0

    .line 280
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 271
    .restart local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/sns/game/dialog/CCGiftBagDialog;->activateBilling2TakeGift(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGiftBagDialog;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 67
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGiftBagDialog;->onCancelFinishCallBack()V

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnFoucus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGiftBagDialog;->onCancelFinishHandleObj([Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->cancel()V

    .line 61
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 122
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 144
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected createSelf()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 75
    const-string v1, "GiftBag_UI_Box.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 77
    .local v0, "pos":Lorg/cocos2d/types/CGPoint;
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget v2, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, v0, Lorg/cocos2d/types/CGPoint;->y:F

    const/high16 v4, 0x41a00000    # 20.0f

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 79
    const-string v1, "white_point.png"

    const/high16 v2, 0x44480000    # 800.0f

    const v3, 0x44248000    # 658.0f

    invoke-static {v5, v5, v2, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    .line 80
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 81
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 82
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1, v6, v6}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 83
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setPositionWithCcso(FF)V

    .line 84
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    sget-object v2, Lorg/cocos2d/types/ccColor3B;->ccBLACK:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 85
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->maskOff_:Lorg/cocos2d/nodes/CCSprite;

    const/16 v2, 0xbf

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 88
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGiftBagDialog;->setBtnGet()V

    .line 89
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGiftBagDialog;->setBtnClose()V

    .line 91
    return-void
.end method

.method public getPricingPointByBagTag(I)I
    .locals 1
    .param p1, "tag"    # I

    .prologue
    const/16 v0, 0xc

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 235
    :goto_0
    :pswitch_0
    return v0

    .line 231
    :pswitch_1
    const/16 v0, 0xd

    goto :goto_0

    .line 233
    :pswitch_2
    const/16 v0, 0xe

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTitleName(I)Ljava/lang/String;
    .locals 1
    .param p1, "giftBagTag"    # I

    .prologue
    .line 214
    packed-switch p1, :pswitch_data_0

    .line 222
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 216
    :pswitch_0
    const-string v0, "GiftBag_UI_Img_Xianslb.png"

    goto :goto_0

    .line 218
    :pswitch_1
    const-string v0, "GiftBag_UI_Img_Jingxlb.png"

    goto :goto_0

    .line 220
    :pswitch_2
    const-string v0, "GiftBag_UI_Img_Chaozlb.png"

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "\u8d85\u503c\u793c\u5305\u6846"

    return-object v0
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGiftBagDialog;->addTexturesToCache()V

    .line 52
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGiftBagDialog;->createSelf()V

    .line 53
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGiftBagDialog;->sortChildren()V

    .line 54
    return-void
.end method

.method protected recycleSelf()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public setBagTitle(I)V
    .locals 5
    .param p1, "z"    # I

    .prologue
    .line 242
    const-string v2, "GiftBag_UI_Img_Hengfu.png"

    invoke-virtual {p0, v2}, Lcom/sns/game/dialog/CCGiftBagDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->spTitle:Lorg/cocos2d/nodes/CCSprite;

    .line 243
    iget-object v2, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->spTitle:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v3, 0x43960000    # 300.0f

    const/high16 v4, 0x43b20000    # 356.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 244
    iget-object v2, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->spTitle:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v3, p1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 246
    iget v2, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->giftBagTag:I

    invoke-virtual {p0, v2}, Lcom/sns/game/dialog/CCGiftBagDialog;->getTitleName(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGiftBagDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 248
    .local v1, "spName":Lorg/cocos2d/nodes/CCSprite;
    iget-object v2, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->spTitle:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 249
    const/4 v2, 0x0

    const/high16 v3, 0x42080000    # 34.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setPositionWithCcso(FF)V

    .line 251
    return-void
.end method

.method public setGiftBagTag(I)V
    .locals 1
    .param p1, "giftBagTag"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->giftBagTag:I

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGiftBagDialog;->setBagTitle(I)V

    .line 209
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sns/game/dialog/CCGiftBagDialog;->setPayDesc(I)V

    .line 210
    return-void
.end method

.method public setTakeGiftCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0
    .param p1, "takeGiftCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->takeGiftCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 155
    return-void
.end method

.method protected sortChildren()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 109
    iget-object v0, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/cocos2d/nodes/CCNode;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->spTitle:Lorg/cocos2d/nodes/CCSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnGet:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v2, v1, v4

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sns/game/dialog/CCGiftBagDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lorg/cocos2d/nodes/CCSprite;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 110
    return-void
.end method
