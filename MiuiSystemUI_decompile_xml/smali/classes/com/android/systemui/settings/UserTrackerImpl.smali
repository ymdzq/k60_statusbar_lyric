.class public final Lcom/android/systemui/settings/UserTrackerImpl;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final backgroundHandler:Landroid/os/Handler;

.field public final callbacks:Ljava/util/List;

.field public final context:Landroid/content/Context;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final iActivityManager:Landroid/app/IActivityManager;

.field public initialized:Z

.field public final mutex:Ljava/lang/Object;

.field public final userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

.field public final userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

.field public final userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

.field public final userManager:Landroid/os/UserManager;

.field public final userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 2
    const-class v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    const-string/jumbo v2, "userId"

    .line 6
    const-string v3, "getUserId()I"

    .line 9
    invoke-direct {v0, v1, v2, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 19
    const-class v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 21
    const-string/jumbo v3, "userHandle"

    .line 23
    const-string v4, "getUserHandle()Landroid/os/UserHandle;"

    .line 26
    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 31
    const-class v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 33
    const-string/jumbo v4, "userContext"

    .line 35
    const-string v5, "getUserContext()Landroid/content/Context;"

    .line 38
    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v3, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 43
    const-class v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 45
    const-string/jumbo v5, "userProfiles"

    .line 47
    const-string v6, "getUserProfiles()Ljava/util/List;"

    .line 50
    invoke-direct {v3, v4, v5, v6}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    filled-new-array {v0, v1, v2, v3}, [Lkotlin/reflect/KProperty;

    .line 55
    move-result-object v0

    .line 58
    sput-object v0, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 59
    return-void
    .line 61
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Landroid/app/IActivityManager;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userManager:Landroid/os/UserManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/settings/UserTrackerImpl;->iActivityManager:Landroid/app/IActivityManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/settings/UserTrackerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/settings/UserTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    .line 13
    new-instance p2, Ljava/lang/Object;

    .line 15
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    .line 20
    new-instance p2, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 24
    move-result p3

    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p3

    .line 31
    invoke-direct {p2, p3}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    .line 32
    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 35
    new-instance p2, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 39
    move-result-object p3

    .line 42
    invoke-direct {p2, p3}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    .line 43
    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 46
    new-instance p2, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 48
    invoke-direct {p2, p1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    .line 50
    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 53
    new-instance p1, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 55
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 57
    invoke-direct {p1, p2}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    .line 64
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 69
    return-void
    .line 71
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 5
    new-instance v1, Lcom/android/systemui/settings/DataItem;

    .line 7
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 9
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    invoke-direct {v1, v2, p2}, Lcom/android/systemui/settings/DataItem;-><init>(Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;)V

    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
    .line 26
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    .line 2
    const-string v0, "Initialized: "

    .line 4
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 6
    iget-boolean p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    .line 9
    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 13
    move-result p2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v1, "userId: "

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 35
    move-result-object p2

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 41
    move-result v1

    .line 44
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p2

    .line 51
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 61
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 62
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 71
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "userProfiles: "

    .line 74
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 90
    monitor-enter p2

    .line 92
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 93
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 95
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p2

    .line 99
    const-string p2, "Callbacks:"

    .line 100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object p0

    .line 108
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result p2

    .line 112
    if-eqz p2, :cond_3

    .line 113
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object p2

    .line 118
    check-cast p2, Lcom/android/systemui/settings/DataItem;

    .line 119
    iget-object p2, p2, Lcom/android/systemui/settings/DataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 121
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 123
    move-result-object p2

    .line 126
    check-cast p2, Lcom/android/systemui/settings/UserTracker$Callback;

    .line 127
    if-eqz p2, :cond_2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "  "

    .line 133
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    goto :goto_1

    .line 148
    :cond_3
    return-void

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    monitor-exit p2

    .line 151
    throw p0
    .line 152
.end method

.method public final getUserContext()Landroid/content/Context;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 2
    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 4
    const/4 v2, 0x2

    .line 6
    aget-object v1, v1, v2

    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Landroid/content/Context;

    .line 13
    return-object p0
    .line 15
.end method

.method public final getUserHandle()Landroid/os/UserHandle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 2
    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 4
    const/4 v2, 0x1

    .line 6
    aget-object v1, v1, v2

    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/UserHandle;

    .line 13
    return-object p0
    .line 15
.end method

.method public final getUserId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 2
    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 4
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/Number;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 15
    move-result p0

    .line 18
    return p0
    .line 19
.end method

.method public final getUserInfo()Landroid/content/pm/UserInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 24
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 26
    if-ne v2, v0, :cond_1

    .line 28
    const/4 v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_0
    if-eqz v2, :cond_0

    .line 33
    return-object v1

    .line 35
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 36
    const-string v0, "Collection contains no element matching the predicate."

    .line 38
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
    .line 43
.end method

.method public final getUserProfiles()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 2
    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 4
    const/4 v2, 0x3

    .line 6
    aget-object v1, v1, v2

    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Ljava/util/List;

    .line 13
    return-object p0
    .line 15
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result p2

    .line 11
    sparse-switch p2, :sswitch_data_0

    .line 12
    goto/16 :goto_3

    .line 15
    :sswitch_0
    const-string p2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    goto/16 :goto_3

    .line 25
    :sswitch_1
    const-string p2, "android.intent.action.USER_INFO_CHANGED"

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    goto :goto_0

    .line 35
    :sswitch_2
    const-string p2, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    goto/16 :goto_3

    .line 44
    :sswitch_3
    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 51
    if-nez p1, :cond_0

    .line 52
    goto/16 :goto_3

    .line 54
    :sswitch_4
    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 61
    if-nez p1, :cond_0

    .line 62
    goto/16 :goto_3

    .line 64
    :sswitch_5
    const-string p2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 71
    if-nez p1, :cond_0

    .line 72
    goto/16 :goto_3

    .line 74
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 76
    iget-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userManager:Landroid/os/UserManager;

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 81
    move-result p2

    .line 84
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 85
    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    .line 89
    monitor-enter p2

    .line 91
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 94
    move-result v1

    .line 97
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v1

    .line 104
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v2

    .line 108
    if-eqz v2, :cond_1

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v2

    .line 114
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 115
    new-instance v3, Landroid/content/pm/UserInfo;

    .line 117
    invoke-direct {v3, v2}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 119
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    goto :goto_1

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 126
    sget-object v2, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 128
    const/4 v3, 0x3

    .line 130
    aget-object v2, v2, v3

    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    iget-object v2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    .line 136
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 138
    :try_start_1
    iput-object v0, v1, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    monitor-exit p2

    .line 142
    iget-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 143
    monitor-enter p2

    .line 145
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 146
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 148
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    monitor-exit p2

    .line 152
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    move-result-object p0

    .line 156
    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    move-result p2

    .line 160
    if-eqz p2, :cond_3

    .line 161
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    move-result-object p2

    .line 166
    check-cast p2, Lcom/android/systemui/settings/DataItem;

    .line 167
    iget-object v0, p2, Lcom/android/systemui/settings/DataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 169
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 171
    move-result-object v0

    .line 174
    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p2, Lcom/android/systemui/settings/DataItem;->executor:Ljava/util/concurrent/Executor;

    .line 177
    new-instance v1, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;

    .line 179
    invoke-direct {v1, p2, p1}, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;-><init>(Lcom/android/systemui/settings/DataItem;Ljava/util/List;)V

    .line 181
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 184
    goto :goto_2

    .line 187
    :catchall_0
    move-exception p0

    .line 188
    monitor-exit p2

    .line 189
    throw p0

    .line 190
    :catchall_1
    move-exception p0

    .line 191
    :try_start_4
    monitor-exit v2

    .line 192
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 193
    :catchall_2
    move-exception p0

    .line 194
    monitor-exit p2

    .line 195
    throw p0

    .line 196
    :cond_3
    :goto_3
    return-void

    .line 197
    :sswitch_data_0
    .sparse-switch
        -0x572580a2 -> :sswitch_5
        -0x49d08e2b -> :sswitch_4
        -0x33813a72 -> :sswitch_3
        -0x16fbb1bb -> :sswitch_2
        -0xc02da2e -> :sswitch_1
        0x3eac4465 -> :sswitch_0
    .end sparse-switch
    .line 198
.end method

.method public final removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 5
    new-instance v1, Lcom/android/systemui/settings/UserTrackerImpl$removeCallback$1$1;

    .line 7
    invoke-direct {v1, p1}, Lcom/android/systemui/settings/UserTrackerImpl$removeCallback$1$1;-><init>(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0

    .line 20
    throw p0
    .line 21
.end method

.method public final setUserIdInternal(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userManager:Landroid/os/UserManager;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/UserHandle;

    .line 8
    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 10
    iget-object v2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->context:Landroid/content/Context;

    .line 13
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 19
    iget-object v4, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    .line 20
    monitor-enter v4

    .line 22
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 23
    sget-object v6, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 25
    aget-object v3, v6, v3

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p1

    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    iget-object v3, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    .line 36
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 38
    :try_start_1
    iput-object p1, v5, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 39
    :try_start_2
    monitor-exit v3

    .line 41
    iget-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 42
    const/4 v3, 0x1

    .line 44
    aget-object v3, v6, v3

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iget-object v3, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    .line 50
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 52
    :try_start_3
    iput-object v1, p1, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->value:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 53
    :try_start_4
    monitor-exit v3

    .line 55
    iget-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 56
    const/4 v1, 0x2

    .line 58
    aget-object v1, v6, v1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iget-object v1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    .line 64
    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 66
    :try_start_5
    iput-object v2, p1, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->value:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 67
    :try_start_6
    monitor-exit v1

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    .line 70
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 72
    move-result v1

    .line 75
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v0

    .line 82
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 92
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 93
    new-instance v2, Landroid/content/pm/UserInfo;

    .line 95
    invoke-direct {v2, v1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 97
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 104
    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 106
    const/4 v2, 0x3

    .line 108
    aget-object v1, v1, v2

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    .line 114
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 116
    :try_start_7
    iput-object p1, v0, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->value:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 117
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 119
    monitor-exit v4

    .line 120
    new-instance p0, Lkotlin/Pair;

    .line 121
    return-void

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    :try_start_9
    monitor-exit p0

    .line 125
    throw p1

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    monitor-exit v1

    .line 128
    throw p0

    .line 129
    :catchall_2
    move-exception p0

    .line 130
    monitor-exit v3

    .line 131
    throw p0

    .line 132
    :catchall_3
    move-exception p0

    .line 133
    monitor-exit v3

    .line 134
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 135
    :catchall_4
    move-exception p0

    .line 136
    monitor-exit v4

    .line 137
    throw p0
    .line 138
.end method
