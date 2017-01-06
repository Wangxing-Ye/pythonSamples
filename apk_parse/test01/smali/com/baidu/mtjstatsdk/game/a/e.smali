.class public Lcom/baidu/mtjstatsdk/game/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/e;->a:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/mtjstatsdk/game/a/e;->b:I

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/game/a/e;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/e;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/e;->a:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/mtjstatsdk/game/a/e;->b:I

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/game/a/e;->d:Ljava/lang/String;

    iput-wide p4, p0, Lcom/baidu/mtjstatsdk/game/a/e;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/baidu/mtjstatsdk/game/a/e;->b:I

    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/e;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/e;->d:Ljava/lang/String;

    return-object v0
.end method
