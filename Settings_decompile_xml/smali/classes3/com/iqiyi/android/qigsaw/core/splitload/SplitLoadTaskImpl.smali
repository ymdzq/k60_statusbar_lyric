.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTaskImpl;
.super Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;
.source "SplitLoadTaskImpl.java"


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)V

    return-void
.end method


# virtual methods
.method public createSplitLoader()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;
    .locals 1

    .line 47
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl;

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public loadCode(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 7
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
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getClassLoader(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->getSplitLoader()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;->loadCode(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    move-result-object v0

    const/4 p0, 0x1

    .line 59
    invoke-virtual {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->setValid(Z)V

    .line 60
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->addClassLoader(Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;)V

    :cond_0
    return-object v0
.end method

.method public unloadCode(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 67
    instance-of p0, p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    if-eqz p0, :cond_0

    .line 68
    check-cast p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->setValid(Z)V

    :cond_0
    return-void
.end method
