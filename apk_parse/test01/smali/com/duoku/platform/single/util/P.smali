.class public Lcom/duoku/platform/single/util/P;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "dk_remember_login_state"

.field public static final b:Ljava/lang/String; = "dk_bind_phone_verifycode"

.field public static final c:Ljava/lang/String; = "dk_bind_phone_verifycode_last_accesstime"

.field public static final d:Ljava/lang/String; = "dk_bind_phone_verifycode_phone_number"

.field public static final e:Ljava/lang/String; = "dk_modify_phone_verifycode_for_pre_phone"

.field public static final f:Ljava/lang/String; = "dk_modify_phone_verifycode_for_pre_phone_phone_number"

.field public static final g:Ljava/lang/String; = "dk_modify_phone_verifycode_for_pre_phone_last_accesstime"

.field public static final h:Ljava/lang/String; = "dk_modify_phone_verifycode_for_new_phone"

.field public static final i:Ljava/lang/String; = "dk_modify_phone_verifycode_for_new_phone_last_accesstime"

.field public static final j:Ljava/lang/String; = "dk_modify_phone_verifycode_for_new_phone_phone_number"

.field private static k:Lcom/duoku/platform/single/util/P; = null

.field private static final n:Ljava/lang/String; = "com_dk_shared_preferences"


# instance fields
.field private final l:I

.field private final m:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/duoku/platform/single/util/P;->l:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;
    .locals 2

    sget-object v0, Lcom/duoku/platform/single/util/P;->k:Lcom/duoku/platform/single/util/P;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/util/P;

    const-string v1, "com_dk_shared_preferences"

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/single/util/P;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/duoku/platform/single/util/P;->k:Lcom/duoku/platform/single/util/P;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/util/P;->k:Lcom/duoku/platform/single/util/P;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Lcom/duoku/platform/single/util/C;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/duoku/platform/single/util/C;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/single/util/C;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/duoku/platform/single/util/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/duoku/platform/single/util/C;Lcom/duoku/platform/single/util/D;)Z
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/util/D;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/single/util/D;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/duoku/platform/single/util/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/duoku/platform/single/util/C;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/util/P;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
