.class public Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;
.super Landroid/widget/ImageView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public mBatteryChargingColor:I

.field public final mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

.field public mBatteryLowColor:I

.field public mBatteryNormalDigitDarkColor:I

.field public mBatteryNormalDigitLightColor:I

.field public mBatteryPerformanceModeColor:I

.field public mBatteryPowerSaveColor:I

.field public mBatteryStyle:I

.field public mChargeDarkBg:Landroid/graphics/drawable/Drawable;

.field public mChargeLightBg:Landroid/graphics/drawable/Drawable;

.field public mCharging:Z

.field public mDark:I

.field public mDarkColor:I

.field public mDarkIntensity:F

.field public mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field public mLevel:I

.field public mLightColor:I

.field public mLow:Z

.field public mNormalDarkBg:Landroid/graphics/drawable/Drawable;

.field public mNormalLightBg:Landroid/graphics/drawable/Drawable;

.field public mPerfChargeDarkBg:Landroid/graphics/drawable/Drawable;

.field public mPerfChargeLightBg:Landroid/graphics/drawable/Drawable;

.field public mPerfDarkBg:Landroid/graphics/drawable/Drawable;

.field public mPerfLightBg:Landroid/graphics/drawable/Drawable;

.field public mPerfQCDarkBg:Landroid/graphics/drawable/Drawable;

.field public mPerfQCLightBg:Landroid/graphics/drawable/Drawable;

.field public mPerformanceMode:Z

.field public mPowerSave:Z

.field public mProgressCenterLeftOffset:F

.field public mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

.field public final mProgressDarkDrawables:Landroid/util/ArrayMap;

.field public final mProgressDrawables:Landroid/util/ArrayMap;

.field public mProgressGravityStart:Z

.field public mProgressOrientationPortrait:Z

.field public mQuickChargeDarkBg:Landroid/graphics/drawable/Drawable;

.field public mQuickChargeLightBg:Landroid/graphics/drawable/Drawable;

.field public mQuickCharging:Z

.field public final mSettingsManager:Lcom/miui/systemui/SettingsManager;

.field public mTintAreas:Ljava/util/ArrayList;

.field public mTintBgDrawable:Landroid/graphics/drawable/Drawable;

.field public mTintColor:I

.field public mUseLegacyDrawable:Z

.field public mUseTint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseTint:Z

    .line 7
    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    .line 8
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 9
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 10
    new-instance p2, Lcom/android/systemui/statusbar/BatteryIcon;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/BatteryIcon;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 11
    const-class p1, Lcom/miui/systemui/SettingsManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/systemui/SettingsManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    return-void
.end method

