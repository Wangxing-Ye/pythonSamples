.class Lcom/baidu/mtjstatsdk/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static g:Landroid/os/Handler;

.field private static h:Lcom/baidu/mtjstatsdk/i;


# instance fields
.field private b:Z

.field private c:Lcom/baidu/mtjstatsdk/a/a;

.field private d:I

.field private e:Ljava/util/Timer;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogSenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/i;->a:Landroid/os/HandlerThread;

    new-instance v0, Lcom/baidu/mtjstatsdk/i;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/i;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/i;->h:Lcom/baidu/mtjstatsdk/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/i;->b:Z

    sget-object v0, Lcom/baidu/mtjstatsdk/a/a;->a:Lcom/baidu/mtjstatsdk/a/a;

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/i;->c:Lcom/baidu/mtjstatsdk/a/a;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mtjstatsdk/i;->d:I

    sget-object v0, Lcom/baidu/mtjstatsdk/i;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mtjstatsdk/i;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/i;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/i;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/mtjstatsdk/i;->d:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/i;Lcom/baidu/mtjstatsdk/a/a;)Lcom/baidu/mtjstatsdk/a/a;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/i;->c:Lcom/baidu/mtjstatsdk/a/a;

    return-object p1
.end method

.method public static a()Lcom/baidu/mtjstatsdk/i;
    .locals 1

    sget-object v0, Lcom/baidu/mtjstatsdk/i;->h:Lcom/baidu/mtjstatsdk/i;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/i;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/i;->e:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/i;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/i;->e:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mtjstatsdk/i;->b:Z

    return p1
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/mtjstatsdk/i;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mtjstatsdk/i;)Lcom/baidu/mtjstatsdk/a/a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/i;->c:Lcom/baidu/mtjstatsdk/a/a;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initContext context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/i;->f:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/i;->f:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/baidu/mtjstatsdk/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mtjstatsdk/i;->b:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setLastSendTime(Landroid/content/Context;J)V

    return-void
.end method

.method public a(Landroid/content/Context;JILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/i;->e:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/i;->e:Ljava/util/Timer;

    :goto_0
    invoke-static {p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "set timer log"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/i;->e:Ljava/util/Timer;

    new-instance v1, Lcom/baidu/mtjstatsdk/l;

    invoke-direct {v1, p0, p5, p1}, Lcom/baidu/mtjstatsdk/l;-><init>(Lcom/baidu/mtjstatsdk/i;Ljava/lang/String;Landroid/content/Context;)V

    int-to-long v4, p4

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/i;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/i;->b(Landroid/content/Context;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/i;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/i;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/i;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object p1, v0

    :cond_0
    sget-object v0, Lcom/baidu/mtjstatsdk/i;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/j;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/mtjstatsdk/j;-><init>(Lcom/baidu/mtjstatsdk/i;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "statsdk"

    const-string v1, "sendLogData() does not send because of only_wifi setting"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "statsdk"

    const-string v1, "sendLogData exception when get wifimanager"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/baidu/mtjstatsdk/DataCore;->sendLogData(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const v1, 0xea60

    iget v0, p0, Lcom/baidu/mtjstatsdk/i;->d:I

    mul-int/2addr v0, v1

    int-to-long v2, v0

    iget v0, p0, Lcom/baidu/mtjstatsdk/i;->d:I

    mul-int v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/i;->a(Landroid/content/Context;JILjava/lang/String;)V

    return-void
.end method
