.class public abstract Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideRecentsImpl(Landroid/content/Context;Lcom/android/systemui/dagger/ContextComponentHelper;)Lcom/android/systemui/recents/RecentsImplementation;
    .locals 2

    .line 1
    const v0, 0x7f1302dc    # @string/config_recentsComponent 'com.android.systemui.recents.OverviewProxyRecentsImpl'

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    check-cast p1, Lcom/android/systemui/dagger/ContextComponentResolver;

    .line 17
    iget-object p1, p1, Lcom/android/systemui/dagger/ContextComponentResolver;->mRecentsCreators:Ljava/util/Map;

    .line 19
    invoke-static {v0, p1}, Lcom/android/systemui/dagger/ContextComponentResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/systemui/recents/RecentsImplementation;

    .line 25
    if-nez p1, :cond_0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    move-object p1, p0

    .line 41
    check-cast p1, Lcom/android/systemui/recents/RecentsImplementation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/RuntimeException;

    .line 46
    const-string v1, "Error creating recents component: "

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    throw p1

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/RuntimeException;

    .line 59
    const-string v1, "Error loading recents component: "

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 66
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    throw p1

    .line 70
    :cond_0
    :goto_0
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 71
    return-object p1

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 75
    const-string p1, "No recents component configured"

    .line 77
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    throw p0
    .line 83
.end method
