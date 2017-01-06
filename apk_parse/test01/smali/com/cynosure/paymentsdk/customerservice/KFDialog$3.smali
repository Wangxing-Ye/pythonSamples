.class Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;
.super Landroid/text/style/ClickableSpan;
.source "KFDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setEmail()V
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
    iput-object p1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    .line 333
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;)Lcom/cynosure/paymentsdk/customerservice/KFDialog;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 347
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;->this$0:Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    # getter for: Lcom/cynosure/paymentsdk/customerservice/KFDialog;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->access$0(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u786e\u8ba4\u53d1\u9001\u5ba2\u670d\u90ae\u4ef6\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u8ba4"

    .line 349
    new-instance v2, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3$1;

    invoke-direct {v2, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3$1;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;)V

    .line 348
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3$2;

    invoke-direct {v2, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3$2;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 370
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 374
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "ds"    # Landroid/text/TextPaint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 382
    return-void
.end method
