.class Lcom/duoku/platform/single/ui/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

.field private final synthetic b:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/B;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iput-object p2, p0, Lcom/duoku/platform/single/ui/B;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/B;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :cond_0
    return-void
.end method
