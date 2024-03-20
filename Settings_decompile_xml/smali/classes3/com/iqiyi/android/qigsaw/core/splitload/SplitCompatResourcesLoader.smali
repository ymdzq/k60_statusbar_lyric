.class public Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;
.super Ljava/lang/Object;
.source "SplitCompatResourcesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$V21;,
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$V14;,
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;,
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$DefaultSplitResourcesLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitCompatResourcesLoader"

.field private static final resourcesLoader:Lcom/iqiyi/android/qigsaw/core/splitload/compat/SplitResourcesLoader;

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsLock()Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcheckOrUpdateResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->checkOrUpdateResources(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetLoadedResourcesDirs(Landroid/content/res/AssetManager;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->getLoadedResourcesDirs(Landroid/content/res/AssetManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sminstallSplitResDirs(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->installSplitResDirs(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->sLock:Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->getSplitResourcesLoader()Lcom/iqiyi/android/qigsaw/core/splitload/compat/SplitResourcesLoader;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->resourcesLoader:Lcom/iqiyi/android/qigsaw/core/splitload/compat/SplitResourcesLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOrUpdateResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesException;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->getLoadedResourcesDirs(Landroid/content/res/AssetManager;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->getLoadedSplitPaths()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 98
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    :try_start_1
    invoke-static {p0, p1, v2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->installSplitResDirs(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 109
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install resources "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 95
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get all loaded split resources for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getLoadedResourcesDirs(Landroid/content/res/AssetManager;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getGetApkAssetsMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 159
    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 160
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getGetAssetPathMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 161
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getLoadedSplitPaths()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getLoadedSplitApkPaths()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSplitResourcesLoader()Lcom/iqiyi/android/qigsaw/core/splitload/compat/SplitResourcesLoader;
    .locals 2

    .line 585
    const-class v0, Lcom/iqiyi/android/qigsaw/core/splitload/compat/SplitResourcesLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/compat/SplitResourcesLoader;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$DefaultSplitResourcesLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$DefaultSplitResourcesLoader;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$DefaultSplitResourcesLoader-IA;)V

    :goto_0
    return-object v0
.end method

.method private static installSplitResDirs(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 125
    invoke-static {p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$V21;->-$$Nest$sminstallSplitResDirs(Landroid/content/res/Resources;Ljava/util/List;)V

    return-void
.end method

.method public static loadResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->resourcesLoader:Lcom/iqiyi/android/qigsaw/core/splitload/compat/SplitResourcesLoader;

    invoke-interface {v0, p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/compat/SplitResourcesLoader;->loadResources(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method static loadResources(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->resourcesLoader:Lcom/iqiyi/android/qigsaw/core/splitload/compat/SplitResourcesLoader;

    invoke-interface {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/compat/SplitResourcesLoader;->loadResources(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)V

    return-void
.end method
