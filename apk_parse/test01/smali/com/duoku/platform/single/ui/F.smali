.class Lcom/duoku/platform/single/ui/F;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/F;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iput-boolean p2, p0, Lcom/duoku/platform/single/ui/F;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/ui/F;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/F;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->f(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/F;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    goto :goto_0
.end method
