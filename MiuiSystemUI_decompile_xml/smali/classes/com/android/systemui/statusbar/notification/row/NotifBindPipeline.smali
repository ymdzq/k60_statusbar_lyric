.class public final Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public final mBindEntries:Ljava/util/Map;

.field public final mCollectionListener:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$1;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

.field public final mMainHandler:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$NotifBindPipelineHandler;

.field public final mScratchCallbacksList:Ljava/util/List;

.field public mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mScratchCallbacksList:Ljava/util/List;

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mCollectionListener:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$1;

    .line 24
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 26
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 28
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    .line 31
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$NotifBindPipelineHandler;

    .line 33
    invoke-direct {p1, p0, p3}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$NotifBindPipelineHandler;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;Landroid/os/Looper;)V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mMainHandler:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$NotifBindPipelineHandler;

    .line 38
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBgHandler:Landroid/os/Handler;

    .line 40
    return-void
    .line 42
.end method


# virtual methods
.method public final requestPipelineRun(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logRequestPipelineRun$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logRequestPipelineRun$2;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 11
    const-string v3, "NotifBindPipeline"

    .line 13
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v2

    .line 19
    invoke-static {p1, v2, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 20
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    .line 23
    check-cast v2, Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    .line 31
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 33
    if-nez v5, :cond_0

    .line 35
    sget-object p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logRequestPipelineRowNotSet$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logRequestPipelineRowNotSet$2;

    .line 37
    invoke-virtual {v0, v3, v1, p0, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 39
    move-result-object p0

    .line 42
    invoke-static {p1, p0, v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 43
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    .line 47
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 49
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mBinder:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

    .line 51
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()Z

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mMainHandler:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$NotifBindPipelineHandler;

    .line 61
    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 64
    move-result v3

    .line 67
    if-nez v3, :cond_1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBgHandler:Landroid/os/Handler;

    .line 70
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 72
    move-result-object v3

    .line 75
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 76
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 78
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 82
    move-result v4

    .line 85
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 86
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v2

    .line 91
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    .line 92
    move-result-object v2

    .line 95
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda2;

    .line 96
    invoke-direct {v4, p1, v2}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;)V

    .line 98
    invoke-virtual {v3, v4}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    .line 101
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 107
    move-result-object p0

    .line 110
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    :cond_1
    return-void
    .line 114
.end method
