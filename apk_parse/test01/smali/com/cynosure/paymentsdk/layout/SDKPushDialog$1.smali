.class Lcom/cynosure/paymentsdk/layout/SDKPushDialog$1;
.super Ljava/lang/Object;
.source "SDKPushDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;


# direct methods
.method constructor <init>(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$1;->this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$1;->this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->dismiss()V

    .line 189
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->getInstance()Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->cleanDialog()V

    .line 190
    return-void
.end method
