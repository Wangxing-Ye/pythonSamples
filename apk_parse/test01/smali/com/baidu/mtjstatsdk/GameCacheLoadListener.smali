.class public interface abstract Lcom/baidu/mtjstatsdk/GameCacheLoadListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clearDataCoreHashWithAPPKey(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract getBDGameAccountHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCacheLog(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;
.end method

.method public abstract readLogFromFileDataCoreHash(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V
.end method
