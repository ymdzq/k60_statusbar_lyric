.class public Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;
.super Ljava/lang/Object;
.source "PartnerConfigHelper.java"


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

.field private static final TAG:Ljava/lang/String; = "PartnerConfigHelper"

.field public static applyDynamicColorBundle:Landroid/os/Bundle; = null

.field public static applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle; = null

.field public static applyExtendedPartnerConfigBundle:Landroid/os/Bundle; = null

.field public static applyMaterialYouConfigBundle:Landroid/os/Bundle; = null

.field public static applyNeutralButtonStyleBundle:Landroid/os/Bundle; = null

.field static applyTransitionBundle:Landroid/os/Bundle; = null

.field private static contentObserver:Landroid/database/ContentObserver; = null

.field private static instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper; = null

.field private static savedConfigEmbeddedActivityMode:Z = false

.field private static savedConfigUiMode:I = 0x0

.field public static savedOrientation:I = 0x1

.field public static savedScreenHeight:I

.field public static savedScreenWidth:I

.field static suwDayNightEnabledBundle:Landroid/os/Bundle;

.field public static suwDefaultThemeBundle:Landroid/os/Bundle;


# instance fields
.field final partnerResourceCache:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field resultBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 102
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 167
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getPartnerConfigBundle(Landroid/content/Context;)V

    .line 169
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->registerContentObserver(Landroid/content/Context;)V

    return-void
.end method

