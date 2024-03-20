.class public Lcom/android/settings/stylus/MiuiStylusSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiStylusSettings.java"

# interfaces
.implements Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/stylus/MiuiStylusSettings$OTACheckHandler;
    }
.end annotation


# static fields
.field private static LATEST_TEXT:Ljava/lang/String;

.field private static battery:Ljava/lang/String;

.field private static firmwareVersion:Lcom/android/settings/stylus/CustomColorTextPreference;

.field private static localVersion:Ljava/lang/String;

.field private static mOobMessenger:Landroid/os/Messenger;

.field private static mRelyMessenger:Landroid/os/Messenger;

.field private static mServiceMessenger:Landroid/os/Messenger;

.field private static pid:Ljava/lang/String;

.field private static vid:Ljava/lang/String;


# instance fields
.field isBindOTAService:Z

.field isBindOobService:Z

.field private mBleOobConnection:Landroid/content/ServiceConnection;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIsStylusConn:Z

.field private mMiuiStylusDeviceUtils:Lcom/android/settings/stylus/MiuiStylusDeviceUtils;

.field private mMiuiStylusHandWritingPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

.field private mMiuiStylusMessagePreference:Lcom/android/settings/stylus/MiuiStylusMessagePreference;

.field private mMiuiStylusPreference:Lcom/android/settings/stylus/MiuiStylusGuidePreference;

.field private mMiuiStylusQuickWritePreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

.field private mMiuiStylusScreenShotPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

.field private mStylusGlobalCheckBox:Landroidx/preference/CheckBoxPreference;

.field private mStylusPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private otaCheckHandler:Lcom/android/settings/stylus/MiuiStylusSettings$OTACheckHandler;


