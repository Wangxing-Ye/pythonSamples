.class public Lcom/sns/game/util/CCGameLog;
.super Ljava/lang/Object;
.source "CCGameLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final CCERRPRINTLN(Ljava/lang/String;)V
    .locals 0
    .param p0, "logStr"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method

.method public static final CCERRPRINTLN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logName"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 58
    return-void
.end method

.method public static final CCLOG(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logName"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 13
    return-void
.end method

.method public static final CCLOGERROR(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logName"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method

.method public static final CCLOGINFO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logName"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 19
    return-void
.end method

.method public static final CCLOGWARN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logName"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method public static final CCOUTPRINTLN(Ljava/lang/String;)V
    .locals 0
    .param p0, "logStr"    # Ljava/lang/String;

    .prologue
    .line 38
    return-void
.end method

.method public static final CCOUTPRINTLN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logName"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method public static final printStackTrace(Ljava/lang/Exception;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 71
    return-void
.end method

.method public static final printStackTrace(Ljava/lang/Exception;Z)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "debug"    # Z

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :cond_0
    return-void
.end method
