.class Lcom/sns/game/layer/CCCJNewLayer$2;
.super Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
.source "CCCJNewLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCCJNewLayer;->createWqkSdLglHandle(Lorg/cocos2d/menus/CCMenuItemSprite;)Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCCJNewLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCCJNewLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCCJNewLayer$2;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    .line 602
    invoke-direct {p0, p2}, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;-><init>(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-void
.end method


# virtual methods
.method public handleLogical(Lorg/cocos2d/menus/CCMenuItemSprite;)Z
    .locals 7
    .param p1, "itemSp"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    const/4 v3, 0x0

    .line 607
    move-object v0, p1

    check-cast v0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 609
    .local v0, "item":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->isHoldSelected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 610
    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer$2;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    const-string v5, "Game_UI_Box_Weapon_Selected.png"

    invoke-virtual {v4, v5}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->runHltAction(Lorg/cocos2d/nodes/CCSprite;)V

    .line 611
    invoke-virtual {v0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->unselected()V

    .line 630
    :goto_0
    return v3

    .line 615
    :cond_0
    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer$2;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    # getter for: Lcom/sns/game/layer/CCCJNewLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;
    invoke-static {v4}, Lcom/sns/game/layer/CCCJNewLayer;->access$0(Lcom/sns/game/layer/CCCJNewLayer;)Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/object/GameWeaponLoader;->isEmptyBulletInWepon()Z

    move-result v4

    if-nez v4, :cond_1

    .line 616
    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer$2;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    const-string v5, "Game_UI_Box_Weapon_Selected.png"

    invoke-virtual {v4, v5}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->runHltAction(Lorg/cocos2d/nodes/CCSprite;)V

    goto :goto_0

    .line 620
    :cond_1
    invoke-virtual {v0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    .line 621
    .local v2, "wpnBean":Lcom/sns/game/database/bean/WeaponBean;
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v1

    .line 622
    .local v1, "userLevel":I
    invoke-virtual {v2, v1}, Lcom/sns/game/database/bean/WeaponBean;->isLvLimit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 623
    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer$2;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    const-string v5, "Game_UI_Box_Weapon_Selected.png"

    invoke-virtual {v4, v5}, Lcom/sns/game/layer/CCCJNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->runHltAction(Lorg/cocos2d/nodes/CCSprite;)V

    .line 624
    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer$2;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4eb2,\u6b66\u5668\u3010"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u3011\n\u9700\u8981\u7b49\u7ea7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getUselevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u624d\u80fd\u4f7f\u7528\u54df!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/sns/game/layer/CCCJNewLayer;->notifyToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sns/game/layer/CCCJNewLayer;->access$1(Lcom/sns/game/layer/CCCJNewLayer;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_2
    iget-object v3, p0, Lcom/sns/game/layer/CCCJNewLayer$2;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    invoke-virtual {v3}, Lcom/sns/game/layer/CCCJNewLayer;->getWqkHltSp()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->addHltImage(Lorg/cocos2d/nodes/CCSprite;)V

    .line 630
    const/4 v3, 0x1

    goto :goto_0
.end method
