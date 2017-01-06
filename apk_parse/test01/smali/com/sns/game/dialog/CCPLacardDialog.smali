.class public Lcom/sns/game/dialog/CCPLacardDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCPLacardDialog.java"


# static fields
.field private static final SpImage_Tag:I = 0x111


# instance fields
.field private btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private imageIndex:I

.field kefuNumNodeTag:I

.field payDescNodeTag:I


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 1
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 119
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sns/game/dialog/CCPLacardDialog;->payDescNodeTag:I

    .line 120
    const/16 v0, 0x5b

    iput v0, p0, Lcom/sns/game/dialog/CCPLacardDialog;->kefuNumNodeTag:I

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/sns/game/dialog/CCPLacardDialog;->imageIndex:I

    .line 38
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCPLacardDialog;->onCreateCall()V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/dialog/CCPLacardDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sns/game/dialog/CCPLacardDialog;->notifyToast(Ljava/lang/String;)V

    return-void
.end method

.method private activate2PayXslibao(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 3
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 248
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v0

    .line 249
    .local v0, "delegate":Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    invoke-direct {p0}, Lcom/sns/game/dialog/CCPLacardDialog;->takeXslibaolglCallback()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v2}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccWithItemSpriteCallBack(Lorg/cocos2d/layers/CCLayer;Lorg/cocos2d/menus/CCMenuItemSprite;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    move-result-object v1

    .line 250
    .local v1, "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 251
    return-void
.end method

.method public static ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCPLacardDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 32
    new-instance v0, Lcom/sns/game/dialog/CCPLacardDialog;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCPLacardDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 33
    .local v0, "dialog":Lcom/sns/game/dialog/CCPLacardDialog;
    return-object v0
.end method

.method private setBtnClose()V
    .locals 4

    .prologue
    .line 162
    const-string v1, "PlacardDialog_UI_Btn_Close.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCPLacardDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 163
    .local v0, "normalSprite":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnCloseWithCallback"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 164
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V

    .line 165
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x41b80000    # 23.0f

    const/high16 v3, 0x438b0000    # 278.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 166
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x1

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 167
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 168
    return-void
.end method

.method private setBtnConfirm()V
    .locals 7

    .prologue
    const/16 v6, 0x112

    const/4 v5, 0x1

    const/high16 v4, 0x3f400000    # 0.75f

    .line 190
    const-string v1, "PlacardDialog_UI_Btn_Confirm.png"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCPLacardDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 191
    .local v0, "normalSprite":Lorg/cocos2d/nodes/CCSprite;
    const-string v1, "btnConfirmWithCallback"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 192
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x43460000    # 198.0f

    const/high16 v3, 0x421c0000    # 39.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 193
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 194
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 198
    const-string v1, "button_g2.png"

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 199
    const-string v1, "btnConfirmWithCallback"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 200
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V

    .line 201
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v2, 0x43bc0000    # 376.0f

    const/high16 v3, 0x438b0000    # 278.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 202
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v5, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 203
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 205
    return-void
.end method

.method private setPayDesc(I)V
    .locals 12
    .param p1, "z"    # I

    .prologue
    const/high16 v11, 0x434d0000    # 205.0f

    const/high16 v10, 0x41400000    # 12.0f

    const/4 v9, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    .line 124
    sget-boolean v7, Lcom/sns/game/util/GameConstant;->B_GAME_PAYDESC:Z

    if-eqz v7, :cond_0

    .line 125
    invoke-static {}, Lcom/sns/game/sdk/third/SdkManager;->getInstance()Lcom/sns/game/sdk/third/SdkManager;

    move-result-object v0

    .line 126
    .local v0, "_sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Lcom/sns/game/sdk/third/SdkManager;->getPayDescInGame(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "word":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "split":[Ljava/lang/String;
    aget-object v6, v4, v9

    .line 130
    .local v6, "zifei":Ljava/lang/String;
    const-string v7, ""

    invoke-static {v6, v7, v10}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v3

    .line 131
    .local v3, "payDesc":Lorg/cocos2d/nodes/CCLabel;
    invoke-virtual {v3, v8, v8}, Lorg/cocos2d/nodes/CCLabel;->setAnchorPoint(FF)V

    .line 132
    const/high16 v7, 0x42d40000    # 106.0f

    invoke-virtual {v3, v11, v7}, Lorg/cocos2d/nodes/CCLabel;->setPosition(FF)V

    .line 133
    const/16 v7, 0xff

    invoke-virtual {v3, v7}, Lorg/cocos2d/nodes/CCLabel;->setOpacity(I)V

    .line 135
    const/4 v7, 0x1

    aget-object v2, v4, v7

    .line 136
    .local v2, "numberText":Ljava/lang/String;
    const-string v7, ""

    invoke-static {v2, v7, v10}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v1

    .line 137
    .local v1, "number":Lorg/cocos2d/nodes/CCLabel;
    invoke-virtual {v1, v8, v8}, Lorg/cocos2d/nodes/CCLabel;->setAnchorPoint(FF)V

    .line 138
    const/high16 v7, 0x42ae0000    # 87.0f

    invoke-virtual {v1, v11, v7}, Lorg/cocos2d/nodes/CCLabel;->setPosition(FF)V

    .line 140
    invoke-virtual {v3, v9}, Lorg/cocos2d/nodes/CCLabel;->setVisible(Z)V

    .line 141
    invoke-virtual {v1, v9}, Lorg/cocos2d/nodes/CCLabel;->setVisible(Z)V

    .line 142
    iget-object v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget v8, p0, Lcom/sns/game/dialog/CCPLacardDialog;->payDescNodeTag:I

    invoke-virtual {v7, v3, p1, v8}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 143
    iget-object v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget v8, p0, Lcom/sns/game/dialog/CCPLacardDialog;->kefuNumNodeTag:I

    invoke-virtual {v7, v1, p1, v8}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 146
    .end local v0    # "_sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    .end local v1    # "number":Lorg/cocos2d/nodes/CCLabel;
    .end local v2    # "numberText":Ljava/lang/String;
    .end local v3    # "payDesc":Lorg/cocos2d/nodes/CCLabel;
    .end local v4    # "split":[Ljava/lang/String;
    .end local v5    # "word":Ljava/lang/String;
    .end local v6    # "zifei":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSpImage(I)Lorg/cocos2d/nodes/CCSprite;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PlacardDialog_UI_Img_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCPLacardDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 153
    .local v0, "spImage":Lorg/cocos2d/nodes/CCSprite;
    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setTag(I)V

    .line 154
    const/high16 v2, 0x43460000    # 198.0f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x43300000    # 176.0f

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 155
    return-object v0

    .line 154
    :cond_0
    const/high16 v1, 0x43130000    # 147.0f

    goto :goto_0
.end method

.method private takeXslibaolglCallback()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/sns/game/dialog/CCPLacardDialog$1;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCPLacardDialog$1;-><init>(Lcom/sns/game/dialog/CCPLacardDialog;)V

    return-object v0
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "UI/PlacardDialog_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCPLacardDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 67
    return-void
.end method

.method public btnCloseWithCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 174
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 175
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 176
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCPLacardDialog;->setIsTouchEnabled(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCPLacardDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btnConfirmWithCallback(Ljava/lang/Object;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x3

    .line 211
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v6, v0

    .line 212
    .local v6, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 214
    iget v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->imageIndex:I

    if-lt v7, v9, :cond_1

    .line 215
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sns/game/dialog/CCPLacardDialog;->setIsTouchEnabled(Z)V

    .line 216
    invoke-direct {p0, v6}, Lcom/sns/game/dialog/CCPLacardDialog;->activate2PayXslibao(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    .line 244
    .end local v6    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local v6    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :cond_1
    iget-object v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/16 v8, 0x111

    invoke-virtual {v7, v8}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v4

    .line 221
    .local v4, "removeImage":Lorg/cocos2d/nodes/CCNode;
    if-eqz v4, :cond_2

    .line 222
    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 225
    :cond_2
    iget v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->imageIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->imageIndex:I

    .line 227
    iget v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->imageIndex:I

    invoke-direct {p0, v7}, Lcom/sns/game/dialog/CCPLacardDialog;->setSpImage(I)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v5

    .line 228
    .local v5, "spImage":Lorg/cocos2d/nodes/CCSprite;
    iget-object v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 230
    iget v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->imageIndex:I

    if-ne v7, v9, :cond_0

    .line 231
    iget-object v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget v8, p0, Lcom/sns/game/dialog/CCPLacardDialog;->payDescNodeTag:I

    invoke-virtual {v7, v8}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    .line 232
    .local v3, "payDesc":Lorg/cocos2d/nodes/CCNode;
    iget-object v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget v8, p0, Lcom/sns/game/dialog/CCPLacardDialog;->kefuNumNodeTag:I

    invoke-virtual {v7, v8}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    .line 233
    .local v2, "kefuNum":Lorg/cocos2d/nodes/CCNode;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 234
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 235
    iget-object v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V

    .line 236
    iget-object v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V

    .line 237
    iget-object v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 238
    iget-object v7, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/high16 v8, 0x3f400000    # 0.75f

    invoke-virtual {v7, v8}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v2    # "kefuNum":Lorg/cocos2d/nodes/CCNode;
    .end local v3    # "payDesc":Lorg/cocos2d/nodes/CCNode;
    .end local v4    # "removeImage":Lorg/cocos2d/nodes/CCNode;
    .end local v5    # "spImage":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCPLacardDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCPLacardDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCPLacardDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected createSelf()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "PlacardDialog_UI_Box.png"

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/CCPLacardDialog;->setBackgroundBoxWidthMaskOff(Ljava/lang/String;F)V

    .line 53
    invoke-direct {p0}, Lcom/sns/game/dialog/CCPLacardDialog;->setBtnClose()V

    .line 54
    invoke-direct {p0}, Lcom/sns/game/dialog/CCPLacardDialog;->setBtnConfirm()V

    .line 55
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "\u6e38\u620f\u516c\u544a"

    return-object v0
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCPLacardDialog;->addTexturesToCache()V

    .line 45
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCPLacardDialog;->createSelf()V

    .line 46
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCPLacardDialog;->sortChildren()V

    .line 47
    return-void
.end method

.method protected recycleSelf()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected sortChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 72
    iget v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->imageIndex:I

    invoke-direct {p0, v1}, Lcom/sns/game/dialog/CCPLacardDialog;->setSpImage(I)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 73
    .local v0, "spImage":Lorg/cocos2d/nodes/CCSprite;
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 74
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnConfirm:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 75
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 76
    iget-object v1, p0, Lcom/sns/game/dialog/CCPLacardDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/dialog/CCPLacardDialog;->btn_g:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 77
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sns/game/dialog/CCPLacardDialog;->setPayDesc(I)V

    .line 78
    return-void
.end method
