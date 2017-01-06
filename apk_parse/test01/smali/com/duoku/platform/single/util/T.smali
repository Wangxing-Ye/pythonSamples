.class public Lcom/duoku/platform/single/util/T;
.super Ljava/lang/Object;


# static fields
.field protected static a:Landroid/widget/Toast;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/single/util/T;->a:Landroid/widget/Toast;

    sput-wide v1, Lcom/duoku/platform/single/util/T;->c:J

    sput-wide v1, Lcom/duoku/platform/single/util/T;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/duoku/platform/single/util/a;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    sget-boolean v0, Lcom/duoku/platform/single/util/a;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IIILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/duoku/platform/single/h/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5!"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    sparse-switch p3, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorcode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    const-string v1, "\u7f51\u7edc\u8d85\u65f6,\u8bf7\u7a0d\u540e\u518d\u8bd5!"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "\u7f51\u7edc\u53c2\u6570\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5!"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b,\u8bf7\u7a0d\u540e\u518d\u8bd5!"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v1, "\u7f51\u7edc\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5!"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_3
        0x1198 -> :sswitch_0
        0xa028 -> :sswitch_1
        0xa039 -> :sswitch_1
        0xa413 -> :sswitch_2
    .end sparse-switch
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    sget-object v0, Lcom/duoku/platform/single/util/T;->a:Landroid/widget/Toast;

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/util/T;->a:Landroid/widget/Toast;

    sget-object v0, Lcom/duoku/platform/single/util/T;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/duoku/platform/single/util/T;->c:J

    :cond_0
    :goto_0
    sget-wide v0, Lcom/duoku/platform/single/util/T;->d:J

    sput-wide v0, Lcom/duoku/platform/single/util/T;->c:J

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/duoku/platform/single/util/T;->d:J

    sget-object v0, Lcom/duoku/platform/single/util/T;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-wide v0, Lcom/duoku/platform/single/util/T;->d:J

    sget-wide v2, Lcom/duoku/platform/single/util/T;->c:J

    sub-long/2addr v0, v2

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/T;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    sput-object p1, Lcom/duoku/platform/single/util/T;->b:Ljava/lang/String;

    sget-object v0, Lcom/duoku/platform/single/util/T;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/duoku/platform/single/util/T;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
