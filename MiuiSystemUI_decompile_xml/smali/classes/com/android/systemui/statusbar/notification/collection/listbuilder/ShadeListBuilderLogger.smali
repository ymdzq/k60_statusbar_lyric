.class public final Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final logDuplicateSummary(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logDuplicateSummary$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logDuplicateSummary$2;

    .line 4
    const-string v2, "ShadeListBuilder"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 23
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 30
    invoke-static {p4}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 40
    return-void
    .line 43
.end method

.method public final logDuplicateTopLevelKey(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logDuplicateTopLevelKey$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logDuplicateTopLevelKey$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "ShadeListBuilder"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 26
    return-void
    .line 29
.end method

.method public final logEndBuildList(IIIZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEndBuildList$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEndBuildList$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "ShadeListBuilder"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 19
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 22
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    return-void
    .line 31
.end method

.method public final logEntryAttachStateChanged(ILcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEntryAttachStateChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEntryAttachStateChanged$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "ShadeListBuilder"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 23
    if-eqz p3, :cond_0

    .line 26
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object p1, v3

    .line 33
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 34
    if-eqz p4, :cond_1

    .line 37
    invoke-static {p4}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 42
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 46
    return-void
    .line 49
.end method

.method public final logFilterChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFilterChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFilterChanged$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "ShadeListBuilder"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    if-eqz p2, :cond_0

    .line 19
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->mName:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v3

    .line 24
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 25
    if-eqz p3, :cond_1

    .line 28
    iget-object v3, p3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->mName:Ljava/lang/String;

    .line 30
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 35
    return-void
    .line 38
.end method

.method public final logFinalList(Ljava/util/List;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "ShadeListBuilder"

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 13
    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$2;

    .line 15
    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 27
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    :goto_0
    if-ge v4, v0, :cond_3

    .line 30
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v5

    .line 35
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 36
    sget-object v6, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 38
    sget-object v7, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$4;

    .line 40
    invoke-virtual {p0, v2, v6, v7, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 42
    move-result-object v7

    .line 45
    invoke-interface {v7, v4}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 46
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 49
    move-result-object v8

    .line 52
    invoke-interface {v7, v8}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 53
    invoke-interface {v7, v3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 56
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 59
    move-result-object v8

    .line 62
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 66
    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    .line 68
    move-result v8

    .line 71
    invoke-interface {v7, v8}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 72
    invoke-virtual {p0, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 75
    instance-of v7, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 78
    if-eqz v7, :cond_2

    .line 80
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 82
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 84
    if-eqz v7, :cond_1

    .line 86
    sget-object v8, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$5$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$5$2;

    .line 88
    invoke-virtual {p0, v2, v6, v8, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 90
    move-result-object v6

    .line 93
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 94
    move-result-object v8

    .line 97
    invoke-interface {v6, v8}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 98
    invoke-interface {v6, v3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 101
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 104
    invoke-virtual {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    .line 106
    move-result v7

    .line 109
    invoke-interface {v6, v7}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 110
    invoke-virtual {p0, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 113
    :cond_1
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 116
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 118
    move-result v6

    .line 121
    move v7, v3

    .line 122
    :goto_1
    if-ge v7, v6, :cond_2

    .line 123
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object v8

    .line 128
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 129
    sget-object v9, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 131
    sget-object v10, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$7;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$7;

    .line 133
    invoke-virtual {p0, v2, v9, v10, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 135
    move-result-object v9

    .line 138
    invoke-interface {v9, v7}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 139
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 142
    move-result-object v10

    .line 145
    invoke-interface {v9, v10}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 146
    invoke-interface {v9, v3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 149
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 152
    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    .line 154
    move-result v8

    .line 157
    invoke-interface {v9, v8}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 158
    invoke-virtual {p0, v9}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 161
    add-int/lit8 v7, v7, 0x1

    .line 164
    goto :goto_1

    .line 166
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 167
    goto/16 :goto_0

    .line 169
    :cond_3
    return-void
    .line 171
.end method

.method public final logGroupPruningSuppressed(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logGroupPruningSuppressed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logGroupPruningSuppressed$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "ShadeListBuilder"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    if-eqz p2, :cond_0

    .line 19
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 24
    :cond_0
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    return-void
    .line 31
.end method

.method public final logOnBuildList(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logOnBuildList$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logOnBuildList$2;

    .line 4
    const-string v2, "ShadeListBuilder"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logParentChangeSuppressedStarted(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logParentChangeSuppressedStarted$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logParentChangeSuppressedStarted$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "ShadeListBuilder"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 23
    if-eqz p3, :cond_0

    .line 26
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 31
    :cond_0
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 35
    return-void
    .line 38
.end method

.method public final logParentChangeSuppressedStopped(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logParentChangeSuppressedStopped$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logParentChangeSuppressedStopped$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "ShadeListBuilder"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 23
    if-eqz p3, :cond_0

    .line 26
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 31
    :cond_0
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 35
    return-void
    .line 38
.end method

.method public final logParentChanged(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logParentChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logParentChanged$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "ShadeListBuilder"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    if-eqz p2, :cond_0

    .line 19
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v3

    .line 26
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 27
    if-eqz p3, :cond_1

    .line 30
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 35
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 39
    return-void
    .line 42
.end method

.method public final logPipelineRunSuppressed()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPipelineRunSuppressed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPipelineRunSuppressed$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "ShadeListBuilder"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 15
    return-void
    .line 18
.end method

.method public final logPluggableInvalidated(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPluggableInvalidated$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPluggableInvalidated$2;

    .line 4
    const-string v2, "ShadeListBuilder"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->mName:Ljava/lang/String;

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 20
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 23
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 29
    return-void
    .line 32
.end method

.method public final logPromoterChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPromoterChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPromoterChanged$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "ShadeListBuilder"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    if-eqz p2, :cond_0

    .line 19
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->mName:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v3

    .line 24
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 25
    if-eqz p3, :cond_1

    .line 28
    iget-object v3, p3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->mName:Ljava/lang/String;

    .line 30
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 35
    return-void
    .line 38
.end method

.method public final logPrunedReasonChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPrunedReasonChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPrunedReasonChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "ShadeListBuilder"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p3

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method

.method public final logSectionChangeSuppressed(ILcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logSectionChangeSuppressed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logSectionChangeSuppressed$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "ShadeListBuilder"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    if-eqz p2, :cond_0

    .line 19
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->label:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v3

    .line 24
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 25
    if-eqz p3, :cond_1

    .line 28
    iget-object v3, p3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->label:Ljava/lang/String;

    .line 30
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 35
    return-void
    .line 38
.end method

.method public final logSectionChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logSectionChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logSectionChanged$2;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "ShadeListBuilder"

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    if-eqz p2, :cond_0

    .line 19
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->label:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v3

    .line 24
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 25
    if-eqz p3, :cond_1

    .line 28
    iget-object v3, p3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->label:Ljava/lang/String;

    .line 30
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 35
    return-void
    .line 38
.end method
