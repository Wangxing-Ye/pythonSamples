.class Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;
.super Landroid/text/style/ClickableSpan;
.source "KFDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setQQ()V
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
    iput-object p1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    .line 170
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;)Lcom/cynosure/paymentsdk/customerservice/KFDialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    # getter for: Lcom/cynosure/paymentsdk/customerservice/KFDialog;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->access$0(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u786e\u8ba4\u8054\u7cfb\u5ba2\u670dQQ\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u8ba4"

    .line 186
    new-instance v2, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1$1;

    invoke-direct {v2, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1$1;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;)V

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1$2;

    invoke-direct {v2, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1$2;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 207
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "ds"    # Landroid/text/TextPaint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 215
    return-void
.end method
