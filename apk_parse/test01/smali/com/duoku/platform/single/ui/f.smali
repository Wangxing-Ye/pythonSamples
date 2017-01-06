.class Lcom/duoku/platform/single/ui/f;
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

    iput-object p1, p0, Lcom/duoku/platform/single/ui/f;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iput-object p2, p0, Lcom/duoku/platform/single/ui/f;->b:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;

    iput-boolean p3, p0, Lcom/duoku/platform/single/ui/f;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/ui/f;->b:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;->a(ILandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/duoku/platform/single/ui/f;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/f;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->f(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
