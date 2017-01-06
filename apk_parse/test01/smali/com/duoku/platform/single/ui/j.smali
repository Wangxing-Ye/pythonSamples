.class Lcom/duoku/platform/single/ui/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/view/PullToRefreshListView$a;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/j;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/ui/j;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v0, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/f;->a()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/ui/j;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v1, v1, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/a/f;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/j;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/j;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget v2, v1, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->m:I

    iget-object v1, p0, Lcom/duoku/platform/single/ui/j;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget v1, v1, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    invoke-static {v0, v2, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;II)V

    :cond_0
    return-void
.end method
