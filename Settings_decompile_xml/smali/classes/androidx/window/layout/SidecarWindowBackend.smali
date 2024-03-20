.class public final Landroidx/window/layout/SidecarWindowBackend;
.super Ljava/lang/Object;
.source "SidecarWindowBackend.kt"

# interfaces
.implements Landroidx/window/layout/WindowBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/SidecarWindowBackend$ExtensionListenerImpl;,
        Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;,
        Landroidx/window/layout/SidecarWindowBackend$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidecarWindowBackend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidecarWindowBackend.kt\nandroidx/window/layout/SidecarWindowBackend\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n286#2,2:244\n1741#2,3:246\n1741#2,3:249\n*S KotlinDebug\n*F\n+ 1 SidecarWindowBackend.kt\nandroidx/window/layout/SidecarWindowBackend\n*L\n79#1:244,2\n90#1:246,3\n127#1:249,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/window/layout/SidecarWindowBackend$Companion;

.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowServer"

.field private static volatile globalInstance:Landroidx/window/layout/SidecarWindowBackend;

.field private static final globalLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private windowExtension:Landroidx/window/layout/ExtensionInterfaceCompat;

.field private final windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/SidecarWindowBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/SidecarWindowBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/layout/SidecarWindowBackend;->Companion:Landroidx/window/layout/SidecarWindowBackend$Companion;

    .line 174
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Landroidx/window/layout/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/ExtensionInterfaceCompat;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/window/layout/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/ExtensionInterfaceCompat;

    .line 50
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    iget-object p1, p0, Landroidx/window/layout/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/ExtensionInterfaceCompat;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/window/layout/SidecarWindowBackend$ExtensionListenerImpl;

    invoke-direct {v0, p0}, Landroidx/window/layout/SidecarWindowBackend$ExtensionListenerImpl;-><init>(Landroidx/window/layout/SidecarWindowBackend;)V

    invoke-interface {p1, v0}, Landroidx/window/layout/ExtensionInterfaceCompat;->setExtensionCallback(Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V

    :goto_0
    return-void
.end method

.method public static final synthetic access$getGlobalInstance$cp()Landroidx/window/layout/SidecarWindowBackend;
    .locals 1

    .line 36
    sget-object v0, Landroidx/window/layout/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/SidecarWindowBackend;

    return-object v0
.end method

.method public static final synthetic access$getGlobalLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 36
    sget-object v0, Landroidx/window/layout/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$setGlobalInstance$cp(Landroidx/window/layout/SidecarWindowBackend;)V
    .locals 0

    .line 36
    sput-object p0, Landroidx/window/layout/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/SidecarWindowBackend;

    return-void
.end method

.method private final callbackRemovedForActivity(Landroid/app/Activity;)V
    .locals 3

    .line 127
    iget-object v0, p0, Landroidx/window/layout/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 249
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 128
    invoke-virtual {v1}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    return-void

    .line 134
    :cond_3
    iget-object p0, p0, Landroidx/window/layout/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/ExtensionInterfaceCompat;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p0, p1}, Landroidx/window/layout/ExtensionInterfaceCompat;->onWindowLayoutChangeListenerRemoved(Landroid/app/Activity;)V

    :goto_1
    return-void
.end method

.method public static synthetic getWindowLayoutChangeCallbacks$annotations()V
    .locals 0

    .line 0
    return-void
.end method

.method private final isActivityRegistered(Landroid/app/Activity;)Z
    .locals 2

    .line 90
    iget-object p0, p0, Landroidx/window/layout/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 246
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 91
    invoke-virtual {v0}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final getWindowExtension()Landroidx/window/layout/ExtensionInterfaceCompat;
    .locals 0

    .line 39
    iget-object p0, p0, Landroidx/window/layout/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/ExtensionInterfaceCompat;

    return-object p0
.end method

.method public final getWindowLayoutChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object p0, p0, Landroidx/window/layout/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public registerLayoutChangeCallback(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Landroidx/window/layout/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroidx/window/layout/SidecarWindowBackend;->getWindowExtension()Landroidx/window/layout/ExtensionInterfaceCompat;

    move-result-object v1

    if-nez v1, :cond_0

    .line 65
    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    invoke-interface {p3, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroidx/window/layout/SidecarWindowBackend;->isActivityRegistered(Landroid/app/Activity;)Z

    move-result v2

    .line 72
    new-instance v3, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    invoke-direct {v3, p1, p2, p3}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;-><init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 73
    invoke-virtual {p0}, Landroidx/window/layout/SidecarWindowBackend;->getWindowLayoutChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    .line 75
    invoke-interface {v1, p1}, Landroidx/window/layout/ExtensionInterfaceCompat;->onWindowLayoutChangeListenerAdded(Landroid/app/Activity;)V

    goto :goto_2

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroidx/window/layout/SidecarWindowBackend;->getWindowLayoutChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    .line 244
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 80
    invoke-virtual {v1}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_3
    move-object p2, p3

    .line 79
    :goto_0
    check-cast p2, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    if-nez p2, :cond_4

    goto :goto_1

    .line 81
    :cond_4
    invoke-virtual {p2}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->getLastInfo()Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_5

    .line 83
    invoke-virtual {v3, p3}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->accept(Landroidx/window/layout/WindowLayoutInfo;)V

    .line 86
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final setWindowExtension(Landroidx/window/layout/ExtensionInterfaceCompat;)V
    .locals 0

    .line 39
    iput-object p1, p0, Landroidx/window/layout/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/ExtensionInterfaceCompat;

    return-void
.end method

.method public unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Landroidx/window/layout/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroidx/window/layout/SidecarWindowBackend;->getWindowExtension()Landroidx/window/layout/ExtensionInterfaceCompat;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 101
    monitor-exit v0

    return-void

    .line 106
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {p0}, Landroidx/window/layout/SidecarWindowBackend;->getWindowLayoutChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 108
    invoke-virtual {v3}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->getCallback()Landroidx/core/util/Consumer;

    move-result-object v4

    if-ne v4, p1, :cond_1

    const-string v4, "callbackWrapper"

    .line 110
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0}, Landroidx/window/layout/SidecarWindowBackend;->getWindowLayoutChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 116
    invoke-virtual {v1}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/window/layout/SidecarWindowBackend;->callbackRemovedForActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 118
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
