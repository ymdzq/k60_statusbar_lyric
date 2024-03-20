.class public Lcom/android/settings/stylus/StylusOtaFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StylusOtaFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;
    }
.end annotation


# static fields
.field private static DOWNLOADING_FAILED_TEXT:Ljava/lang/String; = null

.field private static DOWNLOADING_TEXT:Ljava/lang/String; = null

.field private static HAVE_NEW_VERSION:Ljava/lang/String; = null

.field private static STYLUS_OTA_CHECK_FAILED_BATTERY_TEXT:Ljava/lang/String; = null

.field private static STYLUS_OTA_CHECK_FAILED_INFO_TEXT:Ljava/lang/String; = null

.field private static TIP_NET_ERROR:Ljava/lang/String; = null

.field private static UPDATE_FAILED_TEXT:Ljava/lang/String; = null

.field private static UPDATE_TEXT:Ljava/lang/String; = null

.field private static UPDATING_TEXT:Ljava/lang/String; = null

.field private static battery:Ljava/lang/String; = null

.field static cycleProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar; = null

.field private static filePath:Ljava/lang/String; = null

.field static firmwareVersion:Lcom/android/settingslib/miuisettings/preference/ValuePreference; = null

.field static hasStartOTAService:Z = false

.field private static localVersion:Ljava/lang/String;

.field private static mOobMessenger:Landroid/os/Messenger;

.field private static mRelyMessenger:Landroid/os/Messenger;

.field private static mServiceMessenger:Landroid/os/Messenger;

.field static otaDemands:Landroid/widget/TextView;

.field static otaProgress:Landroid/widget/ProgressBar;

.field static otaRemoteVersion:Landroid/widget/TextView;

.field static otaUpdate:Landroid/widget/Button;

.field private static pid:Ljava/lang/String;

.field private static remoteVersion:Ljava/lang/String;

.field private static vid:Ljava/lang/String;


# instance fields
.field final TEST_OTA:Ljava/lang/String;

.field final TEST_firmwareVersion_VALUE:Ljava/lang/String;

.field final TEST_hardwareVersion_VALUE:Ljava/lang/String;

.field final TEST_otaModel_VALUE:Ljava/lang/String;

.field final TEST_serialNumber_VALUE:Ljava/lang/String;

.field hardwareVersion:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field isOobBind:Z

.field isbind:Z

.field private mBleOobConnection:Landroid/content/ServiceConnection;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mOTAHandler:Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;

.field mRootView:Landroid/view/View;

.field otaModel:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field otaTest:Z

