.class Lcom/sns/game/layer/CCNewGameLayer$4;
.super Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->createWqkSdLglHandle(Lorg/cocos2d/menus/CCMenuItemSprite;)Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewGameLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewGameLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$4;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 1234
    invoke-direct {p0, p2}, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;-><init>(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-void
.end method


# virtual methods
.method public handleLogical(Lorg/cocos2d/menus/CCMenuItemSprite;)Z
    .locals 9
    .param p1, "itemSp"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    const/4 v5, 0x0

    .line 1239
    move-object v1, p1

    check-cast v1, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 1241
    .local v1, "item":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->isHoldSelected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1242
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer$4;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    const-string v7, "Game_UI_Box_Weapon_Selected.png"

    invoke-virtual {v6, v7}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->runHltAction(Lorg/cocos2d/nodes/CCSprite;)V

    .line 1243
    invoke-virtual {v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->unselected()V

    .line 1244
    invoke-virtual {v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v3

    .line 1245
    .local v3, "wepnId":I
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer$4;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    # getter for: Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;
    invoke-static {v6}, Lcom/sns/game/layer/CCNewGameLayer;->access$1(Lcom/sns/game/layer/CCNewGameLayer;)Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sns/game/object/GameWeaponLoader;->activateBilling2PayWeapon(I)V

    .line 1265
    .end local v3    # "wepnId":I
    :goto_0
    return v5

    .line 1249
    :cond_0
    const/4 v0, 0x0

    .line 1250
    .local v0, "checkBullet":Z
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer$4;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    # getter for: Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;
    invoke-static {v6}, Lcom/sns/game/layer/CCNewGameLayer;->access$1(Lcom/sns/game/layer/CCNewGameLayer;)Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeaponLoader;->isEmptyBulletInWepon()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1251
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer$4;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    const-string v7, "Game_UI_Box_Weapon_Selected.png"

    invoke-virtual {v6, v7}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->runHltAction(Lorg/cocos2d/nodes/CCSprite;)V

    goto :goto_0

    .line 1255
    :cond_1
    invoke-virtual {v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v4

    .line 1256
    .local v4, "wpnBean":Lcom/sns/game/database/bean/WeaponBean;
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v2

    .line 1257
    .local v2, "userLevel":I
    invoke-virtual {v4, v2}, Lcom/sns/game/database/bean/WeaponBean;->isLvLimit(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1258
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer$4;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    const-string v7, "Game_UI_Box_Weapon_Selected.png"

    invoke-virtual {v6, v7}, Lcom/sns/game/layer/CCNewGameLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->runHltAction(Lorg/cocos2d/nodes/CCSprite;)V

    .line 1259
    iget-object v6, p0, Lcom/sns/game/layer/CCNewGameLayer$4;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u4eb2,\u6b66\u5668\u3010"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sns/game/database/bean/WeaponBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u3011\n\u9700\u8981\u7b49\u7ea7"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sns/game/database/bean/WeaponBean;->getUselevel()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u624d\u80fd\u4f7f\u7528\u54df!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/sns/game/layer/CCNewGameLayer;->notifyToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/sns/game/layer/CCNewGameLayer;->access$2(Lcom/sns/game/layer/CCNewGameLayer;Ljava/lang/String;)V

    goto :goto_0

    .line 1263
    :cond_2
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer$4;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v5}, Lcom/sns/game/layer/CCNewGameLayer;->getWqkHltSp()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->addHltImage(Lorg/cocos2d/nodes/CCSprite;)V

    .line 1264
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer$4;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v5, v1}, Lcom/sns/game/layer/CCNewGameLayer;->removeTeachArrowInWpnItem(Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;)V

    .line 1265
    const/4 v5, 0x1

    goto :goto_0
.end method
