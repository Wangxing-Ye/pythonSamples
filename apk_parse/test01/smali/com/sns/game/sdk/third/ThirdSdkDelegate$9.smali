.class Lcom/sns/game/sdk/third/ThirdSdkDelegate$9;
.super Ljava/lang/Object;
.source "ThirdSdkDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccShowDebugPayDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

.field private final synthetic val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;


# direct methods
.method constructor <init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$9;->this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    iput-object p2, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$9;->val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$9;->val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$9;->val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
