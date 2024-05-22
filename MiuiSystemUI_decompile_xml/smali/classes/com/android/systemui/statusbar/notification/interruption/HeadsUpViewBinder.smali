.class public final Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mLogger:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;

.field public final mNotificationMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field public mNotificationPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field public final mOngoingBindCallbacks:Ljava/util/Map;

.field public final mStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/NotificationMessagingUtil;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mOngoingBindCallbacks:Ljava/util/Map;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mNotificationMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public final abortBindCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mOngoingBindCallbacks:Ljava/util/Map;

    .line 2
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/core/os/CancellationSignal;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 19
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$currentOngoingBindingAborted$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$currentOngoingBindingAborted$2;

    .line 21
    const-string v3, "HeadsUpViewBinder"

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 25
    const/4 v4, 0x0

    .line 27
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 28
    move-result-object v1

    .line 31
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 35
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 39
    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 42
    :cond_0
    return-void
    .line 45
.end method

.method public final bindHeadsUpView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$bindForAsyncHeadsUp$1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 8
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 12
    move-result v3

    .line 15
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mNotificationMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 16
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mNotificationPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 24
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 26
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    .line 28
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    const/4 v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    .line 37
    const/4 v4, 0x4

    .line 39
    if-eq v3, v2, :cond_1

    .line 40
    iget v3, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    .line 42
    or-int/2addr v3, v4

    .line 44
    iput v3, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    .line 45
    :cond_1
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    .line 47
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->requireContentViews(I)V

    .line 49
    new-instance v2, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda1;

    .line 52
    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$bindForAsyncHeadsUp$1;)V

    .line 54
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/row/BindStage;->requestRebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)Landroidx/core/os/CancellationSignal;

    .line 57
    move-result-object p2

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->abortBindCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 69
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$startBindingHun$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$startBindingHun$2;

    .line 71
    const/4 v3, 0x0

    .line 73
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 74
    const-string v4, "HeadsUpViewBinder"

    .line 76
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 78
    move-result-object v1

    .line 81
    invoke-static {p1, v1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mOngoingBindCallbacks:Ljava/util/Map;

    .line 85
    check-cast p0, Landroid/util/ArrayMap;

    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
    .line 92
.end method

.method public final unbindHeadsUpView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->abortBindCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 5
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/BindStage;->mContentParams:Ljava/util/Map;

    .line 7
    check-cast v1, Landroid/util/ArrayMap;

    .line 9
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 15
    const-string v2, "HeadsUpViewBinder"

    .line 17
    const/4 v3, 0x0

    .line 19
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;

    .line 20
    if-nez v1, :cond_0

    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object p0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 27
    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$entryBindStageParamsNullOnUnbind$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$entryBindStageParamsNullOnUnbind$2;

    .line 29
    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 31
    invoke-virtual {v1, v2, p0, v0, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 33
    move-result-object p0

    .line 36
    invoke-static {p1, p0, v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 37
    return-void

    .line 40
    :cond_0
    const/4 v5, 0x4

    .line 41
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->markContentViewsFreeable(I)V

    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 48
    sget-object v5, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$entryContentViewMarkedFreeable$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$entryContentViewMarkedFreeable$2;

    .line 50
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 52
    invoke-virtual {v4, v2, v1, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 54
    move-result-object v1

    .line 57
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 61
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 65
    new-instance v1, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda0;

    .line 68
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;)V

    .line 70
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->requestRebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)Landroidx/core/os/CancellationSignal;

    .line 73
    return-void
    .line 76
.end method
