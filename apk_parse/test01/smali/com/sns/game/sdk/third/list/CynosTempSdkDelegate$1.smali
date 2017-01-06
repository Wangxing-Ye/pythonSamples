.class Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;
.super Ljava/lang/Object;
.source "CynosTempSdkDelegate.java"

# interfaces
.implements Lcn/egame/terminal/paysdk/EgamePayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->normalPay(Landroid/app/Activity;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

.field private final synthetic val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

.field private final synthetic val$payId:I


# direct methods
.method constructor <init>(Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->this$0:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    iput-object p2, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    iput p3, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->val$payId:I

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payCancel(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingCancel()V

    .line 133
    return-void
.end method

.method public payFailed(Ljava/util/Map;I)V
    .locals 3
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingFailed()V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorInt = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sns/game/util/CCUtil;->notifyToast(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->this$0:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    const-string v1, "0"

    iput-object v1, v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->billingResult:Ljava/lang/String;

    .line 140
    # getter for: Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->smsCode:[Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->access$0()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->val$payId:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->exdata1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->this$0:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    iget-object v2, v2, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->billingResult:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cynosure/paymentsdk/SDKInterface;->saveBillingResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public paySuccess(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingSuccess()V

    .line 147
    iget-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->this$0:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    const-string v1, "1"

    iput-object v1, v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->billingResult:Ljava/lang/String;

    .line 148
    # getter for: Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->smsCode:[Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->access$0()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->val$payId:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->exdata1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;->this$0:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    iget-object v2, v2, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->billingResult:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cynosure/paymentsdk/SDKInterface;->saveBillingResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method
