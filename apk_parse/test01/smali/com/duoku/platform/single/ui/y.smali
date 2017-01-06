.class Lcom/duoku/platform/single/ui/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/y;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/ui/y;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v0, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/y;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/y;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v1, v1, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c(Lcom/duoku/platform/single/h/a/f;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/y;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/y;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->m:I

    iget-object v1, p0, Lcom/duoku/platform/single/ui/y;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget v1, v1, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    invoke-static {v0, v2, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;II)V

    goto :goto_0
.end method
