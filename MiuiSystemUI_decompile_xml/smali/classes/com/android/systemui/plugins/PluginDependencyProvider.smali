.class public Lcom/android/systemui/plugins/PluginDependencyProvider;
.super Lcom/android/systemui/plugins/PluginDependency$DependencyProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private final mDependencies:Landroid/util/ArrayMap;

.field private final mManagerLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/plugins/PluginDependency$DependencyProvider;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/plugins/PluginDependencyProvider;->mDependencies:Landroid/util/ArrayMap;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/plugins/PluginDependencyProvider;->mManagerLazy:Ldagger/Lazy;

    .line 12
    sput-object p0, Lcom/android/systemui/plugins/PluginDependency;->sProvider:Lcom/android/systemui/plugins/PluginDependency$DependencyProvider;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public allowPluginDependency(Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public allowPluginDependency(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginDependencyProvider;->mDependencies:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/plugins/PluginDependencyProvider;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public get(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "Unknown dependency "

    .line 2
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginDependencyProvider;->mManagerLazy:Ldagger/Lazy;

    .line 4
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/systemui/plugins/PluginManager;

    .line 10
    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/PluginManager;->dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginDependencyProvider;->mDependencies:Landroid/util/ArrayMap;

    .line 18
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/plugins/PluginDependencyProvider;->mDependencies:Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/plugins/PluginDependencyProvider;->mDependencies:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    monitor-exit v1

    .line 35
    return-object p0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    const-string p1, " does not depend on "

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
    .line 87
.end method
