.class Lcom/duoku/platform/single/j/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;

.field private final synthetic b:I

.field private final synthetic c:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a;ILandroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    iput p2, p0, Lcom/duoku/platform/single/j/b/s;->b:I

    iput-object p3, p0, Lcom/duoku/platform/single/j/b/s;->c:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    iget v1, p0, Lcom/duoku/platform/single/j/b/s;->b:I

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->C(Lcom/duoku/platform/single/j/b/a;)I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->D(Lcom/duoku/platform/single/j/b/a;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->c(Lcom/duoku/platform/single/j/b/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->D(Lcom/duoku/platform/single/j/b/a;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/o;->a(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->c(Lcom/duoku/platform/single/j/b/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->D(Lcom/duoku/platform/single/j/b/a;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->g()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "dk_item_ck_credit_bind"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->c(Lcom/duoku/platform/single/j/b/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->C(Lcom/duoku/platform/single/j/b/a;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/item/o;->a(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/s;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/s;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->C(Lcom/duoku/platform/single/j/b/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->b(Lcom/duoku/platform/single/j/b/a;I)V

    :cond_0
    return-void
.end method
