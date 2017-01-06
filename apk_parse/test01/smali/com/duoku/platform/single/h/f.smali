.class public Lcom/duoku/platform/single/h/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/h/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/duoku/platform/single/util/H;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/duoku/platform/single/h/a;",
            "Lcom/duoku/platform/single/h/h;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/duoku/platform/single/h/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/h/f;->a:Lcom/duoku/platform/single/util/H;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/duoku/platform/single/h/f;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/duoku/platform/single/h/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/single/h/f$a;-><init>(Lcom/duoku/platform/single/h/f;Lcom/duoku/platform/single/h/f$a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/h/f;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/h/f;)Lcom/duoku/platform/single/util/H;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/f;->a:Lcom/duoku/platform/single/util/H;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/single/h/f;I)Ljava/util/Map$Entry;
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/h/f;->b(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/duoku/platform/single/h/a;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/h/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Lcom/duoku/platform/single/h/a;Lcom/duoku/platform/single/h/h;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/duoku/platform/single/h/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/h/f;Lcom/duoku/platform/single/h/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/a;)V

    return-void
.end method

.method private b(I)Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/duoku/platform/single/h/a;",
            "Lcom/duoku/platform/single/h/h;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/h/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/single/h/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/h/f;->a:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestBody == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/duoku/platform/single/h/a;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/h/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/c/a;->a()Lcom/duoku/platform/single/c/a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/duoku/platform/single/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/duoku/platform/single/h/a;->a(I)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a;->b(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/h/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a;->a(Landroid/os/Handler;)V

    invoke-direct {p0, v0, p4}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/a;Lcom/duoku/platform/single/h/h;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/h/h;)I
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/h/a;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/h/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/duoku/platform/single/h/a;->d(Ljava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a;->b(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/h/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a;->a(Landroid/os/Handler;)V

    invoke-direct {p0, v0, p3}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/a;Lcom/duoku/platform/single/h/h;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/h/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/h/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a;->g()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/h/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a;->g()V

    iget-object v1, p0, Lcom/duoku/platform/single/h/f;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
