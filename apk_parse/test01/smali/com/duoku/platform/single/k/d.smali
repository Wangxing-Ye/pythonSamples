.class public Lcom/duoku/platform/single/k/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;
.implements Lcom/duoku/platform/single/k/j;


# static fields
.field private static a:Lcom/duoku/platform/single/k/d;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/duoku/platform/single/util/H;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/k/d;->b:Landroid/content/Context;

    const-class v0, Lcom/duoku/platform/single/k/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/k/d;->c:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method public static declared-synchronized a()Lcom/duoku/platform/single/k/d;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/k/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/k/d;->a:Lcom/duoku/platform/single/k/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/k/d;

    invoke-direct {v0}, Lcom/duoku/platform/single/k/d;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/k/d;->a:Lcom/duoku/platform/single/k/d;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/k/d;->a:Lcom/duoku/platform/single/k/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/duoku/platform/single/item/l;)V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/k/d;->c:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveLogo logoinfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/g;->c:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/single/util/g;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/l;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/k/d;->c:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveLogo idinfile = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/g;->c:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/single/util/g;->h:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/duoku/platform/single/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/duoku/platform/single/util/g;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/util/g;->c:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/single/util/g;->h:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/duoku/platform/single/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/duoku/platform/single/util/g;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/k/d;->c:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNetResponseErr  errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/util/g;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/k/d;->b:Landroid/content/Context;

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

    :cond_0
    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 3

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    check-cast p2, Lcom/duoku/platform/single/h/a/b;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/b;->n()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/k/d;->c:Lcom/duoku/platform/single/util/H;

    const-string v1, "------- error code is dc ok"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/util/g;->d:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/single/util/g;->i:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/duoku/platform/single/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoku/platform/single/k/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "dk_recommendgamedata_limit"

    invoke-static {}, Lcom/duoku/platform/single/util/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/b;->a()Lcom/duoku/platform/single/item/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/f/b;->a(Lcom/duoku/platform/single/item/e;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/e;->k()Lcom/duoku/platform/single/item/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/k/d;->a(Lcom/duoku/platform/single/item/l;)V

    iget-object v0, p0, Lcom/duoku/platform/single/k/d;->c:Lcom/duoku/platform/single/util/H;

    const-string v1, "suspension window is show"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/k/d;->c:Lcom/duoku/platform/single/util/H;

    const-string v1, "-------find DKCrossRecommendData is null"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/k/d;->c:Lcom/duoku/platform/single/util/H;

    const-string v1, "----error code is not ok"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/duoku/platform/single/k/d;->b:Landroid/content/Context;

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/g/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/k/d;->c:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-request data is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/getGameRecommendV140"

    const/16 v3, 0x2d

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/k/d;->b:Landroid/content/Context;

    return-void
.end method
