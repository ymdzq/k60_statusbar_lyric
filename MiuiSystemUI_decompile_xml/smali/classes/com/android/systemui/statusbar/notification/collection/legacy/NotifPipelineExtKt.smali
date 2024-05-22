.class public abstract Lcom/android/systemui/statusbar/notification/collection/legacy/NotifPipelineExtKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final hasFoldedNotifs(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;I)Z
    .locals 10

    .line 1
    const-class v0, Lcom/android/systemui/log/UnimportantNotifLogger;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/log/UnimportantNotifLogger;

    .line 8
    const-class v1, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 10
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    move-object v7, v1

    .line 16
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 19
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    move-result v1

    .line 26
    const/4 v8, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    goto :goto_1

    .line 30
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p0

    .line 34
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    move-object v9, v1

    .line 45
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 46
    iget-object v2, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 48
    iget-boolean v3, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isFold:Z

    .line 50
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSummaryWithChildren()Z

    .line 52
    move-result v4

    .line 55
    iget-boolean v5, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isVisual:Z

    .line 56
    move-object v1, v0

    .line 58
    move v6, p1

    .line 59
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/log/UnimportantNotifLogger;->logHasFoldedNotifs(Ljava/lang/String;ZZZI)V

    .line 60
    iget-boolean v1, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isFold:Z

    .line 63
    const/4 v2, 0x1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    sget-boolean v1, Lcom/android/systemui/statusbar/notification/unimportant/FoldTool;->isInit:Z

    .line 68
    iget-object v1, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 70
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/notification/unimportant/FoldTool;->isSameUser(Lcom/android/systemui/statusbar/notification/ExpandedNotification;I)Z

    .line 72
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    invoke-static {v9, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isEmptySummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)Z

    .line 78
    move-result v1

    .line 81
    if-nez v1, :cond_2

    .line 82
    move v1, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move v1, v8

    .line 86
    :goto_0
    if-eqz v1, :cond_1

    .line 87
    move v8, v2

    .line 89
    :cond_3
    :goto_1
    return v8
    .line 90
.end method
