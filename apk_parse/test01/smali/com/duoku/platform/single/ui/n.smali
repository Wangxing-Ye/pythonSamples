.class Lcom/duoku/platform/single/ui/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/n;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/n;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/n;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    :cond_0
    return-void
.end method
