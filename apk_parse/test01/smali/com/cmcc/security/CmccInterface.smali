.class public Lcom/cmcc/security/CmccInterface;
.super Ljava/lang/Object;
.source "l"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CmccInterface"

.field private static cl:Ldalvik/system/DexClassLoader; = null

.field private static lock:Ljava/lang/Object; = null

.field private static lock2:Ljava/lang/Object; = null

.field private static rmFlag:Z = false

.field protected static final sdkName:Ljava/lang/String; = "test.jar"

.field protected static unzipFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmcc/security/CmccInterface;->lock:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmcc/security/CmccInterface;->lock2:Ljava/lang/Object;

    .line 111
    sput-boolean v1, Lcom/cmcc/security/CmccInterface;->unzipFlag:Z

    .line 11
    sput-boolean v1, Lcom/cmcc/security/CmccInterface;->rmFlag:Z

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 98
    if-nez p0, :cond_0

    .line 214
    const-string v6, "CmccInterface"

    const-string v7, "+!&:-6<n!=h =\"$`"

    invoke-static {v7}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-object v5

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 196
    :cond_1
    const-string v6, "CmccInterface"

    const-string v7, "+\")=; )#-n!=h =\"$`"

    invoke-static {v7}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "a":Ljava/lang/String;
    invoke-static {p0}, Lcom/cmcc/security/CmccInterface;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .end local v0    # "a":Ljava/lang/String;
    .local v1, "a":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "a"

    invoke-static {v6}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    .end local v1    # "a":Ljava/lang/String;
    .restart local v0    # "a":Ljava/lang/String;
    const-string v5, "\u000b\u0003\u000b\r\u0017>)-#//+&/%+"

    invoke-static {v5}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "a,/</g*):)a"

    invoke-static {v7}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 174
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 56
    const-string v6, ">:!++;=\u000e\'$+"

    invoke-static {v6}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    .line 173
    .end local v0    # "a":Ljava/lang/String;
    .restart local v1    # "a":Ljava/lang/String;
    sget-object v6, Lcom/cmcc/security/CmccInterface;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 102
    :try_start_0
    sget-boolean v5, Lcom/cmcc/security/CmccInterface;->unzipFlag:Z

    if-nez v5, :cond_4

    .line 209
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 88
    .local v2, "a":I
    invoke-static {v1, v0}, Lcom/cmcc/security/s;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v1    # "a":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "a":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "a,/</g*):)a"

    invoke-static {v7}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "test.jar"

    invoke-direct {v2, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v2, "a":Ljava/io/File;
    const-string v5, "\';<*-6"

    invoke-static {v5}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 41
    .end local v2    # "a":Ljava/io/File;
    .local v3, "a":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 194
    check-cast v5, Ldalvik/system/PathClassLoader;

    .line 189
    const-string v7, "-%-+\u0011 /2+"

    invoke-static {v7}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    const/4 v7, 0x0

    .line 78
    const/16 v8, 0x2f

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 108
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "a":Ljava/lang/String;
    new-instance v5, Ldalvik/system/DexClassLoader;

    .end local v3    # "a":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 169
    invoke-direct {v5, v7, v8, v4, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v5, Lcom/cmcc/security/CmccInterface;->cl:Ldalvik/system/DexClassLoader;

    .line 173
    .end local v4    # "a":Ljava/lang/String;
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    const/4 v2, 0x0

    .line 27
    .local v2, "a":Ljava/lang/Class;
    :try_start_1
    sget-object v5, Lcom/cmcc/security/CmccInterface;->cl:Ldalvik/system/DexClassLoader;

    invoke-virtual {v5, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    move-object v5, v2

    .line 123
    .end local v2    # "a":Ljava/lang/Class;
    :goto_1
    sget-object v2, Lcom/cmcc/security/CmccInterface;->lock2:Ljava/lang/Object;

    .local v2, "a":Ljava/lang/Exception;
    monitor-enter v2

    .line 9
    :try_start_2
    sget-boolean v6, Lcom/cmcc/security/CmccInterface;->rmFlag:Z

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/cmcc/security/nativeC;->h:Z

    if-eqz v6, :cond_5

    .line 47
    invoke-static {v0, v1}, Lcom/cmcc/security/nativeC;->RMMyReflector(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "a":I
    if-nez v0, :cond_5

    .line 198
    .end local v2    # "a":Ljava/lang/Exception;
    const/4 v6, 0x1

    sput-boolean v6, Lcom/cmcc/security/CmccInterface;->rmFlag:Z

    .line 123
    .end local v0    # "a":I
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 173
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 95
    .local v2, "a":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 8
    .local v3, "a":Ljava/lang/Exception;
    const-string v5, "CmccInterface"

    .end local v2    # "a":Ljava/lang/Class;
    const-string v6, "-$/;=h\';n&!<n.!= ,`"

    invoke-static {v6}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v2

    goto :goto_1
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 151
    .local v0, "a":I
    const-string v2, ")-<\'>\'<7"

    invoke-static {v2}, Lcom/cmcc/security/m;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Landroid/app/ActivityManager;

    .line 181
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 117
    .end local v0    # "a":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const/4 v2, 0x0

    .line 137
    :goto_1
    return-object v2

    .line 181
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 121
    .local v1, "a":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_1

    .line 137
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 117
    goto :goto_0
.end method
