.class Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$1;
.super Ljava/lang/Object;
.source "SDKDoubleConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;


# direct methods
.method constructor <init>(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$1;->this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$1;->this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;

    # getter for: Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_sdkDialogOnClickListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;
    invoke-static {v0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->access$1(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$1;->this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;

    # getter for: Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_sdkDialogOnClickListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;
    invoke-static {v0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->access$1(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;->onCanceled()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$1;->this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->dismiss()V

    .line 97
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->getInstance()Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->cleanDialog()V

    .line 98
    return-void
.end method
