.class Lcom/duoku/platform/single/ui/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

.field private final synthetic b:Lcom/duoku/platform/single/item/i;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Lcom/duoku/platform/single/item/i;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/q;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iput-object p2, p0, Lcom/duoku/platform/single/ui/q;->b:Lcom/duoku/platform/single/item/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/q;->b:Lcom/duoku/platform/single/item/i;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/duoku/platform/single/ui/q;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/util/j;->a(Lcom/duoku/platform/single/item/i;ZLandroid/content/Context;)V

    :cond_0
    return-void
.end method
