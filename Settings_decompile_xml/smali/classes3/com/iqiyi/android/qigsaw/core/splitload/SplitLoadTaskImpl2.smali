.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTaskImpl2;
.super Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;
.source "SplitLoadTaskImpl2.java"


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

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)V

    return-void
.end method


# virtual methods
.method public createSplitLoader()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;
    .locals 1

    .line 51
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public loadCode(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 0
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

    .line 60
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->getSplitLoader()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;->loadCode2(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    .line 61
    const-class p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public unloadCode(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 67
    :try_start_0
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;->unLoad(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
