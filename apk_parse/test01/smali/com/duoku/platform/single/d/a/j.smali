.class public Lcom/duoku/platform/single/d/a/j;
.super Lcom/duoku/platform/single/d/a/u;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# instance fields
.field a:Lcom/duoku/platform/single/util/H;

.field private b:Lcom/duoku/platform/single/d/d;

.field private c:Lcom/duoku/platform/single/d/c;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/u;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/j;->a:Lcom/duoku/platform/single/util/H;

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/duoku/platform/single/d/c;->l:Lcom/duoku/platform/single/d/c;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/j;->c:Lcom/duoku/platform/single/d/c;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/d/c;->l:Lcom/duoku/platform/single/d/c;

    iget v2, p0, Lcom/duoku/platform/single/d/a/j;->e:I

    invoke-virtual {v0, v1, p3, v2}, Lcom/duoku/platform/single/d/b;->a(Lcom/duoku/platform/single/d/c;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/d/c;->j:Lcom/duoku/platform/single/d/c;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/j;->c:Lcom/duoku/platform/single/d/c;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/d/c;->o:Lcom/duoku/platform/single/d/c;

    iget v2, p0, Lcom/duoku/platform/single/d/a/j;->e:I

    invoke-virtual {v0, v1, p3, v2}, Lcom/duoku/platform/single/d/b;->a(Lcom/duoku/platform/single/d/c;II)V

    goto :goto_0
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 4

    sget-object v0, Lcom/duoku/platform/single/d/c;->l:Lcom/duoku/platform/single/d/c;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/j;->c:Lcom/duoku/platform/single/d/c;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/j;->b:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/c;->m:Lcom/duoku/platform/single/d/c;

    iget v3, p0, Lcom/duoku/platform/single/d/a/j;->e:I

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/d/c;->n:Lcom/duoku/platform/single/d/c;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/j;->c:Lcom/duoku/platform/single/d/c;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/j;->b:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/c;->o:Lcom/duoku/platform/single/d/c;

    iget v3, p0, Lcom/duoku/platform/single/d/a/j;->e:I

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto :goto_0
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
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/duoku/platform/single/d/d;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/j;->b:Lcom/duoku/platform/single/d/d;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lcom/duoku/platform/single/d/c;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/j;->c:Lcom/duoku/platform/single/d/c;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/j;->d:Ljava/lang/String;

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/d/a/j;->e:I

    sget-object v0, Lcom/duoku/platform/single/d/c;->l:Lcom/duoku/platform/single/d/c;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/j;->c:Lcom/duoku/platform/single/d/c;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v0

    const-string v1, "http://gamesdk.m.duoku.com/standalone/makeOrder"

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/j;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/d/c;->n:Lcom/duoku/platform/single/d/c;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/j;->c:Lcom/duoku/platform/single/d/c;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v0

    const-string v1, "http://gamesdk.m.duoku.com/standalone/cardRecharge"

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/j;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    goto :goto_0
.end method
