.class Lcom/duoku/platform/single/util/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/duoku/platform/single/util/j;->m()V

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 4

    invoke-static {}, Lcom/duoku/platform/single/util/j;->e()Lcom/duoku/platform/single/util/H;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestTag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__response data is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_8

    check-cast p2, Lcom/duoku/platform/single/h/a/b;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/b;->n()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/b;->a()Lcom/duoku/platform/single/item/e;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/duoku/platform/single/util/j;->a(Z)V

    :cond_1
    invoke-static {}, Lcom/duoku/platform/single/util/j;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    :cond_2
    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/duoku/platform/single/util/j;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    invoke-static {}, Lcom/duoku/platform/single/util/j;->d()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_3
    invoke-static {}, Lcom/duoku/platform/single/util/j;->k()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/i;

    invoke-static {}, Lcom/duoku/platform/single/util/j;->i()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/duoku/platform/single/util/j;->l()V

    invoke-static {}, Lcom/duoku/platform/single/util/j;->a()V

    invoke-static {}, Lcom/duoku/platform/single/util/j;->m()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/duoku/platform/single/util/j;->m()V

    invoke-static {}, Lcom/duoku/platform/single/util/j;->e()Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "-exit dialog goodGame button return data is null"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/duoku/platform/single/util/j;->m()V

    invoke-static {}, Lcom/duoku/platform/single/util/j;->e()Lcom/duoku/platform/single/util/H;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-exit dialog goodGame response is error code ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/b;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/duoku/platform/single/util/j;->m()V

    invoke-static {}, Lcom/duoku/platform/single/util/j;->e()Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "-tag 46 request failure"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(JJI)V
    .locals 0

    invoke-static {}, Lcom/duoku/platform/single/util/j;->m()V

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    invoke-static {}, Lcom/duoku/platform/single/util/j;->m()V

    return-void
.end method
