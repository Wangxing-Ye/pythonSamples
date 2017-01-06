.class Lcom/duoku/platform/single/suspend/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/q;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/q;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v5, -0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->r(Lcom/duoku/platform/single/suspend/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/h;->m()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    sput-boolean v9, Lcom/duoku/platform/single/suspend/q;->b:Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    new-instance v1, Lcom/duoku/platform/single/suspend/h;

    iget-object v3, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v3}, Lcom/duoku/platform/single/suspend/q;->q(Lcom/duoku/platform/single/suspend/q;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v4}, Lcom/duoku/platform/single/suspend/q;->u(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/DKSuspensionView;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/duoku/platform/single/suspend/h;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/q;->a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/suspend/h;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/duoku/platform/single/suspend/h;->e(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/duoku/platform/single/suspend/h;->d(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/suspend/h;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/duoku/platform/single/suspend/h;->a(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/duoku/platform/single/suspend/h;->c(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/q;->v(Lcom/duoku/platform/single/suspend/q;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/suspend/h;->a(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->l(Lcom/duoku/platform/single/suspend/q;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/q;->w(Lcom/duoku/platform/single/suspend/q;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->p(Lcom/duoku/platform/single/suspend/q;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v3}, Lcom/duoku/platform/single/suspend/q;->g(Lcom/duoku/platform/single/suspend/q;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/duoku/platform/single/suspend/h;->a(Landroid/view/View;III)V

    :goto_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->u(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/DKSuspensionView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/q;->x(Lcom/duoku/platform/single/suspend/q;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->k(Lcom/duoku/platform/single/suspend/q;)V

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->g()Lcom/duoku/platform/single/item/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    move v1, v2

    :goto_2
    if-lt v1, v6, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/q;->y(Lcom/duoku/platform/single/suspend/q;)I

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "statistics_recommend_game_show"

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3, v9}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_3
    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/q;->q(Lcom/duoku/platform/single/suspend/q;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "10002"

    sget-object v3, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/duoku/platform/single/suspend/t;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v4}, Lcom/duoku/platform/single/suspend/q;->g(Lcom/duoku/platform/single/suspend/q;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/duoku/platform/single/suspend/h;->a(Landroid/view/View;III)V

    goto/16 :goto_1

    :cond_5
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/i;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "game"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "statistics_suspend2_show"

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3, v9}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3
.end method
