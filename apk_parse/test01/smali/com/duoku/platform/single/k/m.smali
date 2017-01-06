.class public Lcom/duoku/platform/single/k/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;
.implements Lcom/duoku/platform/single/k/j;


# static fields
.field private static a:Lcom/duoku/platform/single/k/m;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/duoku/platform/single/util/P;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/k/m;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Lcom/duoku/platform/single/k/m;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/k/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/k/m;->a:Lcom/duoku/platform/single/k/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/k/m;

    invoke-direct {v0}, Lcom/duoku/platform/single/k/m;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/k/m;->a:Lcom/duoku/platform/single/k/m;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/k/m;->a:Lcom/duoku/platform/single/k/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 5

    const/4 v4, 0x1

    const/16 v0, 0x8d

    if-ne p1, v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/duoku/platform/single/h/a/p;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/a;->n()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/k/m;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/single/util/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/p;->a()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/duoku/platform/single/k/m;->e:Lcom/duoku/platform/single/util/P;

    const-string v3, "mdo"

    invoke-static {v1, v3}, Lcom/duoku/platform/single/util/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/p;->b()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/duoku/platform/single/k/m;->e:Lcom/duoku/platform/single/util/P;

    const-string v2, "dk_flag_support_mdo"

    invoke-virtual {v1, v2, v4}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    :goto_0
    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/p;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/k/m;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/single/e/f;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/e/f;->a(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/duoku/platform/single/k/m;->e:Lcom/duoku/platform/single/util/P;

    const-string v2, "dk_flag_support_mdo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x8d

    iput-object p1, p0, Lcom/duoku/platform/single/k/m;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/k/m;->e:Lcom/duoku/platform/single/util/P;

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/duoku/platform/single/k/m;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duoku/platform/single/k/m;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/duoku/platform/single/g/a;->a(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/queryAllSMSPayChannel"

    invoke-interface {v1, v2, v4, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/k/m;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/single/k/m;->d:Ljava/lang/String;

    return-void
.end method
