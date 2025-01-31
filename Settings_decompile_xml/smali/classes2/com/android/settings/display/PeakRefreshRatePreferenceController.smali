.class public Lcom/android/settings/display/PeakRefreshRatePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "PeakRefreshRatePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;,
        Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;
    }
.end annotation


# static fields
.field static DEFAULT_REFRESH_RATE:F = 60.0f

.field private static final INVALIDATE_REFRESH_RATE:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "RefreshRatePrefCtr"


# instance fields
.field private final mDeviceConfigDisplaySettings:Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

.field private final mHandler:Landroid/os/Handler;

.field private final mOnDeviceConfigChange:Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;

.field mPeakRefreshRate:F

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnDeviceConfigChange(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mOnDeviceConfigChange:Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance p1, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;-><init>(Lcom/android/settings/display/PeakRefreshRatePreferenceController;Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings-IA;)V

    iput-object p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mDeviceConfigDisplaySettings:Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

    .line 62
    new-instance p1, Lcom/android/settings/display/PeakRefreshRatePreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController$1;-><init>(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mOnDeviceConfigChange:Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;

    .line 69
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    const-string p2, "RefreshRatePrefCtr"

    if-nez p1, :cond_0

    const-string p1, "No valid default display device"

    .line 73
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget p1, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->DEFAULT_REFRESH_RATE:F

    iput p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->findPeakRefreshRate([Landroid/view/Display$Mode;)F

    move-result p1

    iput p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    .line 79
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DEFAULT_REFRESH_RATE : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->DEFAULT_REFRESH_RATE:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mPeakRefreshRate : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getDefaultPeakRefreshRate()F
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mDeviceConfigDisplaySettings:Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->getDefaultPeakRefreshRate()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 198
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0058    # @android:integer/config_defaultVibrationAmplitude

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float v0, p0

    .line 202
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceConfig getDefaultPeakRefreshRate : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RefreshRatePrefCtr"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 91
    iget v0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 94
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->peak_refresh_rate_summary:I

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method findPeakRefreshRate([Landroid/view/Display$Mode;)F
    .locals 4

    .line 143
    sget p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->DEFAULT_REFRESH_RATE:F

    .line 144
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 145
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, p0

    if-lez v3, :cond_0

    .line 146
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_show_smooth_display:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 101
    iget p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    sget v0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->DEFAULT_REFRESH_RATE:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 128
    sget p0, Lcom/android/settings/R$string;->menu_key_display:I

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "peak_refresh_rate"

    .line 113
    invoke-direct {p0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->getDefaultPeakRefreshRate()F

    move-result v2

    .line 110
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 114
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStart()V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mDeviceConfigDisplaySettings:Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

    invoke-virtual {p0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->startListening()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mDeviceConfigDisplaySettings:Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

    invoke-virtual {p0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;->stopListening()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 119
    iget p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->DEFAULT_REFRESH_RATE:F

    .line 120
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChecked to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshRatePrefCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "peak_refresh_rate"

    .line 122
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
