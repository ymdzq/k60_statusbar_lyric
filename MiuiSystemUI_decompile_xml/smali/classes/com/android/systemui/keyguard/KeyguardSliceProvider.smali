.class public Lcom/android/systemui/keyguard/KeyguardSliceProvider;
.super Landroidx/slice/SliceProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;


# static fields
.field static final ALARM_VISIBILITY_HOURS:I = 0xc

.field public static sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mAlarmUri:Landroid/net/Uri;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

.field public final mCurrentTime:Ljava/util/Date;

.field public mDateFormat:Landroid/icu/text/DateFormat;

.field public mDatePattern:Ljava/lang/String;

.field public final mDateUri:Landroid/net/Uri;

.field public final mDndUri:Landroid/net/Uri;

.field public mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mDozing:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHeaderUri:Landroid/net/Uri;

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mLastText:Ljava/lang/String;

.field public mMediaArtist:Ljava/lang/CharSequence;

.field public final mMediaHandler:Landroid/os/Handler;

.field public mMediaIsVisible:Z

.field public mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public mMediaTitle:Ljava/lang/CharSequence;

.field public final mMediaUri:Landroid/net/Uri;

.field protected mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

.field public mNextAlarm:Ljava/lang/String;

.field public mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field public mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mRegistered:Z

.field public final mSliceUri:Landroid/net/Uri;

.field public mStatusBarState:I

.field public mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mUpdateNextAlarm:Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;

.field public mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mWakeLockLogger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

.field public mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstanceLock:Ljava/lang/Object;

    .line 13
    return-void
    .line 15
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/slice/SliceProvider;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Date;

    .line 5
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mCurrentTime:Ljava/util/Date;

    .line 10
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUpdateNextAlarm:Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;

    .line 17
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 24
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$2;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$2;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 31
    new-instance v0, Landroid/os/Handler;

    .line 33
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Landroid/os/Handler;

    .line 40
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaHandler:Landroid/os/Handler;

    .line 45
    const-string v0, "content://com.android.systemui.keyguard/main"

    .line 47
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    .line 53
    const-string v0, "content://com.android.systemui.keyguard/header"

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 57
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHeaderUri:Landroid/net/Uri;

    .line 61
    const-string v0, "content://com.android.systemui.keyguard/date"

    .line 63
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateUri:Landroid/net/Uri;

    .line 69
    const-string v0, "content://com.android.systemui.keyguard/alarm"

    .line 71
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmUri:Landroid/net/Uri;

    .line 77
    const-string v0, "content://com.android.systemui.keyguard/dnd"

    .line 79
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 81
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDndUri:Landroid/net/Uri;

    .line 85
    const-string v0, "content://com.android.systemui.keyguard/media"

    .line 87
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaUri:Landroid/net/Uri;

    .line 93
    return-void
    .line 95
.end method


