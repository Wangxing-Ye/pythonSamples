.class Lcom/sns/game/layer/CCNewGameLayer$16;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->takeTejlibaoLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;
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
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$16;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 2243
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 9

    .prologue
    .line 2247
    :try_start_0
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer$16;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    const/16 v6, 0x64

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserGold(IZ)V

    .line 2248
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v4

    .line 2249
    .local v4, "uWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Insert data to [userweapons] is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, -0x1

    const/16 v7, 0xa

    sget-object v8, Lcom/sns/game/database/dao/UserWeaponDao;->SET_OF_WEAPON_IDS:[I

    invoke-virtual {v4, v6, v7, v8}, Lcom/sns/game/database/dao/UserWeaponDao;->addUserWeapons(II[I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 2250
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer$16;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    # getter for: Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;
    invoke-static {v5}, Lcom/sns/game/layer/CCNewGameLayer;->access$1(Lcom/sns/game/layer/CCNewGameLayer;)Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/object/GameWeaponLoader;->updateNowUseWeaponCacheData()V

    .line 2251
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer$16;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v5}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserWqkItems()V

    .line 2252
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer$16;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    const/16 v6, 0xa

    const v7, 0x7fffffff

    invoke-virtual {v5, v6, v7}, Lcom/sns/game/layer/CCNewGameLayer;->batchRunAddWqkNumAction(II)V

    .line 2254
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v3

    .line 2255
    .local v3, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserState;->getLoginNetWorkTime()Ljava/lang/String;

    move-result-object v2

    .line 2256
    .local v2, "netWorkTime":Ljava/lang/String;
    if-nez v2, :cond_0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    const-string v6, "yyyy-MM-dd"

    invoke-static {v5, v6}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2257
    .local v0, "compareTime":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/sns/game/database/bean/UserState;->setMrlqTag(I)V

    .line 2258
    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserState;->modifyMrlqDay()V

    .line 2259
    invoke-virtual {v3, v0}, Lcom/sns/game/database/bean/UserState;->setMrlqDate(Ljava/lang/String;)V

    .line 2261
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer$16;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    # getter for: Lcom/sns/game/layer/CCNewGameLayer;->btnTejlibao:Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-static {v5}, Lcom/sns/game/layer/CCNewGameLayer;->access$8(Lcom/sns/game/layer/CCNewGameLayer;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    .end local v0    # "compareTime":Ljava/lang/String;
    .end local v2    # "netWorkTime":Ljava/lang/String;
    .end local v3    # "uState":Lcom/sns/game/database/bean/UserState;
    .end local v4    # "uWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    :goto_1
    return-void

    .restart local v2    # "netWorkTime":Ljava/lang/String;
    .restart local v3    # "uState":Lcom/sns/game/database/bean/UserState;
    .restart local v4    # "uWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    :cond_0
    move-object v0, v2

    .line 2256
    goto :goto_0

    .line 2263
    .end local v2    # "netWorkTime":Ljava/lang/String;
    .end local v3    # "uState":Lcom/sns/game/database/bean/UserState;
    .end local v4    # "uWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    :catch_0
    move-exception v1

    .line 2264
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method
