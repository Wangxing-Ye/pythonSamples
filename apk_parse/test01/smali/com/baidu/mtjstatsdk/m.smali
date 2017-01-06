.class Lcom/baidu/mtjstatsdk/m;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/SessionAnalysisObject;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/os/HandlerThread;

.field private static c:Landroid/os/Handler;

.field private static d:Lcom/baidu/mtjstatsdk/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SessionAnalysisThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/m;->b:Landroid/os/HandlerThread;

    new-instance v0, Lcom/baidu/mtjstatsdk/m;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/m;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/m;->d:Lcom/baidu/mtjstatsdk/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->b:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    return-void
.end method

.method static a(Ljava/lang/Object;)Landroid/content/Context;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getActivity"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/m;
    .locals 1

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/m;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->d:Lcom/baidu/mtjstatsdk/m;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "statsdk"

    const-string v1, "clearLastSession(Context context):context=null"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "{}"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_last_session.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, p1, v1, v0, v3}, Lcom/baidu/mtjstatsdk/b/c;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/m;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/mtjstatsdk/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AppKey can not be null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-direct {v1}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/SessionAnalysisObject;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "statsdk"

    const-string v1, "AnalysisResume job"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->k:Z

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-boolean v9, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->k:Z

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->isFirstResume()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "is_first_resume=true"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0, v2}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->setFirstResume(Z)V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/n;

    invoke-direct {v1, p0, p1, p4}, Lcom/baidu/mtjstatsdk/n;-><init>(Lcom/baidu/mtjstatsdk/m;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    new-instance v0, Lcom/baidu/mtjstatsdk/s;

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-wide v2, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p1

    move-object v8, v7

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/baidu/mtjstatsdk/s;-><init>(Lcom/baidu/mtjstatsdk/m;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;ILjava/lang/String;)V

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->e:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-wide p2, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->b:J

    return-void

    :cond_4
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "statsdk"

    const-string v1, " is_first_resume=false"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    invoke-static/range {p5 .. p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "statsdk"

    const-string v2, "AnalysisPageStart"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-boolean v1, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->n:Z

    if-eqz v1, :cond_1

    invoke-static/range {p5 .. p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u9057\u6f0fStatService.onPageEnd() || missing StatService.onPageEnd()"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1
    sget-object v1, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->n:Z

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v1}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->isFirstResume()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static/range {p5 .. p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PPPPPPPPPPPPP is_first_resume=true"

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/f;->b(Ljava/lang/String;)I

    :cond_2
    sget-object v1, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->setFirstResume(Z)V

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mtjstatsdk/o;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, p1, v0}, Lcom/baidu/mtjstatsdk/o;-><init>(Lcom/baidu/mtjstatsdk/m;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    new-instance v1, Lcom/baidu/mtjstatsdk/s;

    sget-object v2, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-wide v3, v2, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    move-wide v5, p2

    move-object v7, p1

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcom/baidu/mtjstatsdk/s;-><init>(Lcom/baidu/mtjstatsdk/m;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;ILjava/lang/String;)V

    sget-object v2, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    move-object/from16 v0, p4

    iput-object v0, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->o:Ljava/lang/String;

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->e:Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-wide p2, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->b:J

    return-void

    :cond_4
    invoke-static/range {p5 .. p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "statsdk"

    const-string v2, " is_first_resume=false"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;JLjava/lang/String;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "statsdk"

    const-string v1, "post resume job"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->l:Z

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-boolean v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->l:Z

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->isFirstResume()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "statsdk"

    const-string v1, "is_first_resume=true"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0, v2}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->setFirstResume(Z)V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/p;

    invoke-direct {v1, p0, p1, p4}, Lcom/baidu/mtjstatsdk/p;-><init>(Lcom/baidu/mtjstatsdk/m;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    new-instance v0, Lcom/baidu/mtjstatsdk/s;

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-wide v2, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    move-object v1, p0

    move-wide v4, p2

    move-object v7, p1

    move-object v8, v6

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/baidu/mtjstatsdk/s;-><init>(Lcom/baidu/mtjstatsdk/m;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;ILjava/lang/String;)V

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->f:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-wide p2, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->c:J

    return-void

    :cond_4
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "statsdk"

    const-string v1, "is_first_resume=false"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;JLjava/lang/String;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "statsdk"

    const-string v1, "post resume job"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->m:Z

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-boolean v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->m:Z

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->isFirstResume()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "statsdk"

    const-string v1, "is_first_resume=true"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0, v2}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->setFirstResume(Z)V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/q;

    invoke-direct {v1, p0, p1, p4}, Lcom/baidu/mtjstatsdk/q;-><init>(Lcom/baidu/mtjstatsdk/m;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    new-instance v0, Lcom/baidu/mtjstatsdk/s;

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-wide v2, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    const/4 v9, 0x3

    move-object v1, p0

    move-wide v4, p2

    move-object v7, v6

    move-object v8, p1

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/baidu/mtjstatsdk/s;-><init>(Lcom/baidu/mtjstatsdk/m;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;ILjava/lang/String;)V

    sget-object v1, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->g:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-wide p2, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:J

    return-void

    :cond_4
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "statsdk"

    const-string v1, "is_first_resume=false"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Landroid/content/Context;JLjava/lang/String;)V
    .locals 17

    invoke-static/range {p4 .. p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "statsdk"

    const-string v3, "post pause job"

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-boolean v2, v2, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->k:Z

    if-nez v2, :cond_2

    invoke-static/range {p4 .. p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "statsdk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u9057\u6f0fStatService.onResume() || missing StatService.onResume()"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->k:Z

    new-instance v2, Lcom/baidu/mtjstatsdk/r;

    const/4 v7, 0x0

    sget-object v3, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-wide v8, v3, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->b:J

    sget-object v3, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v3, v3, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v16, p4

    invoke-direct/range {v2 .. v16}, Lcom/baidu/mtjstatsdk/r;-><init>(Lcom/baidu/mtjstatsdk/m;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v2, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    move-wide/from16 v0, p2

    iput-wide v0, v2, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    goto :goto_0
.end method

.method public b(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 19

    invoke-static/range {p5 .. p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "statsdk"

    const-string v4, "post pause job"

    invoke-static {v3, v4}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->n:Z

    if-nez v3, :cond_2

    invoke-static/range {p5 .. p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "statsdk"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Please check (1)\u9057\u6f0fStatService.onPageStart() || missing StatService.onPageStart()"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->n:Z

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->o:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->o:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-static/range {p5 .. p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "statsdk"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Please check the reason : (1)\u9057\u6f0fStatService.onPageStart() || missing StatService.onPageStart() || (2)\u9875\u9762\u7684\u8d77\u59cb\u548c\u7ed3\u675f\u4e0d\u662f\u540c\u4e00\u9875\u9762 || The page "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name is not equal to the page end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    new-instance v3, Lcom/baidu/mtjstatsdk/r;

    const/4 v8, 0x0

    move-object/from16 v0, v18

    iget-wide v9, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->b:J

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p2

    move-object/from16 v7, p1

    move-object/from16 v14, p4

    move-object/from16 v17, p5

    invoke-direct/range {v3 .. v17}, Lcom/baidu/mtjstatsdk/r;-><init>(Lcom/baidu/mtjstatsdk/m;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v0, p2

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    goto/16 :goto_0
.end method

.method public b(Landroid/support/v4/app/Fragment;JLjava/lang/String;)V
    .locals 19

    sget-object v3, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-static/range {p4 .. p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "statsdk"

    const-string v4, "post pause job"

    invoke-static {v3, v4}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->l:Z

    if-nez v3, :cond_2

    invoke-static/range {p4 .. p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "statsdk"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "\u9057\u6f0fandroid.support.v4.app.Fragment StatService.onResume() || android.support.v4.app.Fragment missing StatService.onResume()"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->l:Z

    new-instance v3, Lcom/baidu/mtjstatsdk/r;

    const/4 v7, 0x0

    move-object/from16 v0, v18

    iget-wide v9, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->c:J

    const/4 v11, 0x0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/Fragment;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p2

    move-object/from16 v8, p1

    move-object/from16 v17, p4

    invoke-direct/range {v3 .. v17}, Lcom/baidu/mtjstatsdk/r;-><init>(Lcom/baidu/mtjstatsdk/m;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v0, p2

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;JLjava/lang/String;)V
    .locals 19

    sget-object v3, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-static/range {p4 .. p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "statsdk"

    const-string v4, "post pause job"

    invoke-static {v3, v4}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->m:Z

    if-nez v3, :cond_2

    invoke-static/range {p4 .. p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "statsdk"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "\u9057\u6f0fandroid.app.Fragment StatService.onResume() || android.app.Fragment missing StatService.onResume()"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->m:Z

    new-instance v3, Lcom/baidu/mtjstatsdk/r;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v18

    iget-wide v9, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v4, p0

    move-wide/from16 v5, p2

    move-object/from16 v16, p1

    move-object/from16 v17, p4

    invoke-direct/range {v3 .. v17}, Lcom/baidu/mtjstatsdk/r;-><init>(Lcom/baidu/mtjstatsdk/m;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/baidu/mtjstatsdk/m;->c:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v0, p2

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    goto :goto_0
.end method
