.class public final Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final EMBEDDED_ACTIVITY_RESOURCE_SUFFIX:Ljava/lang/String; = "_embedded_activity"

.field public static final GET_SUW_DEFAULT_THEME_STRING_METHOD:Ljava/lang/String; = "suwDefaultThemeString"

.field public static final IS_DYNAMIC_COLOR_ENABLED_METHOD:Ljava/lang/String; = "isDynamicColorEnabled"

.field public static final IS_EMBEDDED_ACTIVITY_ONE_PANE_ENABLED_METHOD:Ljava/lang/String; = "isEmbeddedActivityOnePaneEnabled"

.field public static final IS_EXTENDED_PARTNER_CONFIG_ENABLED_METHOD:Ljava/lang/String; = "isExtendedPartnerConfigEnabled"

.field public static final IS_MATERIAL_YOU_STYLE_ENABLED_METHOD:Ljava/lang/String; = "IsMaterialYouStyleEnabled"

.field public static final IS_NEUTRAL_BUTTON_STYLE_ENABLED_METHOD:Ljava/lang/String; = "isNeutralButtonStyleEnabled"

.field public static final IS_SUW_DAY_NIGHT_ENABLED_METHOD:Ljava/lang/String; = "isSuwDayNightEnabled"

.field public static final KEY_FALLBACK_CONFIG:Ljava/lang/String; = "fallbackConfig"

.field public static final MATERIAL_YOU_RESOURCE_SUFFIX:Ljava/lang/String; = "_material_you"

.field public static final SUW_GET_PARTNER_CONFIG_METHOD:Ljava/lang/String; = "getOverlayConfig"

.field public static final SUW_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.setupwizard"

.field public static applyDynamicColorBundle:Landroid/os/Bundle; = null

.field public static applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle; = null

.field public static applyExtendedPartnerConfigBundle:Landroid/os/Bundle; = null

.field public static applyMaterialYouConfigBundle:Landroid/os/Bundle; = null

.field public static applyNeutralButtonStyleBundle:Landroid/os/Bundle; = null

.field static applyTransitionBundle:Landroid/os/Bundle; = null

.field public static contentObserver:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1; = null

.field public static instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper; = null

.field public static savedConfigEmbeddedActivityMode:Z = false

.field public static savedConfigUiMode:I = 0x0

.field public static savedOrientation:I = 0x1

.field public static savedScreenHeight:I

.field public static savedScreenWidth:I

.field static suwDayNightEnabledBundle:Landroid/os/Bundle;

.field public static suwDefaultThemeBundle:Landroid/os/Bundle;


# instance fields
.field final partnerResourceCache:Ljava/util/EnumMap;

