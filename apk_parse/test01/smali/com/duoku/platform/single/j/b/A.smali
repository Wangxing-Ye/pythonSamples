.class Lcom/duoku/platform/single/j/b/A;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/z;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/z;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/A;->a:Lcom/duoku/platform/single/j/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/A;)Lcom/duoku/platform/single/j/b/z;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/A;->a:Lcom/duoku/platform/single/j/b/z;

    return-object v0
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/A;->a:Lcom/duoku/platform/single/j/b/z;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/A;->a:Lcom/duoku/platform/single/j/b/z;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    new-instance v5, Lcom/duoku/platform/single/j/b/B;

    invoke-direct {v5, p0}, Lcom/duoku/platform/single/j/b/B;-><init>(Lcom/duoku/platform/single/j/b/A;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/j/b/a;->a(IIILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/A;->a:Lcom/duoku/platform/single/j/b/z;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    check-cast p2, Lcom/duoku/platform/single/h/a/i;

    const-string v0, "1"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/i;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/A;->a:Lcom/duoku/platform/single/j/b/z;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/j/b/a;->b(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/A;->a:Lcom/duoku/platform/single/j/b/z;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoku/platform/single/j/b/a;->c(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V

    :cond_0
    const-string v1, "2"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/A;->a:Lcom/duoku/platform/single/j/b/z;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/A;->a:Lcom/duoku/platform/single/j/b/z;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/A;->a:Lcom/duoku/platform/single/j/b/z;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/A;->a:Lcom/duoku/platform/single/j/b/z;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "dk_dialog_string_card_invalid"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method
