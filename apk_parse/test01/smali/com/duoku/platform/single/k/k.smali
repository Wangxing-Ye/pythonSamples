.class public Lcom/duoku/platform/single/k/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;
.implements Lcom/duoku/platform/single/k/j;


# static fields
.field private static b:Lcom/duoku/platform/single/k/k;


# instance fields
.field private a:Lcom/duoku/platform/single/util/H;

.field private c:Landroid/content/Context;

.field private d:Lcom/duoku/platform/single/util/P;

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/duoku/platform/single/k/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/k/k;->a:Lcom/duoku/platform/single/util/H;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/k/k;->c:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Lcom/duoku/platform/single/k/k;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/k/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/k/k;->b:Lcom/duoku/platform/single/k/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/k/k;

    invoke-direct {v0}, Lcom/duoku/platform/single/k/k;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/k/k;->b:Lcom/duoku/platform/single/k/k;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/k/k;->b:Lcom/duoku/platform/single/k/k;
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
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/k/k;->a:Lcom/duoku/platform/single/util/H;

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

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 4

    const/16 v0, 0x91

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/duoku/platform/single/h/a/r;

    iget v0, p0, Lcom/duoku/platform/single/k/k;->e:I

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/r;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/r;->n()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/k/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/i;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/i;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/r;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/r;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/e/i;->a(Ljava/util/List;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x93

    if-ne p1, v0, :cond_0

    check-cast p2, Lcom/duoku/platform/single/h/a/m;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/m;->n()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/k/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/j;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/j;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/m;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/single/e/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/duoku/platform/single/k/k;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/k/k;->d:Lcom/duoku/platform/single/util/P;

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/duoku/platform/single/util/J;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v1

    const-string v2, "paychannel_configuration_version"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/P;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/duoku/platform/single/k/k;->e:I

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v1

    iget v2, p0, Lcom/duoku/platform/single/k/k;->e:I

    invoke-virtual {v1, v0, v2}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/queryNewPayChannelV200"

    const/16 v3, 0x91

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/k/k;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/single/e/j;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/e/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/g/a;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/thirdpaySupportList"

    const/16 v3, 0x93

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/k/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/i;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/i;

    iget-object v0, p0, Lcom/duoku/platform/single/k/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/j;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/j;

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method
