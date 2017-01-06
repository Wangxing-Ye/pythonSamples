.class Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$3;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNickNameRegisterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->result4ServerCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$3;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    .line 260
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 7

    .prologue
    .line 265
    :try_start_0
    iget-object v5, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$3;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    # getter for: Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->access$1(Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "nickName":Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/http/GameHttpHelper;->gHelper()Lcom/sns/game/http/GameHttpHelper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sns/game/http/GameHttpHelper;->doRegisterNickNameWithResponse(Ljava/lang/String;)Lcom/sns/game/database/bean/UserTop;

    move-result-object v4

    .line 267
    .local v4, "uTop":Lcom/sns/game/database/bean/UserTop;
    if-nez v4, :cond_0

    .line 268
    const-string v5, "\u8fde\u63a5\u5f02\u5e38,\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u65b0\u8fde\u63a5."

    invoke-static {v5}, Lcom/sns/game/util/CCUtil;->showSytemToast(Ljava/lang/String;)V

    .line 269
    iget-object v5, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$3;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setTouchEnabled(Z)V

    .line 286
    .end local v2    # "nickName":Ljava/lang/String;
    .end local v4    # "uTop":Lcom/sns/game/database/bean/UserTop;
    :goto_0
    return-void

    .line 273
    .restart local v2    # "nickName":Ljava/lang/String;
    .restart local v4    # "uTop":Lcom/sns/game/database/bean/UserTop;
    :cond_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v3

    .line 274
    .local v3, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserState;->setSelfUserTop(Lcom/sns/game/database/bean/UserTop;)V

    .line 275
    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserState;->saveSelfUserTop()V

    .line 277
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 278
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    invoke-virtual {v0}, Lcom/sns/game/activity/GameActivityss;->closeProgressDialog()V

    .line 280
    iget-object v5, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$3;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setButtonTag(I)V

    .line 281
    iget-object v5, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$3;->this$0:Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    invoke-virtual {v5}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    .end local v2    # "nickName":Ljava/lang/String;
    .end local v3    # "uState":Lcom/sns/game/database/bean/UserState;
    .end local v4    # "uTop":Lcom/sns/game/database/bean/UserTop;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
