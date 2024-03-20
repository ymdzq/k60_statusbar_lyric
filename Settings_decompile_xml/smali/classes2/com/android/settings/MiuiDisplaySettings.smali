.class public Lcom/android/settings/MiuiDisplaySettings;
.super Lcom/android/settings/DisplaySettings;
.source "MiuiDisplaySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;,
        Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;
    }
.end annotation


# static fields
.field private static final BACKGROUND_BLUR_SUPPORTED:Z

.field private static final IS_VIRTUAL_LIGHT_SENSOR_DEVICE:Z

.field private static final SUPPORT_MANUAL_BRIGHTNESS_BOOST:Z

.field private static final TAG:Ljava/lang/String;

.field private static sUiModeOrder:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eAVpreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mAODObserver:Landroid/database/ContentObserver;

.field private mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private mAdvancedPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mAutoAdjustModeEnable:Landroidx/preference/CheckBoxPreference;

.field private mAutomaticAvailable:Z

.field private volatile mAutomaticBrightnessEnabled:Z

.field private mBackgroundBlurEnable:Landroidx/preference/CheckBoxPreference;

.field private mBackgroundHandler:Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

.field private mBinder:Landroid/os/IBinder;

.field private mBlurConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mBrightnessModeGroup:Landroidx/preference/PreferenceGroup;

.field private mBrightnessObserver:Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;

.field private mBrightnessSeekBarPreference:Lcom/android/settings/display/BrightnessSeekBarPreference;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDarkModeDisplayEnablePref:Landroidx/preference/CheckBoxPreference;

.field private mDarkModeNormalDisplayEnablePref:Landroidx/preference/CheckBoxPreference;

.field private mDarkModeTiming:Landroidx/preference/PreferenceCategory;

.field private mDisableDclightAndHighFps:Z

.field private mDisabledByAdmin:Z

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFontSettingsPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mFontStatusController:Lcom/android/settings/BaseSettingsController;

.field private final mHandler:Landroid/os/Handler;

.field private mHighBrightnessHintSummary:Landroidx/preference/Preference;

.field private mIsFontSettingEnable:Z

.field private mIsOdinInternal:Z

.field private mLastClickTime:J

.field private mLineBreaking:Landroidx/preference/CheckBoxPreference;

.field private mMaximumBrightness:F

.field private mMinimumBrightness:F

.field private mMiuiUtils:Lcom/android/settings/MiuiUtils;

.field private mMonochromeModeEnabledObserver:Landroid/database/ContentObserver;

.field private mPageLayoutStatusController:Lcom/android/settings/BaseSettingsController;

.field private mPageLayoutStatusPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mPaperModeEnabledObserver:Landroid/database/ContentObserver;

.field private mPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mScreenDcPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mScreenFpsPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mScreenMonochromeModePref:Landroidx/preference/Preference;

.field private mScreenResolutionPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mSmoothLightModeAvailable:Z

.field private mSmoothLightModeEnable:Landroidx/preference/CheckBoxPreference;

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private mSunlightModeAvailable:Z

.field private mSunlightModeEnable:Landroidx/preference/CheckBoxPreference;

.field private mSurfaceFlinger:Landroid/os/IBinder;

.field private mToast:Landroid/widget/Toast;

.field private mTouchSensitive:Landroidx/preference/CheckBoxPreference;

