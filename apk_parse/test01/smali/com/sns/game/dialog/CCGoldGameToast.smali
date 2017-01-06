.class public Lcom/sns/game/dialog/CCGoldGameToast;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCGoldGameToast.java"


# instance fields
.field private goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field private gold_:I

.field private light:Lorg/cocos2d/nodes/CCSprite;

.field private toastTime:F


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;II)V
    .locals 2
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "gold"    # I
    .param p3, "z"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p3}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;I)V

    .line 97
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->toastTime:F

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/CCGoldGameToast;->onCreateCall(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method private setLight()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 110
    const-string v0, "GameToast_Gold_UI_Img_Light.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGoldGameToast;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->light:Lorg/cocos2d/nodes/CCSprite;

    .line 111
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->light:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 112
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->light:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x43640000    # 228.0f

    const/high16 v2, 0x42c00000    # 96.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 113
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCGoldGameToast;->light:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 114
    return-void
.end method

.method public static toast(Lorg/cocos2d/layers/CCLayer;II)Lcom/sns/game/dialog/CCGoldGameToast;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;
    .param p1, "gold"    # I
    .param p2, "z"    # I

    .prologue
    .line 19
    new-instance v0, Lcom/sns/game/dialog/CCGoldGameToast;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/dialog/CCGoldGameToast;-><init>(Lorg/cocos2d/layers/CCLayer;II)V

    .line 20
    .local v0, "toast":Lcom/sns/game/dialog/CCGoldGameToast;
    return-object v0
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "UI/GameToast_Gold.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGoldGameToast;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 58
    return-void
.end method

.method public callback_selector_showCancelAnimation()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showCancelAnimation()V

    .line 52
    return-void
.end method

.method public callback_selector_showStartAnimation()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showStartAnimation()V

    .line 43
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGoldGameToast;->runToasting()V

    .line 44
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->showCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGoldGameToast;->handleLogicalToMsg(Landroid/os/Parcelable;)V

    .line 45
    const-string v0, "GETREWARD_"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f7f\u7528\u5927\u62db_\u5956\u52b1\u91d1\u5e01x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sns/game/dialog/CCGoldGameToast;->gold_:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/CCGoldGameToast;->activateUpdateBanner(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected createSelf()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "GameToast_Gold_UI_Bg.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGoldGameToast;->setBackgroundBox(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGoldGameToast;->setGoldAtlas()V

    .line 65
    return-void
.end method

.method public getGold()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->gold_:I

    return v0
.end method

.method public getToastTime()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->toastTime:F

    return v0
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "\u83b7\u53d6\u91d1\u5e01\u63d0\u793a\u6846"

    return-object v0
.end method

.method public light_CallBack()V
    .locals 5

    .prologue
    .line 136
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/dialog/CCGoldGameToast;->light:Lorg/cocos2d/nodes/CCSprite;

    if-nez v3, :cond_0

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    const v3, 0x3d4ccccd    # 0.05f

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCRotateBy;->action(FF)Lorg/cocos2d/actions/interval/CCRotateBy;

    move-result-object v2

    .line 138
    .local v2, "rotateBy":Lorg/cocos2d/actions/interval/CCRotateBy;
    invoke-static {v2}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v0

    .line 139
    .local v0, "action":Lorg/cocos2d/actions/base/CCRepeatForever;
    iget-object v3, p0, Lcom/sns/game/dialog/CCGoldGameToast;->light:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v0    # "action":Lorg/cocos2d/actions/base/CCRepeatForever;
    .end local v2    # "rotateBy":Lorg/cocos2d/actions/interval/CCRotateBy;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onCancel_CallBack()V
    .locals 1

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGoldGameToast;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected varargs onCreateCall(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 33
    .local v0, "gold":I
    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGoldGameToast;->setGold(I)V

    .line 34
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGoldGameToast;->addTexturesToCache()V

    .line 35
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGoldGameToast;->createSelf()V

    .line 36
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGoldGameToast;->sortChildren()V

    .line 37
    return-void
.end method

.method protected recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->light:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->light:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 77
    :cond_1
    iput-object v1, p0, Lcom/sns/game/dialog/CCGoldGameToast;->light:Lorg/cocos2d/nodes/CCSprite;

    .line 78
    iput-object v1, p0, Lcom/sns/game/dialog/CCGoldGameToast;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 79
    return-void
.end method

.method public runToasting()V
    .locals 6

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGoldGameToast;->setLight()V

    .line 127
    const-string v4, "light_CallBack"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v3

    .line 128
    .local v3, "lighFunc":Lorg/cocos2d/actions/instant/CCCallFunc;
    const-string v4, "onCancel_CallBack"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v1

    .line 129
    .local v1, "cancelFunc":Lorg/cocos2d/actions/instant/CCCallFunc;
    iget v4, p0, Lcom/sns/game/dialog/CCGoldGameToast;->toastTime:F

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v2

    .line 130
    .local v2, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    const/4 v4, 0x2

    new-array v4, v4, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 131
    .local v0, "action":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGoldGameToast;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 132
    return-void
.end method

.method public setGold(I)V
    .locals 0
    .param p1, "gold"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/sns/game/dialog/CCGoldGameToast;->gold_:I

    .line 95
    return-void
.end method

.method public setGoldAtlas()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 119
    const-string v0, ""

    const-string v1, "UI/New_Num_x_16x22.png"

    const/16 v2, 0x10

    const/16 v3, 0x16

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 120
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 121
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x43770000    # 247.0f

    const/high16 v2, 0x42440000    # 49.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 122
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    iget v1, p0, Lcom/sns/game/dialog/CCGoldGameToast;->gold_:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public setToastTime(F)V
    .locals 0
    .param p1, "toastTime"    # F

    .prologue
    .line 104
    iput p1, p0, Lcom/sns/game/dialog/CCGoldGameToast;->toastTime:F

    .line 105
    return-void
.end method

.method protected sortChildren()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sns/game/dialog/CCGoldGameToast;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCGoldGameToast;->goldAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 85
    return-void
.end method
