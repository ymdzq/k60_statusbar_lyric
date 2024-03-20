.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$onBeforeRenderListListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$onBeforeRenderListListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBeforeRenderList(Ljava/util/List;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$onBeforeRenderListListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->promotedEntriesToSummaryOfSameChannel:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 11
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_9

    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 44
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 46
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 48
    const/4 v5, 0x0

    .line 50
    if-nez v4, :cond_1

    .line 51
    goto :goto_2

    .line 53
    :cond_1
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 54
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 56
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    goto :goto_2

    .line 64
    :cond_2
    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 65
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 67
    if-nez v3, :cond_3

    .line 69
    goto :goto_2

    .line 71
    :cond_3
    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 72
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    move-result v3

    .line 77
    if-nez v3, :cond_4

    .line 78
    goto :goto_2

    .line 80
    :cond_4
    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 81
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 83
    move-result v4

    .line 86
    const/4 v6, 0x0

    .line 87
    if-eqz v4, :cond_6

    .line 88
    :cond_5
    move v2, v6

    .line 90
    goto :goto_1

    .line 91
    :cond_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object v3

    .line 95
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v4

    .line 99
    if-eqz v4, :cond_5

    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v4

    .line 105
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 106
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 108
    move-result-object v4

    .line 111
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 112
    move-result-object v7

    .line 115
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    move-result v4

    .line 119
    if-eqz v4, :cond_7

    .line 120
    :goto_1
    if-eqz v2, :cond_8

    .line 122
    goto :goto_2

    .line 124
    :cond_8
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 125
    :goto_2
    if-eqz v5, :cond_0

    .line 127
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    goto :goto_0

    .line 132
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->conversationIconManager:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 138
    move-result-object v0

    .line 141
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/icon/IconManager;->unimportantConversationKeys:Ljava/util/Set;

    .line 142
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    move-result v1

    .line 147
    xor-int/2addr v1, v2

    .line 148
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/icon/IconManager;->unimportantConversationKeys:Ljava/util/Set;

    .line 149
    if-eqz v1, :cond_a

    .line 151
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->recalculateForImportantConversationChange()V

    .line 153
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->promotedEntriesToSummaryOfSameChannel:Ljava/util/Map;

    .line 156
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 158
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 160
    return-void
    .line 163
.end method
