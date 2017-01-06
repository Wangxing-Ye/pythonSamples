.class public Lorg/cocos2d/Cocos2D;
.super Landroid/app/ListActivity;
.source "Cocos2D.java"


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lorg/cocos2d/Cocos2D$1;

    invoke-direct {v0}, Lorg/cocos2d/Cocos2D$1;-><init>()V

    sput-object v0, Lorg/cocos2d/Cocos2D;->sDisplayNameComparator:Ljava/util/Comparator;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected activityIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, "result":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    return-object v0
.end method

.method protected addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "intent"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method protected browserIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, "result":Landroid/content/Intent;
    const-class v1, Lorg/cocos2d/Cocos2D;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    const-string v1, "org.cocos2d.tests.Path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    return-object v0
.end method

.method protected getData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v7, "myData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    .local v6, "mainIntent":Landroid/content/Intent;
    const-string v10, "android.intent.category.TEST"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0}, Lorg/cocos2d/Cocos2D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 56
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 58
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v5, :cond_0

    .line 85
    :goto_0
    return-object v7

    .line 68
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 73
    .local v4, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_1

    .line 84
    sget-object v10, Lorg/cocos2d/Cocos2D;->sDisplayNameComparator:Ljava/util/Comparator;

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 75
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 76
    .local v0, "activityName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 77
    :cond_2
    const-string v10, "\\."

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "labelPath":[Ljava/lang/String;
    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    aget-object v8, v3, v10

    .line 80
    .local v8, "nextLabel":Ljava/lang/String;
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 81
    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v10, v11}, Lorg/cocos2d/Cocos2D;->activityIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v7, v8, v10}, Lorg/cocos2d/Cocos2D;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V

    .line 73
    .end local v3    # "labelPath":[Ljava/lang/String;
    .end local v8    # "nextLabel":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 40
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 42
    const-string v1, "org.cocos2d.tests"

    invoke-virtual {p0, v1}, Lorg/cocos2d/Cocos2D;->getData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 43
    const v3, 0x1090003

    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v7

    .line 44
    new-array v5, v6, [I

    const v1, 0x1020014

    aput v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 41
    invoke-virtual {p0, v0}, Lorg/cocos2d/Cocos2D;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    invoke-virtual {p0}, Lorg/cocos2d/Cocos2D;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 46
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 119
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 120
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v2, "intent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/cocos2d/Cocos2D;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method
