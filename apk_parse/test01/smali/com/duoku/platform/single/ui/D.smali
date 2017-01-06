.class Lcom/duoku/platform/single/ui/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/C;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/C;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/D;->a:Lcom/duoku/platform/single/ui/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/duoku/platform/single/ui/D;->a:Lcom/duoku/platform/single/ui/C;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/C;->a(Lcom/duoku/platform/single/ui/C;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "\u6062\u590d\u7528\u6237\u64cd\u4f5c"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/D;->a:Lcom/duoku/platform/single/ui/C;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/C;->a(Lcom/duoku/platform/single/ui/C;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    move-result-object v0

    iget v0, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/D;->a:Lcom/duoku/platform/single/ui/C;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/C;->a(Lcom/duoku/platform/single/ui/C;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/D;->a:Lcom/duoku/platform/single/ui/C;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/C;->a(Lcom/duoku/platform/single/ui/C;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/ui/D;->a:Lcom/duoku/platform/single/ui/C;

    invoke-static {v1}, Lcom/duoku/platform/single/ui/C;->a(Lcom/duoku/platform/single/ui/C;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/h/a/f;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/D;->a:Lcom/duoku/platform/single/ui/C;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/C;->a(Lcom/duoku/platform/single/ui/C;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/D;->a:Lcom/duoku/platform/single/ui/C;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/C;->a(Lcom/duoku/platform/single/ui/C;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    move-result-object v0

    iget v0, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "lottery_id"

    const-string v2, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/duoku/platform/single/ui/D;->a:Lcom/duoku/platform/single/ui/C;

    invoke-static {v4}, Lcom/duoku/platform/single/ui/C;->a(Lcom/duoku/platform/single/ui/C;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    move-result-object v4

    iget v4, v4, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/ui/D;->a:Lcom/duoku/platform/single/ui/C;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/C;->a(Lcom/duoku/platform/single/ui/C;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a()V

    goto :goto_0
.end method
