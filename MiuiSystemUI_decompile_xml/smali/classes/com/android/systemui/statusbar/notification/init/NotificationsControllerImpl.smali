.class public final Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/init/NotificationsController;


# instance fields
.field public final animatedImageNotificationManager:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;

.field public final bubblesOptional:Ljava/util/Optional;

.field public final clickerBuilder:Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

.field public final commonNotifCollection:Ldagger/Lazy;

.field public final fgsNotifListener:Lcom/android/systemui/ForegroundServiceNotificationListener;

.field public final headsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

.field public final memoryMonitor:Ldagger/Lazy;

.field public final notifBindPipelineInitializer:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;

.field public final notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

.field public final notifPipeline:Ldagger/Lazy;

.field public final notifPipelineInitializer:Ldagger/Lazy;

.field public final notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field public final notificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

.field public final notificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

.field public final notificationsMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final peopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

.field public final targetSdkResolver:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Optional;Lcom/android/systemui/ForegroundServiceNotificationListener;Ldagger/Lazy;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 7
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->commonNotifCollection:Ldagger/Lazy;

    .line 10
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifPipeline:Ldagger/Lazy;

    .line 13
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 16
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->targetSdkResolver:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    .line 19
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifPipelineInitializer:Ldagger/Lazy;

    .line 22
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifBindPipelineInitializer:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;

    .line 25
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 28
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    .line 31
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationsMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 34
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    .line 37
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->clickerBuilder:Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

    .line 40
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->animatedImageNotificationManager:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;

    .line 43
    move-object/from16 v1, p14

    .line 45
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->peopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 47
    move-object/from16 v1, p15

    .line 49
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->bubblesOptional:Ljava/util/Optional;

    .line 51
    move-object/from16 v1, p16

    .line 53
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->fgsNotifListener:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 55
    move-object/from16 v1, p17

    .line 57
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->memoryMonitor:Ldagger/Lazy;

    .line 59
    return-void
    .line 61
.end method


# virtual methods
.method public final getActiveNotificationsCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifCount:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Number;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method

