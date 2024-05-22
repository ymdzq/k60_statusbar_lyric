.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
    .line 11
.end method

.method public final onRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    .line 7
    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 14
    move-result-object v1

    .line 17
    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 18
    invoke-direct {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 20
    new-instance v1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$activeConversationEntries$1;

    .line 23
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$activeConversationEntries$1;-><init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    .line 25
    invoke-static {v2, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 28
    move-result-object v1

    .line 31
    new-instance v2, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 32
    invoke-direct {v2, v1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 34
    :cond_0
    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 47
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 49
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 54
    invoke-virtual {p1, v3, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 55
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isConversation()Z

    .line 61
    move-result v3

    .line 64
    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 67
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 71
    move-result v3

    .line 74
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 75
    if-eqz v4, :cond_0

    .line 77
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getLayouts()[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 79
    move-result-object v4

    .line 82
    if-eqz v4, :cond_0

    .line 83
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 85
    move-result-object v4

    .line 88
    sget-object v5, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$1;

    .line 89
    invoke-static {v4, v5}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    .line 91
    move-result-object v4

    .line 94
    sget-object v5, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$2;

    .line 95
    invoke-static {v4, v5}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 97
    move-result-object v4

    .line 100
    new-instance v5, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$3;

    .line 101
    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$3;-><init>(Z)V

    .line 103
    new-instance v6, Lkotlin/sequences/FilteringSequence;

    .line 106
    const/4 v7, 0x0

    .line 108
    invoke-direct {v6, v4, v7, v5}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 109
    new-instance v4, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 112
    invoke-direct {v4, v6}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 114
    :goto_0
    invoke-virtual {v4}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 117
    move-result v5

    .line 120
    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {v4}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 123
    move-result-object v5

    .line 126
    check-cast v5, Lcom/android/internal/widget/ConversationLayout;

    .line 127
    if-eqz v3, :cond_1

    .line 129
    iget-boolean v6, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsMarkedForUserTriggeredMovement:Z

    .line 131
    if-eqz v6, :cond_1

    .line 133
    new-instance v6, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$4$1;

    .line 135
    invoke-direct {v6, v5, v3}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$4$1;-><init>(Lcom/android/internal/widget/ConversationLayout;Z)V

    .line 137
    const-wide/16 v8, 0x3c0

    .line 140
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->mainHandler:Landroid/os/Handler;

    .line 142
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v5, v3, v7}, Lcom/android/internal/widget/ConversationLayout;->setIsImportantConversation(ZZ)V

    .line 148
    goto :goto_0

    .line 151
    :cond_2
    return-void
    .line 152
.end method
