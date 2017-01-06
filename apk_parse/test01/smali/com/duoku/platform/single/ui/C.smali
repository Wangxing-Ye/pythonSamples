.class Lcom/duoku/platform/single/ui/C;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/C;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/ui/C;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/C;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/ui/C;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->e(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/single/ui/D;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/D;-><init>(Lcom/duoku/platform/single/ui/C;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/C;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v0, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/C;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/C;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iput v2, v1, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->m:I

    iget-object v1, p0, Lcom/duoku/platform/single/ui/C;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget v1, v1, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    invoke-static {v0, v2, v1, v2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;III)V

    :cond_0
    return-void
.end method
