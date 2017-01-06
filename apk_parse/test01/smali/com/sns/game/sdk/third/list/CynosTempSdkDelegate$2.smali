.class Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;
.super Ljava/lang/Object;
.source "CynosTempSdkDelegate.java"

# interfaces
.implements Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;


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
    iput-object p1, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->this$0:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    iput-object p2, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    iput p3, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->val$payId:I

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PayResult(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "paycode"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "flag2"    # I
    .param p4, "error"    # Ljava/lang/String;

    .prologue
    .line 163
    packed-switch p2, :pswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingSuccess()V

    .line 167
    iget-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->this$0:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    const-string v1, "1"

    iput-object v1, v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->billingResult:Ljava/lang/String;

    .line 168
    # getter for: Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->woStoreID1:[Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->access$1()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->val$payId:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->exdata1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->this$0:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    iget-object v2, v2, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->billingResult:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cynosure/paymentsdk/SDKInterface;->saveBillingResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingFailed()V

    .line 173
    iget-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->this$0:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    const-string v1, "0"

    iput-object v1, v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->billingResult:Ljava/lang/String;

    .line 174
    # getter for: Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->woStoreID1:[Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->access$1()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->val$payId:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->exdata1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->this$0:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    iget-object v2, v2, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->billingResult:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cynosure/paymentsdk/SDKInterface;->saveBillingResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingCancel()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
