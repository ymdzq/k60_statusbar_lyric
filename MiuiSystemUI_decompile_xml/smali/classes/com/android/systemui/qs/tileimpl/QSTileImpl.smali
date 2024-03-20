.class public abstract Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

.field public static final DEBUG:Z

.field public static mInControlCenter:Z


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public mClickEventId:I

.field public final mContext:Landroid/content/Context;

.field protected mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

.field public final mHost:Lcom/android/systemui/qs/QSHost;

.field public final mInstanceId:Lcom/android/internal/logging/InstanceId;

.field public mIsFullQs:I

.field public final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field public final mListeners:Landroid/util/ArraySet;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mPendingShowStateMessage:Z

.field public final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public volatile mReadyState:I

.field public mShowingDetail:Z

.field public final mStaleListener:Ljava/lang/Object;

.field public mState:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public mTileSpec:Ljava/lang/String;

.field public mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public final mUiEventLogger:Lcom/android/systemui/qs/QsEventLogger;

.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static -$$Nest$mhandleSetListeningInternal(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 4
    sget-boolean v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 6
    const/4 v3, 0x1

    .line 8
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    .line 9
    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 19
    move-result p1

    .line 22
    if-ne p1, v3, :cond_3

    .line 23
    if-eqz v2, :cond_0

    .line 25
    const-string p1, "handleSetListening true"

    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 32
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;

    .line 35
    invoke-direct {p1, p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;I)V

    .line 37
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 50
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    if-eqz v2, :cond_2

    .line 56
    const-string p1, "handleSetListening false"

    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 63
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;

    .line 66
    const/4 p2, 0x2

    .line 68
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;I)V

    .line 69
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_3
    :goto_0
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p1

    .line 78
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result p2

    .line 82
    if-eqz p2, :cond_5

    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object p2

    .line 88
    const-class v0, Lcom/android/systemui/qs/SideLabelTileLayout;

    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    move-result-object p2

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result p2

    .line 98
    if-eqz p2, :cond_4

    .line 99
    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    .line 101
    goto :goto_1

    .line 103
    :cond_5
    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    .line 105
    :goto_1
    return-void
    .line 107
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Tile"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    sput-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 16
    return-void
    .line 18
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    const-string v1, "Tile."

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Landroid/util/ArraySet;

    .line 21
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    .line 26
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/lang/Object;

    .line 38
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    .line 43
    new-instance v1, Landroidx/lifecycle/LifecycleRegistry;

    .line 45
    const/4 v2, 0x1

    .line 47
    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    .line 48
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mPendingShowStateMessage:Z

    .line 53
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 55
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 61
    move-object p1, p2

    .line 63
    check-cast p1, Lcom/android/systemui/qs/QsEventLoggerImpl;

    .line 64
    iget-object p1, p1, Lcom/android/systemui/qs/QsEventLoggerImpl;->sequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 66
    invoke-virtual {p1}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 68
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/systemui/qs/QsEventLogger;

    .line 74
    iput-object p4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 76
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 78
    invoke-direct {p1, p0, p3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V

    .line 80
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 83
    iput-object p5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 85
    iput-object p9, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 87
    iput-object p6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 89
    iput-object p7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 91
    iput-object p8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 95
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 101
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 105
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 107
    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 109
    iput-object p3, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    .line 111
    iput-object p3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    .line 113
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;

    .line 115
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;I)V

    .line 117
    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
    .line 123
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    return-void
    .line 12
.end method

