.class public Lcom/android/settings/utils/AodUtils;
.super Ljava/lang/Object;
.source "AodUtils.java"


# static fields
.field public static final AOD_MODE:Ljava/lang/String;

.field public static final AOD_SHOW_STYLE_DEF:I

.field public static final IS_PCMODE_ENABLED:Z

.field private static final KEYCODE_GOTO_ENABLE_DEVICE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "doze_always_on"

    .line 20
    sput-object v0, Lcom/android/settings/utils/AodUtils;->AOD_MODE:Ljava/lang/String;

    const-string/jumbo v0, "pyxis"

    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/utils/AodUtils;->KEYCODE_GOTO_ENABLE_DEVICE:[Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/android/settings/utils/AodUtils;->isKeycodeGotoEnable()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput v0, Lcom/android/settings/utils/AodUtils;->AOD_SHOW_STYLE_DEF:I

    const-string/jumbo v0, "persist.sys.miui.pcmode"

    const/4 v2, 0x0

    .line 154
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/settings/utils/AodUtils;->IS_PCMODE_ENABLED:Z

    return-void
.end method

.method public static actionAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.aod.style_list"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static convertNotificationStatusToPrefIndex(Landroid/content/Context;)I
    .locals 4

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getKeyguardNotificationStatus(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$array;->keyguard_notification_status_values:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 91
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 92
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static getNotificationWakeUpStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 101
    invoke-static {p0}, Lcom/android/settings/utils/AodUtils;->convertNotificationStatusToPrefIndex(Landroid/content/Context;)I

    move-result v0

    const-string v1, ""

    if-gez v0, :cond_0

    return-object v1

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$array;->aod_notification_status_entries:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 107
    array-length v2, p0

    if-le v2, v0, :cond_1

    .line 108
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static isAodAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 120
    invoke-static {p0}, Lcom/android/settings/compat/AmbientDisplayConfigurationCompat;->isAvailable(Landroid/content/Context;)Z

    move-result p0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAodAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isAodEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "doze_always_on"

    const/4 v2, 0x0

    .line 115
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isFoldDevice()Z
    .locals 3

    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    .line 82
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isKeycodeGotoEnable()Z
    .locals 5

    .line 47
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 48
    :goto_0
    sget-object v3, Lcom/android/settings/utils/AodUtils;->KEYCODE_GOTO_ENABLE_DEVICE:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 49
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "aod_support_keycode_goto_dismiss"

    .line 53
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static registerAodStateObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 2

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/settings/utils/AodUtils;->AOD_MODE:Ljava/lang/String;

    .line 127
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static setAodModeState(Landroid/content/Context;Z)V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAodModeState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/settings/utils/AodUtils;->AOD_MODE:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setAodModeUserSet(Landroid/content/Context;Z)V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAodModeUserSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_mode_user_set"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static unregisterAodStateObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 0

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
