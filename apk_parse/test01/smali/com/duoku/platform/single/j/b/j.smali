.class Lcom/duoku/platform/single/j/b/j;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/duoku/platform/single/j/b/a;

.field private final synthetic c:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a;Lorg/json/JSONArray;)V
    .locals 1

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/j;->b:Lcom/duoku/platform/single/j/b/a;

    iput-object p2, p0, Lcom/duoku/platform/single/j/b/j;->c:Lorg/json/JSONArray;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/j;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/j;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/j;->c:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/j;->b:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/j;->b:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "dk_payment_item_banklist"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/j;->b:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "item_banklist_tv_bankname"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/j;->c:Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/j;->b:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "item_banklist_iv_credit"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/j;->c:Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "credit"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/j;->b:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "new_icon_tick"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/j;->b:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "item_banklist_iv_debit"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/j;->c:Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "debit"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/j;->b:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "new_icon_tick"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/j;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/duoku/platform/single/j/b/j;->b:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "new_icon_untick"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/duoku/platform/single/j/b/j;->b:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "new_icon_untick"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
