.class Lcom/cynosure/paymentsdk/customerservice/KFDialog$1$1;
.super Ljava/lang/Object;
.source "KFDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;


# direct methods
.method constructor <init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1$1;->this$1:Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 191
    :try_start_0
    const-string v1, "mqqwpa://im/chat?chat_type=wpa&uin=599348647"

    .line 192
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1$1;->this$1:Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;

    # getter for: Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;
    invoke-static {v2}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;->access$0(Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;)Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    move-result-object v2

    # getter for: Lcom/cynosure/paymentsdk/customerservice/KFDialog;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->access$0(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
