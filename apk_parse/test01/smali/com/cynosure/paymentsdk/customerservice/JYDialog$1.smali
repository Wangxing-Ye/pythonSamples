.class Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;
.super Ljava/lang/Object;
.source "JYDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setConfirmButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;


# direct methods
.method constructor <init>(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;)Lcom/cynosure/paymentsdk/customerservice/JYDialog;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 404
    iget-object v2, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    # getter for: Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->access$0(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 407
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1, v4, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 408
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 490
    .end local v1    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    # getter for: Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->access$1(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u8bf7\u8f93\u5165\u5efa\u8bae"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 414
    .restart local v1    # "toast":Landroid/widget/Toast;
    invoke-virtual {v1, v4, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 415
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 419
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    # getter for: Lcom/cynosure/paymentsdk/customerservice/JYDialog;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->access$2(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u786e\u8ba4\u63d0\u4ea4\u5ba2\u670d\u5efa\u8bae\u5417\uff1f"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 421
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 422
    const-string v2, "\u786e\u8ba4"

    .line 423
    new-instance v3, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1$1;

    invoke-direct {v3, p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1$1;-><init>(Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;)V

    .line 422
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1$2;

    invoke-direct {v3, p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1$2;-><init>(Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 488
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
