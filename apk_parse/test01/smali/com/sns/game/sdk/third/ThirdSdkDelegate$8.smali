.class Lcom/sns/game/sdk/third/ThirdSdkDelegate$8;
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
    iput-object p1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$8;->this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    iput-object p2, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$8;->val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$8;->val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$8;->val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
