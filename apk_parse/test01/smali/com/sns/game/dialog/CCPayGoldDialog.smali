.class public Lcom/sns/game/dialog/CCPayGoldDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCPayGoldDialog.java"


# instance fields
.field private btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private buyBtns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/menus/CCMenuItemSprite;",
            ">;"
        }
    .end annotation
.end field

.field private onGetGoldCallBack:Lcom/sns/game/util/LogicalHandleCallBack;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 1
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->buyBtns:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCPayGoldDialog;->onCreateCall()V

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/dialog/CCPayGoldDialog;Lcom/sns/game/database/bean/StoreItemBean;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/CCPayGoldDialog;->logicalHandleToBuyGoldOnSuccess(Lcom/sns/game/database/bean/StoreItemBean;)V

    return-void
.end method

.method static synthetic access$1(Lcom/sns/game/dialog/CCPayGoldDialog;Lcom/sns/game/database/bean/StoreItemBean;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/CCPayGoldDialog;->logicalHandleToBuyGoldOnFailed(Lcom/sns/game/database/bean/StoreItemBean;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sns/game/dialog/CCPayGoldDialog;Lcom/sns/game/database/bean/StoreItemBean;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/CCPayGoldDialog;->logicalHandleToBuyGoldOnCancel(Lcom/sns/game/database/bean/StoreItemBean;)V

    return-void
.end method

.method private activateBilling2PayGold(Lcom/sns/game/database/bean/StoreItemBean;)V
    .locals 4
    .param p1, "bean"    # Lcom/sns/game/database/bean/StoreItemBean;

    .prologue
    .line 221
    :try_start_0
    new-instance v0, Lcom/sns/game/dialog/CCPayGoldDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/dialog/CCPayGoldDialog$1;-><init>(Lcom/sns/game/dialog/CCPayGoldDialog;Lcom/sns/game/database/bean/StoreItemBean;)V

    .line 239
    .local v0, "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v2

    .line 240
    invoke-virtual {p1}, Lcom/sns/game/database/bean/StoreItemBean;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2PayItem(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCPayGoldDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 27
    new-instance v0, Lcom/sns/game/dialog/CCPayGoldDialog;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCPayGoldDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 28
    .local v0, "dialog":Lcom/sns/game/dialog/CCPayGoldDialog;
    return-object v0
.end method

.method private logicalHandleToBuyGoldOnCancel(Lcom/sns/game/database/bean/StoreItemBean;)V
    .locals 3
    .param p1, "bean"    # Lcom/sns/game/database/bean/StoreItemBean;

    .prologue
    .line 275
    :try_start_0
    const-string v1, "Test"

    const-string v2, "\u8d2d\u4e70\u91d1\u5e01\u53d6\u6d88"

    invoke-static {v1, v2}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCPayGoldDialog;->setIsTouchEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private logicalHandleToBuyGoldOnFailed(Lcom/sns/game/database/bean/StoreItemBean;)V
    .locals 2
    .param p1, "bean"    # Lcom/sns/game/database/bean/StoreItemBean;

    .prologue
    .line 266
    :try_start_0
    const-string v1, "\u8d2d\u4e70\u91d1\u5e01\u5931\u8d25"

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCPayGoldDialog;->notifyToast(Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCPayGoldDialog;->setIsTouchEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private logicalHandleToBuyGoldOnSuccess(Lcom/sns/game/database/bean/StoreItemBean;)V
    .locals 8
    .param p1, "bean"    # Lcom/sns/game/database/bean/StoreItemBean;

    .prologue
    .line 250
    :try_start_0
    invoke-virtual {p1}, Lcom/sns/game/database/bean/StoreItemBean;->getPrice()I

    move-result v3

    .line 251
    .local v3, "rmbPrice":I
    invoke-virtual {p1}, Lcom/sns/game/database/bean/StoreItemBean;->getGold()I

    move-result v1

    .line 252
    .local v1, "getGold":I
    iget-object v4, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->onGetGoldCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/sns/game/dialog/CCPayGoldDialog;->updateHandleTo(Lcom/sns/game/util/LogicalHandleCallBack;[Ljava/lang/Object;)Z

    move-result v2

    .line 253
    .local v2, "isCallBack":Z
    if-eqz v2, :cond_0

    .line 254
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sns/game/dialog/CCPayGoldDialog;->setIsTouchEnabled(Z)V

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8d2d\u4e70\u91d1\u5e01\u6210\u529f,\u5df2\u83b7\u5f97\u91d1\u5e01"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sns/game/dialog/CCPayGoldDialog;->notifyToast(Ljava/lang/String;)V

    .line 256
    const-string v4, "Test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u91d1\u5e01\u8d2d\u4e70\u6210\u529f,\u6d88\u8d39"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5143,\u5df2\u83b7\u5f97\u91d1\u5e01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1    # "getGold":I
    .end local v2    # "isCallBack":Z
    .end local v3    # "rmbPrice":I
    :cond_0
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setBtnClose()V
    .locals 4

    .prologue
    .line 157
    const-string v0, "CCPayGoldDialog_Btn_Cancel.png"

    .line 158
    .local v0, "name":Ljava/lang/String;
    const v2, 0x44264000    # 665.0f

    const/high16 v3, 0x435d0000    # 221.0f

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 159
    .local v1, "pnt":Lorg/cocos2d/types/CGPoint;
    const-string v2, "btnClose_CallBack"

    const/4 v3, -0x1

    invoke-static {v0, p0, v2, v1, v3}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 160
    iget-object v2, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v3, 0x112

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 161
    return-void
.end method

.method private setBuyBtns()V
    .locals 21

    .prologue
    .line 178
    const/4 v14, 0x0

    .local v14, "rowIdx":I
    const/4 v3, 0x0

    .line 179
    .local v3, "colIdx":I
    const/4 v4, 0x3

    .line 180
    .local v4, "colMax":I
    const/high16 v18, 0x434d0000    # 205.0f

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v9

    .line 181
    .local v9, "interval":Lorg/cocos2d/types/CGPoint;
    const/high16 v18, 0x43000000    # 128.0f

    const/high16 v19, 0x420c0000    # 35.0f

    invoke-static/range {v18 .. v19}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v16

    .line 183
    .local v16, "startPos":Lorg/cocos2d/types/CGPoint;
    const/16 v7, 0xe

    .line 184
    .local v7, "finalIdx":I
    const/16 v15, 0x272d

    .line 185
    .local v15, "startId":I
    const/16 v6, 0x272f

    .line 186
    .local v6, "endedId":I
    invoke-static {}, Lcom/sns/game/database/dao/StoreItemDao;->sharedDao()Lcom/sns/game/database/dao/StoreItemDao;

    move-result-object v5

    .line 187
    .local v5, "dao":Lcom/sns/game/database/dao/StoreItemDao;
    const/16 v8, 0x272d

    .local v8, "i":I
    :goto_0
    const/16 v18, 0x272f

    move/from16 v0, v18

    if-le v8, v0, :cond_0

    .line 204
    return-void

    .line 188
    :cond_0
    move-object/from16 v0, v16

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v18, v0

    int-to-float v0, v3

    move/from16 v19, v0

    iget v0, v9, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v12, v18, v19

    .line 189
    .local v12, "posX":F
    move-object/from16 v0, v16

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v18, v0

    int-to-float v0, v14

    move/from16 v19, v0

    iget v0, v9, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    const/high16 v19, 0x41200000    # 10.0f

    add-float v13, v18, v19

    .line 191
    .local v13, "posY":F
    const-string v10, "CCPayGoldDialog_Btn_Get.png"

    .line 192
    .local v10, "name":Ljava/lang/String;
    invoke-static {v12, v13}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v11

    .line 193
    .local v11, "pnt":Lorg/cocos2d/types/CGPoint;
    const-string v18, "btns_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v10, v0, v1, v2, v8}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v17

    .line 194
    .local v17, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    add-int/lit8 v18, v3, 0xe

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/sns/game/database/dao/StoreItemDao;->get4Cache(I)Lcom/sns/game/database/bean/StoreItemBean;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/cocos2d/menus/CCMenuItemSprite;->setUserData(Ljava/lang/Object;)V

    .line 195
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 196
    const/16 v18, 0x112

    invoke-virtual/range {v17 .. v18}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sns/game/dialog/CCPayGoldDialog;->buyBtns:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v3, v3, 0x1

    .line 200
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v3, v0, :cond_1

    .line 201
    const/4 v3, 0x0

    add-int/lit8 v14, v14, 0x1

    .line 187
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private setPayNode(Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/nodes/CCLabel;
    .locals 4
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "z"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 147
    const-string v1, ""

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {p1, v1, v2}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v0

    .line 148
    .local v0, "payNode":Lorg/cocos2d/nodes/CCLabel;
    invoke-virtual {v0, v3, v3}, Lorg/cocos2d/nodes/CCLabel;->setAnchorPoint(FF)V

    .line 149
    invoke-virtual {v0, p2}, Lorg/cocos2d/nodes/CCLabel;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 150
    iget-object v1, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1, v0, p3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 151
    return-object v0
.end method

.method private varargs updateHandleTo(Lcom/sns/game/util/LogicalHandleCallBack;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "targetCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;
    .param p2, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {p1, p0, p2}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "UI/CCPayGoldDialog.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCPayGoldDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 62
    return-void
.end method

.method public btnClose_CallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 166
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 167
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 168
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCPayGoldDialog;->setIsTouchEnabled(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCPayGoldDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public btns_CallBack(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 209
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v3, v0

    .line 210
    .local v3, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sns/game/dialog/CCPayGoldDialog;->setIsTouchEnabled(Z)V

    .line 211
    invoke-virtual {v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/database/bean/StoreItemBean;

    .line 212
    .local v1, "bean":Lcom/sns/game/database/bean/StoreItemBean;
    invoke-direct {p0, v1}, Lcom/sns/game/dialog/CCPayGoldDialog;->activateBilling2PayGold(Lcom/sns/game/database/bean/StoreItemBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "bean":Lcom/sns/game/database/bean/StoreItemBean;
    .end local v3    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 55
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCPayGoldDialog;->onCancelFinishCallBack()V

    .line 56
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCPayGoldDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCPayGoldDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v1, p1}, Lcom/sns/game/dialog/CCPayGoldDialog;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected createSelf()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "CCPayGoldDialog_Bg.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCPayGoldDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/sns/game/dialog/CCPayGoldDialog;->setBtnClose()V

    .line 69
    invoke-direct {p0}, Lcom/sns/game/dialog/CCPayGoldDialog;->setBuyBtns()V

    .line 70
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "\u91d1\u5e01\u8d2d\u4e70\u786e\u8ba4\u6846"

    return-object v0
.end method

.method protected onCreateCall()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCPayGoldDialog;->addTexturesToCache()V

    .line 40
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCPayGoldDialog;->createSelf()V

    .line 41
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCPayGoldDialog;->sortChildren()V

    .line 42
    return-void
.end method

.method protected recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->buyBtns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->buyBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    :cond_0
    iput-object v1, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->buyBtns:Ljava/util/ArrayList;

    .line 77
    iput-object v1, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 78
    return-void
.end method

.method public setOnGetGoldCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0
    .param p1, "onGetGoldCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->onGetGoldCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 286
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->show()V

    .line 48
    const/16 v0, 0x115

    invoke-static {v0}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 49
    return-void
.end method

.method protected sortChildren()V
    .locals 12

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    const/high16 v9, 0x42e40000    # 114.0f

    .line 83
    iget-object v6, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v7, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->buyBtns:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/cocos2d/nodes/CCSprite;->addChildren(Ljava/util/Collection;I)V

    .line 84
    iget-object v6, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v7, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->btnClose:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 86
    invoke-static {}, Lcom/sns/game/sdk/third/SdkManager;->getInstance()Lcom/sns/game/sdk/third/SdkManager;

    move-result-object v0

    .line 89
    .local v0, "_sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Lcom/sns/game/sdk/third/SdkManager;->getPayMoney(I)I

    move-result v1

    .line 90
    .local v1, "money1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x432f0000    # 175.0f

    invoke-static {v7, v9}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    invoke-direct {p0, v6, v7, v10}, Lcom/sns/game/dialog/CCPayGoldDialog;->setPayNode(Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/nodes/CCLabel;

    .line 92
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Lcom/sns/game/sdk/third/SdkManager;->getPayMoney(I)I

    move-result v2

    .line 93
    .local v2, "money2":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x43c00000    # 384.0f

    invoke-static {v7, v9}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    invoke-direct {p0, v6, v7, v10}, Lcom/sns/game/dialog/CCPayGoldDialog;->setPayNode(Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/nodes/CCLabel;

    .line 95
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/sns/game/sdk/third/SdkManager;->getPayMoney(I)I

    move-result v3

    .line 96
    .local v3, "money3":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x44140000    # 592.0f

    invoke-static {v7, v9}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    invoke-direct {p0, v6, v7, v10}, Lcom/sns/game/dialog/CCPayGoldDialog;->setPayNode(Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/nodes/CCLabel;

    .line 98
    const-string v5, "\u5ba2\u670d\u7535\u8bdd\uff1a4006008066"

    .line 99
    .local v5, "numberText":Ljava/lang/String;
    const-string v6, ""

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v5, v6, v7}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v4

    .line 100
    .local v4, "number":Lorg/cocos2d/nodes/CCLabel;
    invoke-virtual {v4, v11, v11}, Lorg/cocos2d/nodes/CCLabel;->setAnchorPoint(FF)V

    .line 101
    const v6, 0x43a58000    # 331.0f

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v4, v6, v7}, Lorg/cocos2d/nodes/CCLabel;->setPosition(FF)V

    .line 102
    iget-object v6, p0, Lcom/sns/game/dialog/CCPayGoldDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/4 v7, 0x3

    invoke-virtual {v6, v4, v7}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 104
    return-void
.end method
