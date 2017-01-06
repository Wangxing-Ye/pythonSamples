.class public Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;
.super Ljava/lang/Object;
.source "SharedPreferencesHelper.java"


# static fields
.field private static final SHAREDPREFERENCESNAME:Ljava/lang/String;


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;->SHAREDPREFERENCESNAME:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x55t
        0x4dt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;->_context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public getSharedPreferences(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "Key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 34
    :try_start_0
    iget-object v3, p0, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;->_context:Landroid/content/Context;

    sget-object v4, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;->SHAREDPREFERENCESNAME:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    .local v1, "sp":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 39
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-object v2

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "Key"    # Ljava/lang/String;
    .param p2, "Value"    # Ljava/lang/String;

    .prologue
    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;->_context:Landroid/content/Context;

    sget-object v4, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;->SHAREDPREFERENCESNAME:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 23
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 24
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
