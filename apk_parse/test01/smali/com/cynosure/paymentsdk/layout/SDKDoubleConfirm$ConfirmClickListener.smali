.class public Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;
.super Ljava/lang/Object;
.source "SDKDoubleConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfirmClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;


# direct methods
.method public constructor <init>(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;

    # getter for: Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;
    invoke-static {v0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->access$0(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getTaskType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;

    # getter for: Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->access$0(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getColumn_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;

    # getter for: Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;
    invoke-static {v2}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->access$0(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getExdata()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;

    # getter for: Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_sdkDialogOnClickListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;
    invoke-static {v3}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->access$1(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cynosure/paymentsdk/SDKInterface;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;)Z

    .line 169
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->dismiss()V

    .line 172
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->getInstance()Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->cleanDialog()V

    .line 173
    return-void
.end method
