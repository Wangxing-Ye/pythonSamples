.class public Lcom/baidu/mtjstatsdk/game/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:D

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IDLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/mtjstatsdk/game/a/c;->b:I

    iput-wide p3, p0, Lcom/baidu/mtjstatsdk/game/a/c;->c:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->d:J

    iput-object p5, p0, Lcom/baidu/mtjstatsdk/game/a/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/mtjstatsdk/game/a/c;->b:I

    iput-wide p3, p0, Lcom/baidu/mtjstatsdk/game/a/c;->c:D

    iput-wide p6, p0, Lcom/baidu/mtjstatsdk/game/a/c;->d:J

    iput-object p5, p0, Lcom/baidu/mtjstatsdk/game/a/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->b:I

    return v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->c:D

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/game/a/c;->d:J

    return-wide v0
.end method
