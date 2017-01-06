.class public Lcom/duoku/platform/single/view/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/duoku/platform/single/view/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/duoku/platform/single/view/k;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/view/k;->b:Lcom/duoku/platform/single/view/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/view/k;

    invoke-direct {v0}, Lcom/duoku/platform/single/view/k;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/view/k;->b:Lcom/duoku/platform/single/view/k;

    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/view/k;->b:Lcom/duoku/platform/single/view/k;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 2

    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/view/k;->a(Landroid/app/Activity;)V

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/view/k;->c()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/duoku/platform/single/view/k;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