.method public final checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 2
    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getUserId()I

    .line 4
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {v2, p2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 10
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getUserId()I

    .line 16
    move-result v0

    .line 19
    invoke-static {v2, p2, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 20
    move-result p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 27
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 33
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 36
    :goto_0
    return-void
    .line 38
.end method

.method public click(Landroid/view/View;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/metrics/LogMaker;

    .line 2
    const/16 v1, 0x39d

    .line 4
    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 6
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 14
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 16
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 23
    const/16 v3, 0x638

    .line 24
    invoke-virtual {v0, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    .line 30
    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 34
    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 36
    sget-object v0, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_CLICK:Lcom/android/systemui/qs/QSEvent;

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/systemui/qs/QsEventLogger;

    .line 45
    check-cast v3, Lcom/android/systemui/qs/QsEventLoggerImpl;

    .line 47
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 49
    const/4 v5, 0x0

    .line 51
    invoke-virtual {v3, v0, v5, v2, v4}, Lcom/android/systemui/qs/QsEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 52
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    .line 55
    add-int/lit8 v2, v0, 0x1

    .line 57
    iput v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    .line 59
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 61
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 63
    move-result v1

    .line 66
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 67
    iget v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 69
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 71
    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logTileClick(ILjava/lang/String;II)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 76
    const-string/jumbo v2, "send click msg"

    .line 78
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mPendingShowStateMessage:Z

    .line 85
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 87
    const/4 v1, 0x2

    .line 89
    invoke-virtual {p0, v1, v0, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 90
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 94
    return-void
    .line 97
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;-><init>(Landroid/content/Context;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 2
    const/4 v0, 0x7

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    return-void
    .line 8
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 9
    const-string v0, ":"

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    const-string p2, "    "

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    return-void
    .line 33
.end method

.method public final fireToggleStateChanged(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 3
    const/16 v1, 0x3ec

    .line 5
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final getInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLifecycle()Landroidx/lifecycle/LifecycleRegistry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    return-object p0
    .line 4
.end method

.method public abstract getLongClickIntent()Landroid/content/Intent;
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getMetricsSpec()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStaleTimeout()J
    .locals 2

    .line 1
    const-wide/32 v0, 0x927c0

    .line 2
    return-wide v0
    .line 5
.end method

.method public final getState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStateMessage()Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 4
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 7
    if-eq v0, v1, :cond_1

    .line 9
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileLabel()Ljava/lang/CharSequence;

    .line 20
    move-result-object p0

    .line 23
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    const v1, 0x7f1309f3    # @string/quick_settings_state_change_message_on '%1$s is on'

    .line 28
    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileLabel()Ljava/lang/CharSequence;

    .line 40
    move-result-object p0

    .line 43
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 47
    const v1, 0x7f1309f2    # @string/quick_settings_state_change_message_off '%1$s is off'

    .line 48
    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    return-object p0
    .line 55
.end method

.method public abstract getTileLabel()Ljava/lang/CharSequence;
.end method

.method public final getTileSpec()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public abstract handleClick(Landroid/view/View;)V
.end method

.method public handleDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 2
    const-string v1, "Handle destroy"

    .line 4
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    .line 11
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 20
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 31
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;

    .line 37
    const/4 v1, 0x3

    .line 39
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;I)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 43
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
    .line 48
.end method

.method public handleInitialize()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public handleLongClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLongClickIntent()Landroid/content/Intent;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {v1, v0}, Lcom/android/systemui/controlcenter/utils/ControlCenterUtils;->getSettingsSplitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 11
    move-result-object v0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    const/16 v1, 0x20

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 22
    invoke-static {p1, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->fromView(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 23
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 29
    const/4 v1, 0x0

    .line 31
    invoke-interface {p0, v0, v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 32
    return-void
    .line 35
.end method

.method public final handleRefreshState(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 13
    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 15
    move-result p1

    .line 18
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I

    .line 19
    const/4 v2, 0x1

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I

    .line 25
    move p1, v2

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    if-eqz p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 31
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 33
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 35
    invoke-virtual {p1, v3, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logTileUpdated(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    move v2, v1

    .line 48
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v3

    .line 52
    if-ge v2, v3, :cond_1

    .line 53
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 58
    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 59
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 61
    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 69
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 71
    if-eq v0, p1, :cond_2

    .line 73
    iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mPendingShowStateMessage:Z

    .line 75
    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleShowStateMessage()V

    .line 79
    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mPendingShowStateMessage:Z

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 84
    const/16 v0, 0xb

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getStaleTimeout()J

    .line 93
    move-result-wide v2

    .line 96
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V

    .line 102
    return-void
    .line 105
.end method

.method public handleSecondaryClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick(Landroid/view/View;)V

    .line 2
    return-void
    .line 5
.end method

.method public handleSetListening(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logTileChangeListening(Ljava/lang/String;Z)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public handleShowStateMessage()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getStateMessage()Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 6
    return-void
    .line 9
.end method

.method public handleStale()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    .line 2
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    .line 15
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V

    .line 18
    :goto_0
    return-void
    .line 21
.end method

.method public abstract handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
.end method

.method public handleUserSwitch(I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    .line 3
    return-void
    .line 6
.end method

.method public isAvailable()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/systemui/qs/tiles/CastTile;

    .line 2
    xor-int/lit8 p0, p0, 0x1

    .line 4
    return p0
    .line 6
.end method

.method public final isListening()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 4
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final isTileReady()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I

    .line 2
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public final longClick(Landroid/view/View;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/metrics/LogMaker;

    .line 2
    const/16 v1, 0x16e

    .line 4
    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 6
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 10
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 14
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 16
    move-result v3

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v3

    .line 23
    const/16 v4, 0x638

    .line 24
    invoke-virtual {v0, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    .line 30
    move-result-object v0

    .line 33
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 34
    invoke-virtual {v3, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 36
    sget-object v0, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_LONG_PRESS:Lcom/android/systemui/qs/QSEvent;

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 44
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/systemui/qs/QsEventLogger;

    .line 45
    check-cast v4, Lcom/android/systemui/qs/QsEventLoggerImpl;

    .line 47
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 49
    const/4 v6, 0x0

    .line 51
    invoke-virtual {v4, v0, v6, v3, v5}, Lcom/android/systemui/qs/QsEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 52
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    .line 55
    add-int/lit8 v3, v0, 0x1

    .line 57
    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    .line 59
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 61
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 63
    move-result v2

    .line 66
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 67
    iget v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 69
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 71
    invoke-virtual {v5, v2, v3, v4, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logTileLongClick(ILjava/lang/String;II)V

    .line 73
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 76
    const-string/jumbo v3, "send long click msg"

    .line 78
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 84
    invoke-virtual {p0, v1, v0, v6, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 86
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 90
    return-void
    .line 93
.end method

.method public abstract newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
.end method

.method public final observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 16
    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda0;

    .line 22
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 27
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    :goto_0
    return-void
    .line 32
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    instance-of v1, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 15
    const/16 v1, 0x3a0

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsCategory()I

    .line 21
    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 25
    move-result-object p1

    .line 28
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v0

    .line 34
    const/16 v1, 0x639

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 37
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 41
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 43
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->indexOf(Ljava/lang/String;)I

    .line 45
    move-result p0

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p0

    .line 52
    const/16 v0, 0x39f

    .line 53
    invoke-virtual {p1, v0, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 55
    move-result-object p0

    .line 58
    return-object p0
    .line 59
.end method

.method public final refreshState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final refreshState(Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 2
    const/16 v0, 0x9

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    return-void
    .line 13
.end method

.method public final removeCallbacks()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 2
    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    return-void
    .line 9
.end method

.method public final removeCallbacksByType(I)V
    .locals 2

    .line 1
    const/16 v0, 0x3ea

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final secondaryClick(Landroid/view/View;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/metrics/LogMaker;

    .line 2
    const/16 v1, 0x39e

    .line 4
    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 6
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 14
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 16
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 23
    const/16 v3, 0x638

    .line 24
    invoke-virtual {v0, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    .line 30
    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 34
    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 36
    sget-object v0, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_SECONDARY_CLICK:Lcom/android/systemui/qs/QSEvent;

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/systemui/qs/QsEventLogger;

    .line 45
    check-cast v3, Lcom/android/systemui/qs/QsEventLoggerImpl;

    .line 47
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 49
    const/4 v5, 0x0

    .line 51
    invoke-virtual {v3, v0, v5, v2, v4}, Lcom/android/systemui/qs/QsEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 52
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    .line 55
    add-int/lit8 v2, v0, 0x1

    .line 57
    iput v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    .line 59
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 61
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 63
    move-result v1

    .line 66
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 67
    iget v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 69
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 71
    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logTileSecondaryClick(ILjava/lang/String;II)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 76
    const-string/jumbo v2, "send secondary click msg"

    .line 78
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 84
    const/4 v1, 0x3

    .line 86
    invoke-virtual {p0, v1, v0, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 87
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    return-void
    .line 94
.end method

.method public setDetailListening(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setListening(Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 3
    const/16 v1, 0xa

    .line 5
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public setTileSpec(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 4
    iput-object p1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 8
    iput-object p1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    .line 10
    return-void
    .line 12
.end method

.method public final showDetail(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 3
    const/16 v1, 0x3eb

    .line 5
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final showStateMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda2;

    .line 11
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 16
    return-void
    .line 19
.end method

.method public final userSwitch(I)V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    return-void
    .line 13
.end method
