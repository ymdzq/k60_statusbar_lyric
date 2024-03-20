.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;
.super Ljava/lang/Object;
.source "SplitLoadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler$OnSplitLoadFinishListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitLoadHandler"


# instance fields
.field private final activator:Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;

.field private final infoManager:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

.field private final loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

.field private final mainHandler:Landroid/os/Handler;

.field private final mapper:Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapper;

.field private final splitFileIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final splitLoader:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;",
            "Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->splitLoader:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;

    .line 76
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    .line 77
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->splitFileIntents:Ljava/util/List;

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->mainHandler:Landroid/os/Handler;

    .line 79
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->infoManager:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    .line 80
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->activator:Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;

    .line 81
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapperImpl;

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapperImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->mapper:Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapper;

    return-void
.end method

.method private activateSplit(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    const-string v0, "SplitLoadHandler"

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->splitLoader:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;

    invoke-interface {v1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;->loadResources(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to load %s resources"

    .line 192
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, v1, v2, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->activator:Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;

    invoke-virtual {p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->attachSplitApplication(Landroid/app/Application;)V
    :try_end_1
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_1 .. :try_end_1} :catch_3

    .line 203
    :try_start_2
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->activator:Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;

    invoke-virtual {p2, p4, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->createAndActivateSplitContentProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_2 .. :try_end_2} :catch_2

    .line 210
    :try_start_3
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->activator:Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;

    invoke-virtual {p0, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->invokeOnCreateForSplitApplication(Landroid/app/Application;)V
    :try_end_3
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p0

    const-string p2, "Failed to invoke onCreate for %s application"

    .line 212
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    throw p0

    :catch_2
    move-exception p0

    const-string p2, "Failed to create %s content-provider "

    .line 205
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    throw p0

    :catch_3
    move-exception p0

    const-string p2, "Failed to attach %s application"

    .line 198
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    throw p0
.end method

.method private checkSplitLoaded(Ljava/lang/String;)Z
    .locals 1

    .line 218
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getLoadedSplits()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;

    .line 219
    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private loadSplits(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler$OnSplitLoadFinishListener;)V
    .locals 21

    move-object/from16 v1, p0

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 96
    new-instance v7, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->splitFileIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    iget-object v0, v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->splitFileIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string/jumbo v11, "splitName"

    .line 100
    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 101
    iget-object v12, v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->infoManager:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-interface {v12, v13, v11}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    move-result-object v15

    const-string v14, "SplitLoadHandler"

    if-nez v15, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    if-nez v11, :cond_0

    const-string v11, "null"

    :cond_0
    aput-object v11, v0, v5

    const-string v9, "Unable to get info for %s, just skip!"

    .line 103
    invoke-static {v14, v9, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_1
    new-instance v13, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    invoke-virtual {v15}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitVersion()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v8

    invoke-virtual {v15}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isBuiltIn()Z

    move-result v8

    invoke-direct {v13, v12, v5, v8}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    invoke-direct {v1, v11}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->checkSplitLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v0, "Split %s has been loaded!"

    .line 109
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v0, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v8, v18

    :goto_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const-string v5, "apk"

    .line 112
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, " is missing!"

    const/16 v12, -0x64

    if-nez v5, :cond_3

    const-string v0, "Failed to read split %s apk path"

    .line 114
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v0, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    new-instance v5, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "split apk path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v13, v12, v5}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v12, "dex-opt-dir"

    .line 118
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 120
    invoke-virtual {v15}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->hasDex()Z

    move-result v17

    if-eqz v17, :cond_4

    if-nez v12, :cond_4

    const-string v0, "Failed to %s get dex-opt-dir"

    .line 121
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v0, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    new-instance v5, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dex-opt-dir of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v8, -0x64

    invoke-direct {v0, v13, v8, v5}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-wide/from16 v19, v2

    const-string v2, "native-lib-dir"

    .line 126
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getPrimaryLibData(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;

    move-result-object v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    const-string v0, "Failed to get %s native-lib-dir"

    .line 130
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v14, v0, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "native-lib-dir of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v3, -0x64

    invoke-direct {v0, v13, v3, v2}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v8, v18

    move-wide/from16 v2, v19

    goto/16 :goto_2

    :cond_5
    const-string v3, "added-dex"

    .line 139
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v3, "split name: %s, origin native path: %s"

    .line 143
    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v14, v3, v8}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v3, v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->mapper:Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapper;

    invoke-interface {v3, v11, v2}, Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapper;->map(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "split name: %s, mapped native path: %s"

    .line 145
    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v14, v3, v8}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :try_start_1
    iget-object v3, v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->splitLoader:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;

    if-nez v12, :cond_6

    const/4 v8, 0x0

    goto :goto_3

    .line 149
    :cond_6
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3
    if-nez v2, :cond_7

    const/16 v16, 0x0

    goto :goto_4

    .line 150
    :cond_7
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v12

    .line 151
    :goto_4
    invoke-virtual {v15}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getDependencies()Ljava/util/List;

    move-result-object v17
    :try_end_1
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v12, v3

    move-object v2, v13

    move-object v13, v11

    move-object v3, v14

    move-object v14, v0

    move-object v0, v15

    move-object v15, v8

    .line 148
    :try_start_2
    invoke-interface/range {v12 .. v17}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;->loadCode(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v8
    :try_end_2
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_2 .. :try_end_2} :catch_2

    .line 161
    :try_start_3
    iget-object v12, v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->activator:Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;

    invoke-virtual {v12, v8, v11}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->createSplitApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v12
    :try_end_3
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_3 .. :try_end_3} :catch_1

    .line 169
    :try_start_4
    invoke-direct {v1, v11, v5, v12, v8}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->activateSplit(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException; {:try_start_4 .. :try_end_4} :catch_0

    .line 175
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v0

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-nez v0, :cond_8

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set last modified time for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v3, v0, v8}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    .line 179
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-virtual {v2, v13, v14}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->setTimeCost(J)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;

    invoke-direct {v0, v11, v5}, Lcom/iqiyi/android/qigsaw/core/splitload/Split;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catch_0
    move-exception v0

    const/4 v12, 0x0

    move-object v3, v0

    .line 171
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;->getErrorCode()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v2, v5, v3}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->splitLoader:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;

    invoke-interface {v0, v8}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;->unloadCode(Ljava/lang/ClassLoader;)V

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    const-string v5, "Failed to create %s application "

    .line 163
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v3, v0, v5, v9}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    new-instance v3, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;->getErrorCode()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v3, v2, v5, v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->splitLoader:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;

    invoke-interface {v0, v8}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;->unloadCode(Ljava/lang/ClassLoader;)V

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v13

    move-object v3, v14

    :goto_6
    const/4 v12, 0x0

    const-string v5, "Failed to load split %s code!"

    .line 154
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v0, v5, v8}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v3, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;->getErrorCode()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v3, v2, v5, v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v2, v13

    const/4 v12, 0x0

    .line 135
    new-instance v3, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    const/16 v5, -0x64

    invoke-direct {v3, v2, v5, v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    move v5, v12

    move-object/from16 v8, v18

    move-wide/from16 v2, v19

    goto/16 :goto_0

    :cond_9
    move-wide/from16 v19, v2

    .line 182
    iget-object v0, v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    invoke-virtual {v0, v4}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->putSplits(Ljava/util/Collection;)V

    if-eqz p1, :cond_a

    .line 184
    iget-object v0, v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    iget-object v8, v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v9, v0, v19

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v10}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler$OnSplitLoadFinishListener;->onLoadFinish(Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V

    :cond_a
    return-void
.end method


# virtual methods
.method final getContext()Landroid/content/Context;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->loadManager:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method getMainHandler()Landroid/os/Handler;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method final loadSplitsSync(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler$OnSplitLoadFinishListener;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->loadSplits(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler$OnSplitLoadFinishListener;)V

    return-void
.end method
