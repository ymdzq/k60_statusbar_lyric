.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mIsDelayedGroupCache:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    .line 2
    const-string p1, "PreparationCoordinatorInflating"

    .line 4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 9
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;->mIsDelayedGroupCache:Ljava/util/Map;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final onCleanup()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;->mIsDelayedGroupCache:Ljava/util/Map;

    .line 2
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 6
    return-void
    .line 9
.end method

.method public final shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;->mIsDelayedGroupCache:Ljava/util/Map;

    .line 9
    check-cast v1, Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Boolean;

    .line 17
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    .line 22
    if-nez v2, :cond_b

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 29
    if-eq v0, v2, :cond_a

    .line 31
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 33
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 35
    if-eqz v2, :cond_0

    .line 37
    move v2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v2, v5

    .line 41
    :goto_0
    if-eqz v2, :cond_1

    .line 42
    goto/16 :goto_6

    .line 44
    :cond_1
    iget-wide v6, v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mCreationTime:J

    .line 46
    sub-long/2addr p2, v6

    .line 48
    iget-wide v6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mMaxGroupInflationDelay:J

    .line 49
    cmp-long p2, p2, v6

    .line 51
    if-lez p2, :cond_2

    .line 53
    move p2, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move p2, v5

    .line 57
    :goto_1
    const-string p3, "PreparationCoordinator"

    .line 58
    const/4 v2, 0x0

    .line 60
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    .line 61
    if-eqz p2, :cond_3

    .line 63
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    sget-object p2, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 68
    sget-object v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger$logGroupInflationTookTooLong$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger$logGroupInflationTookTooLong$2;

    .line 70
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 72
    invoke-virtual {v6, p3, p2, v7, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 74
    move-result-object p2

    .line 77
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 78
    move-result-object p3

    .line 81
    invoke-interface {p2, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v6, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 85
    goto :goto_6

    .line 88
    :cond_3
    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 89
    if-eqz p2, :cond_6

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->getInflationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 93
    move-result p2

    .line 96
    if-eq p2, v4, :cond_5

    .line 97
    if-ne p2, v3, :cond_4

    .line 99
    goto :goto_2

    .line 101
    :cond_4
    move p2, v5

    .line 102
    goto :goto_3

    .line 103
    :cond_5
    :goto_2
    move p2, v4

    .line 104
    :goto_3
    if-nez p2, :cond_6

    .line 105
    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 107
    invoke-virtual {v6, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->logDelayingGroupRelease(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 109
    goto :goto_5

    .line 112
    :cond_6
    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 113
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object p2

    .line 118
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v7

    .line 122
    if-eqz v7, :cond_9

    .line 123
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v7

    .line 128
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 129
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    .line 131
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 133
    move-result v8

    .line 136
    if-eqz v8, :cond_7

    .line 137
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 139
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 141
    if-eqz v8, :cond_8

    .line 143
    move v8, v4

    .line 145
    goto :goto_4

    .line 146
    :cond_8
    move v8, v5

    .line 147
    :goto_4
    if-nez v8, :cond_7

    .line 148
    invoke-virtual {v6, v0, v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->logDelayingGroupRelease(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 150
    :goto_5
    move p2, v4

    .line 153
    goto :goto_7

    .line 154
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    sget-object p2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 158
    sget-object v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger$logDoneWaitingForGroupInflation$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger$logDoneWaitingForGroupInflation$2;

    .line 160
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 162
    invoke-virtual {v6, p3, p2, v7, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 164
    move-result-object p2

    .line 167
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 168
    move-result-object p3

    .line 171
    invoke-interface {p2, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v6, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 175
    :cond_a
    :goto_6
    move p2, v5

    .line 178
    :goto_7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 179
    move-result-object v2

    .line 182
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->getInflationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 186
    move-result p0

    .line 189
    if-eq p0, v4, :cond_d

    .line 190
    if-ne p0, v3, :cond_c

    .line 192
    goto :goto_8

    .line 194
    :cond_c
    move p0, v5

    .line 195
    goto :goto_9

    .line 196
    :cond_d
    :goto_8
    move p0, v4

    .line 197
    :goto_9
    if-eqz p0, :cond_f

    .line 198
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 200
    move-result p0

    .line 203
    if-eqz p0, :cond_e

    .line 204
    goto :goto_a

    .line 206
    :cond_e
    move v4, v5

    .line 207
    :cond_f
    :goto_a
    return v4
    .line 208
.end method
