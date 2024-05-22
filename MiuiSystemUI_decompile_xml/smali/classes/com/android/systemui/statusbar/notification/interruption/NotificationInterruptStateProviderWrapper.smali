.class public final Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;


# instance fields
.field public final wrapped:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->wrapped:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final logFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->wrapped:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->originalEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 9
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 11
    move-result v1

    .line 14
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 15
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 17
    const-string v3, "com.miui.bugreport"

    .line 19
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    goto/16 :goto_0

    .line 27
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->originalDecision:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 31
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eq v3, v4, :cond_5

    .line 36
    const/16 v4, 0xd

    .line 38
    const-string v5, "231322873"

    .line 40
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 42
    const v7, 0x534e4554

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    .line 47
    if-eq v3, v4, :cond_4

    .line 49
    const/4 v4, 0x5

    .line 51
    if-eq v3, v4, :cond_3

    .line 52
    const/4 v4, 0x6

    .line 54
    if-eq v3, v4, :cond_2

    .line 55
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->shouldLaunch:Z

    .line 57
    const-string v2, "InterruptionStateProvider"

    .line 59
    const/4 v3, 0x0

    .line 61
    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 71
    sget-object v4, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logFullscreen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logFullscreen$2;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 75
    invoke-virtual {p0, v2, v1, v4, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 77
    move-result-object v1

    .line 80
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 84
    invoke-interface {v1, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 85
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 91
    goto/16 :goto_0

    .line 94
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 103
    sget-object v4, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoFullscreen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoFullscreen$2;

    .line 105
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 107
    invoke-virtual {p0, v2, v1, v4, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 109
    move-result-object v1

    .line 112
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 116
    invoke-interface {v1, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 123
    goto :goto_0

    .line 126
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v3

    .line 130
    const-string v4, "bubbleMetadata"

    .line 131
    const-string v5, "274759612"

    .line 133
    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    .line 135
    move-result-object v3

    .line 138
    invoke-static {v7, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 139
    sget-object v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->FSI_SUPPRESSED_SUPPRESSIVE_BUBBLE_METADATA:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    .line 142
    invoke-interface {v6, v3, v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    const-string p1, ": BubbleMetadata may prevent HUN"

    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoFullscreenWarning(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 164
    goto :goto_0

    .line 167
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v3

    .line 171
    const-string v4, "groupAlertBehavior"

    .line 172
    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    .line 174
    move-result-object v3

    .line 177
    invoke-static {v7, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 178
    sget-object v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->FSI_SUPPRESSED_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    .line 181
    invoke-interface {v6, v3, v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    const-string p1, ": GroupAlertBehavior will prevent HUN"

    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p1

    .line 202
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoFullscreenWarning(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 203
    goto :goto_0

    .line 206
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    move-result-object v3

    .line 210
    const-string v4, "no hun or keyguard"

    .line 211
    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    .line 213
    move-result-object v3

    .line 216
    invoke-static {v7, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 217
    sget-object v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->FSI_SUPPRESSED_NO_HUN_OR_KEYGUARD:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    .line 220
    invoke-interface {v6, v3, v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    const-string p1, ": Expected not to HUN while not on keyguard"

    .line 233
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object p1

    .line 241
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoFullscreenWarning(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 242
    :cond_5
    :goto_0
    return-void
    .line 245
.end method

.method public final makeAndLogBubbleDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->wrapped:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 10
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 17
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 24
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    .line 26
    move-result v1

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    .line 30
    if-nez v1, :cond_2

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    goto :goto_0

    .line 37
    :cond_2
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 38
    if-eqz v1, :cond_3

    .line 40
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 45
    if-nez v1, :cond_4

    .line 46
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 48
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    .line 50
    move-result-object v1

    .line 53
    if-nez v1, :cond_4

    .line 54
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 59
    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoBubbleNoMetadata$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoBubbleNoMetadata$2;

    .line 61
    const/4 v2, 0x0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 64
    const-string v3, "InterruptionStateProvider"

    .line 66
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 68
    move-result-object v0

    .line 71
    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 72
    :goto_0
    const/4 v0, 0x0

    .line 75
    :cond_4
    if-eqz v0, :cond_5

    .line 76
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->SHOULD_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    .line 78
    goto :goto_1

    .line 80
    :cond_5
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->SHOULD_NOT_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    .line 81
    :goto_1
    return-object p0
    .line 83
.end method

.method public final makeUnloggedFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->wrapped:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 7
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 9
    move-result-object v0

    .line 12
    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 13
    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isStickyAndNotDemoted()Z

    .line 17
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SHOW_STICKY_HUN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 23
    goto/16 :goto_0

    .line 25
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FULL_SCREEN_INTENT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 27
    goto/16 :goto_0

    .line 29
    :cond_1
    const-class v0, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 31
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 37
    iget-boolean v0, v0, Lcom/miui/systemui/controller/SuperSaveModeController;->mSuperSaveModeOn:Z

    .line 39
    if-eqz v0, :cond_2

    .line 41
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_SUPER_SAVE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 43
    goto/16 :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x4

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    .line 48
    move-result v1

    .line 51
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 52
    move-result v2

    .line 55
    if-ge v2, v0, :cond_3

    .line 56
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_NOT_IMPORTANT_ENOUGH:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 58
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 60
    move-result-object p0

    .line 63
    goto/16 :goto_0

    .line 64
    :cond_3
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 66
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 68
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 74
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    .line 78
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 84
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 86
    move-result-object p0

    .line 89
    goto/16 :goto_0

    .line 90
    :cond_4
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 92
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 96
    move-result-object v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    .line 102
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSIVE_BUBBLE_METADATA:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 108
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 110
    move-result-object p0

    .line 113
    goto/16 :goto_0

    .line 114
    :cond_5
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 116
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    .line 118
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUSPENDED:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 124
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 126
    move-result-object p0

    .line 129
    goto :goto_0

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 131
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 133
    move-result v0

    .line 136
    if-nez v0, :cond_7

    .line 137
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_DEVICE_NOT_INTERACTIVE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 139
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 141
    move-result-object p0

    .line 144
    goto :goto_0

    .line 145
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 146
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDreaming()Z

    .line 148
    move-result v0

    .line 151
    if-eqz v0, :cond_8

    .line 152
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_DEVICE_IS_DREAMING:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 154
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 156
    move-result-object p0

    .line 159
    goto :goto_0

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 161
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 163
    move-result v0

    .line 166
    const/4 v2, 0x1

    .line 167
    if-ne v0, v2, :cond_9

    .line 168
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_KEYGUARD_SHOWING:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 170
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 172
    move-result-object p0

    .line 175
    goto :goto_0

    .line 176
    :cond_9
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->checkHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 178
    move-result v0

    .line 181
    if-eqz v0, :cond_a

    .line 182
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_EXPECTED_TO_HUN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 184
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 186
    move-result-object p0

    .line 189
    goto :goto_0

    .line 190
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 191
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 193
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 195
    if-eqz v0, :cond_c

    .line 197
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 199
    if-eqz p0, :cond_b

    .line 201
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_KEYGUARD_OCCLUDED:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 203
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 205
    move-result-object p0

    .line 208
    goto :goto_0

    .line 209
    :cond_b
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_LOCKED_SHADE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 210
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 212
    move-result-object p0

    .line 215
    goto :goto_0

    .line 216
    :cond_c
    sget-object p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_NO_HUN_OR_KEYGUARD:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 217
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->getDecisionGivenSuppression(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;Z)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 219
    move-result-object p0

    .line 222
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;

    .line 223
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;)V

    .line 225
    return-object v0
    .line 228
.end method
