.class public Lcom/baidu/mtjstatsdk/game/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:D

.field private d:D

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mtjstatsdk/game/a/a;->f:I

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/a/a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/baidu/mtjstatsdk/game/a/a;->c:D

    iput-wide p5, p0, Lcom/baidu/mtjstatsdk/game/a/a;->d:D

    iput-object p7, p0, Lcom/baidu/mtjstatsdk/game/a/a;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/a;->g:J

    iput-object p8, p0, Lcom/baidu/mtjstatsdk/game/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mtjstatsdk/game/a/a;->f:I

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/a/a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/baidu/mtjstatsdk/game/a/a;->c:D

    iput-wide p5, p0, Lcom/baidu/mtjstatsdk/game/a/a;->d:D

    iput-object p7, p0, Lcom/baidu/mtjstatsdk/game/a/a;->e:Ljava/lang/String;

    iput-wide p9, p0, Lcom/baidu/mtjstatsdk/game/a/a;->g:J

    iput-object p8, p0, Lcom/baidu/mtjstatsdk/game/a/a;->h:Ljava/lang/String;

    iput p11, p0, Lcom/baidu/mtjstatsdk/game/a/a;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mtjstatsdk/game/a/a;->f:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/a;->c:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/a;->d:D

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/a;->g:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/baidu/mtjstatsdk/game/a/a;->f:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/a;->h:Ljava/lang/String;

    return-object v0
.end method
