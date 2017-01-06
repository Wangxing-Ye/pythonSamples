.class Lcom/duoku/platform/single/suspend/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/DKSuspensionView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iput v4, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c(Lcom/duoku/platform/single/suspend/DKSuspensionView;I)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v2}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_suspension_progress"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget v2, v2, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    aput v2, v1, v5

    sget v2, Lcom/duoku/platform/single/suspend/DKSuspensionView;->g:I

    aput v2, v1, v4

    const/4 v2, 0x2

    const/16 v3, 0xa

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/g/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/util/H;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-request suspensionFlag is ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget v3, v3, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/getGameRecommendHotorBest"

    const/16 v3, 0x2e

    iget-object v4, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v4}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/h/h;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    new-instance v1, Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    sget-object v3, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/duoku/platform/single/suspend/DKSuspensionView$c;-><init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Lcom/duoku/platform/single/suspend/DKSuspensionView$c;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/n;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_payment_error_2003"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
