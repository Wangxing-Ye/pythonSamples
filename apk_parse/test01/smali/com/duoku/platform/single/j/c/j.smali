.class Lcom/duoku/platform/single/j/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/f;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/j;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/j;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/f;->c(Lcom/duoku/platform/single/j/c/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;IIILjava/lang/String;)Z

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 3

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    check-cast p2, Lcom/duoku/platform/single/h/a/h;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/h;->a()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/j/c/t;->d:Ljava/util/List;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cp_to_duoku_data"

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/j;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v2}, Lcom/duoku/platform/single/j/c/f;->e(Lcom/duoku/platform/single/j/c/f;)Lcom/duoku/platform/single/item/GamePropsInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "channel_view_value"

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/j;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v2}, Lcom/duoku/platform/single/j/c/f;->f(Lcom/duoku/platform/single/j/c/f;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/single/d/d;->h:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Ljava/lang/Object;)V

    return-void
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method
