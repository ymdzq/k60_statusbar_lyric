.class public final Lcom/android/systemui/shared/plugins/PluginManagerImpl;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/PluginManager;


# instance fields
.field public final mActionManagerFactory:Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

.field public final mContext:Landroid/content/Context;

.field public final mIsDebuggable:Z

.field public mListening:Z

.field public final mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

.field public final mPluginMap:Landroid/util/ArrayMap;

.field public final mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

.field public final mPrivilegedPlugins:Landroid/util/ArraySet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;ZLcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Lcom/android/systemui/shared/plugins/PluginPrefs;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    new-instance v0, Landroid/util/ArraySet;

    .line 17
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPrivilegedPlugins:Landroid/util/ArraySet;

    .line 22
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mActionManagerFactory:Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

    .line 26
    iput-boolean p3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mIsDebuggable:Z

    .line 28
    invoke-virtual {v0, p7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 30
    iput-object p6, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

    .line 33
    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 35
    new-instance p1, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginExceptionHandler;

    .line 37
    invoke-direct {p1, p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/shared/plugins/PluginManagerImpl;)V

    .line 39
    invoke-virtual {p4, p1}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->registerHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 42
    return-void
    .line 45
.end method


# virtual methods
.method public final addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public final addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 1

    .line 2
    invoke-static {p2}, Lcom/android/systemui/plugins/PluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public final addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public final addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 22

    move-object/from16 v7, p0

    .line 4
    iget-object v1, v7, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/shared/plugins/PluginPrefs;->mPluginActions:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v1, Lcom/android/systemui/shared/plugins/PluginPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "actions"

    iget-object v4, v1, Lcom/android/systemui/shared/plugins/PluginPrefs;->mPluginActions:Ljava/util/Set;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :cond_0
    monitor-exit v1

    .line 9
    iget-object v0, v7, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mActionManagerFactory:Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

    .line 10
    iget-boolean v1, v7, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mIsDebuggable:Z

    .line 11
    new-instance v3, Lcom/android/systemui/shared/plugins/PluginActionManager;

    .line 12
    iget-object v9, v0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mContext:Landroid/content/Context;

    .line 13
    iget-object v10, v0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v15, v0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, v0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v6, v0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    iget-object v14, v0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mPrivilegedPlugins:Ljava/util/List;

    iget-object v0, v0, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;->mPluginInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    move-object v8, v3

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object v2, v14

    move/from16 v14, p4

    move-object/from16 v16, v4

    move/from16 v17, v1

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v2

    move-object/from16 v21, v0

    invoke-direct/range {v8 .. v21}, Lcom/android/systemui/shared/plugins/PluginActionManager;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZLandroid/app/NotificationManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Ljava/util/List;Lcom/android/systemui/shared/plugins/PluginInstance$Factory;)V

    .line 14
    new-instance v0, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;I)V

    iget-object v2, v3, Lcom/android/systemui/shared/plugins/PluginActionManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    monitor-enter p0

    .line 16
    :try_start_1
    iget-object v0, v7, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    iget-boolean v0, v7, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    iput-boolean v1, v7, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    .line 20
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 21
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 22
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 23
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    .line 24
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 25
    iget-object v1, v7, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.PLUGIN_CHANGED"

    .line 26
    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.action.DISABLE_PLUGIN"

    .line 27
    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 29
    iget-object v1, v7, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const-string v4, "com.android.systemui.permission.PLUGIN"

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v1, v7, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 32
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 33
    monitor-exit v1

    throw v0
.end method

.method public final dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 7
    move-result v2

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/systemui/shared/plugins/PluginActionManager;

    .line 19
    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/shared/plugins/PluginActionManager;->dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    monitor-exit p0

    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return v0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
    .line 37
.end method

