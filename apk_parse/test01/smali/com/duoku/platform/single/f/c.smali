.class Lcom/duoku/platform/single/f/c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/duoku/platform/single/h/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/f/b;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/f/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/f/c;->a:Lcom/duoku/platform/single/f/b;

    iput-object p2, p0, Lcom/duoku/platform/single/f/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/duoku/platform/single/h/a/b;
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/f/c;->a:Lcom/duoku/platform/single/f/b;

    invoke-static {v0}, Lcom/duoku/platform/single/f/b;->a(Lcom/duoku/platform/single/f/b;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "initRecommendGameData  doInBackground"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/util/g;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/f/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v1

    const-string v2, "dk_recommendgamedata_limit"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/g;->d:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/single/util/g;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/util/g;->d:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/single/util/g;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a/b;

    goto :goto_0
.end method

.method protected a(Lcom/duoku/platform/single/h/a/b;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/f/c;->a:Lcom/duoku/platform/single/f/b;

    invoke-static {v0}, Lcom/duoku/platform/single/f/b;->a(Lcom/duoku/platform/single/f/b;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "initRecommendGameData  onPostExecute"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/f/c;->a:Lcom/duoku/platform/single/f/b;

    invoke-static {v0}, Lcom/duoku/platform/single/f/b;->a(Lcom/duoku/platform/single/f/b;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "initRecommendGameData result != null"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/duoku/platform/single/h/a/b;->e(I)V

    invoke-static {}, Lcom/duoku/platform/single/k/d;->a()Lcom/duoku/platform/single/k/d;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1, p1, v2}, Lcom/duoku/platform/single/k/d;->a(ILcom/duoku/platform/single/h/a/a;I)V

    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/f/c;->a([Ljava/lang/Void;)Lcom/duoku/platform/single/h/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/duoku/platform/single/h/a/b;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/f/c;->a(Lcom/duoku/platform/single/h/a/b;)V

    return-void
.end method
