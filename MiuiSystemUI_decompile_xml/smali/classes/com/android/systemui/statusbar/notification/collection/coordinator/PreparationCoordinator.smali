.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# static fields
.field public static final CHILD_BIND_CUTOFF:I


# instance fields
.field public final mAdjustmentProvider:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

.field public final mBindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

.field public final mChildBindCutoff:I

.field public final mInflatingNotifs:Landroid/util/ArraySet;

.field public final mInflationAdjustments:Landroid/util/ArrayMap;

.field public final mInflationErrorListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$4;

.field public final mInflationStates:Landroid/util/ArrayMap;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

.field public final mMaxGroupInflationDelay:J

.field public final mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$1;

.field public final mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

.field public final mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

.field public final mNotifInflatingFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;

.field public final mNotifInflationErrorFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$2;

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mViewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;


# direct methods
.method public static $r8$lambda$T1DwXSSxf_XS7CenlmlbkE5FMFw(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger$logNotifInflated$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger$logNotifInflated$2;

    .line 9
    const-string v3, "PreparationCoordinator"

    .line 11
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v1

    .line 19
    invoke-static {p1, v1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    .line 23
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mViewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    .line 28
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;->rowMap:Ljava/util/Map;

    .line 30
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 32
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const/4 p2, 0x1

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p2

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mBindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    .line 47
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;->listeners:Lcom/android/systemui/util/ListenerSet;

    .line 49
    invoke-virtual {p2}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p2

    .line 54
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager$Listener;

    .line 65
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager$Listener;->onViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 67
    goto :goto_0

    .line 70
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    const-string v0, "onInflationFinished for "

    .line 73
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflatingFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    .line 91
    return-void
    .line 94
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->NUMBER_OF_CHILDREN_WHEN_CHILDREN_EXPANDED:I

    .line 2
    add-int/lit8 v0, v0, 0x1

    .line 4
    sput v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->CHILD_BIND_CUTOFF:I

    .line 6
    return-void
    .line 8
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;)V
    .locals 11

    .line 1
    sget v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->CHILD_BIND_CUTOFF:I

    const-wide/16 v9, 0x1f4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;IJ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationAdjustments:Landroid/util/ArrayMap;

    .line 5
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$1;

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflationErrorFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$2;

    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflatingFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;

    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$4;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationErrorListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$4;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    .line 11
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    .line 12
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    .line 13
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mViewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    .line 14
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mAdjustmentProvider:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    .line 15
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 16
    iput p8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mChildBindCutoff:I

    .line 17
    iput-wide p9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mMaxGroupInflationDelay:J

    .line 18
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mBindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    return-void
.end method


# virtual methods
.method public final abortInflation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()Z

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    .line 13
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 18
    if-nez v0, :cond_0

    .line 19
    if-eqz v1, :cond_1

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 28
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger$logInflationAborted$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger$logInflationAborted$2;

    .line 30
    const-string v2, "PreparationCoordinator"

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 34
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 44
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 45
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 51
    :cond_1
    return-void
    .line 54
.end method

.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mListeners:Ljava/util/List;

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationErrorListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$4;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mAdjustmentProvider:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    .line 18
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->dirtyListeners:Lcom/android/systemui/util/ListenerSet;

    .line 20
    invoke-virtual {v2}, Lcom/android/systemui/util/ListenerSet;->isEmpty()Z

    .line 22
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 28
    check-cast v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 30
    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mNotifStateChangedListeners:Lcom/android/systemui/util/ListenerSet;

    .line 32
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->notifStateChangedListener:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$notifStateChangedListener$1;

    .line 34
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->updateSnoozeEnabled()V

    .line 39
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->settingsObserver:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$settingsObserver$1;

    .line 42
    const/4 v4, -0x1

    .line 44
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 45
    const-string/jumbo v5, "show_notification_snooze"

    .line 47
    invoke-interface {v1, v5, v3, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    .line 50
    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$1;

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda1;

    .line 61
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeFinalizeFilterListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflationErrorFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$2;

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflatingFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;

    .line 74
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 76
    return-void
    .line 79
.end method

.method public final getInflationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    const-string p1, "Asking state of a notification preparation coordinator doesn\'t know about"

    .line 10
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p0

    .line 18
    return p0
    .line 19
.end method

.method public final inflateEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->abortInflation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationAdjustments:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    .line 10
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p3, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;

    .line 15
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isMinimized:Z

    .line 17
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isSnoozeEnabled:Z

    .line 19
    invoke-direct {p3, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;-><init>(ZZ)V

    .line 21
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda2;

    .line 24
    const/4 v0, 0x0

    .line 26
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;I)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    .line 30
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    .line 37
    if-eqz v0, :cond_0

    .line 39
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;

    .line 41
    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda2;)V

    .line 43
    invoke-virtual {v0, p1, p3, v1}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;)V

    .line 46
    goto :goto_0

    .line 49
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 50
    const-string p3, "NotificationRowBinder must be attached before using NotifInflaterImpl."

    .line 52
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p2
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    move-exception p2

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->setInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    .line 61
    :goto_0
    return-void
    .line 64
