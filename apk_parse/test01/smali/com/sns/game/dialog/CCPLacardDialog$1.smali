.class Lcom/sns/game/dialog/CCPLacardDialog$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCPLacardDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/CCPLacardDialog;->takeXslibaolglCallback()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/dialog/CCPLacardDialog;


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/CCPLacardDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/CCPLacardDialog$1;->this$0:Lcom/sns/game/dialog/CCPLacardDialog;

    .line 255
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 9

    .prologue
    const/16 v6, 0x2710

    .line 259
    const/16 v1, 0x2710

    .line 260
    .local v1, "GOLD":I
    const/16 v0, 0x32

    .line 262
    .local v0, "BULLET_COUNT":I
    sget-object v5, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v5, v6}, Lcom/sns/game/database/bean/UserData;->modifyGold(I)V

    .line 263
    sget-object v5, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sns/game/database/bean/UserData;->modifyGet_total_gold(I)V

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Update data to [userdata] is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/sns/game/database/dao/UserDataDao;->sharedDao()Lcom/sns/game/database/dao/UserDataDao;

    move-result-object v6

    sget-object v7, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v6, v7}, Lcom/sns/game/database/dao/UserDataDao;->updateUserGold(Lcom/sns/game/database/bean/UserData;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 264
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v4

    .line 268
    .local v4, "uWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Insert data to [userweapons] is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    const/4 v6, -0x1

    const/16 v7, 0x32

    sget-object v8, Lcom/sns/game/database/dao/UserWeaponDao;->SET_OF_WEAPON_IDS:[I

    invoke-virtual {v4, v6, v7, v8}, Lcom/sns/game/database/dao/UserWeaponDao;->addUserWeapons(II[I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 268
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 271
    const/4 v2, 0x1

    .line 272
    .local v2, "isCancel":Z
    if-nez v2, :cond_1

    .line 273
    iget-object v5, p0, Lcom/sns/game/dialog/CCPLacardDialog$1;->this$0:Lcom/sns/game/dialog/CCPLacardDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sns/game/dialog/CCPLacardDialog;->setIsTouchEnabled(Z)V

    .line 278
    :goto_0
    const/4 v3, 0x1

    .line 279
    .local v3, "isToast":Z
    if-eqz v3, :cond_0

    .line 280
    iget-object v5, p0, Lcom/sns/game/dialog/CCPLacardDialog$1;->this$0:Lcom/sns/game/dialog/CCPLacardDialog;

    .line 281
    const-string v6, "\u606d\u559c\u83b7\u5f97\u3010\u91d1\u5e01x10000\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u575a\u679c\u70ae\u5b50\u5f39x50\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u4ed9\u4eba\u638c\u5b50\u5f39x50\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u6bd2\u78e8\u83c7\u5b50\u5f39x50\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u897f\u74dc\u70ae\u5b50\u5f39x50\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u6625\u54e5\u70ae\u5b50\u5f39x50\u3011\n"

    .line 280
    # invokes: Lcom/sns/game/dialog/CCPLacardDialog;->notifyToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sns/game/dialog/CCPLacardDialog;->access$0(Lcom/sns/game/dialog/CCPLacardDialog;Ljava/lang/String;)V

    .line 289
    :cond_0
    return-void

    .line 275
    .end local v3    # "isToast":Z
    :cond_1
    iget-object v5, p0, Lcom/sns/game/dialog/CCPLacardDialog$1;->this$0:Lcom/sns/game/dialog/CCPLacardDialog;

    invoke-virtual {v5}, Lcom/sns/game/dialog/CCPLacardDialog;->cancel()V

    goto :goto_0
.end method
