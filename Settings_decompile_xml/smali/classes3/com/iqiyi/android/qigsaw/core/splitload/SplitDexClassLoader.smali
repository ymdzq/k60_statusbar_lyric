.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;
.super Ldalvik/system/BaseDexClassLoader;
.source "SplitDexClassLoader.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitDexClassLoader"


# instance fields
.field private dependenciesLoaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final moduleName:Ljava/lang/String;

.field private valid:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/lang/String;Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p3, p4, p6}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 59
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->moduleName:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getValidClassLoaders(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->dependenciesLoaders:Ljava/util/Set;

    .line 61
    invoke-static {p0, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitUnKnownFileTypeDexLoader;->loadDex(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method static create(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    new-instance v9, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v6, p3

    const-class p3, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    .line 76
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/lang/String;Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SplitDexClassLoader"

    const-string p2, "Cost %d ms to load %s code"

    invoke-static {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v9
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-super {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->dependenciesLoaders:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->dependenciesLoaders:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    .line 90
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->loadClassItself(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 92
    :catch_1
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->moduleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SplitDexClassLoader"

    const-string v3, "SplitDexClassLoader: Class %s is not found in %s ClassLoader"

    invoke-static {v2, v3, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_0
    throw v0
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 114
    invoke-super {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->dependenciesLoaders:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 117
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    .line 118
    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    if-nez v0, :cond_2

    .line 126
    invoke-virtual {p0}, Ldalvik/system/BaseDexClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    instance-of v1, v1, Ldalvik/system/BaseDexClassLoader;

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {p0}, Ldalvik/system/BaseDexClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    check-cast p0, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method findLibraryItself(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 174
    invoke-super {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 151
    invoke-super {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_1

    .line 153
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->dependenciesLoaders:Ljava/util/Set;

    if-eqz p0, :cond_1

    .line 154
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    .line 155
    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->findResourceItself(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    return-object v0
.end method

.method findResourceItself(Ljava/lang/String;)Ljava/net/URL;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->dependenciesLoaders:Ljava/util/Set;

    if-eqz p0, :cond_1

    .line 138
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    .line 139
    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->findResourcesItself(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    return-object v0
.end method

.method findResourcesItself(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-super {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method isValid()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->valid:Z

    return p0
.end method

.method loadClassItself(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 182
    :cond_0
    invoke-super {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method moduleName()Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method setValid(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->valid:Z

    return-void
.end method