# direct methods
.method public static synthetic $r8$lambda$TmCv_HLEc6-DRpi1QezJVGlx_0Q(Lcom/android/settings/stylus/MiuiStylusSettings;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/stylus/MiuiStylusSettings;->lambda$initPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLATEST_TEXT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->LATEST_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetbattery()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->battery:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->firmwareVersion:Lcom/android/settings/stylus/CustomColorTextPreference;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetlocalVersion()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->localVersion:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmOobMessenger()Landroid/os/Messenger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->mOobMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmRelyMessenger()Landroid/os/Messenger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->mRelyMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmServiceMessenger()Landroid/os/Messenger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->mServiceMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpid()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->pid:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetvid()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->vid:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputbattery(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/MiuiStylusSettings;->battery:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlocalVersion(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/MiuiStylusSettings;->localVersion:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmOobMessenger(Landroid/os/Messenger;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mOobMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmServiceMessenger(Landroid/os/Messenger;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputpid(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/MiuiStylusSettings;->pid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputvid(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/MiuiStylusSettings;->vid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->isBindOTAService:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->isBindOobService:Z

    .line 196
    new-instance v0, Lcom/android/settings/stylus/MiuiStylusSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/stylus/MiuiStylusSettings$1;-><init>(Lcom/android/settings/stylus/MiuiStylusSettings;)V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mConnection:Landroid/content/ServiceConnection;

    .line 210
    new-instance v0, Lcom/android/settings/stylus/MiuiStylusSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/stylus/MiuiStylusSettings$2;-><init>(Lcom/android/settings/stylus/MiuiStylusSettings;)V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mBleOobConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/stylus/MiuiStylusSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private addNotConnectMessage()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mStylusPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusMessagePreference:Lcom/android/settings/stylus/MiuiStylusMessagePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private disable()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusPreference:Lcom/android/settings/stylus/MiuiStylusGuidePreference;

    iget-boolean v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/stylus/MiuiStylusGuidePreference;->setPenEnabled(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusQuickWritePreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    iget-boolean v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->setConnEnabled(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusScreenShotPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    iget-boolean v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->setConnEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusHandWritingPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    iget-boolean v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->setConnEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusHandWritingPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    iget-boolean v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->isLocalCnAndChineseOrEn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->setEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mStylusGlobalCheckBox:Landroidx/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 408
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->firmwareVersion:Lcom/android/settings/stylus/CustomColorTextPreference;

    if-eqz v0, :cond_1

    .line 410
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 415
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    if-eqz v0, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->removeNotConnectMessage()V

    goto :goto_2

    .line 418
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->addNotConnectMessage()V

    :goto_2
    return-void
.end method

.method private initPreference()V
    .locals 4

    const-string/jumbo v0, "stylus"

    .line 300
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mStylusPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "stylus_not_connect_message"

    .line 301
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/stylus/MiuiStylusMessagePreference;

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusMessagePreference:Lcom/android/settings/stylus/MiuiStylusMessagePreference;

    .line 302
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->removeNotConnectMessage()V

    const-string/jumbo v0, "stylus_handwriting_enable"

    .line 303
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mStylusGlobalCheckBox:Landroidx/preference/CheckBoxPreference;

    .line 304
    new-instance v2, Lcom/android/settings/stylus/MiuiStylusSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/stylus/MiuiStylusSettings$3;-><init>(Lcom/android/settings/stylus/MiuiStylusSettings;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "stylus_show"

    .line 313
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/stylus/MiuiStylusGuidePreference;

    iput-object v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusPreference:Lcom/android/settings/stylus/MiuiStylusGuidePreference;

    const-string/jumbo v1, "stylus_quick_write"

    .line 314
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    iput-object v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusQuickWritePreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    const-string/jumbo v1, "stylus_screen_shot"

    .line 316
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    iput-object v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusScreenShotPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    .line 317
    sget v2, Lcom/android/settings/R$string;->stylus_screen_shot:I

    invoke-virtual {v1, v2}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->setTitle(I)V

    .line 318
    iget-object v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusScreenShotPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    sget v2, Lcom/android/settings/R$string;->stylus_screen_shot_summary:I

    invoke-virtual {v1, v2}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->setSummary(I)V

    .line 319
    iget-object v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusScreenShotPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    sget v2, Lcom/android/settings/R$drawable;->stylus_screen_shot:I

    invoke-virtual {v1, v2}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->setImage(I)V

    const-string/jumbo v1, "stylus_hand_writing"

    .line 320
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    iput-object v2, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusHandWritingPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    .line 321
    sget v3, Lcom/android/settings/R$string;->key_handwriting_input_title:I

    invoke-virtual {v2, v3}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->setTitle(I)V

    .line 322
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusHandWritingPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    sget v3, Lcom/android/settings/R$string;->key_handwriting_input_summary:I

    invoke-virtual {v2, v3}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->setSummary(I)V

    .line 323
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusHandWritingPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    sget v3, Lcom/android/settings/R$drawable;->stylus_hand_writing:I

    invoke-virtual {v2, v3}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->setImage(I)V

    .line 324
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusHandWritingPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    new-instance v3, Lcom/android/settings/stylus/MiuiStylusSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/stylus/MiuiStylusSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/stylus/MiuiStylusSettings;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 329
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "support_stylus_gesture"

    const/4 v3, 0x0

    .line 330
    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 332
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static isLocalCnAndChineseOrEn()Z
    .locals 2

    .line 367
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$initPreference$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->showGuide()V

    const/4 p0, 0x1

    return p0
.end method

.method private registerStylusChangeListener()V
    .locals 2

    .line 379
    new-instance v0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;

    iget-object v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusDeviceUtils:Lcom/android/settings/stylus/MiuiStylusDeviceUtils;

    .line 380
    invoke-virtual {v0, p0}, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->register(Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;)V

    return-void
.end method

.method private removeNotConnectMessage()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mStylusPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusMessagePreference:Lcom/android/settings/stylus/MiuiStylusMessagePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private showGuide()V
    .locals 3

    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.handwriting.SHOW_GUIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.handwriting"

    const-string v2, "com.miui.handwriting.receiver.GuideReceiver"

    .line 348
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private unRegisterStylusChangeListener()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusDeviceUtils:Lcom/android/settings/stylus/MiuiStylusDeviceUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->unRegister(Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;)V

    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusDeviceUtils:Lcom/android/settings/stylus/MiuiStylusDeviceUtils;

    return-void
.end method

.method private updateStylusGlobalCheckBox()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mStylusGlobalCheckBox:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "stylus_handwriting_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 340
    :goto_0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mStylusGlobalCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 341
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateStylusGlobalCheckBox : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiStylusSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 100
    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    sget p1, Lcom/android/settings/R$xml;->miui_stylus_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "firmware_update"

    .line 126
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/stylus/CustomColorTextPreference;

    sput-object p1, Lcom/android/settings/stylus/MiuiStylusSettings;->firmwareVersion:Lcom/android/settings/stylus/CustomColorTextPreference;

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->stylus_ota_latest:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/stylus/MiuiStylusSettings;->LATEST_TEXT:Ljava/lang/String;

    .line 128
    new-instance p1, Lcom/android/settings/stylus/MiuiStylusSettings$OTACheckHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/stylus/MiuiStylusSettings$OTACheckHandler;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->otaCheckHandler:Lcom/android/settings/stylus/MiuiStylusSettings$OTACheckHandler;

    .line 129
    new-instance p1, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->otaCheckHandler:Lcom/android/settings/stylus/MiuiStylusSettings$OTACheckHandler;

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    sput-object p1, Lcom/android/settings/stylus/MiuiStylusSettings;->mRelyMessenger:Landroid/os/Messenger;

    const-string/jumbo p1, "support_ble_oobhelper"

    const/4 v0, 0x0

    .line 131
    invoke-static {p1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "otaEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiStylusSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 134
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    sget-object v2, Lcom/android/settings/stylus/MiuiStylusSettings;->firmwareVersion:Lcom/android/settings/stylus/CustomColorTextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 137
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.bluetooth.mible.StylusOTAService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.bluetooth"

    .line 138
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-boolean v3, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->isBindOTAService:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v3, "to bind OTAService"

    .line 140
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mConnection:Landroid/content/ServiceConnection;

    .line 143
    invoke-virtual {v3, v0, v5, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->isBindOTAService:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "miui.bluetooth.mible.MiuiBleOobHelperService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-boolean v2, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->isBindOobService:Z

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo p1, "to bind OobService"

    .line 152
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mBleOobConnection:Landroid/content/ServiceConnection;

    .line 155
    invoke-virtual {p1, v0, v1, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->isBindOobService:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->initPreference()V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    const-string/jumbo v0, "on destroy"

    const-string v1, "MiuiStylusSettings"

    .line 168
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 170
    sput-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->firmwareVersion:Lcom/android/settings/stylus/CustomColorTextPreference;

    .line 171
    sget-object v2, Lcom/android/settings/stylus/MiuiStylusSettings;->mServiceMessenger:Landroid/os/Messenger;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->isBindOTAService:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "to unbind OTA Service"

    .line 172
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 175
    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mConnection:Landroid/content/ServiceConnection;

    .line 176
    iput-boolean v3, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->isBindOTAService:Z

    .line 177
    sput-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->mServiceMessenger:Landroid/os/Messenger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 179
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/settings/stylus/MiuiStylusSettings;->mOobMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mBleOobConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->isBindOobService:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "to unbind mBleOobConnection"

    .line 184
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mBleOobConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 187
    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mBleOobConnection:Landroid/content/ServiceConnection;

    .line 188
    iput-boolean v3, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->isBindOobService:Z

    .line 189
    sput-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->mOobMessenger:Landroid/os/Messenger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 191
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 374
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 375
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->unRegisterStylusChangeListener()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 354
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 355
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->updateStylusGlobalCheckBox()V

    .line 356
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusHandWritingPreference:Lcom/android/settings/stylus/MiuiStylusFunctionPreference;

    iget-boolean v1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    if-eqz v1, :cond_0

    .line 357
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->isLocalCnAndChineseOrEn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 356
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->setEnabled(Z)V

    .line 358
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->registerStylusChangeListener()V

    .line 359
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mMiuiStylusDeviceUtils:Lcom/android/settings/stylus/MiuiStylusDeviceUtils;

    invoke-virtual {v0}, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->isStylusConn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/stylus/MiuiStylusSettings;->onStylusUpdate(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    const-string p0, "MiuiStylusSettings"

    const-string/jumbo v0, "onStart()"

    .line 106
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x12c

    .line 109
    iput v0, p0, Landroid/os/Message;->what:I

    .line 110
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->mRelyMessenger:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 111
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusSettings;->mOobMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 114
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onStylusUpdate(Z)V
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 393
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/stylus/MiuiStylusSettings;->mIsStylusConn:Z

    .line 394
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->disable()V

    return-void
.end method
