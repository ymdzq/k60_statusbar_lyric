.class public abstract Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;
.super Ljava/lang/Object;
.source "SplitLoadManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SplitLoadManager"


# instance fields
.field private final context:Landroid/content/Context;

.field final currentProcessName:Ljava/lang/String;

.field private final loadedSplits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iqiyi/android/qigsaw/core/splitload/Split;",
            ">;"
        }
    .end annotation
.end field

.field private final splitLoadMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    .line 64
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->context:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    .line 66
    iput p3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->splitLoadMode:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public abstract createSplitLoadTask(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method getLoadedSplitApkPaths()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 126
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitload/Split;

    .line 127
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitApkPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v1, v1, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitApkPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, v1, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitApkPath:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SplitLoadManager"

    const-string v3, "Split has been loaded, but its file %s is not exist!"

    invoke-static {v2, v3, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLoadedSplitNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 109
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitload/Split;

    .line 110
    iget-object v1, v1, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method final getLoadedSplits()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/iqiyi/android/qigsaw/core/splitload/Split;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    return-object p0
.end method

.method public abstract getResources(Landroid/content/res/Resources;)V
.end method

.method public abstract injectPathClassloader()V
.end method

.method public abstract loadInstalledSplits()V
.end method

.method public abstract preloadInstalledSplits(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method final putSplits(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitload/Split;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method splitLoadMode()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->splitLoadMode:I

    return p0
.end method
