.class public Lcom/cmcc/security/nativeC;
.super Ljava/lang/Object;
.source "k"


# static fields
.field protected static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 156
    const/4 v1, 0x0

    sput-boolean v1, Lcom/cmcc/security/nativeC;->h:Z

    .line 188
    :try_start_0
    const-string v1, "-%-+\u0011 /2+"

    invoke-static {v1}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x1

    sput-boolean v1, Lcom/cmcc/security/nativeC;->h:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .local v0, "a":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 55
    .end local v0    # "a":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 208
    .restart local v0    # "a":Ljava/lang/Throwable;
    const-string v1, " ):!8-\r"

    invoke-static {v1}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\"\'/,\u0002!,:/:7h()\'$+,bh- ++%h7\';:n)<+&!:--<;:+h:1>-`"

    invoke-static {v2}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native DecryptDex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected static native RMMyReflector(Ljava/lang/String;Ljava/lang/String;)I
.end method
