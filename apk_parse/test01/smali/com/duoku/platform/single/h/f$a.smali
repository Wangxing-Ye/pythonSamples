.class final Lcom/duoku/platform/single/h/f$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/h/f;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/h/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/h/f;Lcom/duoku/platform/single/h/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/h/f$a;-><init>(Lcom/duoku/platform/single/h/f;)V

    return-void
.end method

.method private a(Lcom/duoku/platform/single/h/k;)V
    .locals 9

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->f()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;I)Ljava/util/Map$Entry;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/h;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/single/h/a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duoku/platform/single/h/a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->b()Lcom/duoku/platform/single/h/a/a;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-static {v5}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;)Lcom/duoku/platform/single/util/H;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "response data res = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/duoku/platform/single/h/a/a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    :cond_0
    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->a()I

    move-result v4

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/a;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/duoku/platform/single/h/h;->a(IIILjava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;Lcom/duoku/platform/single/h/a;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v4}, Lcom/duoku/platform/single/h/a/a;->n()I

    move-result v5

    iget-object v6, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-static {v6}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;)Lcom/duoku/platform/single/util/H;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "response data isn\'t nil and errcode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,requestTag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/a;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    if-nez v5, :cond_4

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/a;->b()I

    move-result v1

    invoke-interface {v0, v1, v4, v2}, Lcom/duoku/platform/single/h/h;->a(ILcom/duoku/platform/single/h/a/a;I)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/a;->b()I

    move-result v1

    invoke-virtual {v4}, Lcom/duoku/platform/single/h/a/a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v5, v4}, Lcom/duoku/platform/single/h/h;->a(IIILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/duoku/platform/single/h/f$a;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/h/k$a;->values()[Lcom/duoku/platform/single/h/k$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/duoku/platform/single/h/k$a;->f:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/duoku/platform/single/h/k$a;->e:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/duoku/platform/single/h/k$a;->d:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/duoku/platform/single/h/k$a;->c:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/duoku/platform/single/h/k$a;->b:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/duoku/platform/single/h/k$a;->a:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/duoku/platform/single/h/f$a;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private b(Lcom/duoku/platform/single/h/k;)V
    .locals 6

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->f()I

    move-result v2

    iget-object v0, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-static {v0, v2}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;I)Ljava/util/Map$Entry;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/h;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/single/h/a;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/a;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/duoku/platform/single/h/h;->a(IIILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;Lcom/duoku/platform/single/h/a;)V

    :cond_1
    return-void
.end method

.method private c(Lcom/duoku/platform/single/h/k;)V
    .locals 4

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->f()I

    move-result v1

    iget-object v0, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;I)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/h;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/duoku/platform/single/h/h$a;->d:Lcom/duoku/platform/single/h/h$a;

    invoke-interface {v0, v3, v1}, Lcom/duoku/platform/single/h/h;->a(Lcom/duoku/platform/single/h/h$a;I)V

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;Lcom/duoku/platform/single/h/a;)V

    :cond_1
    return-void
.end method

.method private d(Lcom/duoku/platform/single/h/k;)V
    .locals 6

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->f()I

    move-result v5

    iget-object v0, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-static {v0, v5}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;I)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/h;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->d()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->e()J

    move-result-wide v3

    invoke-interface/range {v0 .. v5}, Lcom/duoku/platform/single/h/h;->a(JJI)V

    :cond_0
    return-void
.end method

.method private e(Lcom/duoku/platform/single/h/k;)V
    .locals 4

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->f()I

    move-result v1

    iget-object v0, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;I)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/h;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/duoku/platform/single/h/h$a;->c:Lcom/duoku/platform/single/h/h$a;

    invoke-interface {v0, v3, v1}, Lcom/duoku/platform/single/h/h;->a(Lcom/duoku/platform/single/h/h$a;I)V

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;Lcom/duoku/platform/single/h/a;)V

    :cond_1
    return-void
.end method

.method private f(Lcom/duoku/platform/single/h/k;)V
    .locals 2

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/k;->f()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;I)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;Lcom/duoku/platform/single/h/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/duoku/platform/single/h/k;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/duoku/platform/single/h/k;

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/k;->c()Lcom/duoku/platform/single/h/k$a;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/h/f$a;->a:Lcom/duoku/platform/single/h/f;

    invoke-static {v2}, Lcom/duoku/platform/single/h/f;->a(Lcom/duoku/platform/single/h/f;)Lcom/duoku/platform/single/util/H;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "metmsgtype = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/h/f$a;->a()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/k$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/duoku/platform/single/h/f$a;->a(Lcom/duoku/platform/single/h/k;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/duoku/platform/single/h/f$a;->b(Lcom/duoku/platform/single/h/k;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/duoku/platform/single/h/f$a;->d(Lcom/duoku/platform/single/h/k;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/duoku/platform/single/h/f$a;->c(Lcom/duoku/platform/single/h/k;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/duoku/platform/single/h/f$a;->e(Lcom/duoku/platform/single/h/k;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v0}, Lcom/duoku/platform/single/h/f$a;->f(Lcom/duoku/platform/single/h/k;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
