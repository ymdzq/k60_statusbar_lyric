.class public final Lcom/android/systemui/qs/tiles/ScreenRecordTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;


# instance fields
.field public final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mMillisUntilFinished:J

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V
    .locals 12

    .line 1
    move-object v10, p0

    .line 2
    move-object/from16 v11, p11

    .line 3
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object/from16 v4, p4

    .line 9
    move-object/from16 v5, p5

    .line 11
    move-object/from16 v6, p6

    .line 13
    move-object/from16 v7, p8

    .line 15
    move-object/from16 v8, p9

    .line 17
    move-object/from16 v9, p10

    .line 19
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 21
    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;

    .line 24
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;)V

    .line 26
    const-wide/16 v1, 0x0

    .line 29
    iput-wide v1, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mMillisUntilFinished:J

    .line 31
    iput-object v11, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 33
    invoke-virtual {p0, v11, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 35
    move-object/from16 v0, p7

    .line 38
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 40
    move-object/from16 v0, p12

    .line 42
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 44
    move-object/from16 v0, p13

    .line 46
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 48
    move-object/from16 v0, p14

    .line 50
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 52
    move-object/from16 v0, p15

    .line 54
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 56
    return-void
    .line 58
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309e9    # @string/quick_settings_screen_record_label 'Screen record'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    .line 4
    if-eqz v1, :cond_1

    .line 6
    const-string p1, "ScreenRecordTile"

    .line 8
    const-string v1, "Cancelling countdown"

    .line 10
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, v0, Lcom/android/systemui/screenrecord/RecordingController;->mCountDownTimer:Lcom/android/systemui/screenrecord/RecordingController$3;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    const-string p1, "RecordingController"

    .line 23
    const-string v1, "Timer was null"

    .line 25
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_0
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, v0, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    .line 31
    iget-object p1, v0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p1

    .line 38
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    .line 49
    invoke-interface {v0}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onCountdownEnd()V

    .line 51
    goto :goto_1

    .line 54
    :cond_1
    monitor-enter v0

    .line 55
    :try_start_0
    iget-boolean v1, v0, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v0

    .line 58
    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->stopRecording()V

    .line 61
    goto :goto_2

    .line 64
    :cond_2
    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;

    .line 65
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;Landroid/view/View;)V

    .line 67
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 76
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0

    .line 81
    throw p0
    .line 82
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 4
    iget-boolean v0, p2, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    .line 6
    monitor-enter p2

    .line 8
    :try_start_0
    iget-boolean v1, p2, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p2

    .line 11
    const/4 p2, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_1

    .line 14
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move v3, p2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v3, v2

    .line 21
    :goto_1
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 22
    if-nez v1, :cond_3

    .line 24
    if-eqz v0, :cond_2

    .line 26
    goto :goto_2

    .line 28
    :cond_2
    move v3, v2

    .line 29
    goto :goto_3

    .line 30
    :cond_3
    :goto_2
    const/4 v3, 0x2

    .line 31
    :goto_3
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 32
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 34
    const v4, 0x7f1309e9    # @string/quick_settings_screen_record_label 'Screen record'

    .line 36
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 42
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 43
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 45
    if-eqz v4, :cond_4

    .line 47
    const v4, 0x7f081775    # @drawable/qs_screen_record_icon_on 'res/drawable/qs_screen_record_icon_on.xml'

    .line 49
    goto :goto_4

    .line 52
    :cond_4
    const v4, 0x7f081774    # @drawable/qs_screen_record_icon_off 'res/drawable/qs_screen_record_icon_off.xml'

    .line 53
    :goto_4
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 56
    move-result-object v4

    .line 59
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 60
    iget v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 62
    if-ne v4, v2, :cond_5

    .line 64
    move p2, v2

    .line 66
    :cond_5
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->forceExpandIcon:Z

    .line 67
    if-eqz v1, :cond_6

    .line 69
    const p0, 0x7f1309eb    # @string/quick_settings_screen_record_stop 'Stop'

    .line 71
    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 78
    goto :goto_5

    .line 80
    :cond_6
    if-eqz v0, :cond_7

    .line 81
    iget-wide v0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mMillisUntilFinished:J

    .line 83
    const-wide/16 v2, 0x1f4

    .line 85
    add-long/2addr v0, v2

    .line 87
    const/16 p0, 0x3e8

    .line 88
    invoke-static {v0, v1, p0}, Ljava/lang/Math;->floorDiv(JI)J

    .line 90
    move-result-wide v0

    .line 93
    long-to-int p0, v0

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object p0

    .line 98
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 99
    move-result-object p0

    .line 102
    const-string p2, "%d..."

    .line 103
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 109
    goto :goto_5

    .line 111
    :cond_7
    const p0, 0x7f1309ea    # @string/quick_settings_screen_record_start 'Start'

    .line 112
    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 119
    :goto_5
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    move-result p0

    .line 126
    if-eqz p0, :cond_8

    .line 127
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 129
    goto :goto_6

    .line 131
    :cond_8
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 132
    const-string p2, ", "

    .line 134
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 136
    filled-new-array {p0, p2, v0}, [Ljava/lang/CharSequence;

    .line 138
    move-result-object p0

    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 142
    move-result-object p0

    .line 145
    :goto_6
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 146
    const-class p0, Landroid/widget/Switch;

    .line 148
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 153
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 154
    return-void

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    monitor-exit p2

    .line 158
    throw p0
    .line 159
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 7
    const v1, 0x7f1309e9    # @string/quick_settings_screen_record_label 'Screen record'

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    iput-object p0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 16
    const/4 p0, 0x0

    .line 18
    iput-boolean p0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    .line 19
    return-object v0
    .line 21
.end method
