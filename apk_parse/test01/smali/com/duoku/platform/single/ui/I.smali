.class Lcom/duoku/platform/single/ui/I;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

.field private final synthetic b:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/I;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iput-object p2, p0, Lcom/duoku/platform/single/ui/I;->b:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;

    iput-boolean p3, p0, Lcom/duoku/platform/single/ui/I;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/ui/I;->b:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;->a(ILandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/duoku/platform/single/ui/I;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/I;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/I;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    goto :goto_0
.end method
