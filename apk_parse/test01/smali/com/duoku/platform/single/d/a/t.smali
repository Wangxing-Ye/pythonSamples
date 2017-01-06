.class public Lcom/duoku/platform/single/d/a/t;
.super Lcom/duoku/platform/single/d/a/u;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# instance fields
.field a:Lcom/duoku/platform/single/util/H;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/duoku/platform/single/i/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/u;-><init>()V

    const-class v0, Lcom/duoku/platform/single/d/a/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/t;->a:Lcom/duoku/platform/single/util/H;

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 0

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

.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/t;->b:Landroid/content/Context;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/t;->c:Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/t;->d:Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Lcom/duoku/platform/single/i/c;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/t;->e:Lcom/duoku/platform/single/i/c;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/t;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/t;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/t;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/t;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Neither dest nor code can be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "G"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/t;->e:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/duoku/platform/single/o/a;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/t;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/t;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/t;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/t;->e:Lcom/duoku/platform/single/i/c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/o/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/i/c;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/o/a;->a()V

    invoke-virtual {v0}, Lcom/duoku/platform/single/o/a;->b()V

    return-void
.end method
