.class Lcom/duoku/platform/single/ui/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/a/c$a;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/x;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/x;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget-object v0, v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p:Lcom/duoku/platform/single/a/c;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/g;

    new-instance v1, Lcom/duoku/platform/single/item/i;

    invoke-direct {v1}, Lcom/duoku/platform/single/item/i;-><init>()V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->b(I)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->j(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/duoku/platform/single/ui/x;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-static {v1, v0, v2}, Lcom/duoku/platform/single/util/j;->a(Lcom/duoku/platform/single/item/i;ZLandroid/content/Context;)V

    :cond_0
    return-void
.end method
