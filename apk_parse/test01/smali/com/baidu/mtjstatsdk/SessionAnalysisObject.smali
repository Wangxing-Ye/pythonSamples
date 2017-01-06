.class public Lcom/baidu/mtjstatsdk/SessionAnalysisObject;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/baidu/mtjstatsdk/a/b;

.field i:I

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    iput-wide v2, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->b:J

    iput-wide v2, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->c:J

    iput-wide v2, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:J

    new-instance v0, Lcom/baidu/mtjstatsdk/a/b;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/a/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->j:Z

    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->k:Z

    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->l:Z

    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->m:Z

    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public flushSession(Landroid/content/Context;JLjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "statsdk"

    const-string v1, "flush current session to last_session.json"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "{}"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/a/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "e"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_last_session.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, p1, v1, v0, v4}, Lcom/baidu/mtjstatsdk/b/c;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "statsdk"

    const-string v2, "StatSession.flushSession() failed"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSessionPeriod()I
    .locals 2

    iget v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x7530

    iput v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->i:I

    :cond_0
    iget v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->i:I

    return v0
.end method

.method public getSessionStartTime()J
    .locals 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/a/b;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public isFirstResume()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->j:Z

    return v0
.end method

.method public setFirstResume(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->j:Z

    return-void
.end method

.method public setSessionCounted()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    invoke-virtual {v1}, Lcom/baidu/mtjstatsdk/a/b;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/a/b;->a(I)V

    return-void
.end method

.method public setSessionPeriod(I)V
    .locals 1

    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->i:I

    return-void
.end method
