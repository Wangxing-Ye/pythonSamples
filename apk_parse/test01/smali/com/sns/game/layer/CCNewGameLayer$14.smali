.class Lcom/sns/game/layer/CCNewGameLayer$14;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->takeGiftLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewGameLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewGameLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$14;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 2090
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 6

    .prologue
    .line 2094
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer$14;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    const/16 v3, 0x2710

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserGold(IZ)V

    .line 2095
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v1

    .line 2096
    .local v1, "uWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Insert data to [userweapons] is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/16 v4, 0x32

    sget-object v5, Lcom/sns/game/database/dao/UserWeaponDao;->SET_OF_WEAPON_IDS:[I

    invoke-virtual {v1, v3, v4, v5}, Lcom/sns/game/database/dao/UserWeaponDao;->addUserWeapons(II[I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 2097
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer$14;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    # getter for: Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;
    invoke-static {v2}, Lcom/sns/game/layer/CCNewGameLayer;->access$1(Lcom/sns/game/layer/CCNewGameLayer;)Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeaponLoader;->updateNowUseWeaponCacheData()V

    .line 2098
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer$14;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v2}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserWqkItems()V

    .line 2099
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer$14;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    const/16 v3, 0x32

    const v4, 0x7fffffff

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/layer/CCNewGameLayer;->batchRunAddWqkNumAction(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2103
    .end local v1    # "uWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    :goto_0
    return-void

    .line 2100
    :catch_0
    move-exception v0

    .line 2101
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
