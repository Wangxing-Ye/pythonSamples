.class public Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
.super Lorg/cocos2d/menus/CCMenuItemSprite;
.source "CCMenuItemSelectedWqk.java"


# instance fields
.field private hltImage:Lorg/cocos2d/nodes/CCSprite;

.field private simBean_:Lcom/sns/game/database/bean/StoreItemBean;

.field private weaponBean_:Lcom/sns/game/database/bean/WeaponBean;

.field private wqkHoldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

.field private wqkImage:Lorg/cocos2d/nodes/CCSprite;

.field private wqkItemId_:I


# direct methods
.method private constructor <init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V
    .locals 6
    .param p1, "normalSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p3, "selector"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/menus/CCMenuItemSprite;-><init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static ccsdWqkItem(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    .locals 1
    .param p0, "normalSprite"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "selector"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;-><init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v0
.end method

.method private setWqkHoldNumAtlas()V
    .locals 5

    .prologue
    .line 167
    const-string v0, ""

    const-string v1, "UI/New_Num_x_10x16.png"

    const/16 v2, 0xa

    const/16 v3, 0x10

    const/16 v4, 0x30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkHoldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 168
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkHoldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {p0, v0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->updateWqkCountAtlas(I)V

    .line 170
    return-void
.end method


# virtual methods
.method public addHltImage(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 2
    .param p1, "image"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 203
    if-nez p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 210
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 211
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->position_:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 212
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getZOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 214
    iput-object p1, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->hltImage:Lorg/cocos2d/nodes/CCSprite;

    goto :goto_0
.end method

.method public ccCopyCallTouched()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->selected()V

    .line 98
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->safeActivate()V

    .line 101
    :cond_0
    return-void
.end method

.method public ccTouched(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->isItemTouched(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->selected()V

    .line 65
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->safeActivate()V

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ccTouchedByEventAction(Landroid/view/MotionEvent;I)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 76
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->isItemTouched(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->selected()V

    .line 87
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->safeActivate()V

    .line 89
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getStoreItemBean()Lcom/sns/game/database/bean/StoreItemBean;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->simBean_:Lcom/sns/game/database/bean/StoreItemBean;

    return-object v0
.end method

.method public getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->weaponBean_:Lcom/sns/game/database/bean/WeaponBean;

    return-object v0
.end method

.method public getWqkItemId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkItemId_:I

    return v0
.end method

.method public isHltSelected()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->hltImage:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->hltImage:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->position_:Lorg/cocos2d/types/CGPoint;

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHoldSelected()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 188
    :try_start_0
    iget v6, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkItemId_:I

    const/16 v7, 0x271f

    if-ne v6, v7, :cond_1

    move v2, v4

    .line 189
    .local v2, "isWdp":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 196
    .end local v2    # "isWdp":Z
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v2, v5

    .line 188
    goto :goto_0

    .line 191
    .restart local v2    # "isWdp":Z
    :cond_2
    iget-object v6, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkHoldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCLabelAtlas;->getString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "strNum":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 193
    .local v1, "holdCount":I
    if-gtz v1, :cond_0

    move v4, v5

    goto :goto_1

    .line 195
    .end local v1    # "holdCount":I
    .end local v2    # "isWdp":Z
    .end local v3    # "strNum":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v4, v5

    .line 196
    goto :goto_1
.end method

.method public removeHltImage()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->hltImage:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->hltImage:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 241
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->hltImage:Lorg/cocos2d/nodes/CCSprite;

    .line 242
    return-void
.end method

.method public runHltAction(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 7
    .param p1, "image"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    .line 218
    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0, v6}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    if-nez v3, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 226
    invoke-virtual {p1, v6}, Lorg/cocos2d/nodes/CCSprite;->setTag(I)V

    .line 227
    invoke-virtual {p1, v6}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 228
    invoke-virtual {p1, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 229
    iget-object v3, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 231
    const/high16 v3, 0x3e800000    # 0.25f

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v0

    .line 232
    .local v0, "dyTime":Lorg/cocos2d/actions/interval/CCDelayTime;
    invoke-static {}, Lcom/sns/game/actions/CCRemove;->action()Lcom/sns/game/actions/CCRemove;

    move-result-object v1

    .line 233
    .local v1, "remove":Lcom/sns/game/actions/CCRemove;
    new-array v3, v6, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    .line 234
    .local v2, "seque":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-virtual {p1, v2}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    goto :goto_0
.end method

.method public selected()V
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->isHltSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenuItemSprite;->unselected()V

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->isHandleSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenuItemSprite;->unselected()V

    goto :goto_0

    .line 45
    :cond_1
    invoke-super {p0}, Lorg/cocos2d/menus/CCMenuItemSprite;->selected()V

    goto :goto_0
.end method

.method public setIsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 51
    invoke-super {p0, p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->updateWqkImage(Z)V

    .line 53
    return-void
.end method

.method public setStoreItemBean(Lcom/sns/game/database/bean/StoreItemBean;)V
    .locals 0
    .param p1, "bean"    # Lcom/sns/game/database/bean/StoreItemBean;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->simBean_:Lcom/sns/game/database/bean/StoreItemBean;

    .line 117
    return-void
.end method

.method public setWeaponBean(Lcom/sns/game/database/bean/WeaponBean;)V
    .locals 0
    .param p1, "weaponBean"    # Lcom/sns/game/database/bean/WeaponBean;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->weaponBean_:Lcom/sns/game/database/bean/WeaponBean;

    .line 131
    return-void
.end method

.method public setWqkImage(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 2
    .param p1, "image"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 136
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkImage:Lorg/cocos2d/nodes/CCSprite;

    if-eq p1, v0, :cond_0

    .line 140
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 141
    invoke-virtual {p1, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 142
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->contentSize_:Lorg/cocos2d/types/CGSize;

    invoke-static {v0, v1}, Lcom/sns/game/util/CCUtil;->ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 144
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkImage:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 147
    iput-object p1, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkImage:Lorg/cocos2d/nodes/CCSprite;

    .line 148
    invoke-direct {p0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->setWqkHoldNumAtlas()V

    goto :goto_0
.end method

.method public setWqkItemId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkItemId_:I

    .line 111
    return-void
.end method

.method public updateWqkCountAtlas(I)V
    .locals 3
    .param p1, "holdNum"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkHoldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkHoldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 175
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkHoldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x42540000    # 53.0f

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 176
    iget-object v1, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkHoldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    return-void

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateWqkCountAtlas(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkHoldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkHoldNumAtlas:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setVisible(Z)V

    .line 183
    :cond_0
    return-void
.end method

.method public updateWqkImage(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkImage:Lorg/cocos2d/nodes/CCSprite;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    if-nez p1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkImage:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0x1c

    const/16 v2, 0x22

    const/16 v3, 0x28

    invoke-static {v1, v2, v3}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 157
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkImage:Lorg/cocos2d/nodes/CCSprite;

    const-wide v1, 0x406e480000000000L    # 242.25

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkImage:Lorg/cocos2d/nodes/CCSprite;

    sget-object v1, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 160
    iget-object v0, p0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->wqkImage:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    goto :goto_0
.end method
