.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final context:Landroid/content/Context;

.field public final mainHandler:Landroid/os/Handler;

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public notifPanelCollapsed:Z

.field public final states:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->context:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->mainHandler:Landroid/os/Handler;

    .line 9
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notifPanelCollapsed:Z

    .line 19
    new-instance p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;

    .line 21
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;-><init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    .line 23
    check-cast p3, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 26
    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 28
    new-instance p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$2;

    .line 31
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$2;-><init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    .line 33
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;->listeners:Lcom/android/systemui/util/ListenerSet;

    .line 36
    invoke-virtual {p0, p2}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    .line 38
    return-void
    .line 41
.end method

.method public static final onEntryViewBound$updateCount(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_3

    .line 2
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notifPanelCollapsed:Z

    .line 4
    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_1

    .line 11
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 13
    if-nez v1, :cond_0

    .line 15
    move p2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    .line 19
    :goto_0
    if-eqz p2, :cond_1

    .line 21
    const/4 v0, 0x1

    .line 23
    :cond_1
    if-eqz v0, :cond_3

    .line 24
    :cond_2
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    sget-object v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;

    .line 30
    invoke-virtual {p0, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 32
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 35
    if-eqz p0, :cond_3

    .line 37
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->resetBadgeUi(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 39
    :cond_3
    return-void
    .line 42
.end method

.method public static resetBadgeUi(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getLayouts()[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 13
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetBadgeUi$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetBadgeUi$1;

    .line 15
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    .line 17
    move-result-object p0

    .line 20
    sget-object v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetBadgeUi$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetBadgeUi$2;

    .line 21
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 23
    move-result-object p0

    .line 26
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 27
    invoke-direct {v0, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 29
    :goto_1
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 32
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/internal/widget/ConversationLayout;

    .line 42
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ConversationLayout;->setUnreadCount(I)V

    .line 45
    goto :goto_1

    .line 48
    :cond_1
    return-void
    .line 49
.end method


# virtual methods
.method public final onNotificationPanelExpandStateChanged(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notifPanelCollapsed:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 9
    move-result-object v0

    .line 12
    new-instance v1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 13
    invoke-direct {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$expanded$1;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$expanded$1;-><init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    .line 20
    invoke-static {v1, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 23
    move-result-object p0

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 27
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 32
    invoke-direct {v1, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 34
    :goto_0
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 37
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    check-cast p0, Lkotlin/Pair;

    .line 47
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 56
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->optimizeReadOnlyMap(Ljava/util/Map;)Ljava/util/Map;

    .line 61
    move-result-object p0

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1;

    .line 65
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1;-><init>(Ljava/util/Map;)V

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 70
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 73
    move-result-object p0

    .line 76
    new-instance p1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 77
    invoke-direct {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 79
    sget-object p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$2;

    .line 82
    invoke-static {p1, p0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 84
    move-result-object p0

    .line 87
    new-instance p1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 88
    invoke-direct {p1, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 90
    :goto_1
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 93
    move-result p0

    .line 96
    if-eqz p0, :cond_2

    .line 97
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 99
    move-result-object p0

    .line 102
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 103
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->resetBadgeUi(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 105
    goto :goto_1

    .line 108
    :cond_2
    return-void
    .line 109
.end method
