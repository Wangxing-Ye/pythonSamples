.class Lcom/sns/game/activity/GameActivityss$5;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "GameActivityss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss;->takeXslibaolglCallback()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/activity/GameActivityss;


# direct methods
.method constructor <init>(Lcom/sns/game/activity/GameActivityss;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$5;->this$0:Lcom/sns/game/activity/GameActivityss;

    .line 381
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 8

    .prologue
    const/16 v5, 0x2710

    .line 385
    const/16 v1, 0x2710

    .line 386
    .local v1, "GOLD":I
    const/16 v0, 0x32

    .line 388
    .local v0, "BULLET_COUNT":I
    sget-object v4, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v4, v5}, Lcom/sns/game/database/bean/UserData;->modifyGold(I)V

    .line 389
    sget-object v4, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sns/game/database/bean/UserData;->modifyGet_total_gold(I)V

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Update data to [userdata] is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/sns/game/database/dao/UserDataDao;->sharedDao()Lcom/sns/game/database/dao/UserDataDao;

    move-result-object v5

    sget-object v6, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v5, v6}, Lcom/sns/game/database/dao/UserDataDao;->updateUserGold(Lcom/sns/game/database/bean/UserData;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 390
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v3

    .line 394
    .local v3, "uWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Insert data to [userweapons] is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    const/4 v5, -0x1

    const/16 v6, 0x32

    sget-object v7, Lcom/sns/game/database/dao/UserWeaponDao;->SET_OF_WEAPON_IDS:[I

    invoke-virtual {v3, v5, v6, v7}, Lcom/sns/game/database/dao/UserWeaponDao;->addUserWeapons(II[I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 394
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 397
    const/4 v2, 0x1

    .line 398
    .local v2, "isToast":Z
    if-eqz v2, :cond_0

    .line 400
    const-string v4, "\u606d\u559c\u83b7\u5f97\u3010\u91d1\u5e01x10000\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u575a\u679c\u70ae\u5b50\u5f39x50\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u4ed9\u4eba\u638c\u5b50\u5f39x50\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u6bd2\u78e8\u83c7\u5b50\u5f39x50\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u897f\u74dc\u70ae\u5b50\u5f39x50\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u6625\u54e5\u70ae\u5b50\u5f39x50\u3011\n"

    .line 399
    invoke-static {v4}, Lcom/sns/game/util/CCUtil;->notifyToast(Ljava/lang/String;)V

    .line 408
    :cond_0
    return-void
.end method
