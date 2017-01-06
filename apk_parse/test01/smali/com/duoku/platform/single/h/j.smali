.class public Lcom/duoku/platform/single/h/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/duoku/platform/single/h/j;


# instance fields
.field private c:Lcom/duoku/platform/single/h/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/h/j;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/single/h/j;->b:Lcom/duoku/platform/single/h/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/h/j;->c:Lcom/duoku/platform/single/h/f;

    new-instance v0, Lcom/duoku/platform/single/h/f;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/f;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/h/j;->c:Lcom/duoku/platform/single/h/f;

    return-void
.end method

.method public static a()V
    .locals 0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->c()Lcom/duoku/platform/single/h/j;

    return-void
.end method

.method public static b()Lcom/duoku/platform/single/h/g;
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/h/j;->c()Lcom/duoku/platform/single/h/j;

    move-result-object v0

    iget-object v0, v0, Lcom/duoku/platform/single/h/j;->c:Lcom/duoku/platform/single/h/f;

    return-object v0
.end method

.method private static c()Lcom/duoku/platform/single/h/j;
    .locals 2

    sget-object v1, Lcom/duoku/platform/single/h/j;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/h/j;->b:Lcom/duoku/platform/single/h/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/h/j;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/j;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/h/j;->b:Lcom/duoku/platform/single/h/j;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/duoku/platform/single/h/j;->b:Lcom/duoku/platform/single/h/j;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
