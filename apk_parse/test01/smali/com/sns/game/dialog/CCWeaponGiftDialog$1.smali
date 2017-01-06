.class Lcom/sns/game/dialog/CCWeaponGiftDialog$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCWeaponGiftDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/CCWeaponGiftDialog;->onTakeWithSuccesslglCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/dialog/CCWeaponGiftDialog;


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/CCWeaponGiftDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog$1;->this$0:Lcom/sns/game/dialog/CCWeaponGiftDialog;

    .line 200
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 8

    .prologue
    .line 204
    const/16 v0, 0x28

    .line 205
    .local v0, "BULLET_COUNT":I
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v3

    .line 206
    .local v3, "uWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Insert data to [userweapons] is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    const/4 v5, -0x1

    const/16 v6, 0x28

    sget-object v7, Lcom/sns/game/database/dao/UserWeaponDao;->SET_OF_WEAPON_IDS:[I

    invoke-virtual {v3, v5, v6, v7}, Lcom/sns/game/database/dao/UserWeaponDao;->addUserWeapons(II[I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 206
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x1

    .line 210
    .local v1, "isCancel":Z
    if-nez v1, :cond_1

    .line 211
    iget-object v4, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog$1;->this$0:Lcom/sns/game/dialog/CCWeaponGiftDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->setIsTouchEnabled(Z)V

    .line 216
    :goto_0
    iget-object v4, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog$1;->this$0:Lcom/sns/game/dialog/CCWeaponGiftDialog;

    invoke-virtual {v4}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->onGetCallback()V

    .line 218
    const/4 v2, 0x1

    .line 219
    .local v2, "isToast":Z
    if-eqz v2, :cond_0

    .line 220
    iget-object v4, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog$1;->this$0:Lcom/sns/game/dialog/CCWeaponGiftDialog;

    .line 221
    const-string v5, "\u606d\u559c\u83b7\u5f97\u3010\u575a\u679c\u70ae\u5b50\u5f39x40\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u4ed9\u4eba\u638c\u5b50\u5f39x40\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u6bd2\u78e8\u83c7\u5b50\u5f39x40\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u897f\u74dc\u70ae\u5b50\u5f39x40\u3011\n\u606d\u559c\u83b7\u5f97\u3010\u6625\u54e5\u70ae\u5b50\u5f39x40\u3011\n"

    .line 220
    # invokes: Lcom/sns/game/dialog/CCWeaponGiftDialog;->notifyToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->access$0(Lcom/sns/game/dialog/CCWeaponGiftDialog;Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void

    .line 213
    .end local v2    # "isToast":Z
    :cond_1
    iget-object v4, p0, Lcom/sns/game/dialog/CCWeaponGiftDialog$1;->this$0:Lcom/sns/game/dialog/CCWeaponGiftDialog;

    invoke-virtual {v4}, Lcom/sns/game/dialog/CCWeaponGiftDialog;->cancel()V

    goto :goto_0
.end method
