.class Lcom/cynosure/paymentsdk/customerservice/KFDialog$5;
.super Ljava/lang/Object;
.source "KFDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setCloseButton()V
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
    iput-object p1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$5;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$5;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->cancel()V

    .line 446
    return-void
.end method
