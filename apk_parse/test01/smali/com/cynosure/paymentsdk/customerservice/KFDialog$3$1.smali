.class Lcom/cynosure/paymentsdk/customerservice/KFDialog$3$1;
.super Ljava/lang/Object;
.source "KFDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;


# direct methods
.method constructor <init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3$1;->this$1:Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 352
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mailto:kefu@cyngame.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 360
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "\u63d0\u4ea4\u5efa\u8bae"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "\u5185\u5bb9"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3$1;->this$1:Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;

    # getter for: Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;->access$0(Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;)Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    move-result-object v1

    # getter for: Lcom/cynosure/paymentsdk/customerservice/KFDialog;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->access$0(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 364
    return-void
.end method
