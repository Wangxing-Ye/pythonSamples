.class Lcom/duoku/platform/single/j/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/f;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/i;->a:Lcom/duoku/platform/single/j/c/f;

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

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/i;->a:Lcom/duoku/platform/single/j/c/f;

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

    check-cast p2, Lcom/duoku/platform/single/h/a/c;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/i;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/f;->c(Lcom/duoku/platform/single/j/c/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/e/b;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/duoku/platform/single/e/b;->a(Lcom/duoku/platform/single/h/a/c;)V

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/d/d;->g:Lcom/duoku/platform/single/d/d;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/i;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v2}, Lcom/duoku/platform/single/j/c/f;->e(Lcom/duoku/platform/single/j/c/f;)Lcom/duoku/platform/single/item/GamePropsInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Ljava/lang/Object;)V

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
