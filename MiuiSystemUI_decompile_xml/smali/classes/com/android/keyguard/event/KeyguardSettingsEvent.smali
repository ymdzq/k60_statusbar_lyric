.class public final Lcom/android/keyguard/event/KeyguardSettingsEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final ANIMATION_TYPE_AURORA_VALUE:I = 0x8

.field private static final ANIMATION_TYPE_LIGHT_VALUE:I = 0x6

.field private static final ANIMATION_TYPE_NONE_VALUE:I = 0x0

.field private static final ANIMATION_TYPE_PULSE_VALUE:I = 0x9

.field private static final ANIMATION_TYPE_STAR_VALUE:I = 0x7

.field public static final Companion:Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;

.field private static final DEFAULT_FALLBACK_SCREEN_TIMEOUT_VALUE:J = 0x7530L

.field private static final DEFAULT_FINGERPRINT_UNLOCK_TYPE:I

.field private static final GXZW_LOWLIGHT_IMPORTNUMER:I = 0x88

.field private static final KEY_COM_MIUI_APPLICATINLOCK_USE_FINGERPRINT_STATE:Ljava/lang/String; = "com_miui_applicatinlock_use_fingerprint_state"

.field private static final KEY_FACE_UNLOCK_APPLY_FOR_KEYGUARD:Ljava/lang/String; = "face_unlcok_apply_for_lock"

.field private static final KEY_FINGERPRINT_APPLY_TO_PRIVACY_PASSWORD:Ljava/lang/String; = "fingerprint_apply_to_privacy_password"

.field private static final KEY_FINGERPRINT_UNLOCK_TYPE:Ljava/lang/String; = "fingerprint_unlock_type"

.field private static final KEY_FOD_ANIMATION_TYPE:Ljava/lang/String; = "fod_animation_type"

.field private static final KEY_GXZW_LOWLIGHT_PROPERTY:Ljava/lang/String; = "persist.vendor.sys.fp.expolevel"

.field private static final KEY_ICON_AOD_LOWLIGHT_SHOW_ENABLE:Ljava/lang/String; = "gxzw_icon_aod_lowlight_show_enable"

.field private static final KEY_ICON_AOD_SHOW_ENABLE:Ljava/lang/String; = "gxzw_icon_aod_show_enable"

.field private static final KEY_ICON_GXZW_VIBRATE_ENABLE:Ljava/lang/String; = "gxzw_icon_vibrate_enable"

.field private static final KEY_LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"

.field private static final KEY_MIUI_KEYGUARD:Ljava/lang/String; = "miui_keyguard"

.field private static final KEY_SELECTED_KEYGUARD_CLOCK_POSITION:Ljava/lang/String; = "selected_keyguard_clock_position"

.field private static final KEY_SETTINGS_SYSTEM_SHOW_LUNAR_CALENDAR:Ljava/lang/String; = "show_lunar_calendar"

.field private static final KEY_SETTING_FOD_QUICK_OPEN:Ljava/lang/String; = "fod_quick_open"

.field private static final RO_BOOT_HWC:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "KeyguardSettingsEvent"

.field private static final isSupportFinger:Z

.field private static final isSupportLowlight:Z

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    sput-object v0, Lcom/android/keyguard/event/KeyguardSettingsEvent;->Companion:Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;

    .line 8
    const-string v0, "persist.vendor.sys.fp.expolevel"

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 16
    const/16 v2, 0x88

    .line 17
    const/4 v3, 0x1

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    move v0, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    sput-boolean v0, Lcom/android/keyguard/event/KeyguardSettingsEvent;->isSupportLowlight:Z

    .line 25
    const-string/jumbo v0, "ro.boot.hwc"

    .line 27
    const-string v2, ""

    .line 30
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/keyguard/event/KeyguardSettingsEvent;->RO_BOOT_HWC:Ljava/lang/String;

    .line 36
    const-string v2, "INDIA"

    .line 38
    invoke-static {v2, v0}, Lkotlin/text/StringsKt__StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    const-string v2, "IN"

    .line 46
    invoke-static {v2, v0}, Lkotlin/text/StringsKt__StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 54
    if-eqz v0, :cond_1

    .line 56
    goto :goto_1

    .line 58
    :cond_1
    move v0, v1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    :goto_1
    move v0, v3

    .line 61
    :goto_2
    sput v0, Lcom/android/keyguard/event/KeyguardSettingsEvent;->DEFAULT_FINGERPRINT_UNLOCK_TYPE:I

    .line 62
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 64
    if-nez v0, :cond_3

    .line 66
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->BROAD_SIDE_FP:Z

    .line 68
    if-eqz v0, :cond_4

    .line 70
    :cond_3
    move v1, v3

    .line 72
    :cond_4
    sput-boolean v1, Lcom/android/keyguard/event/KeyguardSettingsEvent;->isSupportFinger:Z

    .line 73
    return-void
    .line 75
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_FINGERPRINT_UNLOCK_TYPE$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/android/keyguard/event/KeyguardSettingsEvent;->DEFAULT_FINGERPRINT_UNLOCK_TYPE:I

    .line 2
    return v0
    .line 4
.end method

.method public static final synthetic access$getMLockPatternUtils$cp()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/event/KeyguardSettingsEvent;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    return-object v0
    .line 4
.end method

.method public static final synthetic access$isSupportFinger$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/keyguard/event/KeyguardSettingsEvent;->isSupportFinger:Z

    .line 2
    return v0
    .line 4
.end method

.method public static final synthetic access$isSupportLowlight$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/keyguard/event/KeyguardSettingsEvent;->isSupportLowlight:Z

    .line 2
    return v0
    .line 4
.end method

.method public static final synthetic access$setMLockPatternUtils$cp(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/keyguard/event/KeyguardSettingsEvent;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    return-void
    .line 4
.end method
