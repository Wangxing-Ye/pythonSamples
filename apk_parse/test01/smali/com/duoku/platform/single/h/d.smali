.class public Lcom/duoku/platform/single/h/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/apache/http/client/HttpClient;

.field private static b:Lorg/apache/http/params/HttpParams;

.field private static c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    const/4 v0, 0x4

    sput v0, Lcom/duoku/platform/single/h/d;->d:I

    const/16 v0, 0x80

    sput v0, Lcom/duoku/platform/single/h/d;->e:I

    const/4 v0, 0x1

    sput v0, Lcom/duoku/platform/single/h/d;->f:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/duoku/platform/single/h/d;->g:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/duoku/platform/single/h/e;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/e;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/h/d;->h:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/duoku/platform/single/h/d;->d:I

    sget v2, Lcom/duoku/platform/single/h/d;->e:I

    sget v3, Lcom/duoku/platform/single/h/d;->f:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/duoku/platform/single/h/d;->g:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/duoku/platform/single/h/d;->h:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/duoku/platform/single/h/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lorg/apache/http/client/HttpClient;
    .locals 6

    const-class v1, Lcom/duoku/platform/single/h/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/h/d;->a:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    sget-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    sget-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    const-string v2, "ISO-8859-1"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    sget-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    sget-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    const/16 v2, 0x2710

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    const/16 v2, 0x7530

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    sget-object v3, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v0, Lcom/duoku/platform/single/h/d;->a:Lorg/apache/http/client/HttpClient;

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->f()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    new-instance v2, Lcom/duoku/platform/single/h/b;

    invoke-direct {v2, v0}, Lcom/duoku/platform/single/h/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/duoku/platform/single/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    const-string v3, "http.route.default-proxy"

    invoke-interface {v0, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    const-string v3, "http.route.default-proxy"

    invoke-interface {v0, v3}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v2}, Lcom/duoku/platform/single/h/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/duoku/platform/single/h/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/duoku/platform/single/h/d;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.protocol.expect-continue"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    sget-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_3
    :goto_1
    sget-object v0, Lcom/duoku/platform/single/h/d;->a:Lorg/apache/http/client/HttpClient;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/duoku/platform/single/h/d;->b:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 1

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/h/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "\"\""

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "encrypttype"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/h/d;->a:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/h/d;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/h/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    return-void
.end method
