.class public final synthetic Lcom/android/systemui/shared/plugins/PluginInstance$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

.field public final synthetic f$1:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/plugins/PluginInstance$Factory;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ApplicationInfo;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ApplicationInfo;

    .line 4
    iget-boolean v1, v0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->mIsDebug:Z

    .line 6
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v1, :cond_3

    .line 10
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 12
    iget-object v4, v0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->mPrivilegedPlugins:Ljava/util/List;

    .line 14
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v4

    .line 19
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v5

    .line 23
    if-eqz v5, :cond_2

    .line 24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/String;

    .line 30
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 32
    move-result-object v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 41
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 53
    :goto_0
    move v1, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :goto_1
    if-nez v1, :cond_3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "Cannot get class loader for non-privileged plugin. Src:"

    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", pkg: "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 85
    const-string v0, "PluginInstance"

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_2

    .line 91
    :cond_3
    sget-object v1, Lcom/android/systemui/shared/plugins/PluginInstance;->sClassLoaders:Ljava/util/Map;

    .line 92
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 94
    check-cast v1, Landroid/util/ArrayMap;

    .line 96
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 98
    move-result v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 104
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 109
    move-object v2, p0

    .line 110
    check-cast v2, Ljava/lang/ClassLoader;

    .line 111
    goto :goto_2

    .line 113
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 114
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v5, Ljava/util/ArrayList;

    .line 119
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-static {v2, v3, p0, v4, v5}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 124
    new-instance v2, Ldalvik/system/PathClassLoader;

    .line 127
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 129
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 131
    move-result-object v4

    .line 134
    invoke-static {v3, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 135
    move-result-object v3

    .line 138
    new-instance v5, Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;

    .line 139
    const-string v6, "com.android.systemui.plugin"

    .line 141
    const-string v7, "com.android.systemui.common"

    .line 143
    const-string v8, "com.android.systemui.log"

    .line 145
    filled-new-array {v7, v8, v6}, [Ljava/lang/String;

    .line 147
    move-result-object v6

    .line 150
    iget-object v0, v0, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 151
    invoke-direct {v5, v0, v6}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;[Ljava/lang/String;)V

    .line 153
    invoke-direct {v2, v4, v3, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 156
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 159
    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_2
    return-object v2
    .line 164
.end method
