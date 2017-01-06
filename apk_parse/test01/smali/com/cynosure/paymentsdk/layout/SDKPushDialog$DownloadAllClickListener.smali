.class public Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadAllClickListener;
.super Ljava/lang/Object;
.source "SDKPushDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cynosure/paymentsdk/layout/SDKPushDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadAllClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;


# direct methods
.method public constructor <init>(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadAllClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadAllClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;

    # getter for: Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_apkList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->access$0(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadAllClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->dismiss()V

    .line 269
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->getInstance()Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->cleanDialog()V

    .line 270
    return-void

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadAllClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadAllClickListener;->this$0:Lcom/cynosure/paymentsdk/layout/SDKPushDialog;

    # getter for: Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_apkList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->access$0(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    # invokes: Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->downloadAPK(Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)V
    invoke-static {v2, v1}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->access$1(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
