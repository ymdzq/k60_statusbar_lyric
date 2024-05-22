.class public abstract Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static initAndVerifyEmbeddingExtension()Landroidx/window/embedding/EmbeddingCompat;
    .locals 8

    .line 1
    const-string v0, "EmbeddingBackend"

    .line 2
    :try_start_0
    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    .line 4
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-lt v1, v2, :cond_1

    .line 20
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 23
    :goto_1
    if-eqz v2, :cond_5

    .line 24
    invoke-static {}, Landroidx/window/embedding/EmbeddingCompat$Companion;->isEmbeddingAvailable()Z

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_5

    .line 30
    const-class v1, Landroidx/window/embedding/EmbeddingBackend;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 34
    move-result-object v1

    .line 37
    if-eqz v1, :cond_5

    .line 38
    new-instance v2, Landroidx/window/embedding/EmbeddingCompat;

    .line 40
    invoke-static {}, Landroidx/window/embedding/EmbeddingCompat$Companion;->isEmbeddingAvailable()Z

    .line 42
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const-class v4, Landroidx/window/embedding/EmbeddingCompat;

    .line 46
    if-eqz v3, :cond_3

    .line 48
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 50
    move-result-object v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    new-instance v5, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    .line 56
    new-instance v6, Landroidx/window/core/ConsumerAdapter;

    .line 58
    invoke-direct {v6, v3}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    .line 60
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    .line 63
    move-result-object v7

    .line 66
    invoke-direct {v5, v3, v6, v7}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;-><init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;Landroidx/window/extensions/WindowExtensions;)V

    .line 67
    invoke-virtual {v5}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    .line 70
    move-result-object v3

    .line 73
    if-nez v3, :cond_4

    .line 74
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 76
    move-result-object v3

    .line 79
    const-class v4, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    .line 80
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 82
    move-result-object v4

    .line 85
    new-instance v5, Landroidx/window/embedding/EmbeddingCompat$Companion$$ExternalSyntheticLambda0;

    .line 86
    invoke-direct {v5}, Landroidx/window/embedding/EmbeddingCompat$Companion$$ExternalSyntheticLambda0;-><init>()V

    .line 88
    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 94
    check-cast v3, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    .line 95
    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 98
    move-result-object v3

    .line 101
    const-class v4, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    .line 102
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 104
    move-result-object v4

    .line 107
    new-instance v5, Landroidx/window/embedding/EmbeddingCompat$Companion$$ExternalSyntheticLambda0;

    .line 108
    invoke-direct {v5}, Landroidx/window/embedding/EmbeddingCompat$Companion$$ExternalSyntheticLambda0;-><init>()V

    .line 110
    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 113
    move-result-object v3

    .line 116
    check-cast v3, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    .line 117
    :cond_4
    :goto_2
    new-instance v4, Landroidx/window/embedding/EmbeddingAdapter;

    .line 119
    new-instance v5, Landroidx/window/core/PredicateAdapter;

    .line 121
    invoke-direct {v5}, Landroidx/window/core/PredicateAdapter;-><init>()V

    .line 123
    invoke-direct {v4, v5}, Landroidx/window/embedding/EmbeddingAdapter;-><init>(Landroidx/window/core/PredicateAdapter;)V

    .line 126
    new-instance v5, Landroidx/window/core/ConsumerAdapter;

    .line 129
    invoke-direct {v5, v1}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    .line 131
    invoke-direct {v2, v3, v4, v5}, Landroidx/window/embedding/EmbeddingCompat;-><init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/ConsumerAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    goto :goto_3

    .line 137
    :catchall_0
    move-exception v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    const-string v3, "Failed to load embedding extension: "

    .line 141
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_5
    const/4 v2, 0x0

    .line 156
    :goto_3
    if-nez v2, :cond_6

    .line 157
    const-string v1, "No supported embedding extension found"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_6
    return-object v2
    .line 164
.end method