.field private final mUpdateBrightnessSeekBarRunnable:Ljava/lang/Runnable;

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-e_pdb5kiNnkxyawWgo8GMKLMFo(Lcom/android/settings/MiuiDisplaySettings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiDisplaySettings;->lambda$onPreferenceChange$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2nk5agcHOqYSRfhSP8MHRa1VguQ(Lcom/android/settings/MiuiDisplaySettings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiDisplaySettings;->lambda$onPreferenceChange$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YBytYfOYkcwQHMR0JKl3HE0ds6I(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->lambda$onPreferenceChange$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$x4k9PfK0JmeCqHH6hBbWzliGYQA(Lcom/android/settings/MiuiDisplaySettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->lambda$onPreferenceChange$3(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdvancedPaperModePref(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAdvancedPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutomaticAvailable(Lcom/android/settings/MiuiDisplaySettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAutomaticAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutomaticBrightnessEnabled(Lcom/android/settings/MiuiDisplaySettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAutomaticBrightnessEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundHandler(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundHandler:Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBrightnessObserver(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBrightnessObserver:Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBrightnessSeekBarPreference(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settings/display/BrightnessSeekBarPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBrightnessSeekBarPreference:Lcom/android/settings/display/BrightnessSeekBarPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/MiuiDisplaySettings;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayListener(Lcom/android/settings/MiuiDisplaySettings;)Landroid/hardware/display/DisplayManager$DisplayListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/android/settings/MiuiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnforcedAdmin(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFontSettingsPref(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mFontSettingsPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/MiuiDisplaySettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaximumBrightness(Lcom/android/settings/MiuiDisplaySettings;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mMaximumBrightness:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinimumBrightness(Lcom/android/settings/MiuiDisplaySettings;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mMinimumBrightness:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPageLayoutStatusPref(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mPageLayoutStatusPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaperModePref(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateBrightnessSeekBarRunnable(Lcom/android/settings/MiuiDisplaySettings;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mUpdateBrightnessSeekBarRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateModeRunnable(Lcom/android/settings/MiuiDisplaySettings;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAutomaticBrightnessEnabled(Lcom/android/settings/MiuiDisplaySettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mAutomaticBrightnessEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisabledByAdmin(Lcom/android/settings/MiuiDisplaySettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mDisabledByAdmin:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnforcedAdmin(Lcom/android/settings/MiuiDisplaySettings;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFontSettingEnable(Lcom/android/settings/MiuiDisplaySettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mIsFontSettingEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaximumBrightness(Lcom/android/settings/MiuiDisplaySettings;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mMaximumBrightness:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMinimumBrightness(Lcom/android/settings/MiuiDisplaySettings;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mMinimumBrightness:F

    return-void
.end method

.method static bridge synthetic -$$Nest$menableScreenOnProximitySensor(Lcom/android/settings/MiuiDisplaySettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->enableScreenOnProximitySensor(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAutoBrightnessEnabled(Lcom/android/settings/MiuiDisplaySettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->isAutoBrightnessEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSunlightModeEnabled(Lcom/android/settings/MiuiDisplaySettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->isSunlightModeEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateAutomaticBrightnessMode(Lcom/android/settings/MiuiDisplaySettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updateAutomaticBrightnessMode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFontSettingEnabledState(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->updateFontSettingEnabledState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMonochromeMode(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->updateMonochromeMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePaperMode(Lcom/android/settings/MiuiDisplaySettings;Lcom/android/settingslib/miuisettings/preference/ValuePreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updatePaperMode(Lcom/android/settingslib/miuisettings/preference/ValuePreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSunlightMode(Lcom/android/settings/MiuiDisplaySettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updateSunlightMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 114
    const-class v0, Lcom/android/settings/MiuiDisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MiuiDisplaySettings;->TAG:Ljava/lang/String;

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiDisplaySettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/android/settings/MiuiDisplaySettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Lcom/android/settings/MiuiDisplaySettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/android/settings/MiuiDisplaySettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/android/settings/MiuiDisplaySettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/android/settings/MiuiDisplaySettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/android/settings/MiuiDisplaySettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v0, "ro.vendor.audio.lightsensor.virtual"

    .line 201
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/MiuiDisplaySettings;->IS_VIRTUAL_LIGHT_SENSOR_DEVICE:Z

    const-string/jumbo v0, "support_manual_brightness_boost"

    .line 203
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/MiuiDisplaySettings;->SUPPORT_MANUAL_BRIGHTNESS_BOOST:Z

    const-string/jumbo v0, "persist.sys.background_blur_supported"

    .line 207
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/MiuiDisplaySettings;->BACKGROUND_BLUR_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 112
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;-><init>()V

    .line 151
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    const-string/jumbo v0, "support_backlight_bit_switch"

    const/4 v1, 0x0

    .line 205
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mSmoothLightModeAvailable:Z

    .line 212
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "odin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mIsOdinInternal:Z

    .line 923
    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDisplaySettings$8;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1024
    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDisplaySettings$9;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 1039
    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDisplaySettings$10;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mUpdateBrightnessSeekBarRunnable:Ljava/lang/Runnable;

    .line 1052
    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDisplaySettings$11;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mStartListeningRunnable:Ljava/lang/Runnable;

    .line 1061
    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDisplaySettings$12;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mStopListeningRunnable:Ljava/lang/Runnable;

    .line 1068
    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDisplaySettings$13;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelToast()V
    .locals 0

    .line 1178
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mToast:Landroid/widget/Toast;

    if-eqz p0, :cond_0

    .line 1179
    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private checkRestrictionAndSetEnabled()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundHandler:Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    new-instance v1, Lcom/android/settings/MiuiDisplaySettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiDisplaySettings$6;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private enableScreenOnProximitySensor(Z)V
    .locals 1

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_screen_on_proximity_sensor"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private getAnimateStatus()Z
    .locals 3

    .line 892
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_close_unlock_animator"

    const/4 v1, 0x0

    .line 893
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "animate_settings_status"

    .line 892
    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isAutoBrightnessEnabled()Z
    .locals 2

    .line 938
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isBackgroundBlurEnabled()Z
    .locals 2

    .line 859
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "background_blur_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isFaceUnlockEnable()Z
    .locals 2

    .line 958
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    .line 959
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_unlcok_apply_for_lock"

    const/4 v1, 0x0

    .line 958
    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isFastDoubleClick()Z
    .locals 6

    .line 817
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 818
    iget-wide v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mLastClickTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 821
    :cond_0
    iput-wide v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mLastClickTime:J

    const/4 p0, 0x0

    return p0
.end method

.method private isLowPowerLevel()Z
    .locals 2

    .line 950
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    .line 951
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "low_power_level_state"

    const/4 v1, 0x0

    .line 950
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isQhdMode()Ljava/lang/String;
    .locals 2

    const-string/jumbo p0, "persist.sys.miui_resolution"

    const/4 v0, 0x0

    .line 878
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WQHD+"

    if-eqz p0, :cond_0

    const-string v1, ""

    .line 879
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    .line 880
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x438

    if-ne p0, v1, :cond_0

    const-string v0, "FHD+"

    :cond_0
    return-object v0
.end method

.method private isSunlightModeEnabled()Z
    .locals 2

    .line 945
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sunlight_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$onPreferenceChange$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundBlurEnable:Landroidx/preference/CheckBoxPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$1()V
    .locals 1

    const/4 v0, 0x1

    .line 794
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->notifySFBlurChanged(Z)V

    .line 795
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->setBlurActivated(Z)V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$2(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "background_blur_enable"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 793
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundHandler:Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    new-instance p2, Lcom/android/settings/MiuiDisplaySettings$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/settings/MiuiDisplaySettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$3(Z)V
    .locals 0

    .line 804
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->notifySFBlurChanged(Z)V

    .line 805
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->setBlurActivated(Z)V

    return-void
.end method

.method private notifySFBlurChanged(Z)V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    .line 836
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 837
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 838
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mSurfaceFlinger:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x0

    const v2, 0x84da

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 842
    :try_start_1
    sget-object p1, Lcom/android/settings/MiuiDisplaySettings;->TAG:Ljava/lang/String;

    const-string v1, "Failed to notify blur state to SurfaceFlinger"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 844
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 845
    throw p0
.end method

.method private resetAutoBrightnessShortModel()V
    .locals 4

    .line 1130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.android.hardware.display.IDisplayManager"

    .line 1133
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1134
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBinder:Landroid/os/IBinder;

    const v2, 0xfffffe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1137
    :catch_0
    :try_start_1
    sget-object p0, Lcom/android/settings/MiuiDisplaySettings;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException!"

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 1139
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1141
    throw p0
.end method

.method private setAutomaticBrightnessMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1117
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->resetAutoBrightnessShortModel()V

    .line 1119
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setBlurActivated(Z)V
    .locals 0

    .line 826
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    if-nez p0, :cond_0

    return-void

    .line 829
    :cond_0
    invoke-static {p1}, Landroid/app/ActivityTaskManager;->setBlurActivated(Z)V

    return-void
.end method

.method private showToast()V
    .locals 3

    .line 1184
    sget-boolean v0, Lcom/android/settings/MiuiDisplaySettings;->IS_VIRTUAL_LIGHT_SENSOR_DEVICE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->isFaceUnlockEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->cancelToast()V

    .line 1187
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->automatic_brightness_close_for_virtual_light_sensor:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mToast:Landroid/widget/Toast;

    .line 1190
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private updateAnimateStatus(Z)V
    .locals 1

    .line 888
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "animate_settings_status"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateAutoAdjustModeDisableIfNeeded()V
    .locals 1

    .line 1166
    sget-boolean v0, Lcom/android/settings/MiuiDisplaySettings;->IS_VIRTUAL_LIGHT_SENSOR_DEVICE:Z

    if-eqz v0, :cond_1

    .line 1167
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->isFaceUnlockEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAutoAdjustModeEnable:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1169
    sget-object p0, Lcom/android/settings/MiuiDisplaySettings;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateAutoAdjustModeDisableIfNeeded: Automatic brightness mode is disabled for virtual light sensor device."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1172
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAutoAdjustModeEnable:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAutomaticBrightnessMode(Z)V
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAutoAdjustModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1100
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->updateAutoAdjustModeDisableIfNeeded()V

    .line 1101
    iget-boolean v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeAvailable:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBrightnessModeGroup:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x1

    .line 1104
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->updateHighBrightnessHintSummary(Z)V

    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBrightnessModeGroup:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1107
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->isSunlightModeEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->updateSunlightMode(Z)V

    .line 1112
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->setAutomaticBrightnessMode(I)V

    return-void
.end method

.method private updateDarkMode()V
    .locals 2

    .line 594
    sget-object v0, Lcom/android/settings/MiuiDisplaySettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDarkMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mDarkModeDisplayEnablePref:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 596
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateDarkModeStatus(Z)V
    .locals 7

    const-string v0, "dark_mode_enable_by_setting"

    const-string/jumbo v1, "\u8bbe\u7f6e"

    const-string/jumbo v2, "open_dark_mode_channel"

    const-string/jumbo v3, "setting_Display_DM"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 898
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, p1}, Lcom/android/settings/report/InternationalCompat;->trackReportSwitchStatus(Ljava/lang/String;Ljava/lang/Object;)V

    .line 899
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 900
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 903
    iget-object v3, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    .line 902
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "enter_setting_by_notification"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "\u5f39\u7a97"

    .line 900
    :goto_0
    invoke-static {p1, v2, v1, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 906
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 908
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v4}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setNightModeActivated(Landroid/content/Context;Z)V

    goto :goto_1

    .line 911
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, p1}, Lcom/android/settings/report/InternationalCompat;->trackReportSwitchStatus(Ljava/lang/String;Ljava/lang/Object;)V

    .line 912
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 913
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 916
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 918
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v5}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setNightModeActivated(Landroid/content/Context;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateExtremeAudioAndVideoPreference()V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->hasExtremeAudioAndVideo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->eAVpreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->getExtremeAudioAndVideoStatus(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 513
    sget p0, Lcom/android/settings/R$string;->screen_enhance_status_enable:I

    goto :goto_0

    .line 514
    :cond_0
    sget p0, Lcom/android/settings/R$string;->screen_enhance_status_disable:I

    .line 512
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :cond_1
    return-void
.end method

.method private updateFontSettingEnabledState()V
    .locals 2

    .line 498
    iget-boolean v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mIsFontSettingEnable:Z

    if-eqz v0, :cond_0

    .line 499
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mFontSettingsPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "font_settings_cat"

    .line 502
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 503
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mFontSettingsPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 505
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mFontStatusController:Lcom/android/settings/BaseSettingsController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/BaseSettingsController;->setUpdateCallback(Lcom/android/settings/BaseSettingsController$UpdateCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFontSettings()V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mFontStatusController:Lcom/android/settings/BaseSettingsController;

    invoke-virtual {v0}, Lcom/android/settings/BaseSettingsController;->updateStatus()V

    .line 612
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mPageLayoutStatusController:Lcom/android/settings/BaseSettingsController;

    invoke-virtual {p0}, Lcom/android/settings/BaseSettingsController;->updateStatus()V

    return-void
.end method

.method private updateHighBrightnessHintSummary(Z)V
    .locals 1

    .line 1152
    iget-boolean v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mIsOdinInternal:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1154
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mHighBrightnessHintSummary:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1156
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mHighBrightnessHintSummary:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLineBreakingPreference(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string/jumbo p1, "persist.sys.line_breaking"

    .line 869
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateMonochromeMode()V
    .locals 2

    const-string/jumbo v0, "screen_monochrome_mode"

    .line 601
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 602
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 604
    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 605
    invoke-static {p0}, Lcom/android/settings/display/MonochromeModeFragment;->isMonochromeModeEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 606
    sget p0, Lcom/android/settings/R$string;->screen_paper_mode_turn_on:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$string;->screen_paper_mode_turn_off:I

    .line 605
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :cond_1
    return-void
.end method

.method private updatePaperMode(Lcom/android/settingslib/miuisettings/preference/ValuePreference;)V
    .locals 1

    .line 586
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 588
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 589
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$string;->screen_paper_mode_turn_on:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$string;->screen_paper_mode_turn_off:I

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :cond_1
    return-void
.end method

.method private updateSmoothLightMode(Z)V
    .locals 3

    const-string/jumbo v0, "persist.vendor.light.bit.switch"

    const/4 v1, 0x0

    .line 1089
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1092
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mSmoothLightModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1093
    sget-object p0, Lcom/android/settings/MiuiDisplaySettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSmoothLightMode: isChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", current status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object p0

    const/16 v0, 0x2a

    invoke-virtual {p0, v0, p1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    return-void
.end method

.method private updateSunlightMode(Z)V
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1146
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updateHighBrightnessHintSummary(Z)V

    .line 1147
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sunlight_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateTouchSensitivePreference(Z)V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mMiuiUtils:Lcom/android/settings/MiuiUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/MiuiUtils;->enableTouchSensitive(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 864
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->enableScreenOnProximitySensor(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 850
    const-class p0, Lcom/android/settings/MiuiDisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageIndex()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 255
    invoke-super {p0, p1}, Lcom/android/settings/DisplaySettings;->onCreate(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    .line 257
    new-instance p1, Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/settings/MiuiDisplaySettings;->TAG:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 258
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 259
    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;-><init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Looper;Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler-IA;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundHandler:Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    .line 261
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "screen_effect"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 262
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mMiuiUtils:Lcom/android/settings/MiuiUtils;

    const-string p1, "background_blur_enable"

    .line 263
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundBlurEnable:Landroidx/preference/CheckBoxPreference;

    .line 264
    sget-boolean p1, Lcom/android/settings/MiuiDisplaySettings;->BACKGROUND_BLUR_SUPPORTED:Z

    if-nez p1, :cond_0

    .line 265
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundBlurEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v2, "activity_task"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityTaskManager;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const-string p1, "SurfaceFlinger"

    .line 268
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSurfaceFlinger:Landroid/os/IBinder;

    .line 269
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundBlurEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundBlurEnable:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->isBackgroundBlurEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    const-string/jumbo p1, "touch_category"

    .line 272
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const-string/jumbo v2, "touch_sensitive"

    .line 273
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mTouchSensitive:Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string/jumbo v2, "support_touch_sensitive"

    const/4 v3, 0x0

    .line 277
    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mTouchSensitive:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 279
    iput-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mTouchSensitive:Landroidx/preference/CheckBoxPreference;

    goto :goto_1

    .line 281
    :cond_2
    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mTouchSensitive:Landroidx/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/MiuiDisplaySettings;->mMiuiUtils:Lcom/android/settings/MiuiUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/MiuiUtils;->isTouchSensitive(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 283
    :goto_1
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 284
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    const-string p1, "line_breaking"

    .line 287
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mLineBreaking:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_4

    .line 289
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    const-string/jumbo p1, "screen_monochrome_mode"

    .line 292
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenMonochromeModePref:Landroidx/preference/Preference;

    if-eqz p1, :cond_5

    .line 293
    sget p1, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_5

    .line 295
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenMonochromeModePref:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 296
    iput-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenMonochromeModePref:Landroidx/preference/Preference;

    goto :goto_2

    .line 298
    :cond_5
    new-instance p1, Lcom/android/settings/MiuiDisplaySettings$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v2}, Lcom/android/settings/MiuiDisplaySettings$1;-><init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mMonochromeModeEnabledObserver:Landroid/database/ContentObserver;

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "screen_monochrome_mode_enabled"

    .line 305
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/MiuiDisplaySettings;->mMonochromeModeEnabledObserver:Landroid/database/ContentObserver;

    .line 304
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_2
    const-string/jumbo p1, "screen_resolution"

    .line 310
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenResolutionPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string/jumbo p1, "screen_resolution_supported"

    .line 311
    invoke-static {p1}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 312
    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenResolutionPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    if-eqz p1, :cond_7

    .line 313
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 317
    :cond_6
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenResolutionPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->isQhdMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenResolutionPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v4}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    goto :goto_4

    .line 314
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenResolutionPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 315
    iput-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenResolutionPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 323
    :cond_8
    :goto_4
    sget p1, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_9

    .line 326
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 328
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    const-string/jumbo p1, "screen_paper_mode"

    .line 331
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string p1, "advanced_screen_paper_mode"

    .line 332
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mAdvancedPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 333
    sget-boolean v0, Landroid/provider/MiuiSettings$ScreenEffect;->isScreenPaperModeSupported:Z

    if-nez v0, :cond_a

    .line 334
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 335
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 336
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAdvancedPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    .line 339
    :cond_a
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportPaperEyeCare()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAdvancedPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    :goto_5
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 340
    new-instance p1, Lcom/android/settings/MiuiDisplaySettings$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/MiuiDisplaySettings$2;-><init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mPaperModeEnabledObserver:Landroid/database/ContentObserver;

    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_paper_mode_enabled"

    .line 348
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mPaperModeEnabledObserver:Landroid/database/ContentObserver;

    .line 347
    invoke-virtual {p1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 352
    :cond_c
    :goto_6
    new-instance p1, Lcom/android/settings/display/FontStatusController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/android/settings/display/FontStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mFontStatusController:Lcom/android/settings/BaseSettingsController;

    const-string p1, "font_settings"

    .line 353
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mFontSettingsPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p1, :cond_d

    .line 355
    invoke-virtual {p1, v4}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 356
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mFontStatusController:Lcom/android/settings/BaseSettingsController;

    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDisplaySettings$3;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/BaseSettingsController;->setUpdateCallback(Lcom/android/settings/BaseSettingsController$UpdateCallback;)V

    .line 365
    :cond_d
    new-instance p1, Lcom/android/settings/display/PageLayoutStatusController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/android/settings/display/PageLayoutStatusController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mPageLayoutStatusController:Lcom/android/settings/BaseSettingsController;

    const-string/jumbo p1, "page_layout_settings"

    .line 366
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mPageLayoutStatusPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p1, :cond_e

    .line 368
    invoke-virtual {p1, v4}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 369
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mPageLayoutStatusController:Lcom/android/settings/BaseSettingsController;

    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDisplaySettings$4;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/BaseSettingsController;->setUpdateCallback(Lcom/android/settings/BaseSettingsController$UpdateCallback;)V

    .line 376
    :cond_e
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mPageLayoutStatusPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p1, :cond_12

    .line 377
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 378
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mPageLayoutStatusPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 381
    :cond_f
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mFontSettingsPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p1, :cond_11

    .line 382
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_11

    .line 383
    :cond_10
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 386
    :cond_11
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_12

    .line 387
    new-instance p1, Lcom/android/settings/MiuiDisplaySettings$5;

    invoke-direct {p1, p0}, Lcom/android/settings/MiuiDisplaySettings$5;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_12
    const-string p1, "font_settings_cat"

    .line 396
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_13

    .line 397
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 398
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 401
    :cond_13
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_14

    move v0, v4

    goto :goto_7

    :cond_14
    move v0, v3

    :goto_7
    if-eqz p1, :cond_15

    if-nez v0, :cond_15

    .line 404
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_15
    const-string p1, "dark_mode_timing"

    .line 407
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mDarkModeTiming:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_18

    .line 409
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/MiuiSettings$Secure;->isSecureSpace(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 410
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mDarkModeTiming:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_8

    :cond_16
    const-string p1, "dark_mode_display_enable"

    .line 412
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mDarkModeDisplayEnablePref:Landroidx/preference/CheckBoxPreference;

    const-string p1, "dark_mode_normal_display_enable"

    .line 413
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mDarkModeNormalDisplayEnablePref:Landroidx/preference/CheckBoxPreference;

    .line 414
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mDarkModeDisplayEnablePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 415
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->supportLiteOptimization(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 416
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mDarkModeTiming:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mDarkModeNormalDisplayEnablePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_8

    .line 418
    :cond_17
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mDarkModeTiming:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mDarkModeDisplayEnablePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 422
    :cond_18
    :goto_8
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportAnimateCheck()Z

    move-result p1

    if-nez p1, :cond_19

    const-string p1, "animate_settings_cat"

    .line 423
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 424
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_9

    :cond_19
    const-string p1, "animate_settings_key"

    .line 426
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 427
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->getAnimateStatus()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 428
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_9
    const-string p1, "dc_light"

    .line 431
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenDcPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string/jumbo p1, "screen_fps"

    .line 432
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenFpsPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 434
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1a

    const-string p1, "cetus"

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 435
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v4

    goto :goto_a

    :cond_1a
    move p1, v3

    :goto_a
    iput-boolean p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mDisableDclightAndHighFps:Z

    if-eqz p1, :cond_1b

    .line 437
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenDcPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    sget v0, Lcom/android/settings/R$layout;->set_preference_title_gray:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 438
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mScreenFpsPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_1b
    const-string/jumbo p1, "screen_enhance_engine_memc"

    .line 441
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->eAVpreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 442
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->hasExtremeAudioAndVideo(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 443
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->eAVpreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_b

    .line 445
    :cond_1c
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->eAVpreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v4}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    :goto_b
    const-string p1, "brightness"

    .line 448
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/BrightnessSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBrightnessSeekBarPreference:Lcom/android/settings/display/BrightnessSeekBarPreference;

    .line 449
    sget v0, Lcom/android/settings/R$drawable;->sun_brightness_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(I)V

    const-string p1, "brightness_mode_group"

    .line 451
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBrightnessModeGroup:Landroidx/preference/PreferenceGroup;

    const-string p1, "brightness_auto_mode_enable"

    .line 452
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mAutoAdjustModeEnable:Landroidx/preference/CheckBoxPreference;

    const-string p1, "brightness_sunlight_mode_enable"

    .line 453
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeEnable:Landroidx/preference/CheckBoxPreference;

    const-string p1, "brightness_smooth_mode_enable"

    .line 454
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSmoothLightModeEnable:Landroidx/preference/CheckBoxPreference;

    const-string p1, "high_brightness_hint_summary"

    .line 455
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mHighBrightnessHintSummary:Landroidx/preference/Preference;

    const-string p1, "config_sunlight_mode_available"

    .line 456
    invoke-static {p1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeAvailable:Z

    .line 458
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mAutoAdjustModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 460
    sget-boolean p1, Lcom/android/settings/MiuiDisplaySettings;->SUPPORT_MANUAL_BRIGHTNESS_BOOST:Z

    if-eqz p1, :cond_1d

    .line 461
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeEnable:Landroidx/preference/CheckBoxPreference;

    sget v0, Lcom/android/settings/R$string;->sunlight_mode_boost_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_c

    .line 463
    :cond_1d
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeEnable:Landroidx/preference/CheckBoxPreference;

    sget v0, Lcom/android/settings/R$string;->sunlight_mode_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 465
    :goto_c
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 467
    iget-boolean p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSmoothLightModeAvailable:Z

    if-eqz p1, :cond_1e

    .line 468
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSmoothLightModeEnable:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v0, "persist.vendor.light.bit.switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 470
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSmoothLightModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_d

    .line 472
    :cond_1e
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBrightnessModeGroup:Landroidx/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mSmoothLightModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 474
    :goto_d
    iget-boolean p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeAvailable:Z

    if-nez p1, :cond_1f

    .line 475
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBrightnessModeGroup:Landroidx/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 477
    :cond_1f
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mHighBrightnessHintSummary:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 479
    iput p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mMinimumBrightness:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 480
    iput p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mMaximumBrightness:F

    .line 482
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11050001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mAutomaticAvailable:Z

    .line 485
    new-instance p1, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;-><init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBrightnessObserver:Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;

    .line 486
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string p1, "display"

    .line 487
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBinder:Landroid/os/IBinder;

    .line 488
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->isAutoBrightnessEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updateAutomaticBrightnessMode(Z)V

    .line 490
    new-instance p1, Lcom/android/settings/controller/ScreenMaxAspectRatioController;

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_max_aspect_ratio"

    invoke-direct {p1, v0, v1}, Lcom/android/settings/controller/ScreenMaxAspectRatioController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settings/controller/ScreenMaxAspectRatioController;->getAvailabilityStatus()I

    move-result p1

    if-eqz p1, :cond_20

    new-instance p1, Lcom/android/settings/MiuiAutoRotateController;

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v1, "external_auto_rotate"

    invoke-direct {p1, v0, v1, v3}, Lcom/android/settings/MiuiAutoRotateController;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 491
    invoke-virtual {p1}, Lcom/android/settings/MiuiAutoRotateController;->getAvailabilityStatus()I

    move-result p1

    if-eqz p1, :cond_20

    const-string/jumbo p1, "system_settings_cat"

    .line 492
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 493
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_20
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 720
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->touch_sensitive_turn_off_title:I

    .line 721
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->touch_sensitive_turn_off_summary:I

    .line 722
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->touch_sensitive_turn_off_confirm:I

    new-instance v1, Lcom/android/settings/MiuiDisplaySettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiDisplaySettings$7;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    .line 723
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->touch_sensitive_turn_off_cancel:I

    const/4 v0, 0x0

    .line 728
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 729
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 731
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAutoAdjustModeEnable:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mSunlightModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundHandler:Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 552
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mPaperModeEnabledObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mPaperModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 554
    iput-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mPaperModeEnabledObserver:Landroid/database/ContentObserver;

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mMonochromeModeEnabledObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mMonochromeModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 558
    iput-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mMonochromeModeEnabledObserver:Landroid/database/ContentObserver;

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAODObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mAODObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 562
    iput-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mAODObserver:Landroid/database/ContentObserver;

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mTouchSensitive:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 565
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 567
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mLineBreaking:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 568
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 570
    :cond_4
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundHandler:Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundHandler:Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->cancelToast()V

    .line 544
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 736
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 739
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "touch_sensitive"

    .line 743
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 745
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updateTouchSensitivePreference(Z)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "line_breaking"

    .line 746
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 748
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updateLineBreakingPreference(Z)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "animate_settings_key"

    .line 749
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 750
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updateAnimateStatus(Z)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "dark_mode_display_enable"

    .line 751
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 753
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updateDarkModeStatus(Z)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "brightness_auto_mode_enable"

    .line 754
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 755
    iget-boolean p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mDisabledByAdmin:Z

    if-eqz p1, :cond_5

    .line 756
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return v1

    .line 759
    :cond_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updateAutomaticBrightnessMode(Z)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "brightness_sunlight_mode_enable"

    .line 760
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 761
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->isLowPowerLevel()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 762
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_7

    .line 763
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 765
    :cond_7
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->sunlight_low_power_notification:I

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mToast:Landroid/widget/Toast;

    .line 767
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 770
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updateSunlightMode(Z)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "brightness_smooth_mode_enable"

    .line 772
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 773
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->updateSmoothLightMode(Z)V

    goto :goto_0

    :cond_a
    const-string v0, "background_blur_enable"

    .line 774
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 775
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    .line 778
    :cond_b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string/jumbo p2, "persist.sys.background_blur_status_default"

    .line 780
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_d

    .line 782
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBlurConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez p1, :cond_c

    .line 783
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 784
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->background_blur_title:I

    .line 785
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->background_blur_message:I

    .line 786
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->screen_cancel:I

    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDisplaySettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    .line 787
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->screen_confirm:I

    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDisplaySettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    .line 790
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 797
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mBlurConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 799
    :cond_c
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBlurConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 801
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 803
    iget-object p2, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundHandler:Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    new-instance v0, Lcom/android/settings/MiuiDisplaySettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/MiuiDisplaySettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/MiuiDisplaySettings;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 5

    .line 618
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mFontSettingsPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string v1, "android.intent.category.DEFAULT"

    if-ne p2, v0, :cond_2

    .line 619
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 620
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.BROWSABLE"

    .line 622
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    sget-boolean v2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/MiuiDisplaySettings;->mIsFontSettingEnable:Z

    if-eqz v2, :cond_0

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "theme://zhuti.xiaomi.com/settingsfont?miback=true&miref="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    .line 628
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 630
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "theme://zhuti.xiaomi.com/list?S.REQUEST_RESOURCE_CODE=fonts&miback=true&miref="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    .line 633
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 635
    :goto_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, ":miui:starting_window_label"

    const-string v3, ""

    .line 636
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.thememanager"

    const-string v4, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 642
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 644
    :catch_0
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->thememanager_not_found:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    :goto_1
    const-string/jumbo v0, "setting_Display"

    .line 646
    invoke-static {v0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    .line 649
    :cond_2
    sget-boolean v0, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/settings/RegionUtils;->IS_JP_SB:Z

    if-eqz v0, :cond_4

    :cond_3
    const-string/jumbo v0, "page_layout_settings"

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 650
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.settings.ACCESSIBILITY_SETTINGS_FOR_SUW"

    .line 651
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isSetupFlow"

    .line 653
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.FontSizeSettingsForSetupWizardActivity"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 656
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 660
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mDisableDclightAndHighFps:Z

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dc_light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "screen_fps"

    if-nez v0, :cond_5

    .line 661
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 662
    :cond_5
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez p1, :cond_6

    .line 663
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v4, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {p1, v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->display_prompt_confirm:I

    const/4 v4, 0x0

    .line 665
    invoke-virtual {p1, v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 666
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 668
    :cond_6
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 669
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    sget p2, Lcom/android/settings/R$string;->dclight_unavailable_prompt:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    goto :goto_2

    .line 670
    :cond_7
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 671
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    sget p2, Lcom/android/settings/R$string;->screen_refresh_unavailable_prompt:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 673
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v2

    .line 677
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundHandler:Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 528
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mBackgroundHandler:Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->showToast()V

    .line 530
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 531
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportPaperEyeCare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mAdvancedPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->mPaperModePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->updatePaperMode(Lcom/android/settingslib/miuisettings/preference/ValuePreference;)V

    .line 532
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->updateFontSettings()V

    .line 533
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->updateMonochromeMode()V

    .line 534
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->updateExtremeAudioAndVideoPreference()V

    .line 535
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->updateDarkMode()V

    .line 536
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->checkRestrictionAndSetEnabled()V

    return-void
.end method
