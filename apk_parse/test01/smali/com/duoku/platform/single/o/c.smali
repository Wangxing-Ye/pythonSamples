.class public Lcom/duoku/platform/single/o/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/o/c$a;
    }
.end annotation


# instance fields
.field a:Lcom/duoku/platform/single/util/H;

.field public b:Lcom/duoku/platform/single/o/c$a;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/duoku/platform/single/o/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/o/c;->a:Lcom/duoku/platform/single/util/H;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/o/c;->c:Landroid/content/Context;

    sget-object v0, Lcom/duoku/platform/single/o/c$a;->d:Lcom/duoku/platform/single/o/c$a;

    iput-object v0, p0, Lcom/duoku/platform/single/o/c;->b:Lcom/duoku/platform/single/o/c$a;

    iput-object p1, p0, Lcom/duoku/platform/single/o/c;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/duoku/platform/single/i/c;)V
    .locals 4

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/duoku/platform/single/util/e;->a(Ljava/lang/String;)Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Lcom/duoku/platform/single/item/DKOrderPayChannelData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/queryOrderById"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method


# virtual methods
.method public a()Lcom/duoku/platform/single/o/c$a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->b:Lcom/duoku/platform/single/o/c$a;

    return-object v0
.end method

.method public run()V
    .locals 12

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->a:Lcom/duoku/platform/single/util/H;

    const-string v1, "\u67e5\u8be2\u7ebf\u7a0b\u542f\u52a8"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/o/c$a;->e:Lcom/duoku/platform/single/o/c$a;

    iput-object v0, p0, Lcom/duoku/platform/single/o/c;->b:Lcom/duoku/platform/single/o/c$a;

    invoke-static {}, Lcom/duoku/platform/single/l/a;->a()Lcom/duoku/platform/single/l/a;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/duoku/platform/single/l/a;->c()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/o/c$a;->d:Lcom/duoku/platform/single/o/c$a;

    iput-object v0, p0, Lcom/duoku/platform/single/o/c;->b:Lcom/duoku/platform/single/o/c$a;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->a:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u961f\u5217\u957f\u5ea6 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/duoku/platform/single/l/a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/o/c$a;->b:Lcom/duoku/platform/single/o/c$a;

    iput-object v0, p0, Lcom/duoku/platform/single/o/c;->b:Lcom/duoku/platform/single/o/c$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/l/a;->f()Lcom/duoku/platform/single/i/c;

    move-result-object v2

    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->a:Lcom/duoku/platform/single/util/H;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u961f\u5217\u957f\u5ea6 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/duoku/platform/single/l/a;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->a:Lcom/duoku/platform/single/util/H;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8ba2\u5355\u53f7\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/util/a;->m:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/duoku/platform/single/util/a;->m:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v11, v2, Lcom/duoku/platform/single/i/c;->r:Z

    :cond_3
    sget-object v0, Lcom/duoku/platform/single/util/a;->l:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/duoku/platform/single/util/a;->l:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v11, v2, Lcom/duoku/platform/single/i/c;->q:Z

    :cond_4
    iget-wide v5, v2, Lcom/duoku/platform/single/i/c;->k:J

    sub-long v5, v3, v5

    long-to-double v5, v5

    sget-wide v7, Lcom/duoku/platform/single/util/a;->g:D

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    mul-double/2addr v7, v9

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    cmpl-double v0, v5, v7

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->a:Lcom/duoku/platform/single/util/H;

    const-string v3, "\u6700\u540e\u4e00\u6b21\u67e5\u8be2\u8ba2\u5355\u72b6\u6001"

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iput-boolean v11, v2, Lcom/duoku/platform/single/i/c;->o:Z

    invoke-direct {p0, v2}, Lcom/duoku/platform/single/o/c;->a(Lcom/duoku/platform/single/i/c;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->a:Lcom/duoku/platform/single/util/H;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8ba2\u5355\u72b6\u6001\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/duoku/platform/single/i/c;->m:J

    sub-long/2addr v3, v5

    sget v0, Lcom/duoku/platform/single/util/a;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/duoku/platform/single/i/c;->a(J)V

    iget-object v0, v2, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    const-string v3, "4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->a:Lcom/duoku/platform/single/util/H;

    const-string v3, "\u67e5\u8be2\u8ba2\u5355\u72b6\u6001"

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/duoku/platform/single/o/c;->a(Lcom/duoku/platform/single/i/c;)V

    iget-boolean v0, v2, Lcom/duoku/platform/single/i/c;->r:Z

    if-nez v0, :cond_6

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/l/a;->b(Lcom/duoku/platform/single/i/c;)V

    :cond_6
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lcom/duoku/platform/single/l/a;->c()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->a:Lcom/duoku/platform/single/util/H;

    const-string v2, "\u7ebf\u7a0b\u4f11\u606f\u4e00\u4e0b\u3002"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/o/c$a;->a:Lcom/duoku/platform/single/o/c$a;

    iput-object v0, p0, Lcom/duoku/platform/single/o/c;->b:Lcom/duoku/platform/single/o/c$a;

    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->a:Lcom/duoku/platform/single/util/H;

    const-string v3, "\u7b49\u5f85\u4e00\u6bb5\u65f6\u95f4\u4ee5\u540e\u518d\u8fdb\u884c\u67e5\u8be2"

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/duoku/platform/single/i/c;->d:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/l/a;->b(Lcom/duoku/platform/single/i/c;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/duoku/platform/single/l/a;->c()I

    move-result v0

    if-eq v0, v11, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/o/c;->a:Lcom/duoku/platform/single/util/H;

    const-string v2, "\u83b7\u53d6\u8ba2\u5355\u5931\u8d25\u3002"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/duoku/platform/single/l/a;->e()V

    goto/16 :goto_0
.end method
