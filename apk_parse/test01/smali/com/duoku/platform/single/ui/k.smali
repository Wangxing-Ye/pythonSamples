.class Lcom/duoku/platform/single/ui/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/k;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iput-object p2, p0, Lcom/duoku/platform/single/ui/k;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/k;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/k;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/k;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/k;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
