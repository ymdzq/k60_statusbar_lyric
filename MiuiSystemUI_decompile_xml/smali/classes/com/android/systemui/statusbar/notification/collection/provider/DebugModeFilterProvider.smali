.class public final Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public allowedPackages:Ljava/util/List;

.field public final commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

.field public final listeners:Lcom/android/systemui/util/ListenerSet;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    .line 5
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->allowedPackages:Ljava/util/List;

    .line 9
    new-instance p1, Lcom/android/systemui/util/ListenerSet;

    .line 11
    invoke-direct {p1}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->listeners:Lcom/android/systemui/util/ListenerSet;

    .line 16
    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->listeners:Lcom/android/systemui/util/ListenerSet;

    .line 2
    invoke-virtual {p2}, Lcom/android/systemui/util/ListenerSet;->isEmpty()Z

    .line 4
    move-result p2

    .line 7
    xor-int/lit8 p2, p2, 0x1

    .line 8
    const-string v0, "initialized: "

    .line 10
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 12
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->allowedPackages:Ljava/util/List;

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    move-result p2

    .line 20
    const-string v0, "allowedPackages: "

    .line 21
    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->allowedPackages:Ljava/util/List;

    .line 26
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 31
    const/4 p2, 0x0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    add-int/lit8 v1, p2, 0x1

    .line 43
    if-ltz p2, :cond_0

    .line 45
    check-cast v0, Ljava/lang/String;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    const-string v3, "  ["

    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string p2, "]: "

    .line 59
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    move p2, v1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 76
    const/4 p0, 0x0

    .line 79
    throw p0

    .line 80
    :cond_1
    return-void
    .line 81
.end method

.method public final registerInvalidationListener(Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$attach$1;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->listeners:Lcom/android/systemui/util/ListenerSet;

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/util/ListenerSet;->isEmpty()Z

    .line 14
    move-result v1

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    .line 18
    if-eqz v1, :cond_1

    .line 21
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider$registerInvalidationListener$1;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider$registerInvalidationListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;)V

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    .line 28
    const-string v0, "notif-filter"

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 32
    const-string p0, "DebugModeFilterProvider"

    .line 35
    const-string p1, "Registered notif-filter command"

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    return-void
    .line 42
.end method
