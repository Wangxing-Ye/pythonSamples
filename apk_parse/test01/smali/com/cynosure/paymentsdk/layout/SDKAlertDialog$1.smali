.class Lcom/cynosure/paymentsdk/layout/SDKAlertDialog$1;
.super Ljava/lang/Object;
.source "SDKAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;


# direct methods
.method constructor <init>(Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog$1;->this$0:Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog$1;->this$0:Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;

    # getter for: Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->taskType:Ljava/lang/String;
    invoke-static {v0}, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->access$0(Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog$1;->this$0:Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;

    # getter for: Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->column_id:Ljava/lang/String;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->access$1(Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog$1;->this$0:Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;

    # getter for: Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->exdata:Ljava/lang/String;
    invoke-static {v2}, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->access$2(Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/cynosure/paymentsdk/SDKInterface;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;)Z

    .line 61
    return-void
.end method
