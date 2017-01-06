.class Lcom/duoku/platform/single/view/f;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/view/c;

.field private final synthetic b:I

.field private final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/view/c;ILandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/view/f;->a:Lcom/duoku/platform/single/view/c;

    iput p2, p0, Lcom/duoku/platform/single/view/f;->b:I

    iput-object p3, p0, Lcom/duoku/platform/single/view/f;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/view/f;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v0}, Lcom/duoku/platform/single/view/c;->g(Lcom/duoku/platform/single/view/c;)Lcom/duoku/platform/single/h/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/f;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v0}, Lcom/duoku/platform/single/view/c;->g(Lcom/duoku/platform/single/view/c;)Lcom/duoku/platform/single/h/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/b;->a()Lcom/duoku/platform/single/item/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->c()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    return-object v0

    :cond_2
    iget v0, p0, Lcom/duoku/platform/single/view/f;->b:I

    if-ne v1, v0, :cond_3

    sget-object v4, Lcom/duoku/platform/single/util/g;->b:Ljava/lang/String;

    iget v0, p0, Lcom/duoku/platform/single/view/f;->b:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Lcom/duoku/platform/single/util/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/view/f;->a:Lcom/duoku/platform/single/view/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/single/view/c;->a(Lcom/duoku/platform/single/view/c;Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/f;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v0, p1}, Lcom/duoku/platform/single/view/c;->a(Lcom/duoku/platform/single/view/c;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/f;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/f;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v1}, Lcom/duoku/platform/single/view/c;->h(Lcom/duoku/platform/single/view/c;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/view/f;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/f;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v1}, Lcom/duoku/platform/single/view/c;->f(Lcom/duoku/platform/single/view/c;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "insert_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/view/f;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/view/f;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