.end method

.method public final inflateRequiredNotifViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mAdjustmentProvider:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v9, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;

    .line 7
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 9
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 11
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    .line 13
    move-result-object v2

    .line 16
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 17
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartReplies()Ljava/util/List;

    .line 19
    move-result-object v3

    .line 22
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 23
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->isConversation()Z

    .line 25
    move-result v4

    .line 28
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->isSnoozeSettingsEnabled:Z

    .line 29
    const/4 v10, 0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCanceled()Z

    .line 35
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    move v6, v10

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v6, v5

    .line 43
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 44
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 46
    if-eqz v7, :cond_d

    .line 48
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 50
    if-eqz v1, :cond_c

    .line 52
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->sectionStyleProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

    .line 54
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;->lowPrioritySections:Ljava/util/Set;

    .line 56
    const/4 v11, 0x0

    .line 58
    if-nez v8, :cond_1

    .line 59
    move-object v8, v11

    .line 61
    :cond_1
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    .line 62
    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 64
    move-result v7

    .line 67
    sget-object v8, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 68
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    move-result v8

    .line 73
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 74
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result v1

    .line 79
    if-eqz v7, :cond_3

    .line 80
    if-nez v8, :cond_2

    .line 82
    if-eqz v1, :cond_3

    .line 84
    :cond_2
    move v7, v10

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move v7, v5

    .line 88
    :goto_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 89
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 91
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 93
    move-result v0

    .line 96
    iget-boolean v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hideSensitiveByAppLock:Z

    .line 97
    move-object v1, v9

    .line 99
    move v5, v6

    .line 100
    move v6, v7

    .line 101
    move v7, v0

    .line 102
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;-><init>(Ljava/util/List;Ljava/util/List;ZZZZZ)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    .line 106
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 108
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    const-string v0, "Inflating notification has no adjustments"

    .line 114
    invoke-virtual {p0, p1, v9, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->needToReinflate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)Z

    .line 116
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    const-string v0, "adjustment changed while inflating"

    .line 122
    invoke-virtual {p0, p1, v9, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)V

    .line 124
    :cond_4
    return-void

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    .line 128
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object v0

    .line 133
    check-cast v0, Ljava/lang/Integer;

    .line 134
    if-nez v0, :cond_6

    .line 136
    return-void

    .line 138
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    move-result v0

    .line 142
    const/4 v1, -0x1

    .line 143
    if-eq v0, v1, :cond_a

    .line 144
    if-eqz v0, :cond_9

    .line 146
    if-eq v0, v10, :cond_8

    .line 148
    const/4 v1, 0x2

    .line 150
    if-eq v0, v1, :cond_7

    .line 151
    goto :goto_2

    .line 153
    :cond_7
    invoke-virtual {p0, p1, v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->rebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;)V

    .line 154
    goto :goto_2

    .line 157
    :cond_8
    const-string v0, "Fully inflated notification has no adjustments"

    .line 158
    invoke-virtual {p0, p1, v9, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->needToReinflate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)Z

    .line 160
    move-result v0

    .line 163
    if-eqz v0, :cond_b

    .line 164
    invoke-virtual {p0, p1, v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->rebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;)V

    .line 166
    goto :goto_2

    .line 169
    :cond_9
    const-string v0, "entryAdded"

    .line 170
    invoke-virtual {p0, p1, v9, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)V

    .line 172
    goto :goto_2

    .line 175
    :cond_a
    invoke-virtual {p0, p1, v9, v11}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->needToReinflate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)Z

    .line 176
    move-result v0

    .line 179
    if-eqz v0, :cond_b

    .line 180
    const-string v0, "adjustment changed after error"

    .line 182
    invoke-virtual {p0, p1, v9, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)V

    .line 184
    :cond_b
    :goto_2
    return-void

    .line 187
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 188
    const-string p1, "Entry must have a parent to determine if minimized"

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 192
    move-result-object p1

    .line 195
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 196
    throw p0

    .line 199
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 200
    const-string p1, "Entry must have a section to determine if minimized"

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 204
    move-result-object p1

    .line 207
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 208
    throw p0
    .line 211
