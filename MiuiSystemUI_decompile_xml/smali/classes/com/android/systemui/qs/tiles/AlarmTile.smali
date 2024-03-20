.class public final Lcom/android/systemui/qs/tiles/AlarmTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final callback:Lcom/android/systemui/qs/tiles/AlarmTile$callback$1;

.field public final defaultIntent:Landroid/content/Intent;

.field public final icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public lastAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/AlarmTile;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 5
    const p1, 0x7f080ee4    # @drawable/ic_alarm 'res/drawable/ic_alarm.xml'

    .line 7
    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlarmTile;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 14
    new-instance p1, Landroid/content/Intent;

    .line 16
    const-string p2, "android.intent.action.SHOW_ALARMS"

    .line 18
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlarmTile;->defaultIntent:Landroid/content/Intent;

    .line 23
    new-instance p1, Lcom/android/systemui/qs/tiles/AlarmTile$callback$1;

    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/AlarmTile$callback$1;-><init>(Lcom/android/systemui/qs/tiles/AlarmTile;)V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlarmTile;->callback:Lcom/android/systemui/qs/tiles/AlarmTile$callback$1;

    .line 30
    invoke-virtual {p0, p11, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 32
    return-void
    .line 35
.end method

.method public static synthetic getDefaultIntent$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
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
    const v0, 0x7f130b14    # @string/status_bar_alarm 'Alarm'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    const/16 v1, 0x20

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 10
    instance-of v2, p1, Lcom/android/systemui/animation/LaunchableView;

    .line 11
    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v2

    .line 18
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 19
    if-nez v2, :cond_0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "Skipping animation as view "

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    const-string p1, " is not attached to a ViewGroup"

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 41
    new-instance v1, Ljava/lang/Exception;

    .line 42
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 44
    const-string v2, "ActivityLaunchAnimator"

    .line 47
    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    goto :goto_0

    .line 52
    :cond_0
    new-instance v2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 53
    const/4 v3, 0x4

    .line 55
    invoke-direct {v2, p1, v1, v3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;I)V

    .line 56
    goto :goto_1

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    const-string p1, "An ActivityLaunchAnimator.Controller was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0

    .line 67
    :cond_2
    :goto_0
    move-object v2, v0

    .line 68
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/AlarmTile;->lastAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 69
    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    .line 73
    move-result-object v0

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 77
    if-eqz v0, :cond_4

    .line 79
    invoke-interface {p1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 81
    goto :goto_2

    .line 84
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AlarmTile;->defaultIntent:Landroid/content/Intent;

    .line 85
    const/4 v0, 0x0

    .line 87
    invoke-interface {p1, p0, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 88
    :goto_2
    return-void
    .line 91
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/AlarmTile;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 2
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AlarmTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 6
    move-result-object p2

    .line 9
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 10
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/AlarmTile;->lastAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 14
    if-eqz p2, :cond_1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AlarmTile;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 18
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 22
    move-result p0

    .line 25
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 26
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    const-string p0, "EHm"

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, "Ehma"

    .line 35
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 37
    move-result-object v1

    .line 40
    invoke-static {v1, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    invoke-virtual {p2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 45
    move-result-wide v1

    .line 48
    invoke-static {p0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 57
    const/4 p0, 0x2

    .line 59
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 60
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    goto :goto_1

    .line 64
    :cond_1
    const/4 p0, 0x0

    .line 65
    :goto_1
    if-nez p0, :cond_2

    .line 66
    const p0, 0x7f130932    # @string/qs_alarm_tile_no_alarm 'No alarm set'

    .line 68
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 75
    const/4 p0, 0x1

    .line 77
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 78
    :cond_2
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 80
    const-string p2, ", "

    .line 82
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 84
    filled-new-array {p0, p2, v0}, [Ljava/lang/CharSequence;

    .line 86
    move-result-object p0

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 90
    move-result-object p0

    .line 93
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 94
    return-void
    .line 96
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    .line 8
    return-object p0
    .line 10
.end method
