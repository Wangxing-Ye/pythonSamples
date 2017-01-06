.class Lcom/baidu/mtjstatsdk/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Landroid/os/HandlerThread;

.field private static d:Landroid/os/Handler;

.field private static e:Lcom/baidu/mtjstatsdk/a;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EventHandleThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/a;->c:Landroid/os/HandlerThread;

    new-instance v0, Lcom/baidu/mtjstatsdk/a;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/a;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/a;->e:Lcom/baidu/mtjstatsdk/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/a;->a:Ljava/util/HashMap;

    const-string v0, "$|$"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/a;->b:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mtjstatsdk/a;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/baidu/mtjstatsdk/a;->c:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mtjstatsdk/a;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/a;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/baidu/mtjstatsdk/a;
    .locals 1

    sget-object v0, Lcom/baidu/mtjstatsdk/a;->e:Lcom/baidu/mtjstatsdk/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__sdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$|$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 10

    sget-object v9, Lcom/baidu/mtjstatsdk/a;->d:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mtjstatsdk/b;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/baidu/mtjstatsdk/b;-><init>(Lcom/baidu/mtjstatsdk/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    sget-object v8, Lcom/baidu/mtjstatsdk/a;->d:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mtjstatsdk/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-wide v4, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mtjstatsdk/c;-><init>(Lcom/baidu/mtjstatsdk/a;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    sget-object v8, Lcom/baidu/mtjstatsdk/a;->d:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mtjstatsdk/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mtjstatsdk/d;-><init>(Lcom/baidu/mtjstatsdk/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    sget-object v8, Lcom/baidu/mtjstatsdk/a;->d:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mtjstatsdk/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-wide v4, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mtjstatsdk/e;-><init>(Lcom/baidu/mtjstatsdk/a;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
