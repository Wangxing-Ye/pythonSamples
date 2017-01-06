.class public Lcom/duoku/platform/single/i/a/a;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/single/i/c;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/duoku/platform/single/i/c;

.field c:Landroid/content/Context;

.field d:I

.field e:Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/i/a/a;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/duoku/platform/single/i/a/a;->b:Lcom/duoku/platform/single/i/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/single/i/a/a;->d:I

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/i/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/i/c;

    iput-object v0, p0, Lcom/duoku/platform/single/i/a/a;->b:Lcom/duoku/platform/single/i/c;

    iget-object v0, p0, Lcom/duoku/platform/single/i/a/a;->b:Lcom/duoku/platform/single/i/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/i/a/a;->b:Lcom/duoku/platform/single/i/c;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/i/a/a;->a(Lcom/duoku/platform/single/i/c;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/duoku/platform/single/i/c;)V
    .locals 4

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/duoku/platform/single/util/e;->a(Ljava/lang/String;)Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Lcom/duoku/platform/single/item/DKOrderPayChannelData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/queryOrderById"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method


# virtual methods
.method public a(Lcom/duoku/platform/single/callback/IDKSDKCallBack;)Lcom/duoku/platform/single/i/a/a;
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/i/a/a;->e:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    return-object p0
.end method

.method public a(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 3

    check-cast p2, Lcom/duoku/platform/single/h/a/q;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->n()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/i/a/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/i/a/a;->b:Lcom/duoku/platform/single/i/c;

    iget-object v2, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/i/a/a;->e:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    iget-object v1, p0, Lcom/duoku/platform/single/i/a/a;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/a/a;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/i/a/a;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/single/g/a;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/i/a/a;->e:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    invoke-interface {v1, v0}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/duoku/platform/single/i/a/a;->d:I

    iget-object v1, p0, Lcom/duoku/platform/single/i/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/duoku/platform/single/i/a/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/duoku/platform/single/i/a/a;->d:I

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/i/a/a;->a(I)V

    :cond_2
    return-void
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/duoku/platform/single/i/a/a;->a:Ljava/util/ArrayList;

    aget-object v0, p1, v1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/duoku/platform/single/i/a/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/duoku/platform/single/i/a/a;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/i/a/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/i/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget v0, p0, Lcom/duoku/platform/single/i/a/a;->d:I

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/i/a/a;->a(I)V

    goto :goto_0
.end method
