.class Lcom/cynosure/paymentsdk/customerservice/JYDialog$2;
.super Ljava/lang/Object;
.source "JYDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setCloseButton()V
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
    iput-object p1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$2;->this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$2;->this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->cancel()V

    .line 524
    return-void
.end method
