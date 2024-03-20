.class Lcom/android/settings/search/SecurityUpdateHelper;
.super Lcom/android/settings/search/BaseSearchUpdateHelper;
.source "SecurityUpdateHelper.java"


# static fields
.field private static final ADD_FACE_RECOGINITION_RESOURCE:Ljava/lang/String; = "add_facerecoginition_text"

.field private static final ADD_FINGERPRINT_RESOURCE:Ljava/lang/String; = "add_fingerprint_text"

.field private static final BLUETOOTH_UNLOCK_RESOURCE:Ljava/lang/String; = "bluetooth_unlock_title"

.field private static final CREDENTIALS_RESET_RESOURCE:Ljava/lang/String; = "credentials_reset"

.field private static final LOCK_RESOURCE:Ljava/lang/String; = "lock_settings"

.field private static final LOCK_RESOURCE_WITH_FINGERPRINT_RESOURCE:Ljava/lang/String; = "lock_settings_with_fingerprint"

.field private static final NEW_ENCRYPTION_RESOURCE:Ljava/lang/String; = "security_encryption_title"

.field private static final OLD_ENCRYPTION_RESOURCE:Ljava/lang/String; = "crypt_keeper_encrypt_title"

.field private static final PALM_ENABLED_RESOURCE:Ljava/lang/String; = "palm_enabled"

.field private static final SENSOR_PROXIMITY_RESOURCE:Ljava/lang/String; = "screen_on_proximity_sensor_title"

.field private static final SMARTCOVER_RESOURCE:Ljava/lang/String; = "smartcover_lock_or_unlock_screen_tittle"

.field private static final SUSPEND_GESTURE_RESOURCE:Ljava/lang/String; = "suspend_gesture_enabled"

.field private static final TRUSTED_CREDENTIALS_RESOURCE:Ljava/lang/String; = "trusted_credentials"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchUpdateHelper;-><init>()V

    return-void
.end method

.method private static isEllipticProximity(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo p0, "ro.vendor.audio.us.proximity"

    const/4 v0, 0x0

    .line 108
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static update(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lock_settings"

    .line 43
    invoke-static {p0, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getIdWithResource(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->lock_settings_with_fingerprint:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    .line 44
    invoke-static {p0, p1, v2, v4, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updateItemData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "lock_settings_with_fingerprint"

    .line 49
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updatePath(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "add_fingerprint_text"

    .line 51
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 54
    :goto_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    const-string/jumbo v1, "security_encryption_title"

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ro.crypto.type"

    .line 55
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "crypt_keeper_encrypt_title"

    if-eqz v0, :cond_2

    .line 56
    invoke-static {p0, p1, v3, v2}, Lcom/android/settings/search/BaseSearchUpdateHelper;->disableByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 57
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_2

    .line 59
    :cond_2
    invoke-static {p0, p1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_2

    .line 62
    :cond_3
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 65
    :goto_2
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "centaur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "palm_enabled"

    .line 66
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v0, "suspend_gesture_enabled"

    .line 67
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v0, "support_hall_sensor"

    const/4 v1, 0x0

    .line 70
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v3, "smartcover_lock_or_unlock_screen_tittle"

    if-eqz v0, :cond_6

    .line 71
    invoke-static {p0, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getIdWithResource(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v3, "support_multiple_small_win_cover"

    .line 73
    invoke-static {v3, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 76
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    :goto_3
    invoke-static {p0, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getAdditionalSettingsValue(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    or-long/2addr v3, v5

    .line 78
    invoke-static {p0, p1, v0, v3, v4}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updateItemAdditionalData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V

    goto :goto_4

    .line 81
    :cond_6
    invoke-static {p0, p1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 84
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.sensor.proximity"

    .line 85
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    invoke-static {p0}, Lcom/android/settings/search/SecurityUpdateHelper;->isEllipticProximity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string/jumbo v0, "screen_on_proximity_sensor_title"

    .line 87
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_8
    const-string v0, "bluetooth_unlock_title"

    .line 91
    invoke-static {p0, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getIdWithResource(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-static {p0, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getAdditionalSettingsValue(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    or-long/2addr v3, v5

    .line 92
    invoke-static {p0, p1, v0, v3, v4}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updateItemAdditionalData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V

    const-string/jumbo v0, "no_config_credentials"

    .line 96
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 95
    invoke-static {p0, v0, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move v2, v1

    :goto_5
    const-string/jumbo v0, "trusted_credentials"

    .line 97
    invoke-static {p0, p1, v0, v2}, Lcom/android/settings/search/BaseSearchUpdateHelper;->disableByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    const-string v0, "credentials_reset"

    .line 98
    invoke-static {p0, p1, v0, v2}, Lcom/android/settings/search/BaseSearchUpdateHelper;->disableByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 99
    invoke-static {p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 100
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, "add_facerecoginition_text"

    .line 101
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
