.class Lcom/sns/game/sdk/third/ThirdSdkDelegate$2;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "ThirdSdkDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/sdk/third/ThirdSdkDelegate;->doPayWithLglCallBack(Landroid/app/Activity;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

.field private final synthetic val$app:Landroid/app/Activity;

.field private final synthetic val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

.field private final synthetic val$payId:I


# direct methods
.method constructor <init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Landroid/app/Activity;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$2;->this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    iput-object p2, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$2;->val$app:Landroid/app/Activity;

    iput p3, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$2;->val$payId:I

    iput-object p4, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$2;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .line 252
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 5

    .prologue
    .line 256
    invoke-static {}, Lcom/sns/game/sdk/third/SdkManager;->getInstance()Lcom/sns/game/sdk/third/SdkManager;

    move-result-object v0

    .line 257
    .local v0, "sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    iget-object v1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$2;->val$app:Landroid/app/Activity;

    iget v2, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$2;->val$payId:I

    iget-object v3, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$2;->val$delegateCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sns/game/sdk/third/SdkManager;->dopay(Landroid/app/Activity;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;[Ljava/lang/Object;)V

    .line 258
    return-void
.end method