.method private static adjustResourceEntryDayNightMode(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 2

    .line 593
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 595
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/Util;->isNightMode(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 600
    iget p0, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, -0x31

    or-int/lit8 p0, p0, 0x10

    iput p0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 603
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-object p1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;
    .locals 2

    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isValidInstance(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 131
    :cond_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getContentUri()Landroid/net/Uri;
    .locals 2

    .line 916
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 917
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.setupwizard.partner"

    .line 918
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 919
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getDimensionFromTypedValue(Landroid/content/Context;Landroid/util/TypedValue;)F
    .locals 0

    .line 937
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 938
    invoke-virtual {p1, p0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private getPartnerConfigBundle(Landroid/content/Context;)V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 555
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "getOverlayConfig"

    const/4 v2, 0x0

    .line 554
    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    .line 559
    iget-object p1, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->clear()V

    .line 560
    sget-object p1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PartnerConfigsBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "(null)"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 560
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 563
    :catch_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string p1, "Fail to get config from suw provider"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static getSuwDefaultThemeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 789
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "suwDefaultThemeString"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 795
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 794
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :cond_1
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 808
    :cond_2
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v2

    .line 800
    :catch_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v0, "SetupWizard default theme status unknown; return as null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    sput-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    return-object v2
.end method

.method private static getTypedValueFromResource(Landroid/content/res/Resources;II)Landroid/util/TypedValue;
    .locals 2

    .line 923
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 924
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 925
    iget p0, v0, Landroid/util/TypedValue;->type:I

    if-ne p0, p2, :cond_0

    return-object v0

    .line 926
    :cond_0
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource ID #0x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type #0x"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/util/TypedValue;->type:I

    .line 930
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not valid"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 836
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    const-string v1, "isEmbeddedActivityOnePaneEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 840
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 842
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 841
    invoke-virtual {p0, v3, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 847
    :catch_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v1, "SetupWizard one-pane support in embedded activity status unknown; return as false."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    return v2

    .line 855
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 856
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isGlifThemeControlledTransitionApplied(Landroid/content/Context;)Z
    .locals 3

    .line 888
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;

    const-string v1, "applyGlifThemeControlledTransition"

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 895
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    .line 894
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 900
    :catch_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v0, "applyGlifThemeControlledTransition unknown; return applyGlifThemeControlledTransition as default value"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 907
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 908
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static isNeutralButtonStyleEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 862
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    const-string v1, "isNeutralButtonStyleEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 866
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 868
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 867
    invoke-virtual {p0, v3, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 873
    :catch_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v1, "Neutral button style supporting status unknown; return as false."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    return v2

    .line 879
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 880
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isSetupWizardDayNightEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 703
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    const-string v1, "isSuwDayNightEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 707
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 709
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 708
    invoke-virtual {p0, v3, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v1, "SetupWizard DayNight supporting status unknown; return as false."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    return v2

    .line 720
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 721
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isSetupWizardDynamicColorEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 813
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    const-string v1, "isDynamicColorEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 817
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 819
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 818
    invoke-virtual {p0, v3, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v1, "SetupWizard dynamic color supporting status unknown; return as false."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    return v2

    .line 830
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 831
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static isValidInstance(Landroid/content/Context;)Z
    .locals 5

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 138
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigEmbeddedActivityMode:Z

    .line 139
    iget p0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigUiMode:I

    .line 140
    iget p0, v0, Landroid/content/res/Configuration;->orientation:I

    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedOrientation:I

    .line 141
    iget p0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenWidth:I

    .line 142
    iget p0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenHeight:I

    return v3

    .line 146
    :cond_1
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sget v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigUiMode:I

    if-eq v1, v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 149
    :goto_1
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_2

    :cond_3
    move p0, v3

    :goto_2
    if-nez v1, :cond_5

    .line 150
    sget-boolean v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigEmbeddedActivityMode:Z

    if-ne p0, v1, :cond_5

    iget p0, v0, Landroid/content/res/Configuration;->orientation:I

    sget v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedOrientation:I

    if-ne p0, v1, :cond_5

    iget p0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    sget v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenWidth:I

    if-ne p0, v1, :cond_5

    iget p0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    sget v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenHeight:I

    if-eq p0, v1, :cond_4

    goto :goto_3

    :cond_4
    return v2

    .line 155
    :cond_5
    :goto_3
    iget p0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedConfigUiMode:I

    .line 156
    iget p0, v0, Landroid/content/res/Configuration;->orientation:I

    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedOrientation:I

    .line 157
    iget p0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenHeight:I

    .line 158
    iget p0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    sput p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->savedScreenWidth:I

    .line 159
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resetInstance()V

    return v3
.end method

.method private static registerContentObserver(Landroid/content/Context;)V
    .locals 4

    .line 942
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 944
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->unregisterContentObserver(Landroid/content/Context;)V

    .line 947
    :cond_0
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 949
    :try_start_0
    new-instance v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Landroid/database/ContentObserver;

    .line 958
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 959
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 961
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register content observer for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized resetInstance()V
    .locals 2

    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    monitor-enter v0

    const/4 v1, 0x0

    .line 685
    :try_start_0
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->instance:Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 686
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDayNightEnabledBundle:Landroid/os/Bundle;

    .line 687
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    .line 688
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    .line 689
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    .line 690
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyNeutralButtonStyleBundle:Landroid/os/Bundle;

    .line 691
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyEmbeddedActivityOnePaneBundle:Landroid/os/Bundle;

    .line 692
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    .line 693
    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyTransitionBundle:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z
    .locals 4

    .line 726
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    const-string v1, "isExtendedPartnerConfigEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 730
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 732
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 731
    invoke-virtual {p0, v3, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 737
    :catch_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v1, "SetupWizard extended partner configs supporting status unknown; return as false."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    return v2

    .line 745
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyExtendedPartnerConfigBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 746
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static shouldApplyMaterialYouStyle(Landroid/content/Context;)Z
    .locals 5

    .line 755
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    const-string v1, "IsMaterialYouStyleEnabled"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 759
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 761
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 760
    invoke-virtual {v3, v4, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 768
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 769
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastT()Z

    move-result v3

    if-nez v3, :cond_1

    .line 770
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 779
    :cond_1
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_2

    .line 780
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 773
    :catch_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    const-string v1, "SetupWizard Material You configs supporting status unknown; return as false."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyMaterialYouConfigBundle:Landroid/os/Bundle;

    return v2
.end method

.method private static unregisterContentObserver(Landroid/content/Context;)V
    .locals 3

    .line 968
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p0, 0x0

    .line 969
    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->contentObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 971
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister content observer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method adjustResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 3

    .line 613
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastT()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyMaterialYouStyle(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string p0, "com.google.android.setupwizard"

    .line 616
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 619
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 620
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p0

    .line 623
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_material_you"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 626
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 630
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-virtual {v0, p1, p0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 632
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use material you resource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 634
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Resources;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object p2
.end method

.method embeddedActivityResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 3

    :try_start_0
    const-string p0, "com.google.android.setupwizard"

    .line 653
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 656
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 657
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p0

    .line 660
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_embedded_activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 663
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 667
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-virtual {v0, p1, p0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 669
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use embedded activity resource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    .line 671
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Resources;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object p2
.end method

.method public getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z
    .locals 2

    .line 355
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 366
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 368
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result p1

    .line 370
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    .line 371
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p3

    .line 356
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a bool resource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I
    .locals 5

    .line 201
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 214
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result p1

    .line 217
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x1

    .line 218
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 219
    iget v4, v2, Landroid/util/TypedValue;->type:I

    if-ne v4, v3, :cond_1

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x0

    .line 224
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 228
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0

    .line 202
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a color resource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F
    .locals 1

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result p0

    return p0
.end method

.method public getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F
    .locals 3

    .line 399
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_1

    .line 403
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 405
    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/TypedValue;

    .line 404
    invoke-static {p1, p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimensionFromTypedValue(Landroid/content/Context;Landroid/util/TypedValue;)F

    move-result p0

    return p0

    .line 411
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 413
    invoke-virtual {v0}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result v0

    .line 415
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    const/4 v2, 0x5

    .line 416
    invoke-static {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getTypedValueFromResource(Landroid/content/res/Resources;II)Landroid/util/TypedValue;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    .line 420
    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/TypedValue;

    .line 419
    invoke-static {p1, p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimensionFromTypedValue(Landroid/content/Context;Landroid/util/TypedValue;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p0, p3

    :goto_0
    return p0

    .line 400
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a dimension resource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDrawable(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 245
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_2

    .line 249
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 256
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 258
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result p1

    .line 261
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x1

    .line 262
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 263
    iget v4, v2, Landroid/util/TypedValue;->type:I

    if-ne v4, v3, :cond_1

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_1

    return-object v0

    .line 268
    :cond_1
    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 272
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    .line 246
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a drawable resource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F
    .locals 1

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result p0

    return p0
.end method

.method public getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F
    .locals 2

    .line 448
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_1

    .line 452
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 459
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 461
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result p1

    const/4 v1, 0x1

    .line 463
    invoke-virtual {v0, p1, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p3

    .line 464
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p3

    .line 449
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a fraction resource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInteger(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)I
    .locals 2

    .line 481
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->INTEGER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_1

    .line 485
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 492
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 494
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result p1

    .line 496
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    .line 497
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p3

    .line 482
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a integer resource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    const-string v2, "fallbackConfig"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 578
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->fromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p2

    .line 577
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->adjustResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p2

    .line 580
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->embeddedActivityResourceEntryDefaultValue(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p2

    .line 584
    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->adjustResourceEntryDayNightMode(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p0

    return-object p0
.end method

.method public getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;
    .locals 2

    .line 289
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v0, v1, :cond_1

    .line 293
    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 300
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 302
    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->getResourceId()I

    move-result p1

    .line 304
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->partnerResourceCache:Ljava/util/EnumMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    .line 290
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a string resource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resultBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
