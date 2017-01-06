.class public Lcom/duoku/platform/single/util/c;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    const-wide/16 v0, 0x5dc

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/c;->a(J)Z

    move-result v0

    return v0
.end method

.method public static a(J)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/duoku/platform/single/util/c;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    cmp-long v2, v2, p0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sput-wide v0, Lcom/duoku/platform/single/util/c;->a:J

    const/4 v0, 0x0

    goto :goto_0
.end method
