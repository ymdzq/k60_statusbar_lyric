.class public final Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# instance fields
.field public currentPrivacyItems:Ljava/util/List;

.field public previousPrivacyItems:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

.field public timeLastEmpty:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->previousPrivacyItems:Ljava/util/List;

    .line 11
    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 13
    check-cast p1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->timeLastEmpty:J

    .line 24
    return-void
    .line 26
.end method

.method public static uniqueItemsMatch(Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 4
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/systemui/privacy/PrivacyItem;

    .line 25
    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    .line 27
    iget v2, v2, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v2

    .line 34
    iget-object v1, v1, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    .line 35
    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyType;->getPermGroupName()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 40
    new-instance v3, Lkotlin/Pair;

    .line 41
    invoke-direct {v3, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 50
    move-result-object p0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 56
    move-result v1

    .line 59
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p1

    .line 66
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 76
    check-cast v1, Lcom/android/systemui/privacy/PrivacyItem;

    .line 77
    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    .line 79
    iget v2, v2, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v2

    .line 86
    iget-object v1, v1, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    .line 87
    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyType;->getPermGroupName()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 92
    new-instance v3, Lkotlin/Pair;

    .line 93
    invoke-direct {v3, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    goto :goto_1

    .line 101
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 102
    move-result-object p1

    .line 105
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    move-result p0

    .line 109
    return p0
    .line 110
.end method


# virtual methods
.method public final notifyListeners()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    .line 9
    if-nez v0, :cond_4

    .line 11
    iget-boolean v0, v2, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->miuiOptimization:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto :goto_2

    .line 17
    :cond_0
    const-string v0, "privacy"

    .line 18
    const-string v3, "privacy_chip_animation_enabled"

    .line 20
    const/4 v4, 0x1

    .line 22
    invoke-static {v0, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    .line 29
    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->previousPrivacyItems:Ljava/util/List;

    .line 31
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->uniqueItemsMatch(Ljava/util/List;Ljava/util/List;)Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    iget-object v0, v2, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 39
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    move-result-wide v5

    .line 49
    iget-wide v7, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->timeLastEmpty:J

    .line 50
    sub-long/2addr v5, v7

    .line 52
    const-wide/16 v7, 0xbb8

    .line 53
    cmp-long p0, v5, v7

    .line 55
    if-ltz p0, :cond_1

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    const/4 v4, 0x0

    .line 60
    :cond_2
    :goto_0
    new-instance p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    .line 61
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/events/PrivacyEvent;-><init>(Z)V

    .line 63
    iget-object v0, v2, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    .line 66
    iget-object v0, v0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    .line 68
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    .line 70
    new-instance v3, Lcom/android/systemui/privacy/PrivacyChipBuilder;

    .line 72
    iget-object v4, v2, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->context:Landroid/content/Context;

    .line 74
    invoke-direct {v3, v4, v0}, Lcom/android/systemui/privacy/PrivacyChipBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 76
    invoke-virtual {v3}, Lcom/android/systemui/privacy/PrivacyChipBuilder;->joinTypes()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 82
    const v3, 0x7f1308ad    # @string/ongoing_privacy_chip_content_multiple_apps 'Applications are using your %s.'

    .line 83
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 89
    invoke-virtual {v4, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->contentDescription:Ljava/lang/String;

    .line 94
    iget-object v0, v2, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 96
    if-nez v0, :cond_3

    .line 98
    goto :goto_1

    .line 100
    :cond_3
    move-object v1, v0

    .line 101
    :goto_1
    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    .line 102
    goto :goto_4

    .line 105
    :cond_4
    :goto_2
    iget-object p0, v2, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 106
    if-nez p0, :cond_5

    .line 108
    goto :goto_3

    .line 110
    :cond_5
    move-object v1, p0

    .line 111
    :goto_3
    invoke-interface {v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->removePersistentDot()V

    .line 112
    :goto_4
    return-void
    .line 115
.end method

.method public final onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    .line 2
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->uniqueItemsMatch(Ljava/util/List;Ljava/util/List;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->previousPrivacyItems:Ljava/util/List;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 23
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->timeLastEmpty:J

    .line 34
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->notifyListeners()V

    .line 38
    return-void
    .line 41
.end method