.field resultBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 6
    new-instance v1, Ljava/util/EnumMap;

    .line 8
    const-class v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 10
    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 12
    iput-object v1, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 15
    const-string v2, "PartnerConfigsBundle="

    .line 17
    iget-object v3, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 19
    const-string v4, "PartnerConfigHelper"

    .line 21
    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    .line 25
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v3

    .line 34
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    .line 35
    move-result-object v5

    .line 38
    const-string v6, "getOverlayConfig"

    .line 39
    invoke-virtual {v3, v5, v6, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 41
    move-result-object v3

    .line 44
    iput-object v3, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 45
    invoke-virtual {v1}, Ljava/util/EnumMap;->clear()V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 55
    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    .line 59
    move-result p0

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const-string p0, "(null)"

    .line 68
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_1

    .line 80
    :catch_0
    const-string p0, "Fail to get config from suw provider"

    .line 81
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    .line 86
    move-result p0

    .line 89
    if-eqz p0, :cond_4

    .line 90
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;

    .line 92
    if-eqz p0, :cond_3

    .line 94
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    move-result-object p0

    .line 99
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;

    .line 100
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    goto :goto_2

    .line 107
    :catch_1
    move-exception p0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "Failed to unregister content observer: "

    .line 111
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 122
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_3
    :goto_2
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    .line 126
    move-result-object p0

    .line 129
    :try_start_2
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;

    .line 130
    invoke-direct {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;-><init>()V

    .line 132
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 137
    move-result-object p1

    .line 140
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;

    .line 141
    const/4 v1, 0x1

    .line 143
    invoke-virtual {p1, p0, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    goto :goto_3

    .line 147
    :catch_2
    move-exception p1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    const-string v1, "Failed to register content observer for "

    .line 151
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string p0, ": "

    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p0

    .line 170
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_4
    :goto_3
    return-void
    .line 174
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isValidInstance(Landroid/content/Context;)Z

    .line 5
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 11
    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 16
    :cond_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0

    .line 23
    throw p0
    .line 24
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    const-string v1, "content"

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    move-result-object v0

    .line 12
    const-string v1, "com.google.android.setupwizard.partner"

    .line 13
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 19
    move-result-object v0

    .line 22
    return-object v0
    .line 23
.end method

.method public static getTypedValueFromResource(Landroid/content/res/Resources;I)Landroid/util/TypedValue;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 8
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 11
    const/4 v1, 0x5

    .line 13
    if-ne p0, v1, :cond_0

    .line 14
    return-object v0

    .line 16
    :cond_0
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "Resource ID #0x"

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string p1, " type #0x"

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget p1, v0, Landroid/util/TypedValue;->type:I

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, " is not valid"

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0
    .line 59
.end method

.method public static isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    .line 2
    const-string v1, "isEmbeddedActivityOnePaneEnabled"

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    .line 14
    move-result-object v3

    .line 17
    invoke-virtual {p0, v3, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 18
    move-result-object p0

    .line 21
    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 24
    :catch_0
    const-string p0, "PartnerConfigHelper"

    .line 25
    const-string v1, "SetupWizard one-pane support in embedded activity status unknown; return as false."

    .line 27
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    .line 32
    return v2

    .line 34
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    .line 35
    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 39
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    const/4 v2, 0x1

    .line 45
    :cond_1
    return v2
    .line 46
.end method

.method public static isSetupWizardDayNightEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    .line 2
    const-string v1, "isSuwDayNightEnabled"

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    .line 14
    move-result-object v3

    .line 17
    invoke-virtual {p0, v3, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 18
    move-result-object p0

    .line 21
    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 24
    :catch_0
    const-string p0, "PartnerConfigHelper"

    .line 25
    const-string v1, "SetupWizard DayNight supporting status unknown; return as false."

    .line 27
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    .line 32
    return v2

    .line 34
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    .line 35
    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 39
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    const/4 v2, 0x1

    .line 45
    :cond_1
    return v2
    .line 46
.end method

.method public static isValidInstance(Landroid/content/Context;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 10
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 14
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    move v2, v3

    .line 29
    :goto_0
    sput-boolean v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigEmbeddedActivityMode:Z

    .line 30
    iget p0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 32
    and-int/lit8 p0, p0, 0x30

    .line 34
    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigUiMode:I

    .line 36
    iget p0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 38
    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedOrientation:I

    .line 40
    iget p0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 42
    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenWidth:I

    .line 44
    iget p0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 46
    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenHeight:I

    .line 48
    return v3

    .line 50
    :cond_1
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    .line 51
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 57
    and-int/lit8 v1, v1, 0x30

    .line 59
    sget v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigUiMode:I

    .line 61
    if-eq v1, v4, :cond_2

    .line 63
    move v1, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v1, v3

    .line 67
    :goto_1
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    .line 68
    move-result p0

    .line 71
    if-eqz p0, :cond_3

    .line 72
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    .line 74
    move-result p0

    .line 77
    if-eqz p0, :cond_3

    .line 78
    move p0, v2

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move p0, v3

    .line 82
    :goto_2
    if-nez v1, :cond_5

    .line 83
    sget-boolean v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigEmbeddedActivityMode:Z

    .line 85
    if-ne p0, v1, :cond_5

    .line 87
    iget p0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 89
    sget v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedOrientation:I

    .line 91
    if-ne p0, v1, :cond_5

    .line 93
    iget p0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 95
    sget v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenWidth:I

    .line 97
    if-ne p0, v1, :cond_5

    .line 99
    iget p0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 101
    sget v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenHeight:I

    .line 103
    if-eq p0, v1, :cond_4

    .line 105
    goto :goto_3

    .line 107
    :cond_4
    return v2

    .line 108
    :cond_5
    :goto_3
    iget p0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 109
    and-int/lit8 p0, p0, 0x30

    .line 111
    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigUiMode:I

    .line 113
    iget p0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 115
    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedOrientation:I

    .line 117
    iget p0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 119
    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenHeight:I

    .line 121
    iget p0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 123
    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenWidth:I

    .line 125
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resetInstance()V

    .line 127
    return v3
    .line 130
.end method

.method public static declared-synchronized resetInstance()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 2
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 6
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    .line 8
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    .line 10
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 12
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    .line 14
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    .line 16
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    .line 18
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    .line 20
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    .line 27
    throw v1
    .line 28
.end method

.method public static shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    .line 2
    const-string v1, "isExtendedPartnerConfigEnabled"

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    .line 14
    move-result-object v3

    .line 17
    invoke-virtual {p0, v3, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 18
    move-result-object p0

    .line 21
    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 24
    :catch_0
    const-string p0, "PartnerConfigHelper"

    .line 25
    const-string v1, "SetupWizard extended partner configs supporting status unknown; return as false."

    .line 27
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    .line 32
    return v2

    .line 34
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    .line 35
    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 39
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    const/4 v2, 0x1

    .line 45
    :cond_1
    return v2
    .line 46
.end method


# virtual methods
.method public final getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 18
    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Boolean;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 35
    move-result-object p1

    .line 38
    iget-object v0, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    .line 39
    iget p1, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    .line 41
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 43
    move-result p3

    .line 46
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 47
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object p1

    .line 52
    invoke-virtual {p0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    return p3

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    const-string p1, "Not a bool resource"

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p0
    .line 64
.end method

.method public final getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 6
    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 18
    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 36
    move-result-object p1

    .line 39
    iget-object v1, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    .line 40
    iget p1, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    .line 42
    new-instance v2, Landroid/util/TypedValue;

    .line 44
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 46
    const/4 v3, 0x1

    .line 49
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 50
    iget v4, v2, Landroid/util/TypedValue;->type:I

    .line 53
    if-ne v4, v3, :cond_1

    .line 55
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 57
    if-nez v2, :cond_1

    .line 59
    return v0

    .line 61
    :cond_1
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 63
    move-result v0

    .line 66
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p1

    .line 72
    invoke-virtual {p0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    return v0

    .line 76
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 77
    const-string p1, "Not a color resource"

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p0
    .line 84
.end method

.method public final getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 18
    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Landroid/util/TypedValue;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 34
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 43
    move-result-object v0

    .line 46
    iget-object v1, v0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    .line 47
    iget v0, v0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    .line 49
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 51
    move-result p3

    .line 54
    invoke-static {v1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getTypedValueFromResource(Landroid/content/res/Resources;I)Landroid/util/TypedValue;

    .line 55
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 59
    invoke-virtual {v1, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 64
    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Landroid/util/TypedValue;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 76
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 80
    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move p0, p3

    .line 85
    :goto_0
    return p0

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    const-string p1, "Not a dimension resource"

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p0
    .line 94
.end method

.method public final getDrawable(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 6
    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 18
    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 24
    return-object p0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 32
    move-result-object p1

    .line 35
    iget-object v1, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    .line 36
    iget p1, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    .line 38
    new-instance v2, Landroid/util/TypedValue;

    .line 40
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 42
    const/4 v3, 0x1

    .line 45
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 46
    iget v4, v2, Landroid/util/TypedValue;->type:I

    .line 49
    if-ne v4, v3, :cond_1

    .line 51
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 53
    if-nez v2, :cond_1

    .line 55
    return-object v0

    .line 57
    :cond_1
    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object v0

    .line 61
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 62
    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    return-object v0

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 68
    const-string p1, "Not a drawable resource"

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
    .line 75
.end method

.method public final getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 18
    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Float;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 26
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 35
    move-result-object p1

    .line 38
    iget-object v0, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    .line 39
    iget p1, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    .line 41
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, p1, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    .line 44
    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 48
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    goto :goto_0

    .line 57
    :catch_0
    const/4 p1, 0x0

    .line 58
    :catch_1
    :goto_0
    return p1

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    const-string p1, "Not a fraction resource"

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0
    .line 67
.end method

.method public final getInteger(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->INTEGER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 18
    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 35
    move-result-object p1

    .line 38
    iget-object v0, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    .line 39
    iget p1, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    .line 41
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 43
    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :try_start_1
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    goto :goto_0

    .line 56
    :catch_0
    const/4 p1, 0x0

    .line 57
    :catch_1
    :goto_0
    return p1

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    const-string p1, "Not a integer resource"

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
.end method

.method public getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 2
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 8
    const-string v1, "fallbackConfig"

    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 12
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->fromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 25
    move-result-object p0

    .line 28
    const-string/jumbo p2, "use material you resource:"

    .line 29
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 32
    const/4 v1, 0x1

    .line 34
    const/4 v2, 0x0

    .line 35
    const-string v3, "PartnerConfigHelper"

    .line 36
    const-string v4, "IsMaterialYouStyleEnabled"

    .line 38
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    move-result-object v5

    .line 52
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    .line 53
    move-result-object v6

    .line 56
    invoke-virtual {v5, v6, v4, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 57
    move-result-object v5

    .line 60
    sput-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 61
    if-eqz v5, :cond_2

    .line 63
    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_2
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 68
    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 72
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    move v0, v1

    .line 78
    goto :goto_0

    .line 79
    :catch_0
    const-string v4, "SetupWizard Material You configs supporting status unknown; return as false."

    .line 80
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 85
    :cond_3
    move v0, v2

    .line 87
    :goto_0
    const-string v4, "com.google.android.setupwizard"

    .line 88
    if-eqz v0, :cond_4

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    iget-object v5, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    .line 94
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v6

    .line 99
    if-eqz v6, :cond_4

    .line 100
    iget v6, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    .line 102
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 107
    iget-object v7, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceName:Ljava/lang/String;

    .line 108
    const-string v8, "_material_you"

    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v7

    .line 115
    invoke-virtual {v5, v7, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move-result v6

    .line 119
    if-eqz v6, :cond_4

    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v8, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 133
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance p2, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 137
    invoke-direct {p2, v0, v7, v6, v5}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Resources;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    move-object p0, p2

    .line 142
    :catch_1
    :cond_4
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    .line 143
    move-result p2

    .line 146
    if-eqz p2, :cond_5

    .line 147
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    .line 149
    move-result p2

    .line 152
    if-eqz p2, :cond_5

    .line 153
    const-string/jumbo p2, "use embedded activity resource:"

    .line 155
    :try_start_3
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->packageName:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 158
    iget-object v5, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    .line 160
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v4

    .line 165
    if-eqz v4, :cond_5

    .line 166
    iget v4, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    .line 168
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 170
    move-result-object v4

    .line 173
    iget-object v6, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceName:Ljava/lang/String;

    .line 174
    const-string v7, "_embedded_activity"

    .line 176
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object v6

    .line 181
    invoke-virtual {v5, v6, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-result v4

    .line 185
    if-eqz v4, :cond_5

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object p2

    .line 199
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance p2, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 203
    invoke-direct {p2, v0, v6, v4, v5}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Resources;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 205
    move-object p0, p2

    .line 208
    :catch_2
    :cond_5
    iget-object p2, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    .line 209
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 211
    move-result-object v0

    .line 214
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    .line 215
    move-result p1

    .line 218
    if-nez p1, :cond_7

    .line 219
    iget p1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 221
    and-int/lit8 v3, p1, 0x30

    .line 223
    const/16 v4, 0x20

    .line 225
    if-ne v3, v4, :cond_6

    .line 227
    goto :goto_1

    .line 229
    :cond_6
    move v1, v2

    .line 230
    :goto_1
    if-eqz v1, :cond_7

    .line 231
    and-int/lit8 p1, p1, -0x31

    .line 233
    or-int/lit8 p1, p1, 0x10

    .line 235
    iput p1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 237
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 239
    move-result-object p1

    .line 242
    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 243
    :cond_7
    return-object p0
    .line 246
.end method

.method public final getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 18
    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/String;

    .line 24
    return-object p0

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 31
    move-result-object p1

    .line 34
    iget-object v0, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    .line 35
    iget p1, p1, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    .line 37
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 43
    invoke-virtual {p0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    goto :goto_0

    .line 48
    :catch_0
    const/4 p1, 0x0

    .line 49
    :catch_1
    :goto_0
    return-object p1

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    const-string p1, "Not a string resource"

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
    .line 58
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    .line 6
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAvailable()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
    .line 23
.end method
