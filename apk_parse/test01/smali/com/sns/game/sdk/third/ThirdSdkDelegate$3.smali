.class Lcom/sns/game/sdk/third/ThirdSdkDelegate$3;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "ThirdSdkDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/sdk/third/ThirdSdkDelegate;->activateDebugPayDialog(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

.field private final synthetic val$app:Lcom/sns/game/activity/GameActivityss;

.field private final synthetic val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

.field private final synthetic val$pricingPoint:I


# direct methods
.method constructor <init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;ILcom/sns/game/activity/GameActivityss;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$3;->this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    iput p2, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$3;->val$pricingPoint:I

    iput-object p3, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$3;->val$app:Lcom/sns/game/activity/GameActivityss;

    iput-object p4, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$3;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .line 264
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 11

    .prologue
    .line 267
    invoke-static {}, Lcom/sns/game/sdk/third/SdkManager;->getInstance()Lcom/sns/game/sdk/third/SdkManager;

    move-result-object v10

    .line 268
    .local v10, "sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    iget v0, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$3;->val$pricingPoint:I

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Lcom/sns/game/sdk/third/SdkManager;->getPayMsg(II)Ljava/lang/String;

    move-result-object v9

    .line 269
    .local v9, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$3;->this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    iget-object v1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$3;->val$app:Lcom/sns/game/activity/GameActivityss;

    const/4 v2, 0x1

    const-string v3, "\u8c03\u8bd5\u8ba1\u8d39"

    if-nez v9, :cond_0

    const-string v4, "\u8c03\u8bd5\u8ba1\u8d39\u70b9"

    .line 270
    :goto_0
    const-string v5, "\u8ba1\u8d39\u6210\u529f"

    const-string v6, "\u8ba1\u8d39\u5931\u8d25"

    const-string v7, "\u8ba1\u8d39\u53d6\u6d88"

    iget-object v8, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$3;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .line 269
    # invokes: Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccShowDebugPayDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    invoke-static/range {v0 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->access$0(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 271
    return-void

    :cond_0
    move-object v4, v9

    .line 269
    goto :goto_0
.end method