.field serialNumber:Lcom/android/settingslib/miuisettings/preference/ValuePreference;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDOWNLOADING_FAILED_TEXT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->DOWNLOADING_FAILED_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDOWNLOADING_TEXT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->DOWNLOADING_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetHAVE_NEW_VERSION()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->HAVE_NEW_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSTYLUS_OTA_CHECK_FAILED_BATTERY_TEXT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->STYLUS_OTA_CHECK_FAILED_BATTERY_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSTYLUS_OTA_CHECK_FAILED_INFO_TEXT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->STYLUS_OTA_CHECK_FAILED_INFO_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTIP_NET_ERROR()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->TIP_NET_ERROR:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetUPDATE_FAILED_TEXT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->UPDATE_FAILED_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetUPDATE_TEXT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->UPDATE_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetUPDATING_TEXT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->UPDATING_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetbattery()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->battery:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfilePath()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetlocalVersion()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->localVersion:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmOobMessenger()Landroid/os/Messenger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->mOobMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmRelyMessenger()Landroid/os/Messenger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->mRelyMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmServiceMessenger()Landroid/os/Messenger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->mServiceMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpid()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->pid:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetremoteVersion()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->remoteVersion:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetvid()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->vid:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputbattery(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->battery:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputfilePath(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->filePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlocalVersion(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->localVersion:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmOobMessenger(Landroid/os/Messenger;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->mOobMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmServiceMessenger(Landroid/os/Messenger;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputpid(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->pid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputremoteVersion(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->remoteVersion:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputvid(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->vid:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->otaTest:Z

    const-string v1, "Xiaomi Smart Pen"

    .line 88
    iput-object v1, p0, Lcom/android/settings/stylus/StylusOtaFragment;->TEST_otaModel_VALUE:Ljava/lang/String;

    const-string v1, "SX 1.0.0.00000000"

    .line 89
    iput-object v1, p0, Lcom/android/settings/stylus/StylusOtaFragment;->TEST_serialNumber_VALUE:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/android/settings/stylus/StylusOtaFragment;->TEST_hardwareVersion_VALUE:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/android/settings/stylus/StylusOtaFragment;->TEST_firmwareVersion_VALUE:Ljava/lang/String;

    const-string v1, "OTATEST"

    .line 92
    iput-object v1, p0, Lcom/android/settings/stylus/StylusOtaFragment;->TEST_OTA:Ljava/lang/String;

    .line 124
    iput-boolean v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isbind:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isOobBind:Z

    .line 340
    new-instance v0, Lcom/android/settings/stylus/StylusOtaFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/stylus/StylusOtaFragment$2;-><init>(Lcom/android/settings/stylus/StylusOtaFragment;)V

    iput-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mConnection:Landroid/content/ServiceConnection;

    .line 354
    new-instance v0, Lcom/android/settings/stylus/StylusOtaFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/stylus/StylusOtaFragment$3;-><init>(Lcom/android/settings/stylus/StylusOtaFragment;)V

    iput-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mBleOobConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method protected getPreferenceScreenResId()I
    .locals 1

    const-string p0, "StylusOtaFragment"

    const-string v0, "getPreferenceScreenResId"

    .line 152
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget p0, Lcom/android/settings/R$xml;->miui_stylus_ota_pref:I

    return p0
.end method

.method public initView()V
    .locals 6

    const-string/jumbo v0, "ota_model"

    .line 227
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->otaModel:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string/jumbo v0, "serial_number"

    .line 228
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->serialNumber:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string v0, "hardware_version"

    .line 229
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->hardwareVersion:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 230
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/stylus/StylusOtaFragment;->serialNumber:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 231
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/stylus/StylusOtaFragment;->hardwareVersion:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string v0, "firmware_version"

    .line 232
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    sput-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->firmwareVersion:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 233
    iget-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ota_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    .line 234
    iget-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->upgrade_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    .line 235
    iget-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ota_remote_version:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StylusOtaFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OTATEST"

    const/4 v2, 0x2

    .line 237
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->otaTest:Z

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->stylus_ota_demands:I

    const-string v3, "20%"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    sget-object v2, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/stylus/StylusOtaFragment;->HAVE_NEW_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/settings/stylus/StylusOtaFragment;->remoteVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->download_progress:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaProgress:Landroid/widget/ProgressBar;

    .line 243
    iget-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->cycle_progress:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/ProgressBar;

    sput-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->cycleProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otaBtnState and txt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "otaBtnState"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "otaBtnText"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 248
    sget-object v2, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 249
    sget-object v2, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 250
    sget-object v2, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    const-string/jumbo v3, "otaDemandsVisible"

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    sget-object v2, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    const-string/jumbo v3, "otaDemandsText"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    sget-object v2, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    const-string/jumbo v3, "otaRemoteVersionVisible"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.bluetooth.mible.StylusOTAService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.bluetooth"

    .line 257
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    sget-boolean v3, Lcom/android/settings/stylus/StylusOtaFragment;->hasStartOTAService:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string/jumbo v3, "to start OTAService"

    .line 259
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 261
    sput-boolean v4, Lcom/android/settings/stylus/StylusOtaFragment;->hasStartOTAService:Z

    .line 263
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isbind:Z

    if-nez v3, :cond_2

    const-string/jumbo v3, "to bind OTAService"

    .line 264
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v5, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isbind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "miui.bluetooth.mible.MiuiBleOobHelperService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-boolean v2, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isOobBind:Z

    if-nez v2, :cond_3

    const-string/jumbo v2, "to bind OobService"

    .line 275
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mBleOobConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isOobBind:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isbind "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isbind:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isOobBind "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isOobBind:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mOTAHandler:Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;

    .line 285
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mOTAHandler:Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->mRelyMessenger:Landroid/os/Messenger;

    .line 287
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->otaModel:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string v1, "Xiaomi Smart Pen"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/stylus/StylusOtaFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/stylus/StylusOtaFragment$1;-><init>(Lcom/android/settings/stylus/StylusOtaFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 336
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAttach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StylusOtaFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 132
    iput-object p1, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "StylusOtaFragment"

    const-string/jumbo v1, "onCreate"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->stylus_ota_downloading_firmware:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/stylus/StylusOtaFragment;->DOWNLOADING_TEXT:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->stylus_ota_updating:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/stylus/StylusOtaFragment;->UPDATING_TEXT:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->stylus_ota_update:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/stylus/StylusOtaFragment;->UPDATE_TEXT:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->stylus_ota_update_failed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/stylus/StylusOtaFragment;->UPDATE_FAILED_TEXT:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->stylus_ota_download_failed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/stylus/StylusOtaFragment;->DOWNLOADING_FAILED_TEXT:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->stylus_ota_check_failed_battery:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/stylus/StylusOtaFragment;->STYLUS_OTA_CHECK_FAILED_BATTERY_TEXT:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->stylus_ota_check_failed_info:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/stylus/StylusOtaFragment;->STYLUS_OTA_CHECK_FAILED_INFO_TEXT:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->stylus_ota_net_error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/stylus/StylusOtaFragment;->TIP_NET_ERROR:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->stylus_ota_hava_new_version:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->HAVE_NEW_VERSION:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "StylusOtaFragment"

    const-string/jumbo v1, "onCreateView"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget v0, Lcom/android/settings/R$layout;->miui_stylus_ota:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mRootView:Landroid/view/View;

    .line 160
    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 162
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/stylus/StylusOtaFragment;->initView()V

    .line 166
    iget-object p0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 12

    const-string/jumbo v0, "on destroy"

    const-string v1, "StylusOtaFragment"

    .line 177
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 179
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    .line 180
    sget-object v2, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 181
    sget-object v3, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    .line 182
    sget-object v4, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 183
    sget-object v5, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "otaRemoteVersionVisible"

    const-string/jumbo v8, "otaDemandsText"

    const-string/jumbo v9, "otaDemandsVisible"

    const-string/jumbo v10, "otaBtnText"

    const-string/jumbo v11, "otaBtnState"

    if-nez v6, :cond_0

    .line 187
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 188
    invoke-virtual {v6, v11, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    invoke-virtual {v6, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v6, v8, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v6, v11, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v6, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    invoke-virtual {v6, v8, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    :goto_0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->mServiceMessenger:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isbind:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "to unbind"

    .line 202
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 205
    iput-object v3, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mConnection:Landroid/content/ServiceConnection;

    .line 206
    iput-boolean v2, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isbind:Z

    .line 207
    sput-object v3, Lcom/android/settings/stylus/StylusOtaFragment;->mServiceMessenger:Landroid/os/Messenger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->mOobMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mBleOobConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isOobBind:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "to unbind mBleOobConnection"

    .line 214
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mBleOobConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 217
    iput-object v3, p0, Lcom/android/settings/stylus/StylusOtaFragment;->mBleOobConnection:Landroid/content/ServiceConnection;

    .line 218
    iput-boolean v2, p0, Lcom/android/settings/stylus/StylusOtaFragment;->isOobBind:Z

    .line 219
    sput-object v3, Lcom/android/settings/stylus/StylusOtaFragment;->mOobMessenger:Landroid/os/Messenger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "StylusOtaFragment"

    const-string/jumbo v1, "on stop"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method
