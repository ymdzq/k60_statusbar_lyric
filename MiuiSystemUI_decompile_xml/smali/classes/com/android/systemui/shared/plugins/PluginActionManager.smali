.class public final Lcom/android/systemui/shared/plugins/PluginActionManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public final mAllowMultiple:Z

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public final mIsDebuggable:Z

.field public final mListener:Lcom/android/systemui/plugins/PluginListener;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mPluginClass:Ljava/lang/Class;

.field public final mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

.field public final mPluginInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

.field private final mPluginInstances:Ljava/util/ArrayList;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mPrivilegedPlugins:Landroid/util/ArraySet;


# direct methods
.method public static $r8$lambda$5DSKUg8XlXaR-pf3rcreUSQHaJw(Lcom/android/systemui/shared/plugins/PluginActionManager;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAction:Ljava/lang/String;

    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPm:Landroid/content/pm/PackageManager;

    .line 12
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 15
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-le v2, v3, :cond_0

    .line 24
    iget-boolean v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAllowMultiple:Z

    .line 26
    if-nez v2, :cond_0

    .line 28
    const-string p0, "Multiple plugins found for "

    .line 30
    const-string v0, "PluginActionManager"

    .line 32
    invoke-static {p0, v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    goto/16 :goto_4

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 41
    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    .line 45
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 55
    move-result v2

    .line 58
    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 59
    if-eqz v2, :cond_5

    .line 61
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 66
    check-cast v2, Lcom/android/systemui/shared/plugins/PluginInstance;

    .line 67
    iget-boolean v4, v2, Lcom/android/systemui/shared/plugins/PluginInstance;->mIsDirectBootAware:Z

    .line 69
    if-eqz v4, :cond_4

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v3

    .line 76
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v4

    .line 80
    if-eqz v4, :cond_3

    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v4

    .line 86
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 87
    invoke-virtual {v2}, Lcom/android/systemui/shared/plugins/PluginInstance;->getPackage()Ljava/lang/String;

    .line 89
    move-result-object v5

    .line 92
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 93
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v5

    .line 100
    if-eqz v5, :cond_2

    .line 101
    iget-object v5, v2, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    .line 103
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 105
    move-result-object v5

    .line 108
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 109
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v5

    .line 116
    if-eqz v5, :cond_2

    .line 117
    goto :goto_2

    .line 119
    :cond_3
    const/4 v4, 0x0

    .line 120
    :goto_2
    if-eqz v4, :cond_1

    .line 121
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    goto :goto_1

    .line 126
    :cond_4
    new-instance v4, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;

    .line 127
    const/4 v5, 0x2

    .line 129
    invoke-direct {v4, p0, v2, v5}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;I)V

    .line 130
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 136
    goto :goto_1

    .line 139
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    move-result-object v0

    .line 143
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    move-result v1

    .line 147
    if-eqz v1, :cond_7

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    move-result-object v1

    .line 153
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 154
    new-instance v2, Landroid/content/ComponentName;

    .line 156
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 158
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 160
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 162
    invoke-direct {v2, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/plugins/PluginActionManager;->loadPluginComponent(Landroid/content/ComponentName;)Lcom/android/systemui/shared/plugins/PluginInstance;

    .line 167
    move-result-object v1

    .line 170
    if-eqz v1, :cond_6

    .line 171
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v2, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;

    .line 178
    const/4 v4, 0x3

    .line 180
    invoke-direct {v2, p0, v1, v4}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;I)V

    .line 181
    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 184
    goto :goto_3

    .line 187
    :cond_7
    :goto_4
    return-void
    .line 188
.end method

.method public static $r8$lambda$7r34D0KsrWbu4MEOp6d0dGuU_lE(Lcom/android/systemui/shared/plugins/PluginActionManager;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/systemui/shared/plugins/PluginInstance;

    .line 18
    new-instance v3, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {v3, p0, v2, v1}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;I)V

    .line 22
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 25
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/plugins/PluginActionManager;->handleQueryPlugins(Ljava/lang/String;)V

    .line 39
    return-void
    .line 42
.end method

.method public static $r8$lambda$rIxEdBLgt2jHc42Bu_8vJE_42L0(Lcom/android/systemui/shared/plugins/PluginActionManager;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->removePkg(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAllowMultiple:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->handleQueryPlugins(Ljava/lang/String;)V

    .line 17
    :cond_1
    return-void
    .line 20
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZLandroid/app/NotificationManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Ljava/util/List;Lcom/android/systemui/shared/plugins/PluginInstance$Factory;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPrivilegedPlugins:Landroid/util/ArraySet;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 17
    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginClass:Ljava/lang/Class;

    .line 19
    iput-object p7, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 21
    iput-object p8, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 23
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPm:Landroid/content/pm/PackageManager;

    .line 27
    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAction:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mListener:Lcom/android/systemui/plugins/PluginListener;

    .line 31
    iput-boolean p6, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAllowMultiple:Z

    .line 33
    iput-object p10, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 35
    iput-object p11, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 37
    iput-object p13, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 39
    invoke-virtual {v0, p12}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 41
    iput-boolean p9, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mIsDebuggable:Z

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public final checkAndDisable(Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/systemui/shared/plugins/PluginInstance;

    .line 24
    invoke-virtual {v2}, Lcom/android/systemui/shared/plugins/PluginInstance;->getPackage()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    const/4 v3, 0x3

    .line 36
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/shared/plugins/PluginActionManager;->disable(Lcom/android/systemui/shared/plugins/PluginInstance;I)Z

    .line 37
    move-result v2

    .line 40
    or-int/2addr v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return v1
    .line 43
.end method

.method public final dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/shared/plugins/PluginInstance;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object v1

    .line 28
    iget-object v2, v0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    .line 29
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    iget-object p0, v0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    .line 45
    iget-object p1, v0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->checkVersion(Lcom/android/systemui/plugins/Plugin;)Lcom/android/systemui/shared/plugins/VersionInfo;

    .line 49
    move-result-object p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    iget-object p0, v0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    .line 55
    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->checkVersion(Lcom/android/systemui/plugins/Plugin;)Lcom/android/systemui/shared/plugins/VersionInfo;

    .line 57
    move-result-object p0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    .line 61
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    move-result p0

    .line 66
    if-eqz p0, :cond_1

    .line 67
    const/4 p0, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 p0, 0x0

    .line 71
    :goto_0
    return p0
    .line 72
.end method

.method public final destroy()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/systemui/shared/plugins/PluginInstance;

    .line 23
    new-instance v2, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;

    .line 25
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;I)V

    .line 28
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 31
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    return-void
    .line 37
.end method

.method public final disable(Lcom/android/systemui/shared/plugins/PluginInstance;I)Z
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->isPluginPrivileged(Landroid/content/ComponentName;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "Disabling plugin "

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    const-string v1, "PluginActionManager"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 35
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    .line 37
    const/4 p0, 0x1

    .line 40
    return p0
    .line 41
.end method

.method public final disableAll()Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v3

    .line 14
    if-ge v1, v3, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/systemui/shared/plugins/PluginInstance;

    .line 21
    const/4 v4, 0x4

    .line 23
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/shared/plugins/PluginActionManager;->disable(Lcom/android/systemui/shared/plugins/PluginInstance;I)Z

    .line 24
    move-result v3

    .line 27
    or-int/2addr v2, v3

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    return v2
    .line 32
.end method

.method public final handleQueryPlugins(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAction:Ljava/lang/String;

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPrivilegedPlugins:Landroid/util/ArraySet;

    .line 14
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    const/16 p1, 0x200

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPm:Landroid/content/pm/PackageManager;

    .line 26
    invoke-virtual {v2, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 28
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-le v0, v2, :cond_2

    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAllowMultiple:Z

    .line 39
    if-nez v0, :cond_2

    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    const-string p1, "Multiple plugins found for "

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    const-string p1, "PluginActionManager"

    .line 57
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 62
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p1

    .line 66
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 76
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 77
    new-instance v1, Landroid/content/ComponentName;

    .line 79
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 81
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 83
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 85
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->loadPluginComponent(Landroid/content/ComponentName;)Lcom/android/systemui/shared/plugins/PluginInstance;

    .line 90
    move-result-object v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;

    .line 101
    const/4 v2, 0x5

    .line 103
    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 107
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    goto :goto_1

    .line 112
    :cond_4
    return-void
    .line 113
.end method

.method public final isPluginPrivileged(Landroid/content/ComponentName;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPrivilegedPlugins:Landroid/util/ArraySet;

    .line 2
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 20
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-nez v1, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    return v2

    .line 37
    :cond_1
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    return v2

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    return p0
    .line 46
.end method

.method public final loadPluginComponent(Landroid/content/ComponentName;)Lcom/android/systemui/shared/plugins/PluginInstance;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPm:Landroid/content/pm/PackageManager;

    .line 2
    const-string v1, "Plugin doesn\'t have permission: "

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mIsDebuggable:Z

    .line 6
    const-string v3, "PluginActionManager"

    .line 8
    const/4 v4, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->isPluginPrivileged(Landroid/content/ComponentName;)Z

    .line 13
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    const-string v0, "Plugin cannot be loaded on production build: "

    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-object v4

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 37
    invoke-interface {v2, p1}, Lcom/android/systemui/shared/plugins/PluginEnabler;->isEnabled(Landroid/content/ComponentName;)Z

    .line 39
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    return-object v4

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 49
    :try_start_0
    const-string v5, "com.android.systemui.permission.PLUGIN"

    .line 50
    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object v4

    .line 73
    :cond_2
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 75
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 79
    iget-object v6, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mContext:Landroid/content/Context;

    .line 81
    iget-object v9, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginClass:Ljava/lang/Class;

    .line 83
    iget-object v10, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mListener:Lcom/android/systemui/plugins/PluginListener;

    .line 85
    move-object v8, p1

    .line 87
    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->create(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Ljava/lang/Class;Lcom/android/systemui/plugins/PluginListener;)Lcom/android/systemui/shared/plugins/PluginInstance;

    .line 88
    move-result-object p0
    :try_end_1
    .catch Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    return-object p0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 97
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/shared/plugins/PluginActionManager;->reportInvalidVersion(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    return-object v4

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "Couldn\'t load plugin: "

    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 116
    invoke-static {v3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    return-object v4
    .line 120
.end method

.method public final onPluginConnected(Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "plugin_prefs"

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    move-result-object p0

    .line 10
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    move-result-object p0

    .line 14
    const-string v0, "plugins"

    .line 15
    const/4 v1, 0x1

    .line 17
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object p0

    .line 21
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    iget-object p0, p1, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Lcom/android/systemui/plugins/PluginListener;

    .line 25
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/PluginListener;->onPluginAttached(Lcom/android/systemui/plugins/PluginLifecycleManager;)Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    iget-object p0, p1, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    .line 33
    if-eqz p0, :cond_3

    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/shared/plugins/PluginInstance;->unloadPlugin()V

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    .line 41
    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/android/systemui/shared/plugins/PluginInstance;->loadPlugin()V

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    .line 49
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->checkVersion(Lcom/android/systemui/plugins/Plugin;)Lcom/android/systemui/shared/plugins/VersionInfo;

    .line 51
    iget-object v0, p1, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    .line 54
    instance-of v1, v0, Lcom/android/systemui/plugins/PluginFragment;

    .line 56
    if-nez v1, :cond_2

    .line 58
    iget-object v1, p1, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Lcom/android/systemui/shared/plugins/PluginActionManager$PluginContextWrapper;

    .line 60
    iget-object v2, p1, Lcom/android/systemui/shared/plugins/PluginInstance;->mAppContext:Landroid/content/Context;

    .line 62
    invoke-interface {v0, v2, v1}, Lcom/android/systemui/plugins/Plugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    .line 64
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    .line 67
    iget-object v1, p1, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Lcom/android/systemui/shared/plugins/PluginActionManager$PluginContextWrapper;

    .line 69
    invoke-interface {p0, v0, v1, p1}, Lcom/android/systemui/plugins/PluginListener;->onPluginLoaded(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;Lcom/android/systemui/plugins/PluginLifecycleManager;)V

    .line 71
    :cond_3
    :goto_0
    return-void
    .line 74
.end method

.method public final removePkg(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/shared/plugins/PluginInstance;

    .line 18
    invoke-virtual {v1}, Lcom/android/systemui/shared/plugins/PluginInstance;->getPackage()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    new-instance v2, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;

    .line 30
    const/4 v3, 0x4

    .line 32
    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;I)V

    .line 33
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 36
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    return-void
    .line 49
.end method

.method public final reportInvalidVersion(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPm:Landroid/content/pm/PackageManager;

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const-string/jumbo v2, "stat_sys_warning"

    .line 8
    const-string v3, "drawable"

    .line 11
    const-string v4, "android"

    .line 13
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    move-result v1

    .line 18
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 19
    move-result-object v2

    .line 22
    const-string/jumbo v3, "system_notification_accent_color"

    .line 23
    const-string v5, "color"

    .line 26
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    move-result v2

    .line 31
    new-instance v3, Landroid/app/Notification$Builder;

    .line 32
    iget-object v4, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mContext:Landroid/content/Context;

    .line 34
    const-string v5, "ALR"

    .line 36
    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    .line 41
    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 43
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 46
    move-result-object v3

    .line 49
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 50
    move-result-object v1

    .line 53
    const-wide/16 v5, 0x0

    .line 54
    invoke-virtual {v1, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 56
    move-result-object v1

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 61
    move-result-object v1

    .line 64
    const/4 v5, 0x1

    .line 65
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 66
    move-result-object v1

    .line 69
    invoke-virtual {v4, v2}, Landroid/content/Context;->getColor(I)I

    .line 70
    move-result v2

    .line 73
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 74
    move-result-object v1

    .line 77
    :try_start_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 78
    move-result-object v2

    .line 81
    invoke-virtual {v2, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 82
    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 86
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :catch_0
    invoke-virtual {p3}, Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;->isTooNew()Z

    .line 90
    move-result v0

    .line 93
    const-string v2, "Plugin \""

    .line 94
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string p2, "\" is too old"

    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p2

    .line 114
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 115
    move-result-object p2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    const-string v2, "Contact plugin developer to get an updated version.\n"

    .line 121
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 136
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 137
    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string p2, "\" is too new"

    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p2

    .line 157
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 158
    move-result-object p2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    const-string v2, "Check to see if an OTA is available.\n"

    .line 164
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 169
    move-result-object v2

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 179
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 180
    :goto_0
    new-instance p2, Landroid/content/Intent;

    .line 183
    const-string v0, "com.android.systemui.action.DISABLE_PLUGIN"

    .line 185
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    const-string v2, "package://"

    .line 192
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 197
    move-result-object p1

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p1

    .line 207
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 208
    move-result-object p1

    .line 211
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 212
    move-result-object p1

    .line 215
    const/high16 p2, 0x4000000

    .line 216
    invoke-static {v4, v3, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 218
    move-result-object p1

    .line 221
    new-instance p2, Landroid/app/Notification$Action$Builder;

    .line 222
    const/4 v0, 0x0

    .line 224
    const-string v2, "Disable plugin"

    .line 225
    invoke-direct {p2, v0, v2, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 227
    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 230
    move-result-object p1

    .line 233
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 234
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 237
    move-result-object p1

    .line 240
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 241
    const/4 p2, 0x6

    .line 243
    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    .line 247
    const-string p1, "Error loading plugin; "

    .line 249
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object p0

    .line 264
    const-string p1, "PluginActionManager"

    .line 265
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
    .line 270
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "PluginActionManager"

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 11
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAction:Ljava/lang/String;

    .line 12
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    const-string v0, "%s@%s (action=%s)"

    .line 18
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
.end method
