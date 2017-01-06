.class Lcom/sns/game/dialog/CCPayGoldDialog$1;
.super Ljava/lang/Object;
.source "CCPayGoldDialog.java"

# interfaces
.implements Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/CCPayGoldDialog;->activateBilling2PayGold(Lcom/sns/game/database/bean/StoreItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/dialog/CCPayGoldDialog;

.field private final synthetic val$bean:Lcom/sns/game/database/bean/StoreItemBean;


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/CCPayGoldDialog;Lcom/sns/game/database/bean/StoreItemBean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/CCPayGoldDialog$1;->this$0:Lcom/sns/game/dialog/CCPayGoldDialog;

    iput-object p2, p0, Lcom/sns/game/dialog/CCPayGoldDialog$1;->val$bean:Lcom/sns/game/database/bean/StoreItemBean;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingCancel()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sns/game/dialog/CCPayGoldDialog$1;->this$0:Lcom/sns/game/dialog/CCPayGoldDialog;

    iget-object v1, p0, Lcom/sns/game/dialog/CCPayGoldDialog$1;->val$bean:Lcom/sns/game/database/bean/StoreItemBean;

    # invokes: Lcom/sns/game/dialog/CCPayGoldDialog;->logicalHandleToBuyGoldOnCancel(Lcom/sns/game/database/bean/StoreItemBean;)V
    invoke-static {v0, v1}, Lcom/sns/game/dialog/CCPayGoldDialog;->access$2(Lcom/sns/game/dialog/CCPayGoldDialog;Lcom/sns/game/database/bean/StoreItemBean;)V

    .line 236
    return-void
.end method

.method public onBillingFailed()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sns/game/dialog/CCPayGoldDialog$1;->this$0:Lcom/sns/game/dialog/CCPayGoldDialog;

    iget-object v1, p0, Lcom/sns/game/dialog/CCPayGoldDialog$1;->val$bean:Lcom/sns/game/database/bean/StoreItemBean;

    # invokes: Lcom/sns/game/dialog/CCPayGoldDialog;->logicalHandleToBuyGoldOnFailed(Lcom/sns/game/database/bean/StoreItemBean;)V
    invoke-static {v0, v1}, Lcom/sns/game/dialog/CCPayGoldDialog;->access$1(Lcom/sns/game/dialog/CCPayGoldDialog;Lcom/sns/game/database/bean/StoreItemBean;)V

    .line 231
    return-void
.end method

.method public onBillingSuccess()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sns/game/dialog/CCPayGoldDialog$1;->this$0:Lcom/sns/game/dialog/CCPayGoldDialog;

    iget-object v1, p0, Lcom/sns/game/dialog/CCPayGoldDialog$1;->val$bean:Lcom/sns/game/database/bean/StoreItemBean;

    # invokes: Lcom/sns/game/dialog/CCPayGoldDialog;->logicalHandleToBuyGoldOnSuccess(Lcom/sns/game/database/bean/StoreItemBean;)V
    invoke-static {v0, v1}, Lcom/sns/game/dialog/CCPayGoldDialog;->access$0(Lcom/sns/game/dialog/CCPayGoldDialog;Lcom/sns/game/database/bean/StoreItemBean;)V

    .line 226
    return-void
.end method
