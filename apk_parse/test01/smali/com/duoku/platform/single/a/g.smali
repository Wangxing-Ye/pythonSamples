.class public Lcom/duoku/platform/single/a/g;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/a/g$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/duoku/platform/single/util/H;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-class v0, Lcom/duoku/platform/single/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/a/g;->c:Lcom/duoku/platform/single/util/H;

    iput-object p1, p0, Lcom/duoku/platform/single/a/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/duoku/platform/single/a/g;->d:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/a/g;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/a/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/a/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_1

    new-instance v1, Lcom/duoku/platform/single/a/g$a;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/a/g$a;-><init>(Lcom/duoku/platform/single/a/g;)V

    iget-object v0, p0, Lcom/duoku/platform/single/a/g;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/duoku/platform/single/a/g;->a:Landroid/content/Context;

    const-string v3, "dk_exit_recommend_game_item"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/duoku/platform/single/a/g;->a:Landroid/content/Context;

    const-string v2, "dk_recommend_game_icon"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/duoku/platform/single/a/g$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/single/a/g;->a:Landroid/content/Context;

    const-string v2, "dk_recommend_game_title"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/single/a/g$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/a/g;->a:Landroid/content/Context;

    const-string v2, "dk_recommend_game_num_tv"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/single/a/g$a;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/a/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/g;

    iget-object v2, p0, Lcom/duoku/platform/single/a/g;->c:Lcom/duoku/platform/single/util/H;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "------exit dialog common game info is ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/duoku/platform/single/a/g$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/util/d;->a()Lcom/duoku/platform/single/util/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/util/d;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/duoku/platform/single/a/g$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->n()I

    move-result v2

    div-int/lit16 v2, v2, 0x2710

    div-int/lit16 v3, v2, 0x2710

    if-lez v3, :cond_2

    iget-object v0, v1, Lcom/duoku/platform/single/a/g$a;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u4ebf\u6b21\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/a/g$a;

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-lez v2, :cond_3

    :try_start_1
    iget-object v0, v1, Lcom/duoku/platform/single/a/g$a;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u4e07\u6b21\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->n()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_4

    iget-object v1, v1, Lcom/duoku/platform/single/a/g$a;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u6b21\u4e0b\u8f7d"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/duoku/platform/single/util/g;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/item/g;->d(I)V

    iget-object v0, v1, Lcom/duoku/platform/single/a/g$a;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u6b21\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
