.class Lcom/duoku/platform/single/util/j$c;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/util/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field protected a:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/duoku/platform/single/util/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/util/j$a;-><init>(Lcom/duoku/platform/single/util/j$a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/util/j$c;->a:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/util/j$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/util/j$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/duoku/platform/single/item/i;
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/util/j;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/i;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/util/j;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/util/j$c;->a(I)Lcom/duoku/platform/single/item/i;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_1

    new-instance v1, Lcom/duoku/platform/single/util/j$e;

    invoke-direct {v1}, Lcom/duoku/platform/single/util/j$e;-><init>()V

    invoke-static {}, Lcom/duoku/platform/single/util/j;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/util/j;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_game_dialog_item"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/duoku/platform/single/util/j;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "dk_game_dialog_iv"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/duoku/platform/single/util/j$e;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/duoku/platform/single/util/j;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "dk_game_dialog_name_tv"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/single/util/j$e;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/duoku/platform/single/util/j;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "dk_game_dialog_num_tv"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/single/util/j$e;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/util/j$c;->a(I)Lcom/duoku/platform/single/item/i;

    move-result-object v2

    iget-object v1, v0, Lcom/duoku/platform/single/util/j$e;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/duoku/platform/single/util/g;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/item/i;->h(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/duoku/platform/single/util/j$e;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/i;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/duoku/platform/single/util/j;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v2}, Lcom/duoku/platform/single/item/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/single/util/d;->a()Lcom/duoku/platform/single/util/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/util/d;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/duoku/platform/single/util/j$e;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/duoku/platform/single/util/j;->n()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/util/j$c;->a:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/util/j$e;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/duoku/platform/single/util/j;->b(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/single/util/j;->b(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    :try_start_0
    iget-object v1, v0, Lcom/duoku/platform/single/util/j$e;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4ebf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/duoku/platform/single/util/j;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    if-lez v3, :cond_4

    :try_start_1
    iget-object v1, v0, Lcom/duoku/platform/single/util/j$e;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u4e07"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/duoku/platform/single/util/j;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/duoku/platform/single/item/i;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_5

    iget-object v3, v0, Lcom/duoku/platform/single/util/j$e;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/single/util/j;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/duoku/platform/single/util/g;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/item/i;->h(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/duoku/platform/single/util/j$e;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/i;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/duoku/platform/single/util/j;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
