.class public Lcom/sns/game/sdk/ui/CCBillingDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCBillingDialog.java"


# instance fields
.field private bData:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

.field private btnBilling:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private descImage:Lorg/cocos2d/nodes/CCSprite;

.field private descLabel:Lorg/cocos2d/nodes/CCLabel;

.field private resultCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 0
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "data"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    .param p3, "callBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 42
    invoke-direct {p0, p2}, Lcom/sns/game/sdk/ui/CCBillingDialog;->setBillingData(Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;)V

    .line 43
    invoke-direct {p0, p3}, Lcom/sns/game/sdk/ui/CCBillingDialog;->createResultCallBack(Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 44
    invoke-virtual {p0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->onCreateCall()V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/sdk/ui/CCBillingDialog;)Lorg/cocos2d/menus/CCMenuItemSprite;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btnBilling:Lorg/cocos2d/menus/CCMenuItemSprite;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sns/game/sdk/ui/CCBillingDialog;Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/sns/game/sdk/ui/CCBillingDialog;->removeAnimChild(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-void
.end method

.method public static ccDialog(Lcom/sns/game/ui/CCGameLayer;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)Lcom/sns/game/sdk/ui/CCBillingDialog;
    .locals 1
    .param p0, "caller"    # Lcom/sns/game/ui/CCGameLayer;
    .param p1, "data"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    .param p2, "callBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 36
    new-instance v0, Lcom/sns/game/sdk/ui/CCBillingDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/sdk/ui/CCBillingDialog;-><init>(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 37
    .local v0, "dialog":Lcom/sns/game/sdk/ui/CCBillingDialog;
    return-object v0
.end method

.method private createResultCallBack(Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 142
    new-instance v0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/sdk/ui/CCBillingDialog$1;-><init>(Lcom/sns/game/sdk/ui/CCBillingDialog;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    iput-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->resultCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .line 174
    return-void
.end method

.method private removeAnimChild(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 3
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 265
    const v1, 0x1314f

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->removeChildByTag(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setBillingData(Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;)V
    .locals 2
    .param p1, "data"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    .prologue
    .line 134
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v0

    .line 135
    .local v0, "delegate":Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    invoke-virtual {v0, p1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->copyBData(Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->bData:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    .line 137
    return-void
.end method

.method private setBtnBilling()V
    .locals 6

    .prologue
    const/16 v5, 0x112

    const/4 v4, 0x1

    .line 220
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->bData:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    iget-object v0, v1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->resBtn:Ljava/lang/String;

    .line 221
    .local v0, "name":Ljava/lang/String;
    const-string v1, "btns_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v0, p0, v1, v2, v4}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btnBilling:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 222
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btnBilling:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x43440000    # 196.0f

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 223
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btnBilling:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 224
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btnBilling:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-direct {p0, v1, v0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->updateButton(Lorg/cocos2d/menus/CCMenuItemSprite;Ljava/lang/String;)V

    .line 227
    const-string v0, "button_g1.png"

    .line 228
    const-string v1, "btns_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v0, p0, v1, v2, v4}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 229
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x43b58000    # 363.0f

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 230
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 232
    return-void
.end method

.method private setBtnClose()V
    .locals 4

    .prologue
    .line 237
    const-string v0, "Billing_Dialog_Btn_Close.png"

    .line 238
    .local v0, "name":Ljava/lang/String;
    const-string v1, "btns_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, p0, v1, v2, v3}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 239
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x42000000    # 32.0f

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 240
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 241
    return-void
.end method

.method private setDescImage()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 187
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->bData:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    iget-object v0, v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->resImg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descImage:Lorg/cocos2d/nodes/CCSprite;

    .line 188
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descImage:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 189
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descImage:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x43440000    # 196.0f

    const/high16 v2, 0x43140000    # 148.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 190
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descImage:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 191
    return-void
.end method

.method private setPayDescInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 197
    invoke-static {}, Lcom/sns/game/sdk/third/SdkManager;->getInstance()Lcom/sns/game/sdk/third/SdkManager;

    move-result-object v1

    .line 198
    .local v1, "sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    iget-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->bData:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    iget v2, v2, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->point:I

    invoke-virtual {v1, v2}, Lcom/sns/game/sdk/third/SdkManager;->getPayDescInGame(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "desc":Ljava/lang/String;
    const-string v2, " "

    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v2, v3, v4}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descLabel:Lorg/cocos2d/nodes/CCLabel;

    .line 200
    iget-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descLabel:Lorg/cocos2d/nodes/CCLabel;

    invoke-virtual {v2, v5, v5}, Lorg/cocos2d/nodes/CCLabel;->setAnchorPoint(FF)V

    .line 201
    iget-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descLabel:Lorg/cocos2d/nodes/CCLabel;

    const/high16 v3, 0x43440000    # 196.0f

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCLabel;->setPosition(FF)V

    .line 202
    iget-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descLabel:Lorg/cocos2d/nodes/CCLabel;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCLabel;->setOpacity(I)V

    .line 203
    sget-boolean v2, Lcom/sns/game/util/GameConstant;->B_GAME_PAYDESC:Z

    if-eqz v2, :cond_1

    .line 204
    if-eqz v0, :cond_0

    .line 205
    iget-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descLabel:Lorg/cocos2d/nodes/CCLabel;

    invoke-virtual {v2, v0}, Lorg/cocos2d/nodes/CCLabel;->setString(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descLabel:Lorg/cocos2d/nodes/CCLabel;

    sget-object v3, Lorg/cocos2d/types/ccColor3B;->ccGRAY:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCLabel;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descLabel:Lorg/cocos2d/nodes/CCLabel;

    invoke-virtual {v2, v6}, Lorg/cocos2d/nodes/CCLabel;->setVisible(Z)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descLabel:Lorg/cocos2d/nodes/CCLabel;

    invoke-virtual {v2, v6}, Lorg/cocos2d/nodes/CCLabel;->setVisible(Z)V

    goto :goto_0
.end method

.method private updateButton(Lorg/cocos2d/menus/CCMenuItemSprite;Ljava/lang/String;)V
    .locals 12
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 274
    const v10, 0x1314f

    :try_start_0
    invoke-virtual {p1, v10}, Lorg/cocos2d/menus/CCMenuItemSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    .line 275
    .local v3, "existNode":Lorg/cocos2d/nodes/CCNode;
    if-eqz v3, :cond_0

    .line 304
    .end local v3    # "existNode":Lorg/cocos2d/nodes/CCNode;
    :goto_0
    return-void

    .line 277
    .restart local v3    # "existNode":Lorg/cocos2d/nodes/CCNode;
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v8

    .line 278
    .local v8, "size":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0, p2}, Lcom/sns/game/sdk/ui/CCBillingDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 279
    .local v0, "animChild":Lorg/cocos2d/nodes/CCSprite;
    const v10, 0x1314f

    invoke-virtual {v0, v10}, Lorg/cocos2d/nodes/CCSprite;->setTag(I)V

    .line 280
    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v0, v10, v11}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 281
    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v8, v10}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 282
    invoke-virtual {p1, v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 284
    const/high16 v10, 0x3f400000    # 0.75f

    const/high16 v11, 0x3fa00000    # 1.25f

    invoke-static {v10, v11}, Lorg/cocos2d/actions/interval/CCScaleBy;->action(FF)Lorg/cocos2d/actions/interval/CCScaleBy;

    move-result-object v6

    .line 285
    .local v6, "scaleBy":Lorg/cocos2d/actions/interval/CCScaleBy;
    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v10}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v4

    .line 286
    .local v4, "fadeOut":Lorg/cocos2d/actions/interval/CCFadeOut;
    const/4 v10, 0x1

    new-array v10, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v6, v10}, Lorg/cocos2d/actions/interval/CCSpawn;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSpawn;

    move-result-object v9

    .line 287
    .local v9, "spawn":Lorg/cocos2d/actions/interval/CCSpawn;
    invoke-static {v9}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v2

    .line 290
    .local v2, "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    new-instance v10, Lcom/sns/game/sdk/ui/CCBillingDialog$2;

    invoke-direct {v10, p0, v0}, Lcom/sns/game/sdk/ui/CCBillingDialog$2;-><init>(Lcom/sns/game/sdk/ui/CCBillingDialog;Lorg/cocos2d/nodes/CCSprite;)V

    .line 289
    invoke-static {v10}, Lcom/sns/game/actions/CCLogicalCallBack;->action(Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/actions/CCLogicalCallBack;

    move-result-object v5

    .line 298
    .local v5, "lglCallBack":Lcom/sns/game/actions/CCLogicalCallBack;
    const/4 v10, 0x1

    new-array v10, v10, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v2, v10}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v7

    .line 299
    .local v7, "seque":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-static {v7}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
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

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "billing/Billing_Dialog.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 76
    return-void
.end method

.method public btns_CallBack(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 246
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 247
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/sdk/ui/CCBillingDialog;->setIsTouchEnabled(Z)V

    .line 248
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getTag()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 261
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :cond_0
    :goto_0
    return-void

    .line 250
    .restart local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :pswitch_0
    iget-object v3, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->bData:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    const/4 v4, 0x1

    iput v4, v3, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->tagUI:I

    .line 251
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v3

    iget-object v4, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->bData:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    iget v4, v4, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->point:I

    iget-object v5, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->bData:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    iget-object v6, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->resultCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->resultCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->resultCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v3}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingCancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/sdk/ui/CCBillingDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/sdk/ui/CCBillingDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/sdk/ui/CCBillingDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

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

.method protected createSelf()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "Billing_Dialog_Box.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->setBtnBilling()V

    .line 60
    invoke-direct {p0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->setBtnClose()V

    .line 62
    invoke-direct {p0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->setDescImage()V

    .line 63
    invoke-direct {p0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->setPayDescInfo()V

    .line 64
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "SDK\u8ba1\u8d39\u6846"

    return-object v0
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->addTexturesToCache()V

    .line 51
    invoke-virtual {p0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->createSelf()V

    .line 52
    invoke-virtual {p0}, Lcom/sns/game/sdk/ui/CCBillingDialog;->sortChildren()V

    .line 53
    return-void
.end method

.method protected recycleSelf()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method protected sortChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 82
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descImage:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 83
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->descLabel:Lorg/cocos2d/nodes/CCLabel;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 84
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btnBilling:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 85
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0, v1, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 86
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0, v1, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 87
    return-void
.end method
