.class Lcom/baidu/mtjstatsdk/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/m;

.field private b:J

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/m;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/r;->a:Lcom/baidu/mtjstatsdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/r;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    iput-wide p2, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/r;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    iput-wide p6, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    if-eqz p8, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/r;->g:Ljava/lang/ref/WeakReference;

    :cond_1
    if-eqz p5, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/r;->d:Ljava/lang/ref/WeakReference;

    :cond_2
    if-eqz p9, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/r;->h:Ljava/lang/ref/WeakReference;

    :cond_3
    if-eqz p12, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/r;->i:Ljava/lang/ref/WeakReference;

    :cond_4
    if-eqz p13, :cond_5

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/r;->e:Ljava/lang/ref/WeakReference;

    :cond_5
    iput p10, p0, Lcom/baidu/mtjstatsdk/r;->j:I

    iput-object p11, p0, Lcom/baidu/mtjstatsdk/r;->k:Ljava/lang/String;

    iput-object p14, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget v1, p0, Lcom/baidu/mtjstatsdk/r;->j:I

    if-ne v1, v5, :cond_7

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/r;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, "onPageStart() \u6216 onPageEnd()\u5b89\u653e\u9519\u8bef  || onPageStart() or onPageEnd() install error."

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, "onPause() \u6216 onResume()\u5b89\u653e\u9519\u8bef  ||  onPause() or onResume() install error."

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-wide v3, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    sub-long v2, v1, v3

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, "onPause,WeakReference is already been released"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/r;->k:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->k:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "statsdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new page view, page name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",stay time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/a/b;->a(Ljava/lang/String;JJ)V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-object v4, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->flushSession(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/baidu/mtjstatsdk/r;->j:I

    if-ne v1, v7, :cond_b

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/r;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_8

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, " Fragment onPause() \u6216 onResume()\u5b89\u653e\u9519\u8bef||onPause() or onResume() install error."

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_8
    iget-wide v1, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-wide v3, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    sub-long v2, v1, v3

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_9

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, "onPause,WeakReference is already been released"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "statsdk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment new page view, page name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",stay time = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "(ms)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/a/b;->a(Ljava/lang/String;JJ)V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-object v4, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->flushSession(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget v1, p0, Lcom/baidu/mtjstatsdk/r;->j:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/r;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_c

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, " Fragment onPause() \u6216 onResume()\u5b89\u653e\u9519\u8bef||onPause() or onResume() install error."

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_c
    iget-wide v1, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-wide v3, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    sub-long v2, v1, v3

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, "onPause,WeakReference is already been released"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_d
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "statsdk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.app.Fragment new page view, page name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",stay time = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "(ms)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/a/b;->a(Ljava/lang/String;JJ)V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-wide v1, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->flushSession(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_0
.end method