.end method

.method public final needToReinflate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)Z
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationAdjustments:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;

    .line 8
    const/4 p1, 0x1

    .line 10
    if-nez p0, :cond_1

    .line 11
    if-nez p3, :cond_0

    .line 13
    return p1

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0

    .line 21
    :cond_1
    const/4 p3, 0x0

    .line 22
    if-ne p0, p2, :cond_2

    .line 23
    goto/16 :goto_13

    .line 25
    :cond_2
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isConversation:Z

    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isConversation:Z

    .line 29
    if-eq v1, v0, :cond_3

    .line 31
    goto/16 :goto_14

    .line 33
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isSnoozeEnabled:Z

    .line 35
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isSnoozeEnabled:Z

    .line 37
    if-eq v0, v1, :cond_4

    .line 39
    goto/16 :goto_14

    .line 41
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isMinimized:Z

    .line 43
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isMinimized:Z

    .line 45
    if-eq v0, v1, :cond_5

    .line 47
    goto/16 :goto_14

    .line 49
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->needsRedaction:Z

    .line 51
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->needsRedaction:Z

    .line 53
    if-eq v0, v1, :cond_6

    .line 55
    goto/16 :goto_14

    .line 57
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartActions:Ljava/util/List;

    .line 59
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartActions:Ljava/util/List;

    .line 61
    if-ne v0, v1, :cond_7

    .line 63
    goto/16 :goto_11

    .line 65
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    move-result v2

    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 71
    move-result v3

    .line 74
    if-eq v2, v3, :cond_8

    .line 75
    goto/16 :goto_10

    .line 77
    :cond_8
    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 79
    invoke-direct {v2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 81
    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 84
    invoke-direct {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 86
    invoke-static {v2, v0}, Lkotlin/sequences/SequencesKt;->zip(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/MergingSequence;

    .line 89
    move-result-object v0

    .line 92
    iget-object v1, v0, Lkotlin/sequences/MergingSequence;->sequence1:Lkotlin/sequences/Sequence;

    .line 93
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 95
    move-result-object v1

    .line 98
    iget-object v2, v0, Lkotlin/sequences/MergingSequence;->sequence2:Lkotlin/sequences/Sequence;

    .line 99
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v2

    .line 104
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v3

    .line 108
    if-eqz v3, :cond_a

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    move-result v3

    .line 114
    if-eqz v3, :cond_a

    .line 115
    move v3, p1

    .line 117
    goto :goto_0

    .line 118
    :cond_a
    move v3, p3

    .line 119
    :goto_0
    if-eqz v3, :cond_21

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v3

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v4

    .line 129
    iget-object v5, v0, Lkotlin/sequences/MergingSequence;->transform:Lkotlin/jvm/functions/Function2;

    .line 130
    invoke-interface {v5, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object v3

    .line 135
    check-cast v3, Lkotlin/Pair;

    .line 136
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 138
    move-result-object v4

    .line 141
    check-cast v4, Landroid/app/Notification$Action;

    .line 142
    iget-object v4, v4, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 144
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 146
    move-result-object v5

    .line 149
    check-cast v5, Landroid/app/Notification$Action;

    .line 150
    iget-object v5, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 152
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 154
    move-result v4

    .line 157
    if-eqz v4, :cond_20

    .line 158
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 160
    move-result-object v4

    .line 163
    check-cast v4, Landroid/app/Notification$Action;

    .line 164
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 166
    move-result-object v4

    .line 169
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 170
    move-result-object v5

    .line 173
    check-cast v5, Landroid/app/Notification$Action;

    .line 174
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 176
    move-result-object v5

    .line 179
    if-ne v4, v5, :cond_b

    .line 180
    goto :goto_1

    .line 182
    :cond_b
    if-eqz v4, :cond_e

    .line 183
    if-nez v5, :cond_c

    .line 185
    goto :goto_2

    .line 187
    :cond_c
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    .line 188
    move-result v4

    .line 191
    if-nez v4, :cond_d

    .line 192
    goto :goto_2

    .line 194
    :cond_d
    :goto_1
    move v4, p3

    .line 195
    goto :goto_3

    .line 196
    :cond_e
    :goto_2
    move v4, p1

    .line 197
    :goto_3
    if-nez v4, :cond_20

    .line 198
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 200
    move-result-object v4

    .line 203
    check-cast v4, Landroid/app/Notification$Action;

    .line 204
    iget-object v4, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 206
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 208
    move-result-object v5

    .line 211
    check-cast v5, Landroid/app/Notification$Action;

    .line 212
    iget-object v5, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 214
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    move-result v4

    .line 219
    if-eqz v4, :cond_20

    .line 220
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 222
    move-result-object v4

    .line 225
    check-cast v4, Landroid/app/Notification$Action;

    .line 226
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 228
    move-result-object v4

    .line 231
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 232
    move-result-object v3

    .line 235
    check-cast v3, Landroid/app/Notification$Action;

    .line 236
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 238
    move-result-object v3

    .line 241
    if-ne v4, v3, :cond_f

    .line 242
    goto/16 :goto_b

    .line 244
    :cond_f
    if-eqz v4, :cond_1e

    .line 246
    if-nez v3, :cond_10

    .line 248
    goto/16 :goto_c

    .line 250
    :cond_10
    array-length v5, v4

    .line 252
    array-length v6, v3

    .line 253
    if-eq v5, v6, :cond_11

    .line 254
    goto/16 :goto_c

    .line 256
    :cond_11
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 258
    move-result-object v4

    .line 261
    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 262
    move-result-object v3

    .line 265
    invoke-static {v4, v3}, Lkotlin/sequences/SequencesKt;->zip(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/MergingSequence;

    .line 266
    move-result-object v3

    .line 269
    iget-object v4, v3, Lkotlin/sequences/MergingSequence;->sequence1:Lkotlin/sequences/Sequence;

    .line 270
    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 272
    move-result-object v4

    .line 275
    iget-object v5, v3, Lkotlin/sequences/MergingSequence;->sequence2:Lkotlin/sequences/Sequence;

    .line 276
    invoke-interface {v5}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 278
    move-result-object v5

    .line 281
    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    move-result v6

    .line 285
    if-eqz v6, :cond_13

    .line 286
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    move-result v6

    .line 291
    if-eqz v6, :cond_13

    .line 292
    move v6, p1

    .line 294
    goto :goto_4

    .line 295
    :cond_13
    move v6, p3

    .line 296
    :goto_4
    if-eqz v6, :cond_1d

    .line 297
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    move-result-object v6

    .line 302
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    move-result-object v7

    .line 306
    iget-object v8, v3, Lkotlin/sequences/MergingSequence;->transform:Lkotlin/jvm/functions/Function2;

    .line 307
    invoke-interface {v8, v6, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    move-result-object v6

    .line 312
    check-cast v6, Lkotlin/Pair;

    .line 313
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 315
    move-result-object v7

    .line 318
    check-cast v7, Landroid/app/RemoteInput;

    .line 319
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    .line 321
    move-result-object v7

    .line 324
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 325
    move-result-object v8

    .line 328
    check-cast v8, Landroid/app/RemoteInput;

    .line 329
    invoke-virtual {v8}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    .line 331
    move-result-object v8

    .line 334
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 335
    move-result v7

    .line 338
    if-eqz v7, :cond_1c

    .line 339
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 341
    move-result-object v7

    .line 344
    check-cast v7, Landroid/app/RemoteInput;

    .line 345
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    .line 347
    move-result-object v7

    .line 350
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 351
    move-result-object v6

    .line 354
    check-cast v6, Landroid/app/RemoteInput;

    .line 355
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    .line 357
    move-result-object v6

    .line 360
    if-ne v7, v6, :cond_14

    .line 361
    goto :goto_6

    .line 363
    :cond_14
    if-eqz v7, :cond_1a

    .line 364
    if-nez v6, :cond_15

    .line 366
    goto :goto_7

    .line 368
    :cond_15
    array-length v8, v7

    .line 369
    array-length v9, v6

    .line 370
    if-eq v8, v9, :cond_16

    .line 371
    goto :goto_7

    .line 373
    :cond_16
    invoke-static {v7}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 374
    move-result-object v7

    .line 377
    invoke-static {v6}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 378
    move-result-object v6

    .line 381
    invoke-static {v7, v6}, Lkotlin/sequences/SequencesKt;->zip(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/MergingSequence;

    .line 382
    move-result-object v6

    .line 385
    iget-object v7, v6, Lkotlin/sequences/MergingSequence;->sequence1:Lkotlin/sequences/Sequence;

    .line 386
    invoke-interface {v7}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 388
    move-result-object v7

    .line 391
    iget-object v8, v6, Lkotlin/sequences/MergingSequence;->sequence2:Lkotlin/sequences/Sequence;

    .line 392
    invoke-interface {v8}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 394
    move-result-object v8

    .line 397
    :cond_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    move-result v9

    .line 401
    if-eqz v9, :cond_18

    .line 402
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    move-result v9

    .line 407
    if-eqz v9, :cond_18

    .line 408
    move v9, p1

    .line 410
    goto :goto_5

    .line 411
    :cond_18
    move v9, p3

    .line 412
    :goto_5
    if-eqz v9, :cond_19

    .line 413
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    move-result-object v9

    .line 418
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    move-result-object v10

    .line 422
    iget-object v11, v6, Lkotlin/sequences/MergingSequence;->transform:Lkotlin/jvm/functions/Function2;

    .line 423
    invoke-interface {v11, v9, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    move-result-object v9

    .line 428
    check-cast v9, Lkotlin/Pair;

    .line 429
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 431
    move-result-object v10

    .line 434
    check-cast v10, Ljava/lang/CharSequence;

    .line 435
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 437
    move-result-object v9

    .line 440
    check-cast v9, Ljava/lang/CharSequence;

    .line 441
    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 443
    move-result v9

    .line 446
    xor-int/2addr v9, p1

    .line 447
    if-eqz v9, :cond_17

    .line 448
    goto :goto_7

    .line 450
    :cond_19
    :goto_6
    move v6, p3

    .line 451
    goto :goto_8

    .line 452
    :cond_1a
    :goto_7
    move v6, p1

    .line 453
    :goto_8
    if-eqz v6, :cond_1b

    .line 454
    goto :goto_9

    .line 456
    :cond_1b
    move v6, p3

    .line 457
    goto :goto_a

    .line 458
    :cond_1c
    :goto_9
    move v6, p1

    .line 459
    :goto_a
    if-eqz v6, :cond_12

    .line 460
    goto :goto_c

    .line 462
    :cond_1d
    :goto_b
    move v3, p3

    .line 463
    goto :goto_d

    .line 464
    :cond_1e
    :goto_c
    move v3, p1

    .line 465
    :goto_d
    if-eqz v3, :cond_1f

    .line 466
    goto :goto_e

    .line 468
    :cond_1f
    move v3, p3

    .line 469
    goto :goto_f

    .line 470
    :cond_20
    :goto_e
    move v3, p1

    .line 471
    :goto_f
    if-eqz v3, :cond_9

    .line 472
    :goto_10
    move v0, p1

    .line 474
    goto :goto_12

    .line 475
    :cond_21
    :goto_11
    move v0, p3

    .line 476
    :goto_12
    if-eqz v0, :cond_22

    .line 477
    goto :goto_14

    .line 479
    :cond_22
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartReplies:Ljava/util/List;

    .line 480
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartReplies:Ljava/util/List;

    .line 482
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 484
    move-result v0

    .line 487
    if-nez v0, :cond_23

    .line 488
    goto :goto_14

    .line 490
    :cond_23
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->hideSensitiveByAppLock:Z

    .line 491
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->hideSensitiveByAppLock:Z

    .line 493
    if-eq p2, p0, :cond_24

    .line 495
    goto :goto_14

    .line 497
    :cond_24
    :goto_13
    move p1, p3

    .line 498
    :goto_14
    return p1
    .line 499
.end method

.method public final rebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationAdjustments:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;

    .line 12
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isMinimized:Z

    .line 14
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isSnoozeEnabled:Z

    .line 16
    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;-><init>(ZZ)V

    .line 18
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda2;

    .line 21
    const/4 v1, 0x1

    .line 23
    invoke-direct {p2, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;I)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    .line 27
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    .line 34
    if-eqz v1, :cond_0

    .line 36
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;

    .line 38
    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda2;)V

    .line 40
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 47
    const-string v0, "NotificationRowBinder must be attached before using NotifInflaterImpl."

    .line 49
    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p2
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    move-exception p2

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->setInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    .line 58
    :goto_0
    return-void
    .line 61
.end method
