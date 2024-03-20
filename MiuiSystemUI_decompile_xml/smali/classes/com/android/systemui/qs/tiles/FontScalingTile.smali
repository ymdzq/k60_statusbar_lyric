.class public final Lcom/android/systemui/qs/tiles/FontScalingTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final backgroundDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public final mainHandler:Landroid/os/Handler;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final systemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/util/settings/SystemSettingsImpl;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/FontScalingTile;->mainHandler:Landroid/os/Handler;

    .line 5
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/FontScalingTile;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 7
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/FontScalingTile;->systemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 9
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/FontScalingTile;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 11
    iput-object p13, p0, Lcom/android/systemui/qs/tiles/FontScalingTile;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 13
    iput-object p14, p0, Lcom/android/systemui/qs/tiles/FontScalingTile;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 15
    iput-object p15, p0, Lcom/android/systemui/qs/tiles/FontScalingTile;->backgroundDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 17
    const p1, 0x7f081152    # @drawable/ic_qs_font_scaling 'res/drawable/ic_qs_font_scaling.xml'

    .line 19
    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 22
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FontScalingTile;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.TEXT_READING_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309ad    # @string/quick_settings_font_scaling_label 'Font size'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/tiles/FontScalingTile$handleClick$1;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/FontScalingTile$handleClick$1;-><init>(Lcom/android/systemui/qs/tiles/FontScalingTile;Landroid/view/View;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 5
    const v0, 0x7f1309ad    # @string/quick_settings_font_scaling_label 'Font size'

    .line 7
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 13
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 14
    :goto_0
    if-nez p1, :cond_1

    .line 16
    goto :goto_1

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FontScalingTile;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 19
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 21
    :goto_1
    return-void
    .line 23
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->ENABLE_FONT_SCALING_TILE:Lcom/android/systemui/flags/ReleasedFlag;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FontScalingTile;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method
