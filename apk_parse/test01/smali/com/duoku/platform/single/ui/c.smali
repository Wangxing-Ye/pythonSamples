.class Lcom/duoku/platform/single/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/c;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "lottery_pv"

    const-string v2, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/duoku/platform/single/ui/c;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget v4, v4, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/c;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/c;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;

    move-result-object v0

    const-string v1, "\u52a8\u753b\u5f00\u59cb\u65f6\u4e0d\u5141\u8bb8\u7528\u6237\u5173\u95edActivity\u76f4\u5230\u51fa\u73b0\u5bf9\u8bdd\u6846"

    invoke-virtual {v0, v5, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/c;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    return-void
.end method
