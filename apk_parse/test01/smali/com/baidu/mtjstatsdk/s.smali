.class Lcom/baidu/mtjstatsdk/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/m;

.field private b:J

.field private c:J

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/m;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/s;->a:Lcom/baidu/mtjstatsdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mtjstatsdk/s;->g:I

    iput-wide p2, p0, Lcom/baidu/mtjstatsdk/s;->b:J

    iput-wide p4, p0, Lcom/baidu/mtjstatsdk/s;->c:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/s;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/s;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/s;->f:Ljava/lang/ref/WeakReference;

    iput p9, p0, Lcom/baidu/mtjstatsdk/s;->g:I

    iput-object p10, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/s;->c:J

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/s;->b:J

    sub-long v1, v0, v2

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->getSessionPeriod()I

    move-result v0

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/s;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/s;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/s;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/s;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    iget-wide v1, p0, Lcom/baidu/mtjstatsdk/s;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/a/b;->b(J)V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/a/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mtjstatsdk/DataCore;->putSession(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget v0, p0, Lcom/baidu/mtjstatsdk/s;->g:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/s;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/a/b;->b()V

    iget v0, p0, Lcom/baidu/mtjstatsdk/s;->g:I

    if-ne v0, v5, :cond_6

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/s;->a:Lcom/baidu/mtjstatsdk/m;

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/s;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/baidu/mtjstatsdk/m;->a(Lcom/baidu/mtjstatsdk/m;Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/baidu/mtjstatsdk/i;->a()Lcom/baidu/mtjstatsdk/i;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/baidu/mtjstatsdk/s;->g:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/s;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/baidu/mtjstatsdk/s;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/s;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/baidu/mtjstatsdk/s;->g:I

    if-ne v0, v6, :cond_7

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/s;->a:Lcom/baidu/mtjstatsdk/m;

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/s;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/baidu/mtjstatsdk/m;->a(Lcom/baidu/mtjstatsdk/m;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/s;->a:Lcom/baidu/mtjstatsdk/m;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/s;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/mtjstatsdk/m;->a(Lcom/baidu/mtjstatsdk/m;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
