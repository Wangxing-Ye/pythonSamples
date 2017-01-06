.class Lcom/cynosure/paymentsdk/customerservice/KFDialog$8;
.super Ljava/lang/Object;
.source "KFDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setPhoneButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;


# direct methods
.method constructor <init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$8;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 704
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel:4006008066"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 706
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$8;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    # getter for: Lcom/cynosure/paymentsdk/customerservice/KFDialog;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->access$0(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 709
    return-void
.end method
