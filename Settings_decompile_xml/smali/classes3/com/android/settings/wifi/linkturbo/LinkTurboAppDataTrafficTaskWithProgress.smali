.class public Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;
.super Landroid/os/AsyncTask;
.source "LinkTurboAppDataTrafficTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mWeakRefLinkTurboClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/wifi/linkturbo/LinkTurboClient;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 80
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/linkturbo/LinkTurboUtils;->getTimesmorning()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 81
    invoke-static {}, Lcom/android/settings/wifi/linkturbo/LinkTurboUtils;->getTimesMonthmorning()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "time is thisDay --"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " --thisMonth- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " --thisTime- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LinkTurboAppDataTrafficTaskWithProgress"

    invoke-static {v3, v1}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, v0, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    if-nez v1, :cond_1

    return-object v2

    .line 90
    :cond_1
    iget-object v4, v0, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;->mWeakRefLinkTurboClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;

    if-nez v12, :cond_2

    return-object v2

    .line 95
    :cond_2
    invoke-virtual {v12}, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;->checkServiceIsConnected()V

    .line 98
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.LAUNCHER"

    .line 99
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 103
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 106
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 107
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 115
    new-instance v11, Ljava/util/HashSet;

    invoke-virtual {v12}, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;->getLinkTurboDefaultPn()Ljava/util/List;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 116
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "defaultPkg is empty filter invalid"

    .line 117
    invoke-static {v3, v5}, Lmiuix/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v2

    .line 124
    :cond_4
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_5

    goto :goto_0

    .line 128
    :cond_5
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 129
    invoke-virtual {v11, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    .line 133
    :cond_6
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 134
    invoke-static {v1, v10, v8}, Lcom/android/settings/wifi/linkturbo/LinkTurboUtils;->getUid(Landroid/content/Context;ILjava/lang/String;)I

    move-result v9

    .line 146
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v14, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 147
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0x2710

    if-lt v9, v5, :cond_7

    .line 148
    invoke-static {v1, v8}, Lcom/android/settings/wifi/linkturbo/LinkTurboUtils;->hasInternetAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the app is  uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WifiLinkTurboSettings"

    invoke-static {v6, v5}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v12, v9}, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;->getLinkTurboAppDayTraffic(I)J

    move-result-wide v16

    .line 151
    invoke-virtual {v12, v9}, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;->getLinkTurboAppMonthTraffic(I)J

    move-result-wide v18

    .line 152
    invoke-virtual {v12, v9}, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;->isUidInLinkTurboWhiteList(I)Z

    move-result v7

    .line 153
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v1

    move v6, v9

    move-object v2, v8

    move/from16 v20, v9

    move-wide/from16 v8, v16

    move/from16 v16, v10

    move-object/from16 v17, v11

    move-wide/from16 v10, v18

    invoke-virtual/range {v4 .. v11}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->getAppItem(Landroid/content/pm/ApplicationInfo;IZJJ)Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;

    move-result-object v4

    .line 155
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move/from16 v16, v10

    move-object/from16 v17, v11

    :goto_1
    move/from16 v10, v16

    move-object/from16 v11, v17

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    return-object v13
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;->mWeakRefLinkTurboClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;

    if-nez v1, :cond_1

    return-void

    .line 58
    :cond_1
    new-instance v1, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress$1;-><init>(Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->setAllApps(Ljava/util/List;)V

    .line 71
    iget-object p0, v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mAdapter:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->setItems(Ljava/util/List;)V

    return-void
.end method

.method public setContext(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)V
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;->mWeakSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setLinkTurboClient(Lcom/android/settings/wifi/linkturbo/LinkTurboClient;)V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;->mWeakRefLinkTurboClient:Ljava/lang/ref/WeakReference;

    return-void
.end method
