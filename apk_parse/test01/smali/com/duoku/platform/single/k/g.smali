.class public Lcom/duoku/platform/single/k/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/k/g$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static b:Lcom/duoku/platform/single/k/g;


# instance fields
.field private c:Ljava/util/Timer;

.field private d:Lcom/duoku/platform/single/k/g$a;

.field private e:Landroid/app/Activity;

.field private f:Lcom/duoku/platform/single/item/e;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/duoku/platform/single/k/h;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/k/h;-><init>(Lcom/duoku/platform/single/k/g;)V

    iput-object v0, p0, Lcom/duoku/platform/single/k/g;->j:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/duoku/platform/single/k/g;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/k/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/k/g;->b:Lcom/duoku/platform/single/k/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/k/g;

    invoke-direct {v0}, Lcom/duoku/platform/single/k/g;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/k/g;->b:Lcom/duoku/platform/single/k/g;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/k/g;->b:Lcom/duoku/platform/single/k/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/duoku/platform/single/k/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/k/g;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/duoku/platform/single/k/g;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/k/g;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/duoku/platform/single/k/g;)Lcom/duoku/platform/single/item/e;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/k/g;->f:Lcom/duoku/platform/single/item/e;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/single/k/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/k/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/single/k/g;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/k/g;->j:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/duoku/platform/single/item/b;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/k/g;->e:Landroid/app/Activity;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/single/k/g;->i:Z

    iget-boolean v0, p0, Lcom/duoku/platform/single/k/g;->i:Z

    if-nez v0, :cond_0

    const-string v0, "init"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Lcom/duoku/platform/single/item/b;->b(I)V

    invoke-static {}, Lcom/duoku/platform/single/suspend/k;->a()Lcom/duoku/platform/single/suspend/k;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/single/k/g;->h:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/duoku/platform/single/suspend/k;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/b;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "pause"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/duoku/platform/single/suspend/k;->a:Z

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/duoku/platform/single/item/b;->b(I)V

    invoke-static {}, Lcom/duoku/platform/single/suspend/k;->a()Lcom/duoku/platform/single/suspend/k;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/single/k/g;->h:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/duoku/platform/single/suspend/k;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/b;Z)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-lt v2, v3, :cond_1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, v1, p3}, Lcom/duoku/platform/single/k/g;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/b;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/b;

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/b;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/c;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/single/item/b;

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Lcom/duoku/platform/single/k/g;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/b;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/duoku/platform/single/k/g;->e:Landroid/app/Activity;

    iput-object p2, p0, Lcom/duoku/platform/single/k/g;->f:Lcom/duoku/platform/single/item/e;

    iput-object p3, p0, Lcom/duoku/platform/single/k/g;->g:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/duoku/platform/single/k/g;->h:Z

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "init"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/duoku/platform/single/k/g;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/k/g;->f:Lcom/duoku/platform/single/item/e;

    iget-object v1, p0, Lcom/duoku/platform/single/k/g;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/duoku/platform/single/k/g;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/duoku/platform/single/k/g;->c:Ljava/util/Timer;

    iput-object v1, p0, Lcom/duoku/platform/single/k/g;->d:Lcom/duoku/platform/single/k/g$a;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/k/g;->c:Ljava/util/Timer;

    new-instance v0, Lcom/duoku/platform/single/k/g$a;

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/single/k/g$a;-><init>(Lcom/duoku/platform/single/k/g;Lcom/duoku/platform/single/k/g$a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/k/g;->d:Lcom/duoku/platform/single/k/g$a;

    iget-object v0, p0, Lcom/duoku/platform/single/k/g;->c:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duoku/platform/single/k/g;->d:Lcom/duoku/platform/single/k/g$a;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
