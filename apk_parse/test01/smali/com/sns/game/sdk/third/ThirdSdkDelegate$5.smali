.class Lcom/sns/game/sdk/third/ThirdSdkDelegate$5;
.super Ljava/lang/Object;
.source "ThirdSdkDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccShowTestPayDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

.field private final synthetic val$payCallBack:Lcom/sns/game/util/LogicalHandleCallBack;


# direct methods
.method constructor <init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$5;->this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    iput-object p2, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$5;->val$payCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$5;->val$payCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$5;->val$payCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v1}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
