.class public final Landroidx/startup/AppInitializer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static volatile sInstance:Landroidx/startup/AppInitializer;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDiscovered:Ljava/util/Set;

.field public final mInitialized:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    .line 9
    new-instance p1, Ljava/util/HashSet;

    .line 11
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 13
    iput-object p1, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    .line 16
    new-instance p1, Ljava/util/HashMap;

    .line 18
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 20
    iput-object p1, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    .line 23
    return-void
    .line 25
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;
    .locals 2

    .line 1
    sget-object v0, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Landroidx/startup/AppInitializer;

    .line 13
    invoke-direct {v1, p0}, Landroidx/startup/AppInitializer;-><init>(Landroid/content/Context;)V

    .line 15
    sput-object v1, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    .line 18
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    .line 25
    return-object p0
    .line 27
.end method


# virtual methods
.method public final discoverAndInitialize(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    .line 2
    const v1, 0x7f130143    # @string/androidx_startup 'androidx.startup'

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    if-eqz p1, :cond_2

    .line 11
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    .line 13
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 18
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v2

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget-object v4, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    .line 30
    if-eqz v3, :cond_1

    .line 32
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    const/4 v5, 0x0

    .line 40
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 44
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v5

    .line 48
    if-eqz v5, :cond_0

    .line 49
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 51
    move-result-object v3

    .line 54
    const-class v5, Landroidx/startup/Initializer;

    .line 55
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 57
    move-result v5

    .line 60
    if-eqz v5, :cond_0

    .line 61
    check-cast v4, Ljava/util/HashSet;

    .line 63
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 68
    :cond_1
    check-cast v4, Ljava/util/HashSet;

    .line 69
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p1

    .line 74
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Class;

    .line 85
    invoke-virtual {p0, v0, v1}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    goto :goto_1

    .line 90
    :catch_0
    move-exception p0

    .line 91
    new-instance p1, Landroidx/startup/StartupException;

    .line 92
    invoke-direct {p1, p0}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    throw p1

    .line 97
    :cond_2
    return-void
    .line 98
.end method

.method public final doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 12
    :cond_0
    move-object v0, p2

    .line 15
    check-cast v0, Ljava/util/HashSet;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_4

    .line 23
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    .line 25
    :try_start_1
    move-object v3, v1

    .line 27
    check-cast v3, Ljava/util/HashMap;

    .line 28
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result v3

    .line 33
    if-nez v3, :cond_3

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :try_start_2
    new-array v3, v2, [Ljava/lang/Class;

    .line 39
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 41
    move-result-object v3

    .line 44
    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 50
    check-cast v2, Landroidx/startup/Initializer;

    .line 51
    invoke-interface {v2}, Landroidx/startup/Initializer;->dependencies()Ljava/util/List;

    .line 53
    move-result-object v3

    .line 56
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 57
    move-result v4

    .line 60
    if-nez v4, :cond_2

    .line 61
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v3

    .line 66
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 76
    check-cast v4, Ljava/lang/Class;

    .line 77
    move-object v5, v1

    .line 79
    check-cast v5, Ljava/util/HashMap;

    .line 80
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 85
    if-nez v5, :cond_1

    .line 86
    invoke-virtual {p0, v4, p2}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    iget-object p0, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    .line 92
    invoke-interface {v2, p0}, Landroidx/startup/Initializer;->create(Landroid/content/Context;)Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 97
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 98
    check-cast v1, Ljava/util/HashMap;

    .line 101
    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    :try_start_3
    new-instance p1, Landroidx/startup/StartupException;

    .line 108
    invoke-direct {p1, p0}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    .line 110
    throw p1

    .line 113
    :cond_3
    check-cast v1, Ljava/util/HashMap;

    .line 114
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 120
    return-object p0

    .line 123
    :cond_4
    :try_start_4
    const-string p0, "Cannot initialize %s. Cycle detected."

    .line 124
    const/4 p2, 0x1

    .line 126
    new-array p2, p2, [Ljava/lang/Object;

    .line 127
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 132
    aput-object p1, p2, v2

    .line 133
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    move-result-object p0

    .line 138
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 139
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    :catchall_1
    move-exception p0

    .line 145
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 146
    throw p0
    .line 149
.end method
