.class Lcom/duoku/platform/single/util/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Lcom/duoku/platform/single/item/g;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/duoku/platform/single/item/g;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/util/q;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/k/i;->a()Lcom/duoku/platform/single/k/i;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/util/q;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/g;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v3}, Lcom/duoku/platform/single/item/g;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/g;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v5}, Lcom/duoku/platform/single/item/g;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v6}, Lcom/duoku/platform/single/item/g;->j()I

    move-result v6

    sget v7, Lcom/duoku/platform/single/util/a;->iV:I

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/duoku/platform/single/item/i;

    invoke-direct {v1}, Lcom/duoku/platform/single/item/i;-><init>()V

    iget-object v2, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/g;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/g;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->b(I)V

    iget-object v2, p0, Lcom/duoku/platform/single/util/q;->b:Lcom/duoku/platform/single/item/g;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/g;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/i;->j(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/duoku/platform/single/k/i;->a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/i;Z)V

    iget-object v1, p0, Lcom/duoku/platform/single/util/q;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
