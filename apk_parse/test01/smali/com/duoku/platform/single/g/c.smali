.class public Lcom/duoku/platform/single/g/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/duoku/platform/single/g/c;


# instance fields
.field private b:Lcom/duoku/platform/single/g/a;

.field private c:Lcom/duoku/platform/single/g/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/single/g/c;->a:Lcom/duoku/platform/single/g/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/g/c;->b:Lcom/duoku/platform/single/g/a;

    iput-object v0, p0, Lcom/duoku/platform/single/g/c;->c:Lcom/duoku/platform/single/g/d;

    new-instance v0, Lcom/duoku/platform/single/g/a;

    invoke-direct {v0}, Lcom/duoku/platform/single/g/a;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/g/c;->b:Lcom/duoku/platform/single/g/a;

    new-instance v0, Lcom/duoku/platform/single/g/d;

    invoke-direct {v0}, Lcom/duoku/platform/single/g/d;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/g/c;->c:Lcom/duoku/platform/single/g/d;

    return-void
.end method

.method public static a()Lcom/duoku/platform/single/g/a;
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/g/c;->d()Lcom/duoku/platform/single/g/c;

    move-result-object v0

    invoke-direct {v0}, Lcom/duoku/platform/single/g/c;->e()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/duoku/platform/single/g/d;
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/g/c;->d()Lcom/duoku/platform/single/g/c;

    move-result-object v0

    invoke-direct {v0}, Lcom/duoku/platform/single/g/c;->f()Lcom/duoku/platform/single/g/d;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 0

    invoke-static {}, Lcom/duoku/platform/single/g/c;->d()Lcom/duoku/platform/single/g/c;

    return-void
.end method

.method private static declared-synchronized d()Lcom/duoku/platform/single/g/c;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/g/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/g/c;->a:Lcom/duoku/platform/single/g/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/g/c;

    invoke-direct {v0}, Lcom/duoku/platform/single/g/c;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/g/c;->a:Lcom/duoku/platform/single/g/c;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/g/c;->a:Lcom/duoku/platform/single/g/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()Lcom/duoku/platform/single/g/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/g/c;->b:Lcom/duoku/platform/single/g/a;

    return-object v0
.end method

.method private f()Lcom/duoku/platform/single/g/d;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/g/c;->c:Lcom/duoku/platform/single/g/d;

    return-object v0
.end method