.method private getStatus()Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->values()[Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 2
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    .line 6
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const/16 v1, 0xf

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x7

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    .line 20
    if-eqz v1, :cond_3

    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 24
    if-eqz v1, :cond_2

    .line 26
    const/16 v1, 0xd

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    const/4 v1, 0x5

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPowerSave:Z

    .line 33
    if-eqz v1, :cond_4

    .line 35
    const/16 v1, 0x9

    .line 37
    goto :goto_0

    .line 39
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 40
    if-eqz v1, :cond_5

    .line 42
    const/16 v1, 0xb

    .line 44
    goto :goto_0

    .line 46
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLow:Z

    .line 47
    if-eqz v1, :cond_6

    .line 49
    move v1, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_6
    const/4 v1, 0x3

    .line 53
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 54
    if-ne p0, v2, :cond_7

    .line 56
    goto :goto_1

    .line 58
    :cond_7
    const/4 v2, 0x0

    .line 59
    :goto_1
    add-int/2addr v1, v2

    .line 60
    aget-object p0, v0, v1

    .line 61
    return-object p0
    .line 63
.end method


# virtual methods
.method public final clearTint()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 17
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getBackgroundTintDrawable()I

    .line 26
    move-result v3

    .line 29
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 45
    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v2

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getProgressTintDrawable()I

    .line 53
    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 57
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_3
    iput v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    .line 64
    return-void
    .line 66
.end method

.method public getBackgroundTintDrawable()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const v2, 0x7f080b46    # @drawable/battery_meter_bg_performance_tint 'res/drawable/battery_meter_bg_performance_tint.xml'

    .line 5
    const v3, 0x7f080b4a    # @drawable/battery_meter_bg_tint 'res/drawable/battery_meter_bg_tint.xml'

    .line 8
    if-ne v0, v1, :cond_1

    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 13
    if-eqz p0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    move v2, v3

    .line 18
    :goto_0
    return v2

    .line 19
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    .line 20
    if-eqz v0, :cond_3

    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 24
    if-eqz p0, :cond_2

    .line 26
    const p0, 0x7f080b45    # @drawable/battery_meter_bg_performance_quick_charge_tint 'res/drawable/battery_meter_bg_performance_quick_charge_tint.xml'

    .line 28
    goto :goto_1

    .line 31
    :cond_2
    const p0, 0x7f080b49    # @drawable/battery_meter_bg_quick_charge_tint 'res/drawable/battery_meter_bg_quick_charge_tint.xml'

    .line 32
    :goto_1
    return p0

    .line 35
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    .line 36
    if-eqz v0, :cond_5

    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 40
    if-eqz p0, :cond_4

    .line 42
    const p0, 0x7f080b41    # @drawable/battery_meter_bg_performance_charge_tint 'res/drawable/battery_meter_bg_performance_charge_tint.xml'

    .line 44
    goto :goto_2

    .line 47
    :cond_4
    const p0, 0x7f080b3c    # @drawable/battery_meter_bg_charge_tint 'res/drawable/battery_meter_bg_charge_tint.xml'

    .line 48
    :goto_2
    return p0

    .line 51
    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 52
    if-eqz p0, :cond_6

    .line 54
    goto :goto_3

    .line 56
    :cond_6
    move v2, v3

    .line 57
    :goto_3
    return v2
    .line 58
.end method

.method public getProgressTintDrawable()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    .line 2
    const/4 v1, 0x3

    .line 4
    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 7
    if-eqz v0, :cond_0

    .line 9
    if-ne v0, v1, :cond_2

    .line 11
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 13
    if-eqz p0, :cond_1

    .line 15
    const p0, 0x7f080b6a    # @drawable/battery_meter_progress_performance_quick_charging_tint 'res/drawable/battery_meter_progress_performance_quick_charging_tint.xml'

    .line 17
    goto :goto_0

    .line 20
    :cond_1
    const p0, 0x7f080b74    # @drawable/battery_meter_progress_quick_charging_tint 'res/drawable/battery_meter_progress_quick_charging_tint.xml'

    .line 21
    :goto_0
    return p0

    .line 24
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    .line 25
    if-eqz v0, :cond_5

    .line 27
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 29
    if-eqz v0, :cond_3

    .line 31
    if-ne v0, v1, :cond_5

    .line 33
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 35
    if-eqz p0, :cond_4

    .line 37
    const p0, 0x7f080b62    # @drawable/battery_meter_progress_performance_charging_tint 'res/drawable/battery_meter_progress_performance_charging_tint.xml'

    .line 39
    goto :goto_1

    .line 42
    :cond_4
    const p0, 0x7f080b53    # @drawable/battery_meter_progress_charging_tint 'res/drawable/battery_meter_progress_charging_tint.xml'

    .line 43
    :goto_1
    return p0

    .line 46
    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 47
    if-eqz p0, :cond_6

    .line 49
    const p0, 0x7f080b6b    # @drawable/battery_meter_progress_performance_tint 'res/drawable/battery_meter_progress_performance_tint.xml'

    .line 51
    goto :goto_2

    .line 54
    :cond_6
    const p0, 0x7f080b75    # @drawable/battery_meter_progress_tint 'res/drawable/battery_meter_progress_tint.xml'

    .line 55
    :goto_2
    return p0
    .line 58
.end method

.method public final onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 2
    if-eq p1, p2, :cond_1

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 6
    const/16 p2, 0x13

    .line 8
    if-gt p1, p2, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLow:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    .line 20
    :cond_1
    return-void
    .line 23
.end method

.method public final onBatteryStyleChanged(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onChargeStateChanged(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    .line 6
    if-eq v0, p2, :cond_1

    .line 8
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    .line 10
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    .line 17
    :cond_1
    return-void
    .line 20
.end method

.method public final onDarkChangeInternal()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseLegacyDrawable:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    if-nez v0, :cond_1a

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseTint:Z

    .line 10
    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    .line 18
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintColor:I

    .line 20
    invoke-static {v1, p0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    .line 22
    move-result v1

    .line 25
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 33
    if-eqz v0, :cond_4d

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    .line 37
    invoke-static {v1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 39
    move-result v1

    .line 42
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    .line 43
    iget-boolean v2, v2, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 45
    if-nez v2, :cond_2

    .line 47
    if-eqz v1, :cond_1

    .line 49
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 51
    move-result-object v1

    .line 54
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkIntensity:F

    .line 55
    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v3

    .line 62
    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkColor:I

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v4

    .line 68
    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/Integer;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result v1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getStatus()Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 83
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 87
    move-result v2

    .line 90
    packed-switch v2, :pswitch_data_0

    .line 91
    :pswitch_0
    if-eqz v1, :cond_4

    .line 94
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 96
    move-result-object v1

    .line 99
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkIntensity:F

    .line 100
    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v3

    .line 107
    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkColor:I

    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v4

    .line 113
    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/Integer;

    .line 118
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 120
    move-result v1

    .line 123
    goto :goto_0

    .line 124
    :pswitch_1
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryPerformanceModeColor:I

    .line 125
    goto :goto_0

    .line 127
    :pswitch_2
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryPowerSaveColor:I

    .line 128
    goto :goto_0

    .line 130
    :pswitch_3
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryChargingColor:I

    .line 131
    goto :goto_0

    .line 133
    :pswitch_4
    if-eqz v1, :cond_3

    .line 134
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 136
    move-result-object v1

    .line 139
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkIntensity:F

    .line 140
    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryNormalDigitLightColor:I

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v3

    .line 147
    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryNormalDigitDarkColor:I

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v4

    .line 153
    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-result-object v1

    .line 157
    check-cast v1, Ljava/lang/Integer;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 160
    move-result v1

    .line 163
    goto :goto_0

    .line 164
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryNormalDigitLightColor:I

    .line 165
    goto :goto_0

    .line 167
    :pswitch_5
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryLowColor:I

    .line 168
    goto :goto_0

    .line 170
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    .line 171
    :goto_0
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 173
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 180
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 182
    mul-int/lit8 p0, p0, 0x64

    .line 184
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 186
    goto/16 :goto_a

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    .line 191
    iget v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkIntensity:F

    .line 193
    invoke-static {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 195
    move-result v0

    .line 198
    if-eqz v0, :cond_6

    .line 199
    goto :goto_1

    .line 201
    :cond_6
    move v5, v2

    .line 202
    :goto_1
    cmpl-float v0, v5, v2

    .line 203
    if-lez v0, :cond_7

    .line 205
    move v0, v3

    .line 207
    goto :goto_2

    .line 208
    :cond_7
    move v0, v4

    .line 209
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    .line 210
    if-eq v0, v2, :cond_4d

    .line 212
    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 216
    if-eqz v2, :cond_18

    .line 218
    if-ne v0, v3, :cond_8

    .line 220
    move v0, v4

    .line 222
    goto :goto_3

    .line 223
    :cond_8
    move v0, v1

    .line 224
    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 225
    if-eqz v5, :cond_10

    .line 227
    iget v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 229
    if-ne v5, v4, :cond_a

    .line 231
    if-eqz v0, :cond_9

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfDarkBg:Landroid/graphics/drawable/Drawable;

    .line 235
    goto :goto_4

    .line 237
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfLightBg:Landroid/graphics/drawable/Drawable;

    .line 238
    goto :goto_4

    .line 240
    :cond_a
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    .line 241
    if-eqz v4, :cond_c

    .line 243
    if-eqz v0, :cond_b

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfQCDarkBg:Landroid/graphics/drawable/Drawable;

    .line 247
    goto :goto_4

    .line 249
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfQCLightBg:Landroid/graphics/drawable/Drawable;

    .line 250
    goto :goto_4

    .line 252
    :cond_c
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    .line 253
    if-eqz v4, :cond_e

    .line 255
    if-eqz v0, :cond_d

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfChargeDarkBg:Landroid/graphics/drawable/Drawable;

    .line 259
    goto :goto_4

    .line 261
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfChargeLightBg:Landroid/graphics/drawable/Drawable;

    .line 262
    goto :goto_4

    .line 264
    :cond_e
    if-eqz v0, :cond_f

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfDarkBg:Landroid/graphics/drawable/Drawable;

    .line 267
    goto :goto_4

    .line 269
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfLightBg:Landroid/graphics/drawable/Drawable;

    .line 270
    goto :goto_4

    .line 272
    :cond_10
    iget v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 273
    if-ne v5, v4, :cond_12

    .line 275
    if-eqz v0, :cond_11

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mNormalDarkBg:Landroid/graphics/drawable/Drawable;

    .line 279
    goto :goto_4

    .line 281
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mNormalLightBg:Landroid/graphics/drawable/Drawable;

    .line 282
    goto :goto_4

    .line 284
    :cond_12
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    .line 285
    if-eqz v4, :cond_14

    .line 287
    if-eqz v0, :cond_13

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickChargeDarkBg:Landroid/graphics/drawable/Drawable;

    .line 291
    goto :goto_4

    .line 293
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickChargeLightBg:Landroid/graphics/drawable/Drawable;

    .line 294
    goto :goto_4

    .line 296
    :cond_14
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    .line 297
    if-eqz v4, :cond_16

    .line 299
    if-eqz v0, :cond_15

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mChargeDarkBg:Landroid/graphics/drawable/Drawable;

    .line 303
    goto :goto_4

    .line 305
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mChargeLightBg:Landroid/graphics/drawable/Drawable;

    .line 306
    goto :goto_4

    .line 308
    :cond_16
    if-eqz v0, :cond_17

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mNormalDarkBg:Landroid/graphics/drawable/Drawable;

    .line 311
    goto :goto_4

    .line 313
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mNormalLightBg:Landroid/graphics/drawable/Drawable;

    .line 314
    :goto_4
    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 316
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 319
    if-eqz v0, :cond_4d

    .line 321
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    .line 323
    if-ne v1, v3, :cond_19

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getStatus()Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 329
    move-result-object v2

    .line 332
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    move-result-object v1

    .line 336
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 337
    goto :goto_5

    .line 339
    :cond_19
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getStatus()Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 342
    move-result-object v2

    .line 345
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    move-result-object v1

    .line 349
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 350
    :goto_5
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 355
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 357
    mul-int/lit8 p0, p0, 0x64

    .line 359
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 361
    goto/16 :goto_a

    .line 364
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    .line 366
    iget v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkIntensity:F

    .line 368
    invoke-static {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 370
    move-result v0

    .line 373
    if-eqz v0, :cond_1b

    .line 374
    goto :goto_6

    .line 376
    :cond_1b
    move v5, v2

    .line 377
    :goto_6
    cmpl-float v0, v5, v2

    .line 378
    if-lez v0, :cond_1c

    .line 380
    move v0, v3

    .line 382
    goto :goto_7

    .line 383
    :cond_1c
    move v0, v4

    .line 384
    :goto_7
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    .line 385
    if-eq v0, v2, :cond_4d

    .line 387
    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    .line 389
    if-ne v0, v3, :cond_1d

    .line 391
    move v0, v4

    .line 393
    goto :goto_8

    .line 394
    :cond_1d
    move v0, v1

    .line 395
    :goto_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    .line 396
    const/16 v3, 0xa

    .line 398
    const/4 v5, -0x1

    .line 400
    if-eqz v2, :cond_29

    .line 401
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 403
    if-ne v1, v4, :cond_23

    .line 405
    if-eqz v0, :cond_20

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 409
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 411
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDigitDarkLevel:I

    .line 413
    if-eq v2, v5, :cond_1e

    .line 415
    sub-int v2, v1, v2

    .line 417
    if-gt v2, v3, :cond_1e

    .line 419
    if-gez v2, :cond_1f

    .line 421
    :cond_1e
    const v2, 0x7f12003a    # @raw/stat_sys_battery_charge_digit_darkmode 'res/raw/stat_sys_battery_charge_digit_darkmode.webp'

    .line 423
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 426
    move-result-object v2

    .line 429
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 430
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDigitDarkLevel:I

    .line 432
    :cond_1f
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 434
    goto/16 :goto_9

    .line 436
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 438
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 440
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDigitLevel:I

    .line 442
    if-eq v2, v5, :cond_21

    .line 444
    sub-int v2, v1, v2

    .line 446
    if-gt v2, v3, :cond_21

    .line 448
    if-gez v2, :cond_22

    .line 450
    :cond_21
    const v2, 0x7f120039    # @raw/stat_sys_battery_charge_digit 'res/raw/stat_sys_battery_charge_digit.webp'

    .line 452
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 455
    move-result-object v2

    .line 458
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 459
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDigitLevel:I

    .line 461
    :cond_22
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 463
    goto/16 :goto_9

    .line 465
    :cond_23
    if-eqz v0, :cond_26

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 469
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 471
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDarkLevel:I

    .line 473
    if-eq v2, v5, :cond_24

    .line 475
    sub-int v2, v1, v2

    .line 477
    if-gt v2, v3, :cond_24

    .line 479
    if-gez v2, :cond_25

    .line 481
    :cond_24
    const v2, 0x7f120038    # @raw/stat_sys_battery_charge_darkmode 'res/raw/stat_sys_battery_charge_darkmode.webp'

    .line 483
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 486
    move-result-object v2

    .line 489
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 490
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDarkLevel:I

    .line 492
    :cond_25
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 494
    goto/16 :goto_9

    .line 496
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 498
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 500
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeLevel:I

    .line 502
    if-eq v2, v5, :cond_27

    .line 504
    sub-int v2, v1, v2

    .line 506
    if-gt v2, v3, :cond_27

    .line 508
    if-gez v2, :cond_28

    .line 510
    :cond_27
    const v2, 0x7f120037    # @raw/stat_sys_battery_charge 'res/raw/stat_sys_battery_charge.webp'

    .line 512
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 515
    move-result-object v2

    .line 518
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 519
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeLevel:I

    .line 521
    :cond_28
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 523
    goto/16 :goto_9

    .line 525
    :cond_29
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 527
    if-eqz v2, :cond_35

    .line 529
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 531
    if-ne v1, v4, :cond_2f

    .line 533
    if-eqz v0, :cond_2c

    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 537
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 539
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeDigitDarkLevel:I

    .line 541
    if-eq v2, v5, :cond_2a

    .line 543
    sub-int v2, v1, v2

    .line 545
    if-gt v2, v3, :cond_2a

    .line 547
    if-gez v2, :cond_2b

    .line 549
    :cond_2a
    const v2, 0x7f120041    # @raw/stat_sys_battery_performance_mode_digit_darkmode 'res/raw/stat_sys_battery_performance_mode_digit_darkmode.webp'

    .line 551
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 554
    move-result-object v2

    .line 557
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 558
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeDigitDarkLevel:I

    .line 560
    :cond_2b
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 562
    goto/16 :goto_9

    .line 564
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 566
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 568
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeDigitLevel:I

    .line 570
    if-eq v2, v5, :cond_2d

    .line 572
    sub-int v2, v1, v2

    .line 574
    if-gt v2, v3, :cond_2d

    .line 576
    if-gez v2, :cond_2e

    .line 578
    :cond_2d
    const v2, 0x7f120040    # @raw/stat_sys_battery_performance_mode_digit 'res/raw/stat_sys_battery_performance_mode_digit.webp'

    .line 580
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 583
    move-result-object v2

    .line 586
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 587
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeDigitLevel:I

    .line 589
    :cond_2e
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 591
    goto/16 :goto_9

    .line 593
    :cond_2f
    if-eqz v0, :cond_32

    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 597
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 599
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeDarkLevel:I

    .line 601
    if-eq v2, v5, :cond_30

    .line 603
    sub-int v2, v1, v2

    .line 605
    if-gt v2, v3, :cond_30

    .line 607
    if-gez v2, :cond_31

    .line 609
    :cond_30
    const v2, 0x7f12003f    # @raw/stat_sys_battery_performance_mode_darkmode 'res/raw/stat_sys_battery_performance_mode_darkmode.webp'

    .line 611
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 614
    move-result-object v2

    .line 617
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 618
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeDarkLevel:I

    .line 620
    :cond_31
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 622
    goto/16 :goto_9

    .line 624
    :cond_32
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 626
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 628
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeLevel:I

    .line 630
    if-eq v2, v5, :cond_33

    .line 632
    sub-int v2, v1, v2

    .line 634
    if-gt v2, v3, :cond_33

    .line 636
    if-gez v2, :cond_34

    .line 638
    :cond_33
    const v2, 0x7f12003e    # @raw/stat_sys_battery_performance_mode 'res/raw/stat_sys_battery_performance_mode.webp'

    .line 640
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 643
    move-result-object v2

    .line 646
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 647
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPerformanceModeLevel:I

    .line 649
    :cond_34
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 651
    goto/16 :goto_9

    .line 653
    :cond_35
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPowerSave:Z

    .line 655
    if-eqz v2, :cond_41

    .line 657
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 659
    if-ne v1, v4, :cond_3b

    .line 661
    if-eqz v0, :cond_38

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 665
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 667
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDigitDarkLevel:I

    .line 669
    if-eq v2, v5, :cond_36

    .line 671
    sub-int v2, v1, v2

    .line 673
    if-gt v2, v3, :cond_36

    .line 675
    if-gez v2, :cond_37

    .line 677
    :cond_36
    const v2, 0x7f120045    # @raw/stat_sys_battery_power_save_digit_darkmode 'res/raw/stat_sys_battery_power_save_digit_darkmode.webp'

    .line 679
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 682
    move-result-object v2

    .line 685
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 686
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDigitDarkLevel:I

    .line 688
    :cond_37
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 690
    goto/16 :goto_9

    .line 692
    :cond_38
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 694
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 696
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDigitLevel:I

    .line 698
    if-eq v2, v5, :cond_39

    .line 700
    sub-int v2, v1, v2

    .line 702
    if-gt v2, v3, :cond_39

    .line 704
    if-gez v2, :cond_3a

    .line 706
    :cond_39
    const v2, 0x7f120044    # @raw/stat_sys_battery_power_save_digit 'res/raw/stat_sys_battery_power_save_digit.webp'

    .line 708
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 711
    move-result-object v2

    .line 714
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 715
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDigitLevel:I

    .line 717
    :cond_3a
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 719
    goto/16 :goto_9

    .line 721
    :cond_3b
    if-eqz v0, :cond_3e

    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 725
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 727
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDarkLevel:I

    .line 729
    if-eq v2, v5, :cond_3c

    .line 731
    sub-int v2, v1, v2

    .line 733
    if-gt v2, v3, :cond_3c

    .line 735
    if-gez v2, :cond_3d

    .line 737
    :cond_3c
    const v2, 0x7f120043    # @raw/stat_sys_battery_power_save_darkmode 'res/raw/stat_sys_battery_power_save_darkmode.webp'

    .line 739
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 742
    move-result-object v2

    .line 745
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 746
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDarkLevel:I

    .line 748
    :cond_3d
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 750
    goto/16 :goto_9

    .line 752
    :cond_3e
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 754
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 756
    iget v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveLevel:I

    .line 758
    if-eq v2, v5, :cond_3f

    .line 760
    sub-int v2, v1, v2

    .line 762
    if-gt v2, v3, :cond_3f

    .line 764
    if-gez v2, :cond_40

    .line 766
    :cond_3f
    const v2, 0x7f120042    # @raw/stat_sys_battery_power_save 'res/raw/stat_sys_battery_power_save.webp'

    .line 768
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 771
    move-result-object v2

    .line 774
    iput-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 775
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveLevel:I

    .line 777
    :cond_40
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 779
    goto/16 :goto_9

    .line 781
    :cond_41
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryStyle:I

    .line 783
    if-ne v2, v4, :cond_47

    .line 785
    if-eqz v0, :cond_44

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 789
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 791
    iget v4, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mDigitalDarkLevel:I

    .line 793
    if-eq v4, v5, :cond_42

    .line 795
    sub-int/2addr v4, v2

    .line 797
    if-gt v4, v3, :cond_42

    .line 798
    if-gez v4, :cond_43

    .line 800
    :cond_42
    const v3, 0x7f12003d    # @raw/stat_sys_battery_digital_darkmode 'res/raw/stat_sys_battery_digital_darkmode.webp'

    .line 802
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 805
    move-result-object v1

    .line 808
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 809
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mDigitalDarkLevel:I

    .line 811
    :cond_43
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 813
    goto :goto_9

    .line 815
    :cond_44
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 816
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 818
    iget v4, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mDigitalLevel:I

    .line 820
    if-eq v4, v5, :cond_45

    .line 822
    sub-int/2addr v4, v2

    .line 824
    if-gt v4, v3, :cond_45

    .line 825
    if-gez v4, :cond_46

    .line 827
    :cond_45
    const v3, 0x7f12003c    # @raw/stat_sys_battery_digital 'res/raw/stat_sys_battery_digital.webp'

    .line 829
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 832
    move-result-object v1

    .line 835
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 836
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mDigitalLevel:I

    .line 838
    :cond_46
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 840
    goto :goto_9

    .line 842
    :cond_47
    if-eqz v0, :cond_4a

    .line 843
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 845
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 847
    iget v4, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mDarkLevel:I

    .line 849
    if-eq v4, v5, :cond_48

    .line 851
    sub-int/2addr v4, v2

    .line 853
    if-gt v4, v3, :cond_48

    .line 854
    if-gez v4, :cond_49

    .line 856
    :cond_48
    const v3, 0x7f12003b    # @raw/stat_sys_battery_darkmode 'res/raw/stat_sys_battery_darkmode.webp'

    .line 858
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 861
    move-result-object v1

    .line 864
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 865
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mDarkLevel:I

    .line 867
    :cond_49
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 869
    goto :goto_9

    .line 871
    :cond_4a
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 872
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 874
    iget v4, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mLevel:I

    .line 876
    if-eq v4, v5, :cond_4b

    .line 878
    sub-int/2addr v4, v2

    .line 880
    if-gt v4, v3, :cond_4b

    .line 881
    if-gez v4, :cond_4c

    .line 883
    :cond_4b
    const v3, 0x7f120036    # @raw/stat_sys_battery 'res/raw/stat_sys_battery.webp'

    .line 885
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    .line 888
    move-result-object v1

    .line 891
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 892
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mLevel:I

    .line 894
    :cond_4c
    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 896
    :goto_9
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 898
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    .line 901
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 903
    :cond_4d
    :goto_a
    return-void

    .line 906
    nop

    .line 907
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
    .line 908
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    .line 2
    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkIntensity:F

    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintColor:I

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseTint:Z

    .line 8
    if-ne p1, p6, :cond_0

    .line 10
    iget p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    .line 12
    if-ne p1, p4, :cond_0

    .line 14
    iget p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkColor:I

    .line 16
    if-eq p1, p5, :cond_1

    .line 18
    :cond_0
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseTint:Z

    .line 20
    iput p4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    .line 22
    iput p5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkColor:I

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    .line 29
    return-void
    .line 32
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources()V

    .line 2
    return-void
    .line 5
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 18
    invoke-virtual {v1}, Landroid/graphics/drawable/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 27
    return-void
    .line 30
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources()V

    .line 5
    return-void
    .line 8
.end method

.method public final onMiuiThemeChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources()V

    .line 2
    return-void
    .line 5
.end method

.method public final onPerformanceModeChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPowerSave:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPowerSave:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public setUseLegacyDrawable(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseLegacyDrawable:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseLegacyDrawable:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final updateResources()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/android/systemui/statusbar/BatteryIcon;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 9
    const v2, 0x7f0b000c    # @integer/battery_columns '1'

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result v1

    .line 16
    iput v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mBatteryColumns:I

    .line 17
    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 20
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 22
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 24
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 26
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 28
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 30
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 32
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 34
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 36
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 38
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 40
    iput-object v1, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 42
    iget-object v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mGraphicRes2Drawables:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 46
    const/4 v2, -0x1

    .line 49
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mLevel:I

    .line 50
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mDarkLevel:I

    .line 52
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mDigitalLevel:I

    .line 54
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mDigitalDarkLevel:I

    .line 56
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeLevel:I

    .line 58
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDarkLevel:I

    .line 60
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDigitLevel:I

    .line 62
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mChargeDigitDarkLevel:I

    .line 64
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveLevel:I

    .line 66
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDarkLevel:I

    .line 68
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDigitLevel:I

    .line 70
    iput v2, v0, Lcom/android/systemui/statusbar/BatteryIcon;->mPowerSaveDigitDarkLevel:I

    .line 72
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    move-result-object v2

    .line 85
    const v3, 0x7f0700c9    # @dimen/battery_meter_progress_center_left_offset '1.0909dp'

    .line 86
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 89
    move-result v3

    .line 92
    iput v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressCenterLeftOffset:F

    .line 93
    const v3, 0x7f05000b    # @bool/battery_meter_progress_oriention_portrait 'false'

    .line 95
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 98
    move-result v3

    .line 101
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressOrientationPortrait:Z

    .line 102
    const v3, 0x7f05000a    # @bool/battery_meter_progress_gravity_start 'true'

    .line 104
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 107
    move-result v2

    .line 110
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressGravityStart:Z

    .line 111
    const v2, 0x7f080b39    # @drawable/battery_meter_bg 'res/drawable/battery_meter_bg.xml'

    .line 113
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 116
    move-result-object v2

    .line 119
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mNormalLightBg:Landroid/graphics/drawable/Drawable;

    .line 120
    const v2, 0x7f080b3d    # @drawable/battery_meter_bg_dark 'res/drawable/battery_meter_bg_dark.xml'

    .line 122
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 125
    move-result-object v2

    .line 128
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mNormalDarkBg:Landroid/graphics/drawable/Drawable;

    .line 129
    const v2, 0x7f080b3a    # @drawable/battery_meter_bg_charge 'res/drawable/battery_meter_bg_charge.xml'

    .line 131
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 134
    move-result-object v2

    .line 137
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mChargeLightBg:Landroid/graphics/drawable/Drawable;

    .line 138
    const v2, 0x7f080b3b    # @drawable/battery_meter_bg_charge_dark 'res/drawable/battery_meter_bg_charge_dark.xml'

    .line 140
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 143
    move-result-object v2

    .line 146
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mChargeDarkBg:Landroid/graphics/drawable/Drawable;

    .line 147
    const v2, 0x7f080b47    # @drawable/battery_meter_bg_quick_charge 'res/drawable/battery_meter_bg_quick_charge.xml'

    .line 149
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 152
    move-result-object v2

    .line 155
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickChargeLightBg:Landroid/graphics/drawable/Drawable;

    .line 156
    const v2, 0x7f080b48    # @drawable/battery_meter_bg_quick_charge_dark 'res/drawable/battery_meter_bg_quick_charge_dark.xml'

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 161
    move-result-object v2

    .line 164
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickChargeDarkBg:Landroid/graphics/drawable/Drawable;

    .line 165
    const v2, 0x7f080b3e    # @drawable/battery_meter_bg_performance 'res/drawable/battery_meter_bg_performance.xml'

    .line 167
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 170
    move-result-object v2

    .line 173
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfLightBg:Landroid/graphics/drawable/Drawable;

    .line 174
    const v2, 0x7f080b42    # @drawable/battery_meter_bg_performance_dark 'res/drawable/battery_meter_bg_performance_dark.xml'

    .line 176
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 179
    move-result-object v2

    .line 182
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfDarkBg:Landroid/graphics/drawable/Drawable;

    .line 183
    const v2, 0x7f080b3f    # @drawable/battery_meter_bg_performance_charge 'res/drawable/battery_meter_bg_performance_charge.xml'

    .line 185
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 188
    move-result-object v2

    .line 191
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfChargeLightBg:Landroid/graphics/drawable/Drawable;

    .line 192
    const v2, 0x7f080b40    # @drawable/battery_meter_bg_performance_charge_dark 'res/drawable/battery_meter_bg_performance_charge_dark.xml'

    .line 194
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 197
    move-result-object v2

    .line 200
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfChargeDarkBg:Landroid/graphics/drawable/Drawable;

    .line 201
    const v2, 0x7f080b43    # @drawable/battery_meter_bg_performance_quick_charge 'res/drawable/battery_meter_bg_performance_quick_charge.xml'

    .line 203
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 206
    move-result-object v2

    .line 209
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfQCLightBg:Landroid/graphics/drawable/Drawable;

    .line 210
    const v2, 0x7f080b44    # @drawable/battery_meter_bg_performance_quick_charge_dark 'res/drawable/battery_meter_bg_performance_quick_charge_dark.xml'

    .line 212
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 215
    move-result-object v2

    .line 218
    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerfQCDarkBg:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 221
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 223
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 226
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 228
    const v2, 0x7f060888    # @color/status_bar_battery_low '#e6e30101'

    .line 231
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 234
    move-result v2

    .line 237
    iput v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryLowColor:I

    .line 238
    const v2, 0x7f06088b    # @color/status_bar_battery_normal_digit_light '#3dffffff'

    .line 240
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 243
    move-result v2

    .line 246
    iput v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryNormalDigitLightColor:I

    .line 247
    const v2, 0x7f06088a    # @color/status_bar_battery_normal_digit_dark '#1a000000'

    .line 249
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 252
    move-result v2

    .line 255
    iput v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryNormalDigitDarkColor:I

    .line 256
    const v2, 0x7f060885    # @color/status_bar_battery_charging '#e655c415'

    .line 258
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 261
    move-result v2

    .line 264
    iput v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryChargingColor:I

    .line 265
    const v2, 0x7f06088e    # @color/status_bar_battery_power_save '#e6f5a623'

    .line 267
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 270
    move-result v2

    .line 273
    iput v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryPowerSaveColor:I

    .line 274
    const v2, 0x7f06088d    # @color/status_bar_battery_performance '#3b9bff'

    .line 276
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 279
    move-result v2

    .line 282
    iput v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryPerformanceModeColor:I

    .line 283
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 285
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->LOW:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 287
    const v4, 0x7f080b54    # @drawable/battery_meter_progress_low 'res/drawable/battery_meter_progress_low.xml'

    .line 289
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 292
    move-result-object v4

    .line 295
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 299
    const v4, 0x7f080b55    # @drawable/battery_meter_progress_low_dark 'res/drawable/battery_meter_progress_low_dark.xml'

    .line 301
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 304
    move-result-object v4

    .line 307
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 311
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->LOW_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 313
    const v4, 0x7f080b56    # @drawable/battery_meter_progress_low_digit 'res/drawable/battery_meter_progress_low_digit.xml'

    .line 315
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 318
    move-result-object v4

    .line 321
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 325
    const v4, 0x7f080b57    # @drawable/battery_meter_progress_low_digit_dark 'res/drawable/battery_meter_progress_low_digit_dark.xml'

    .line 327
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 330
    move-result-object v4

    .line 333
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 337
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->NORMAL:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 339
    const v4, 0x7f080b59    # @drawable/battery_meter_progress_normal 'res/drawable/battery_meter_progress_normal.xml'

    .line 341
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 344
    move-result-object v4

    .line 347
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 351
    const v4, 0x7f080b5a    # @drawable/battery_meter_progress_normal_dark 'res/drawable/battery_meter_progress_normal_dark.xml'

    .line 353
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 356
    move-result-object v4

    .line 359
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 363
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->NORMAL_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 365
    const v4, 0x7f080b5b    # @drawable/battery_meter_progress_normal_digit 'res/drawable/battery_meter_progress_normal_digit.xml'

    .line 367
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 370
    move-result-object v4

    .line 373
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 377
    const v4, 0x7f080b5c    # @drawable/battery_meter_progress_normal_digit_dark 'res/drawable/battery_meter_progress_normal_digit_dark.xml'

    .line 379
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 382
    move-result-object v4

    .line 385
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 389
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->CHARGING:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 391
    const v4, 0x7f080b4f    # @drawable/battery_meter_progress_charging 'res/drawable/battery_meter_progress_charging.xml'

    .line 393
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 396
    move-result-object v4

    .line 399
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 403
    const v4, 0x7f080b50    # @drawable/battery_meter_progress_charging_dark 'res/drawable/battery_meter_progress_charging_dark.xml'

    .line 405
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 408
    move-result-object v4

    .line 411
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 415
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->CHARGING_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 417
    const v4, 0x7f080b51    # @drawable/battery_meter_progress_charging_digit 'res/drawable/battery_meter_progress_charging_digit.xml'

    .line 419
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 422
    move-result-object v4

    .line 425
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 429
    const v4, 0x7f080b52    # @drawable/battery_meter_progress_charging_digit_dark 'res/drawable/battery_meter_progress_charging_digit_dark.xml'

    .line 431
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 434
    move-result-object v4

    .line 437
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 441
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->QUICK_CHARGING:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 443
    const v4, 0x7f080b70    # @drawable/battery_meter_progress_quick_charging 'res/drawable/battery_meter_progress_quick_charging.xml'

    .line 445
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 448
    move-result-object v4

    .line 451
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 455
    const v4, 0x7f080b71    # @drawable/battery_meter_progress_quick_charging_dark 'res/drawable/battery_meter_progress_quick_charging_dark.xml'

    .line 457
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 460
    move-result-object v4

    .line 463
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 467
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->QUICK_CHARGING_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 469
    const v4, 0x7f080b72    # @drawable/battery_meter_progress_quick_charging_digit 'res/drawable/battery_meter_progress_quick_charging_digit.xml'

    .line 471
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 474
    move-result-object v4

    .line 477
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 481
    const v4, 0x7f080b73    # @drawable/battery_meter_progress_quick_charging_digit_dark 'res/drawable/battery_meter_progress_quick_charging_digit_dark.xml'

    .line 483
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 486
    move-result-object v4

    .line 489
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 493
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->POWER_SAVE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 495
    const v4, 0x7f080b6c    # @drawable/battery_meter_progress_power_save 'res/drawable/battery_meter_progress_power_save.xml'

    .line 497
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 500
    move-result-object v4

    .line 503
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 507
    const v4, 0x7f080b6d    # @drawable/battery_meter_progress_power_save_dark 'res/drawable/battery_meter_progress_power_save_dark.xml'

    .line 509
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 512
    move-result-object v4

    .line 515
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 519
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->POWER_SAVE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 521
    const v4, 0x7f080b6e    # @drawable/battery_meter_progress_power_save_digit 'res/drawable/battery_meter_progress_power_save_digit.xml'

    .line 523
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 526
    move-result-object v4

    .line 529
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 533
    const v4, 0x7f080b6f    # @drawable/battery_meter_progress_power_save_digit_dark 'res/drawable/battery_meter_progress_power_save_digit_dark.xml'

    .line 535
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 538
    move-result-object v4

    .line 541
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 545
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERFORMANCE_MODE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 547
    const v4, 0x7f080b5d    # @drawable/battery_meter_progress_performance 'res/drawable/battery_meter_progress_performance.xml'

    .line 549
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 552
    move-result-object v4

    .line 555
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 559
    const v4, 0x7f080b63    # @drawable/battery_meter_progress_performance_dark 'res/drawable/battery_meter_progress_performance_dark.xml'

    .line 561
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 564
    move-result-object v4

    .line 567
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 571
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERFORMANCE_MODE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 573
    const v4, 0x7f080b64    # @drawable/battery_meter_progress_performance_digit 'res/drawable/battery_meter_progress_performance_digit.xml'

    .line 575
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 578
    move-result-object v4

    .line 581
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 585
    const v4, 0x7f080b65    # @drawable/battery_meter_progress_performance_digit_dark 'res/drawable/battery_meter_progress_performance_digit_dark.xml'

    .line 587
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 590
    move-result-object v4

    .line 593
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 597
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERF_CHARGE_MODE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 599
    const v4, 0x7f080b5e    # @drawable/battery_meter_progress_performance_charging 'res/drawable/battery_meter_progress_performance_charging.xml'

    .line 601
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 604
    move-result-object v4

    .line 607
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 611
    const v4, 0x7f080b5f    # @drawable/battery_meter_progress_performance_charging_dark 'res/drawable/battery_meter_progress_performance_charging_dark.xml'

    .line 613
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 616
    move-result-object v4

    .line 619
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 623
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERF_CHARGE_MODE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 625
    const v4, 0x7f080b60    # @drawable/battery_meter_progress_performance_charging_digit 'res/drawable/battery_meter_progress_performance_charging_digit.xml'

    .line 627
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 630
    move-result-object v4

    .line 633
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 637
    const v4, 0x7f080b61    # @drawable/battery_meter_progress_performance_charging_digit_dark 'res/drawable/battery_meter_progress_performance_charging_digit_dark.xml'

    .line 639
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 642
    move-result-object v4

    .line 645
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 649
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERF_QC_MODE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 651
    const v4, 0x7f080b66    # @drawable/battery_meter_progress_performance_quick_charging 'res/drawable/battery_meter_progress_performance_quick_charging.xml'

    .line 653
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 656
    move-result-object v4

    .line 659
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 663
    const v4, 0x7f080b67    # @drawable/battery_meter_progress_performance_quick_charging_dark 'res/drawable/battery_meter_progress_performance_quick_charging_dark.xml'

    .line 665
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 668
    move-result-object v4

    .line 671
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    .line 675
    sget-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERF_QC_MODE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 677
    const v4, 0x7f080b68    # @drawable/battery_meter_progress_performance_quick_charging_digit 'res/drawable/battery_meter_progress_performance_quick_charging_digit.xml'

    .line 679
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 682
    move-result-object v4

    .line 685
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDarkDrawables:Landroid/util/ArrayMap;

    .line 689
    const v4, 0x7f080b69    # @drawable/battery_meter_progress_performance_quick_charging_digit_dark 'res/drawable/battery_meter_progress_performance_quick_charging_digit_dark.xml'

    .line 691
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 694
    move-result-object v0

    .line 697
    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseLegacyDrawable:Z

    .line 701
    if-eqz v0, :cond_0

    .line 703
    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 705
    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 707
    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 709
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 711
    goto :goto_2

    .line 714
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressOrientationPortrait:Z

    .line 715
    if-eqz v0, :cond_1

    .line 717
    const/16 v0, 0x50

    .line 719
    goto :goto_0

    .line 721
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressGravityStart:Z

    .line 722
    if-eqz v0, :cond_2

    .line 724
    const v0, 0x800003

    .line 726
    goto :goto_0

    .line 729
    :cond_2
    const v0, 0x800005

    .line 730
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 733
    move-result-object v1

    .line 736
    const v2, 0x7f080b4a    # @drawable/battery_meter_bg_tint 'res/drawable/battery_meter_bg_tint.xml'

    .line 737
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 740
    move-result-object v1

    .line 743
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    .line 744
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 746
    move-result-object v3

    .line 749
    const v4, 0x7f080b75    # @drawable/battery_meter_progress_tint 'res/drawable/battery_meter_progress_tint.xml'

    .line 750
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 753
    move-result-object v3

    .line 756
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressOrientationPortrait:Z

    .line 757
    const/4 v5, 0x1

    .line 759
    if-eqz v4, :cond_3

    .line 760
    const/4 v4, 0x2

    .line 762
    goto :goto_1

    .line 763
    :cond_3
    move v4, v5

    .line 764
    :goto_1
    invoke-direct {v2, v3, v0, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 765
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 768
    filled-new-array {v1, v2}, [Landroid/graphics/drawable/Drawable;

    .line 770
    move-result-object v1

    .line 773
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 774
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 777
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 779
    move-result-object v0

    .line 782
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 783
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 785
    const/16 v1, 0x11

    .line 787
    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 789
    iget-object v6, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 792
    const/4 v7, 0x1

    .line 794
    const/4 v8, 0x0

    .line 795
    const/4 v9, 0x0

    .line 796
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressCenterLeftOffset:F

    .line 797
    const/high16 v1, 0x40000000    # 2.0f

    .line 799
    mul-float/2addr v0, v1

    .line 801
    float-to-int v10, v0

    .line 802
    const/4 v11, 0x0

    .line 803
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 807
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 809
    move-result-object v0

    .line 812
    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 813
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 817
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 819
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    .line 822
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    .line 825
    return-void
    .line 828
.end method
