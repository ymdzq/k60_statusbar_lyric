.class public final Landroidx/lifecycle/ViewModelStore;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final clear()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_6

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/lifecycle/ViewModel;

    .line 22
    iget-object v2, v1, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 24
    if-eqz v2, :cond_2

    .line 26
    monitor-enter v2

    .line 28
    :try_start_0
    iget-object v3, v1, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 29
    check-cast v3, Ljava/util/HashMap;

    .line 31
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 33
    move-result-object v3

    .line 36
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v3

    .line 40
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    instance-of v5, v4, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v5, :cond_0

    .line 53
    :try_start_1
    check-cast v4, Ljava/io/Closeable;

    .line 55
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    goto :goto_1

    .line 60
    :catch_0
    move-exception p0

    .line 61
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 62
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 64
    throw v0

    .line 67
    :cond_1
    monitor-exit v2

    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0

    .line 72
    :cond_2
    :goto_2
    iget-object v2, v1, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    .line 73
    if-eqz v2, :cond_5

    .line 75
    monitor-enter v2

    .line 77
    :try_start_3
    iget-object v3, v1, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    .line 78
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v3

    .line 83
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v4

    .line 93
    check-cast v4, Ljava/io/Closeable;

    .line 94
    instance-of v5, v4, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    if-eqz v5, :cond_3

    .line 98
    :try_start_4
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    goto :goto_3

    .line 103
    :catch_1
    move-exception p0

    .line 104
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 105
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 107
    throw v0

    .line 110
    :cond_4
    monitor-exit v2

    .line 111
    goto :goto_4

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 114
    throw p0

    .line 115
    :cond_5
    :goto_4
    invoke-virtual {v1}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 116
    goto :goto_0

    .line 119
    :cond_6
    iget-object p0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    .line 120
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 122
    return-void
    .line 125
.end method
