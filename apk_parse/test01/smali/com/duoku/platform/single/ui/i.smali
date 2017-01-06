.class Lcom/duoku/platform/single/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/a/a$b;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

.field private final synthetic b:Lcom/duoku/platform/single/h/a/f;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Lcom/duoku/platform/single/h/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/i;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iput-object p2, p0, Lcom/duoku/platform/single/ui/i;->b:Lcom/duoku/platform/single/h/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/duoku/platform/single/item/k;)V
    .locals 2

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/k;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/i;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/i;->b:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/h/a/f;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/duoku/platform/single/item/k;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/i;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/k;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/i;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/k;->a()I

    move-result v1

    iput v1, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c:I

    iget-object v0, p0, Lcom/duoku/platform/single/ui/i;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/k;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/i;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/k;->i()I

    move-result v1

    iput v1, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->g:I

    iget-object v0, p0, Lcom/duoku/platform/single/ui/i;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/i;->b:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/a/f;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/i;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lcom/duoku/platform/single/item/k;->e()Lcom/duoku/platform/single/item/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/p;->h()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/i;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/k;->e()Lcom/duoku/platform/single/item/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/item/p;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/i;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/k;->e()Lcom/duoku/platform/single/item/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Lcom/duoku/platform/single/item/p;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