# virtual methods
.method public final addMediaLocked(Landroidx/slice/builders/ListBuilder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaTitle:Ljava/lang/CharSequence;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHeaderUri:Landroid/net/Uri;

    .line 13
    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>(Landroid/net/Uri;)V

    .line 15
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaTitle:Ljava/lang/CharSequence;

    .line 18
    iput-object v1, v0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 20
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, v0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    .line 23
    iget-object v2, p1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    .line 25
    invoke-interface {v2, v0}, Landroidx/slice/builders/impl/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaArtist:Ljava/lang/CharSequence;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 35
    if-nez v0, :cond_5

    .line 36
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 38
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaUri:Landroid/net/Uri;

    .line 40
    invoke-direct {v0, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 42
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaArtist:Ljava/lang/CharSequence;

    .line 45
    iput-object v2, v0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 47
    iput-boolean v1, v0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    .line 49
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 51
    const/4 v2, 0x0

    .line 53
    if-nez v1, :cond_1

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 57
    if-nez v3, :cond_2

    .line 59
    :goto_0
    move-object v1, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 63
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 65
    move-result-object v1

    .line 68
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 69
    move-result-object v1

    .line 72
    new-instance v3, Lcom/android/systemui/statusbar/NotificationMediaManager$$ExternalSyntheticLambda0;

    .line 73
    const/4 v4, 0x1

    .line 75
    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/NotificationMediaManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 76
    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 79
    move-result-object v1

    .line 82
    new-instance v3, Lcom/android/systemui/statusbar/NotificationMediaManager$$ExternalSyntheticLambda0;

    .line 83
    const/4 v4, 0x2

    .line 85
    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/NotificationMediaManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 86
    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 89
    move-result-object v1

    .line 92
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 96
    check-cast v1, Landroid/graphics/drawable/Icon;

    .line 97
    :goto_1
    if-nez v1, :cond_3

    .line 99
    goto :goto_2

    .line 101
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 102
    move-result-object p0

    .line 105
    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    .line 106
    move-result-object v2

    .line 109
    :goto_2
    if-eqz v2, :cond_4

    .line 110
    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;)V

    .line 112
    :cond_4
    iget-object p0, p1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    .line 115
    invoke-interface {p0, v0}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    .line 117
    :cond_5
    return-void
    .line 120
.end method

.method public cleanDateFormatLocked()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 3
    return-void
    .line 5
.end method

.method public isRegistered()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    .line 3
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
    .line 9
.end method

.method public final needsMediaLocked()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mStatusBarState:I

    .line 25
    if-nez v3, :cond_1

    .line 27
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaIsVisible:Z

    .line 29
    if-eqz v3, :cond_1

    .line 31
    move v3, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v3, v2

    .line 35
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaTitle:Ljava/lang/CharSequence;

    .line 36
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v4

    .line 41
    if-nez v4, :cond_2

    .line 42
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaIsVisible:Z

    .line 44
    if-eqz v4, :cond_2

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDozing:Z

    .line 48
    if-nez p0, :cond_3

    .line 50
    if-nez v0, :cond_3

    .line 52
    if-eqz v3, :cond_2

    .line 54
    goto :goto_2

    .line 56
    :cond_2
    move v1, v2

    .line 57
    :cond_3
    :goto_2
    return v1
    .line 58
.end method

.method public final notifyChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onBindSlice()Landroidx/slice/Slice;
    .locals 6

    .line 1
    const-string v0, "KeyguardSliceProvider#onBindSlice"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    monitor-enter p0

    .line 7
    :try_start_0
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    .line 8
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    .line 14
    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    .line 19
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addMediaLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 30
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateUri:Landroid/net/Uri;

    .line 32
    invoke-direct {v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 34
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    .line 37
    iput-object v3, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 39
    iput-boolean v2, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    .line 41
    iget-object v3, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    .line 43
    invoke-interface {v3, v1}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v1

    .line 53
    const v3, 0x7f080ed8    # @drawable/ic_access_alarms_big 'res/drawable/ic_access_alarms_big.xml'

    .line 54
    if-eqz v1, :cond_1

    .line 57
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v1

    .line 63
    invoke-static {v3, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(ILandroid/content/Context;)Landroidx/core/graphics/drawable/IconCompat;

    .line 64
    move-result-object v1

    .line 67
    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 68
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmUri:Landroid/net/Uri;

    .line 70
    invoke-direct {v4, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 72
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    .line 75
    iput-object v5, v4, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 77
    iput-boolean v2, v4, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    .line 79
    invoke-virtual {v4, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;)V

    .line 81
    iget-object v1, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    .line 84
    invoke-interface {v1, v4}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    .line 86
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 89
    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 91
    iget v1, v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 93
    const/4 v4, 0x1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    move v2, v4

    .line 98
    :cond_2
    if-nez v2, :cond_3

    .line 99
    goto :goto_2

    .line 101
    :cond_3
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 102
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDndUri:Landroid/net/Uri;

    .line 104
    invoke-direct {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 106
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 109
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 113
    move-result-object v2

    .line 116
    const v5, 0x7f1300d8    # @string/accessibility_quick_settings_dnd 'Do Not Disturb.'

    .line 117
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 123
    iput-object v2, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mContentDescription:Ljava/lang/CharSequence;

    .line 124
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v2

    .line 129
    const v5, 0x7f081823    # @drawable/stat_sys_dnd 'res/drawable/stat_sys_dnd.xml'

    .line 130
    invoke-static {v5, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(ILandroid/content/Context;)Landroidx/core/graphics/drawable/IconCompat;

    .line 133
    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;)V

    .line 137
    iget-object v2, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    .line 140
    invoke-interface {v2, v1}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    .line 142
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 145
    move-result-object v1

    .line 148
    invoke-static {v3, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(ILandroid/content/Context;)Landroidx/core/graphics/drawable/IconCompat;

    .line 149
    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mPendingIntent:Landroid/app/PendingIntent;

    .line 153
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    .line 155
    new-instance v5, Landroidx/slice/builders/SliceAction;

    .line 157
    invoke-direct {v5, v2, v1, v3}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, v5, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 162
    iput-boolean v4, v1, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    .line 164
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 166
    const-string v2, "content://com.android.systemui.keyguard/action"

    .line 168
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 170
    move-result-object v2

    .line 173
    invoke-direct {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 174
    iput-object v5, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    .line 177
    iget-object v2, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    .line 179
    invoke-interface {v2, v1}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    .line 181
    iget-object v0, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    .line 184
    check-cast v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 186
    invoke-virtual {v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    .line 188
    move-result-object v0

    .line 191
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 193
    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    throw v0
    .line 199
.end method

.method public final onConfigChanged$1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 2
    return-void
    .line 5
.end method

.method public final onCreateSliceProvider()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    .line 8
    new-instance v0, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 11
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWakeLockLogger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    .line 17
    const-string v3, "media"

    .line 19
    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    .line 21
    move-result-object v1

    .line 24
    const-string v2, "media"

    .line 25
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    .line 27
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 30
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstanceLock:Ljava/lang/Object;

    .line 32
    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    .line 35
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onDestroy()V

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 45
    const v2, 0x7f130b61    # @string/system_ui_aod_date_pattern 'EEEMMMd'

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDatePattern:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 58
    new-instance v2, Landroid/content/Intent;

    .line 59
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v3

    .line 64
    const-class v4, Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    .line 65
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const/high16 v3, 0x4000000

    .line 70
    const/4 v4, 0x0

    .line 72
    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 73
    move-result-object v1

    .line 76
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mPendingIntent:Landroid/app/PendingIntent;

    .line 77
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 79
    if-eqz v1, :cond_2

    .line 81
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 88
    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 90
    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 94
    move-result-object v1

    .line 97
    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 100
    move-result v4

    .line 103
    :cond_1
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 107
    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 112
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 114
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 119
    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 121
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 123
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->registerClockUpdate()V

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateClockLocked()V

    .line 131
    monitor-exit v0

    .line 134
    return-void

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    throw p0
    .line 138
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstanceLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 5
    check-cast v1, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    .line 7
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 12
    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 14
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 19
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 22
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 25
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUpdateNextAlarm:Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;

    .line 27
    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    .line 32
    if-eqz v1, :cond_0

    .line 34
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    .line 36
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 38
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 40
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 42
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v1

    .line 48
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    :cond_0
    const/4 p0, 0x0

    .line 54
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    .line 55
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
    .line 61
.end method

.method public final onDozingChanged(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    .line 3
    move-result v0

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDozing:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    .line 9
    move-result p1

    .line 12
    if-eq v0, p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 21
    :cond_1
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
    .line 27
.end method

.method public final onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 5
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUpdateNextAlarm:Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 9
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 12
    if-nez p1, :cond_0

    .line 14
    const-wide/16 v0, -0x1

    .line 16
    :goto_0
    move-wide v4, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 20
    move-result-wide v0

    .line 23
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 24
    const-wide/16 v2, 0xc

    .line 26
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 28
    move-result-wide v2

    .line 31
    sub-long/2addr v0, v2

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    const-wide/16 v0, 0x0

    .line 34
    cmp-long p1, v4, v0

    .line 36
    if-lez p1, :cond_1

    .line 38
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 40
    const/4 v3, 0x1

    .line 42
    const-string v6, "lock_screen_next_alarm"

    .line 43
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUpdateNextAlarm:Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;

    .line 45
    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHandler:Landroid/os/Handler;

    .line 47
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 49
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateNextAlarm()V

    .line 53
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p1
    .line 59
.end method

.method public final onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    .line 3
    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaHandler:Landroid/os/Handler;

    .line 7
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaIsVisible:Z

    .line 13
    if-eqz v1, :cond_0

    .line 15
    if-nez v0, :cond_0

    .line 17
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mStatusBarState:I

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 23
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 26
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaHandler:Landroid/os/Handler;

    .line 29
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda1;

    .line 31
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/media/MediaMetadata;I)V

    .line 33
    const-wide/16 p1, 0x7d0

    .line 36
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 42
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateMediaStateLocked(Landroid/media/MediaMetadata;I)V

    .line 48
    :goto_0
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1
    .line 55
.end method

.method public final onStateChanged(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    .line 3
    move-result v0

    .line 6
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mStatusBarState:I

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    .line 9
    move-result p1

    .line 12
    if-eq v0, p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 21
    :cond_1
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
    .line 27
.end method

.method public final onZenChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 2
    return-void
    .line 5
.end method

.method public registerClockUpdate()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 34
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 38
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    .line 42
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw v0
    .line 48
.end method

.method public final setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    .line 2
    return-void
    .line 4
.end method

.method public final updateClockLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDatePattern:Ljava/lang/String;

    .line 10
    invoke-static {v1, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 12
    move-result-object v0

    .line 15
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 16
    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mCurrentTime:Ljava/util/Date;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    move-result-wide v1

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 32
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mCurrentTime:Ljava/util/Date;

    .line 34
    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 50
    :cond_1
    return-void
    .line 53
.end method

.method public final updateMediaStateLocked(Landroid/media/MediaMetadata;I)V
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    .line 2
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    const-string v1, "android.media.metadata.TITLE"

    .line 9
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 11
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v1

    .line 28
    const v2, 0x7f13084b    # @string/music_controls_no_title 'No title'

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v1, v0

    .line 37
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 38
    goto :goto_1

    .line 40
    :cond_2
    const-string v0, "android.media.metadata.ARTIST"

    .line 41
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 43
    move-result-object v0

    .line 46
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaIsVisible:Z

    .line 47
    if-ne p2, p1, :cond_3

    .line 49
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaTitle:Ljava/lang/CharSequence;

    .line 51
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaArtist:Ljava/lang/CharSequence;

    .line 59
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 61
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    return-void

    .line 67
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaTitle:Ljava/lang/CharSequence;

    .line 68
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaArtist:Ljava/lang/CharSequence;

    .line 70
    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaIsVisible:Z

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 74
    return-void
    .line 77
.end method

.method public final updateNextAlarm()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v2

    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 13
    const/16 v4, 0xc

    .line 15
    int-to-long v4, v4

    .line 17
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 18
    move-result-wide v4

    .line 21
    add-long/2addr v4, v2

    .line 22
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 23
    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 25
    move-result-wide v2

    .line 28
    cmp-long v0, v2, v4

    .line 29
    if-gtz v0, :cond_1

    .line 31
    const/4 v1, 0x1

    .line 33
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 34
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 40
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 42
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 44
    move-result v1

    .line 47
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    const-string v0, "HH:mm"

    .line 54
    goto :goto_1

    .line 56
    :cond_2
    const-string v0, "h:mm"

    .line 57
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 59
    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 61
    move-result-wide v1

    .line 64
    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 65
    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    .line 73
    goto :goto_2

    .line 75
    :cond_3
    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    .line 78
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 81
    return-void

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw v0
    .line 87
.end method