.method public final getPrivilegedPlugins()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPrivilegedPlugins:Landroid/util/ArraySet;

    .line 2
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, [Ljava/lang/String;

    .line 11
    return-object p0
    .line 13
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 18
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 35
    check-cast p2, Lcom/android/systemui/shared/plugins/PluginActionManager;

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    new-instance v1, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda2;

    .line 41
    invoke-direct {v1, p2, v0}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;I)V

    .line 43
    iget-object p2, p2, Lcom/android/systemui/shared/plugins/PluginActionManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 46
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    monitor-exit p0

    .line 52
    goto/16 :goto_8

    .line 53
    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p1

    .line 57
    :cond_1
    const-string p1, "com.android.systemui.action.DISABLE_PLUGIN"

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result p1

    .line 67
    const/4 v1, 0x2

    .line 68
    const/4 v2, 0x1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 72
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 79
    const/16 p2, 0xa

    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 85
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 86
    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPrivilegedPlugins:Landroid/util/ArraySet;

    .line 90
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object p2

    .line 95
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v3

    .line 99
    if-eqz v3, :cond_4

    .line 100
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v3

    .line 105
    check-cast v3, Ljava/lang/String;

    .line 106
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 108
    move-result-object v4

    .line 111
    if-eqz v4, :cond_3

    .line 112
    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v3

    .line 117
    if-eqz v3, :cond_2

    .line 118
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 121
    move-result-object v4

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v3

    .line 128
    if-eqz v3, :cond_2

    .line 129
    :goto_1
    move v0, v2

    .line 131
    :cond_4
    if-eqz v0, :cond_5

    .line 132
    return-void

    .line 134
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 135
    invoke-interface {p2, p1, v1}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    .line 137
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 140
    const-class p2, Landroid/app/NotificationManager;

    .line 142
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    move-result-object p0

    .line 147
    check-cast p0, Landroid/app/NotificationManager;

    .line 148
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 153
    const/4 p2, 0x6

    .line 154
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 155
    goto/16 :goto_8

    .line 158
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 160
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 167
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 168
    move-result-object v3

    .line 171
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 174
    move-result-object v4

    .line 177
    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 178
    move-result-object v4

    .line 181
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 182
    move-result v5

    .line 185
    if-nez v5, :cond_7

    .line 186
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 188
    move-result v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    if-eqz v4, :cond_8

    .line 192
    :cond_7
    move v4, v2

    .line 194
    goto :goto_2

    .line 195
    :catch_0
    :cond_8
    move v4, v0

    .line 196
    :goto_2
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 199
    move-result-object v6

    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v5

    .line 206
    if-nez v5, :cond_a

    .line 207
    sget-object v5, Lcom/android/systemui/shared/plugins/PluginInstance;->sClassLoaders:Ljava/util/Map;

    .line 209
    check-cast v5, Landroid/util/ArrayMap;

    .line 211
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-result-object v5

    .line 216
    if-eqz v5, :cond_9

    .line 217
    move v5, v2

    .line 219
    goto :goto_3

    .line 220
    :cond_9
    move v5, v0

    .line 221
    :goto_3
    if-eqz v5, :cond_a

    .line 222
    sget-boolean v5, Landroid/os/Build;->IS_ENG:Z

    .line 224
    if-eqz v5, :cond_a

    .line 226
    iget-object v5, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    .line 230
    const-string v7, "Reloading "

    .line 232
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v6

    .line 243
    invoke-static {v5, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 244
    move-result-object v5

    .line 247
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 248
    :cond_a
    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    .line 251
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 253
    move-result-object v6

    .line 256
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    move-result v5

    .line 260
    if-eqz v5, :cond_c

    .line 261
    if-eqz v3, :cond_c

    .line 263
    iget-object v5, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 265
    invoke-interface {v5, v3}, Lcom/android/systemui/shared/plugins/PluginEnabler;->getDisableReason(Landroid/content/ComponentName;)I

    .line 267
    move-result v5

    .line 270
    const/4 v6, 0x3

    .line 271
    if-eq v5, v6, :cond_b

    .line 272
    const/4 v6, 0x4

    .line 274
    if-eq v5, v6, :cond_b

    .line 275
    if-ne v5, v1, :cond_c

    .line 277
    :cond_b
    const-string v1, "PluginManagerImpl"

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    .line 281
    const-string v6, "Re-enabling previously disabled plugin that has been updated: "

    .line 283
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 288
    move-result-object v6

    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v5

    .line 298
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 302
    invoke-interface {v1, v3}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setEnabled(Landroid/content/ComponentName;)V

    .line 304
    :cond_c
    monitor-enter p0

    .line 307
    :try_start_2
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 310
    move-result-object v3

    .line 313
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    move-result v1

    .line 317
    if-eqz v1, :cond_d

    .line 318
    if-nez v4, :cond_10

    .line 320
    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 322
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 324
    move-result-object p2

    .line 327
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 328
    move-result-object p2

    .line 331
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    move-result v1

    .line 335
    if-eqz v1, :cond_10

    .line 336
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    move-result-object v1

    .line 341
    check-cast v1, Lcom/android/systemui/shared/plugins/PluginActionManager;

    .line 342
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    new-instance v2, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda1;

    .line 347
    invoke-direct {v2, v1, p1, v0}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Ljava/lang/String;I)V

    .line 349
    iget-object v1, v1, Lcom/android/systemui/shared/plugins/PluginActionManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 352
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 354
    goto :goto_4

    .line 357
    :cond_d
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 358
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 360
    move-result-object v3

    .line 363
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    move-result v1

    .line 367
    if-eqz v1, :cond_e

    .line 368
    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPrivilegedPlugins:Landroid/util/ArraySet;

    .line 370
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 372
    move-result p2

    .line 375
    if-nez p2, :cond_10

    .line 376
    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 378
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 380
    move-result-object p2

    .line 383
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 384
    move-result-object p2

    .line 387
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    move-result v1

    .line 391
    if-eqz v1, :cond_10

    .line 392
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    move-result-object v1

    .line 397
    check-cast v1, Lcom/android/systemui/shared/plugins/PluginActionManager;

    .line 398
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    new-instance v2, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda1;

    .line 403
    invoke-direct {v2, v1, p1, v0}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Ljava/lang/String;I)V

    .line 405
    iget-object v1, v1, Lcom/android/systemui/shared/plugins/PluginActionManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 408
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 410
    goto :goto_5

    .line 413
    :cond_e
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 414
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 416
    move-result-object p2

    .line 419
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    move-result p2

    .line 423
    if-eqz p2, :cond_f

    .line 424
    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 426
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 428
    move-result-object p2

    .line 431
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 432
    move-result-object p2

    .line 435
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    move-result v1

    .line 439
    if-eqz v1, :cond_10

    .line 440
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    move-result-object v1

    .line 445
    check-cast v1, Lcom/android/systemui/shared/plugins/PluginActionManager;

    .line 446
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    new-instance v2, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda1;

    .line 451
    invoke-direct {v2, v1, p1, v0}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Ljava/lang/String;I)V

    .line 453
    iget-object v1, v1, Lcom/android/systemui/shared/plugins/PluginActionManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 456
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 458
    goto :goto_6

    .line 461
    :cond_f
    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 462
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 464
    move-result-object p2

    .line 467
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 468
    move-result-object p2

    .line 471
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 472
    move-result v0

    .line 475
    if-eqz v0, :cond_10

    .line 476
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 478
    move-result-object v0

    .line 481
    check-cast v0, Lcom/android/systemui/shared/plugins/PluginActionManager;

    .line 482
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    new-instance v1, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda1;

    .line 487
    invoke-direct {v1, v0, p1, v2}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Ljava/lang/String;I)V

    .line 489
    iget-object v0, v0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 492
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 494
    goto :goto_7

    .line 497
    :cond_10
    monitor-exit p0

    .line 498
    :goto_8
    return-void

    .line 499
    :catchall_1
    move-exception p1

    .line 500
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 501
    throw p1
    .line 502
.end method

.method public final removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/systemui/shared/plugins/PluginActionManager;

    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->destroy()V

    .line 21
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 26
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    iget-boolean p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    .line 32
    if-nez p1, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    .line 38
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    :cond_2
    :goto_0
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1
    .line 49
.end method