.method public final initialize(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationListener;->registerAsSystemService()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifPipeline:Ldagger/Lazy;

    .line 7
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 13
    new-instance v3, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl$initialize$1;

    .line 15
    invoke-direct {v3, p3}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl$initialize$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    .line 17
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 20
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 23
    move-result-object p1

    .line 26
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->clickerBuilder:Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v3, Lcom/android/systemui/statusbar/notification/NotificationClicker;

    .line 32
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    .line 34
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->bubblesOptional:Ljava/util/Optional;

    .line 36
    invoke-direct {v3, v2, p1, v4, p5}, Lcom/android/systemui/statusbar/notification/NotificationClicker;-><init>(Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    .line 38
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    .line 41
    iput-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mNotificationClicker:Lcom/android/systemui/statusbar/notification/NotificationClicker;

    .line 43
    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 45
    iput-object p3, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 47
    iput-object p6, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mBindRowCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;

    .line 49
    iget-object p5, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mIconManager:Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;

    .line 51
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;->attach()V

    .line 53
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    .line 56
    iput-object p2, p5, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mNotificationPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 58
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifBindPipelineInitializer:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;

    .line 60
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;->initialize()V

    .line 62
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->animatedImageNotificationManager:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;

    .line 65
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    new-instance p6, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$1;

    .line 70
    invoke-direct {p6, p5}, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$1;-><init>(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;)V

    .line 72
    iget-object v2, p5, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 75
    invoke-virtual {v2, p6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 77
    new-instance p6, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$2;

    .line 80
    invoke-direct {p6, p5}, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$2;-><init>(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;)V

    .line 82
    iget-object v2, p5, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 85
    invoke-interface {v2, p6}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 87
    new-instance p6, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$3;

    .line 90
    invoke-direct {p6, p5}, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$3;-><init>(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;)V

    .line 92
    iget-object p5, p5, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->bindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    .line 95
    iget-object p5, p5, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;->listeners:Lcom/android/systemui/util/ListenerSet;

    .line 97
    invoke-virtual {p5, p6}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    .line 99
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifPipelineInitializer:Ldagger/Lazy;

    .line 102
    invoke-interface {p5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 104
    move-result-object p5

    .line 107
    check-cast p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;

    .line 108
    iget-object p6, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 110
    const-string v2, "NotifPipeline"

    .line 112
    invoke-virtual {p6, v2, p5}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 114
    iput-object v0, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotificationService:Lcom/android/systemui/statusbar/NotificationListener;

    .line 117
    iget-object p6, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 119
    iput-object p1, p6, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    .line 121
    iget-object p1, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    .line 123
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinatorsImpl;

    .line 125
    iget-object p6, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mPipelineWrapper:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 127
    invoke-virtual {p1, p6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinatorsImpl;->attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V

    .line 129
    iget-object p1, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mShadeViewManagerFactory:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;

    .line 132
    invoke-interface {p1, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;->create(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    .line 134
    move-result-object p1

    .line 137
    iput-object p1, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mShadeViewManager:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    .line 138
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;

    .line 140
    iget-object p4, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    .line 142
    iput-object p1, p4, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;

    .line 144
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;

    .line 146
    invoke-direct {p1, p4}, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;)V

    .line 148
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 151
    iget-object p4, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 154
    iget-object p6, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 156
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    .line 158
    iput-object p1, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnRenderListListener:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;

    .line 161
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 163
    iget-object p1, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mHandler:Landroid/os/Handler;

    .line 166
    if-nez p1, :cond_0

    .line 168
    new-instance p1, Landroid/os/Handler;

    .line 170
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 172
    move-result-object p6

    .line 175
    invoke-direct {p1, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    iput-object p1, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mHandler:Landroid/os/Handler;

    .line 179
    :cond_0
    iget-object p1, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 181
    const-string p6, "ShadeListBuilder"

    .line 183
    invoke-virtual {p1, p6, p4}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 185
    iget-object p1, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 193
    iget-object p6, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifCollectionListeners:Ljava/util/List;

    .line 196
    check-cast p6, Ljava/util/ArrayList;

    .line 198
    iget-object v3, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    .line 200
    invoke-virtual {p6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 205
    iget-object p6, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadyForBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    .line 208
    iput-object p6, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    .line 210
    iget-object p6, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mChoreographer:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    .line 212
    iget-object p6, p6, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->listeners:Lcom/android/systemui/util/ListenerSet;

    .line 214
    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnEvalListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;

    .line 216
    invoke-virtual {p6, p4}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    .line 218
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 221
    iget-boolean p4, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAttached:Z

    .line 224
    const-string p6, "attach() called twice"

    .line 226
    if-nez p4, :cond_2

    .line 228
    const/4 p4, 0x1

    .line 230
    iput-boolean p4, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAttached:Z

    .line 231
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 233
    const-string v4, "NotifCollection"

    .line 235
    invoke-virtual {v3, v4, p1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 237
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    .line 240
    iget-object v4, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    .line 242
    iput-object v3, v4, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    .line 244
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    .line 246
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v5, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda3;

    .line 251
    const/4 v6, 0x0

    .line 253
    invoke-direct {v5, v6, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 254
    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda3;

    .line 257
    invoke-direct {v3, p4, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 259
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mInconsistencyTracker:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;

    .line 262
    iget-boolean v6, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->attached:Z

    .line 264
    if-nez v6, :cond_1

    .line 266
    iput-boolean p4, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->attached:Z

    .line 268
    iput-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->collectedKeySetAccessor:Lkotlin/jvm/functions/Function0;

    .line 270
    iput-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->coalescedKeySetAccessor:Lkotlin/jvm/functions/Function0;

    .line 272
    iget-object p1, p5, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotificationService:Lcom/android/systemui/statusbar/NotificationListener;

    .line 274
    iget-object p4, v4, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mListener:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;

    .line 276
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V

    .line 278
    const-string p1, "Notif pipeline initialized. rendering=true"

    .line 281
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 286
    move-result-object p1

    .line 289
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 290
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->targetSdkResolver:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    .line 292
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    new-instance p5, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;

    .line 297
    invoke-direct {p5, p4}, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;)V

    .line 299
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 302
    invoke-virtual {p1, p5}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 304
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationsMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 307
    iput-object p2, p1, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 309
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 311
    iput-object p3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 313
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->peopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 315
    iget-object p1, p1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    .line 317
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V

    .line 319
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->fgsNotifListener:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    new-instance p2, Lcom/android/systemui/ForegroundServiceNotificationListener$1;

    .line 327
    invoke-direct {p2, p1}, Lcom/android/systemui/ForegroundServiceNotificationListener$1;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;)V

    .line 329
    iget-object p1, p1, Lcom/android/systemui/ForegroundServiceNotificationListener;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 332
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 334
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->memoryMonitor:Ldagger/Lazy;

    .line 337
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 339
    move-result-object p0

    .line 342
    check-cast p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMonitor;

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    const-string p1, "NotificationMemoryMonitor initialized."

    .line 348
    const-string p2, "NotificationMemory"

    .line 350
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMonitor;->notificationMemoryDumper:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;

    .line 355
    iget-object p3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 357
    const-string p4, "NotificationMemoryDumper"

    .line 359
    invoke-virtual {p3, p4, p1}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 361
    const-string p1, "Registered dumpable."

    .line 364
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-object p1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 369
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMonitor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 371
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    return-void

    .line 376
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 377
    invoke-direct {p0, p6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 379
    throw p0

    .line 382
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 383
    invoke-direct {p0, p6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 385
    throw p0
    .line 388
.end method

.method public final resetUserExpandedStates()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->commonNotifCollection:Ldagger/Lazy;

    .line 2
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 8
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 12
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 30
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 32
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetUserExpansion()V

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    return-void
    .line 40
.end method

.method public final setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroid/service/notification/SnoozeCriterion;->getId()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    .line 30
    move-result p2

    .line 33
    mul-int/lit8 p2, p2, 0x3c

    .line 34
    int-to-long v0, p2

    .line 36
    const-wide/16 v2, 0x3e8

    .line 37
    mul-long/2addr v0, v2

    .line 39
    invoke-virtual {p0, p1, v0, v1}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    .line 40
    :goto_0
    return-void
    .line 43
.end method
