.class public final Landroidx/window/embedding/ActivityEmbeddingController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final backend:Landroidx/window/embedding/EmbeddingBackend;


# direct methods
.method public constructor <init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/embedding/ActivityEmbeddingController;->backend:Landroidx/window/embedding/EmbeddingBackend;

    .line 5
    return-void
    .line 7
.end method

.method public static final getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;
    .locals 4

    .line 1
    sget-object v0, Landroidx/window/embedding/EmbeddingBackend;->Companion:Landroidx/window/embedding/EmbeddingBackend$Companion;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Landroidx/window/embedding/EmbeddingBackend$Companion;->decorator:Lkotlin/jvm/functions/Function1;

    .line 7
    sget-object v1, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    .line 9
    sget-object v1, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    .line 11
    if-nez v1, :cond_1

    .line 13
    sget-object v1, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 17
    :try_start_0
    sget-object v2, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    .line 20
    if-nez v2, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    move-result-object p0

    .line 27
    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;->initAndVerifyEmbeddingExtension()Landroidx/window/embedding/EmbeddingCompat;

    .line 28
    move-result-object v2

    .line 31
    new-instance v3, Landroidx/window/embedding/ExtensionEmbeddingBackend;

    .line 32
    invoke-direct {v3, p0, v2}, Landroidx/window/embedding/ExtensionEmbeddingBackend;-><init>(Landroid/content/Context;Landroidx/window/embedding/EmbeddingCompat;)V

    .line 34
    sput-object v3, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    throw p0

    .line 47
    :cond_1
    :goto_0
    sget-object p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    check-cast v0, Landroidx/window/embedding/EmbeddingBackend$Companion$decorator$1;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    new-instance v0, Landroidx/window/embedding/ActivityEmbeddingController;

    .line 58
    invoke-direct {v0, p0}, Landroidx/window/embedding/ActivityEmbeddingController;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V

    .line 60
    return-object v0
.end method
