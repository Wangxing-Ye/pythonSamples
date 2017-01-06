.class public Lcom/baidu/mtjstatsdk/game/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/a/d;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/d;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/d;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/game/a/d;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/mtjstatsdk/game/a/d;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/d;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mtjstatsdk/game/a/d;->e:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/mtjstatsdk/game/a/d;->d:J

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/d;->c:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/d;->d:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mtjstatsdk/game/a/d;->e:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/d;->f:Ljava/lang/String;

    return-object v0
.end method
