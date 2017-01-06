.class Lcom/cynosure/paymentsdk/customerservice/KFDialog$9;
.super Ljava/lang/Object;
.source "KFDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setFeedbackButton()V
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
    iput-object p1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$9;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 797
    new-instance v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$9;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    # getter for: Lcom/cynosure/paymentsdk/customerservice/KFDialog;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->access$0(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;-><init>(Landroid/content/Context;)V

    .line 799
    .local v0, "dialog":Lcom/cynosure/paymentsdk/customerservice/JYDialog;
    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->show()V

    .line 800
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$9;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->cancel()V

    .line 803
    return-void
.end method
