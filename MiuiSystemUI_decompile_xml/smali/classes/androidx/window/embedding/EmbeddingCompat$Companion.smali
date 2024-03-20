.class public abstract Landroidx/window/embedding/EmbeddingCompat$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static isEmbeddingAvailable()Z
    .locals 5

    .line 1
    const-string v0, "EmbeddingCompat"

    .line 2
    :try_start_0
    const-class v1, Landroidx/window/embedding/EmbeddingCompat;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    new-instance v2, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    .line 12
    new-instance v3, Landroidx/window/core/ConsumerAdapter;

    .line 14
    invoke-direct {v3, v1}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    .line 16
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    .line 19
    move-result-object v4

    .line 22
    invoke-direct {v2, v1, v3, v4}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;-><init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;Landroidx/window/extensions/WindowExtensions;)V

    .line 23
    invoke-virtual {v2}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    .line 26
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    const-string v1, "Stub Extension"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto :goto_0

    .line 39
    :catch_1
    const-string v1, "Embedding extension version not found"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 45
    :goto_1
    return v0
    .line 46
.end method
