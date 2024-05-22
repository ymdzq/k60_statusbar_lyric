.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onBeforeFinalizeFilter(Ljava/util/List;)V
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_a

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 19
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 21
    if-eqz v4, :cond_8

    .line 23
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 25
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 27
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateRequiredNotifViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 29
    move v4, v1

    .line 32
    :goto_1
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 33
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 35
    move-result v6

    .line 38
    if-ge v4, v6, :cond_9

    .line 39
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v5

    .line 44
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 45
    iget v6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mChildBindCutoff:I

    .line 47
    const/4 v7, 0x1

    .line 49
    if-ge v4, v6, :cond_0

    .line 50
    move v6, v7

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    move v6, v1

    .line 54
    :goto_2
    if-eqz v6, :cond_1

    .line 55
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateRequiredNotifViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 57
    goto/16 :goto_6

    .line 60
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    .line 62
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 64
    move-result v6

    .line 67
    const-string v8, "Past last visible group child"

    .line 68
    if-eqz v6, :cond_2

    .line 70
    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->abortInflation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 72
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->getInflationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 75
    move-result v6

    .line 78
    const/4 v9, 0x2

    .line 79
    if-eq v6, v7, :cond_4

    .line 80
    if-ne v6, v9, :cond_3

    .line 82
    goto :goto_3

    .line 84
    :cond_3
    move v6, v1

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    :goto_3
    move v6, v7

    .line 87
    :goto_4
    if-eqz v6, :cond_7

    .line 88
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    .line 90
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    sget-object v10, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 95
    sget-object v11, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger$logFreeNotifViews$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger$logFreeNotifViews$2;

    .line 97
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 99
    const-string v12, "PreparationCoordinator"

    .line 101
    const/4 v13, 0x0

    .line 103
    invoke-virtual {v6, v12, v10, v11, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 104
    move-result-object v10

    .line 107
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 108
    move-result-object v11

    .line 111
    invoke-interface {v10, v11}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 112
    invoke-interface {v10, v8}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v6, v10}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 118
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mViewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    .line 121
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;->rowMap:Ljava/util/Map;

    .line 123
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    .line 125
    move-result-object v8

    .line 128
    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    .line 132
    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 134
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    .line 136
    if-eqz v6, :cond_6

    .line 138
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    .line 140
    move-result v8

    .line 143
    if-nez v8, :cond_5

    .line 144
    goto :goto_5

    .line 146
    :cond_5
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 147
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    .line 149
    move-result-object v8

    .line 152
    check-cast v8, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 153
    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->markContentViewsFreeable(I)V

    .line 155
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->markContentViewsFreeable(I)V

    .line 158
    const/16 v7, 0x8

    .line 161
    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->markContentViewsFreeable(I)V

    .line 163
    invoke-virtual {v6, v5, v13}, Lcom/android/systemui/statusbar/notification/row/BindStage;->requestRebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)Landroidx/core/os/CancellationSignal;

    .line 166
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    move-result-object v6

    .line 172
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    .line 173
    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    goto :goto_6

    .line 178
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    .line 179
    const-string p1, "NotificationRowBinder must be attached before using NotifInflaterImpl."

    .line 181
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 183
    throw p0

    .line 186
    :cond_7
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 187
    goto/16 :goto_1

    .line 189
    :cond_8
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 191
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateRequiredNotifViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 193
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 196
    goto/16 :goto_0

    .line 198
    :cond_a
    return-void
    .line 200
.end method
