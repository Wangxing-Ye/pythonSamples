.class Lcom/duoku/platform/single/j/c/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/t;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/t;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/v;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cp_to_duoku_data"

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/v;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v2}, Lcom/duoku/platform/single/j/c/t;->d(Lcom/duoku/platform/single/j/c/t;)Lcom/duoku/platform/single/item/GamePropsInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    new-instance v1, Lcom/duoku/platform/single/j/a/a;

    invoke-direct {v1}, Lcom/duoku/platform/single/j/a/a;-><init>()V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/v;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v2}, Lcom/duoku/platform/single/j/c/t;->e(Lcom/duoku/platform/single/j/c/t;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/j/a/a;->e()Lcom/duoku/platform/single/item/DKCMMdoData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMdoData;)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/v;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v2}, Lcom/duoku/platform/single/j/c/t;->e(Lcom/duoku/platform/single/j/c/t;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/j/a/a;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/j/a/a;->a(Z)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/v;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v2}, Lcom/duoku/platform/single/j/c/t;->e(Lcom/duoku/platform/single/j/c/t;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/j/a/a;->c()Lcom/duoku/platform/single/k/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/k/n;)V

    sget-object v2, Lcom/duoku/platform/single/d/d;->e:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    const-string v2, "channel_view_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/single/d/d;->e:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Ljava/lang/Object;)V

    return-void
.end method
