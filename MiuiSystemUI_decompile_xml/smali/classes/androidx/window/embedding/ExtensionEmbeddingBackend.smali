.class public final Landroidx/window/embedding/ExtensionEmbeddingBackend;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/window/embedding/EmbeddingBackend;


# static fields
.field public static volatile globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

.field public static final globalLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

.field public final splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 4
    sput-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/window/embedding/EmbeddingCompat;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->applicationContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    .line 7
    new-instance p1, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    .line 9
    invoke-direct {p1, p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    if-eqz p2, :cond_1

    .line 21
    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    .line 23
    move-result v0

    .line 26
    const/4 v1, 0x2

    .line 27
    iget-object v2, p2, Landroidx/window/embedding/EmbeddingCompat;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    .line 28
    if-ge v0, v1, :cond_0

    .line 30
    const-class v0, Ljava/util/List;

    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 34
    move-result-object v0

    .line 37
    new-instance v1, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;

    .line 38
    invoke-direct {v1, p1, p2}, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;Landroidx/window/embedding/EmbeddingCompat;)V

    .line 40
    iget-object p1, p2, Landroidx/window/embedding/EmbeddingCompat;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object p2

    .line 51
    iget-object p1, p1, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    .line 52
    const-string v3, "java.util.function.Consumer"

    .line 54
    invoke-virtual {p1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    move-result-object v4

    .line 59
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 60
    move-result-object v4

    .line 63
    const-string/jumbo v5, "setSplitInfoCallback"

    .line 64
    invoke-virtual {p2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 67
    move-result-object p2

    .line 70
    new-instance v4, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;

    .line 71
    invoke-direct {v4, v0, v1}, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;-><init>(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 73
    invoke-virtual {p1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 76
    move-result-object v0

    .line 79
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 80
    move-result-object v0

    .line 83
    invoke-static {p1, v0, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 87
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 91
    invoke-virtual {p2, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;

    .line 96
    invoke-direct {v0, p1, p2}, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;Landroidx/window/embedding/EmbeddingCompat;)V

    .line 98
    invoke-interface {v2, v0}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->setSplitInfoCallback(Landroidx/window/extensions/core/util/function/Consumer;)V

    .line 101
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    .line 104
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 106
    new-instance p1, Landroidx/window/embedding/ExtensionEmbeddingBackend$splitSupportStatus$2;

    .line 109
    invoke-direct {p1, p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$splitSupportStatus$2;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V

    .line 111
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 114
    return-void
    .line 117
.end method
