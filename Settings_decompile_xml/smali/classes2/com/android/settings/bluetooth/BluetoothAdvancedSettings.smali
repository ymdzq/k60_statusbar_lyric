.class public Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;,
        Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;
    }
.end annotation


# static fields
.field static final U_SHOW_AURACST_PROFILE_PHONE_LIST:[Ljava/lang/String;


# instance fields
.field private DBG_UPLOAD_RESOURCE:Z

.field private final PIC_FOLDER_BASE:Ljava/lang/String;

.field private final btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

.field private isQcomAuracastRawTest:Z

.field private isQcomAuracastTest:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothOnModeChangedListener:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;

.field private mBroadcastAudioPreOnlySource:Landroidx/preference/SwitchPreference;

.field private mBroadcastAudioPreference:Landroidx/preference/Preference;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mInbandringPreference:Landroidx/preference/Preference;

.field private final mInbandringReceiver:Landroid/content/BroadcastReceiver;

.field mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mService:Landroid/bluetooth/BluetoothLeBroadcast;

.field private final mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mSubHandler:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;

.field private mSubThread:Landroid/os/HandlerThread;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBroadcastAudioPreOnlySource(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreOnlySource:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInbandringPreference(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/Preference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mInbandringPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubHandler(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSubHandler:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Landroid/bluetooth/BluetoothLeBroadcast;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateDialogForBroadcast(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->createDialogForBroadcast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBroadcastStatus(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getBroadcastStatus()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleHalfCloseClick(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->handleHalfCloseClick(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePreferenceEnabled(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->handlePreferenceEnabled(Landroidx/preference/Preference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misHearingAidConnected(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isHearingAidConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmoveResource(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->moveResource(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetSystemProp(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->setSystemProp(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBroadcast(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->startBroadcast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopBroadcast(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->stopBroadcast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBroadcastAudioPreference(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->updateBroadcastAudioPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ctbgalo"

    const-string v1, "atqnqa"

    const-string v2, "lamds"

    const-string/jumbo v3, "udqlddq"

    .line 111
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->U_SHOW_AURACST_PROFILE_PHONE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->PIC_FOLDER_BASE:Ljava/lang/String;

    const-string v0, "MiuiFastConnectResourceLoad"

    const/4 v1, 0x2

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->DBG_UPLOAD_RESOURCE:Z

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isQcomAuracastTest:Z

    const-string v0, "QcomAuracastRawTest"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isQcomAuracastRawTest:Z

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreference:Landroidx/preference/Preference;

    .line 114
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreOnlySource:Landroidx/preference/SwitchPreference;

    .line 116
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 117
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 118
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mInbandringPreference:Landroidx/preference/Preference;

    .line 119
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 121
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSubHandler:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;

    .line 122
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSubThread:Landroid/os/HandlerThread;

    .line 124
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 183
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 458
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$6;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mInbandringReceiver:Landroid/content/BroadcastReceiver;

    .line 496
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private checkLocalCached(Ljava/lang/String;)Z
    .locals 2

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->PIC_FOLDER_BASE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local file not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothAdvancedSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 623
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BluetoothAdvancedSettings"

    const-string p1, "failed to close stream"

    .line 625
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private createDialogForBroadcast()V
    .locals 3

    .line 763
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$9;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    .line 771
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 772
    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_audio_dialog_title:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 773
    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_dialog_text:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x1

    .line 774
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x104000a    # @android:string/ok

    .line 775
    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 776
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 777
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 779
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$10;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 787
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private getBroadcastStatus()Z
    .locals 1

    .line 813
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    if-eqz p0, :cond_0

    .line 814
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    const-string p0, "BluetoothAdvancedSettings"

    const-string v0, "getBroadcastStatus error"

    .line 817
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getLEAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 801
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 802
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "BluetoothAdvancedSettings"

    const-string v0, "Can not get LE Audio Broadcast Profile"

    .line 807
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getSystemProp()I
    .locals 4

    const-string/jumbo v0, "vendor"

    .line 568
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 570
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "qcom"

    .line 571
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo p0, "persist.vendor.bt.a2dp.notification"

    .line 572
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "mediatek"

    .line 573
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "miui_bluetooth_notification"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 576
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 578
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private handleHalfCloseClick(Z)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 945
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "bluetooth_restricte_state"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 948
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_0

    .line 949
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_0
    move v0, v2

    .line 953
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "bluetooth_half_close_switch_value"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 954
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "enable_bluetooth_restricte"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 956
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private handlePreferenceEnabled(Landroidx/preference/Preference;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 891
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v0, "BluetoothAdvancedSettings"

    const-string v1, "handlePreferenceEnabled"

    .line 892
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 894
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Landroidx/preference/Preference;)V

    const-wide/16 p0, 0x7d0

    .line 913
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private initBroadcastAudioPreference()V
    .locals 8

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_auracast_entrance"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 673
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BluetoothAdvancedSettings"

    if-eqz v0, :cond_0

    const-string p0, "cloud control not support"

    .line 674
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "bluetooth_connect_settings"

    .line 677
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    const-string/jumbo v2, "persist.vendor.service.bt.adv_audio_mask"

    const/4 v3, 0x0

    .line 678
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v4, v2, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 680
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isMtkAuracastSupport()Z

    move-result v5

    .line 681
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "advAudioMask"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreference:Landroidx/preference/Preference;

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 684
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isSupportAuracast()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v4, :cond_3

    :cond_2
    if-eqz v5, :cond_7

    .line 685
    :cond_3
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v2, "bluetooth_broadcast_audio_settings"

    .line 686
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 688
    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_audio:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 689
    sget v2, Lcom/android/settings/R$string;->bluetooth_auracast_source_explain_summary:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    const-string/jumbo v2, "ro.hardware"

    const-string v3, ""

    .line 690
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 691
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "qcom"

    .line 692
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 693
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isQcomAuracastTest:Z

    if-eqz v2, :cond_4

    const-string v2, "com.android.settings.bluetooth.MiuiAuracastQcomFragment"

    .line 694
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 695
    sget v2, Lcom/android/settings/R$string;->bluetooth_auracast_source_and_assistant_text:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 697
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isQcomAuracastRawTest:Z

    if-eqz v2, :cond_6

    const-string v2, "com.android.settings.bluetooth.BluetoothBroadcastAudioSettings"

    .line 698
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "com.android.settings.bluetooth.MiuiBluetoothBroadcastAudioSettings"

    .line 701
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 702
    sget v2, Lcom/android/settings/R$string;->bluetooth_auracast_source_and_assistant_text:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 706
    :cond_6
    :goto_1
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreference:Landroidx/preference/Preference;

    .line 707
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_7
    return-void
.end method

.method private initBroadcastPreOnlySource()V
    .locals 3

    const-string v0, "bluetooth_connect_settings"

    .line 721
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 722
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreOnlySource:Landroidx/preference/SwitchPreference;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 723
    new-instance v1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "bluetooth_broadcast_audio_only_source"

    .line 724
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 725
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 726
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mInbandringPreference:Landroidx/preference/Preference;

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {v2}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 729
    :cond_0
    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_audio_onlysource:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 730
    sget v2, Lcom/android/settings/R$string;->bluetooth_auracast_source_explain_summary:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 731
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$8;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 747
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreOnlySource:Landroidx/preference/SwitchPreference;

    .line 748
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private initInbandRingPreference()V
    .locals 3

    const-string/jumbo v0, "persist.bluetooth.disableinbandringingbuttonui"

    const/4 v1, 0x1

    .line 753
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "bluetooth_connect_settings"

    .line 755
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    const-string v2, "bluetooth_disable_inband_ringing"

    .line 756
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    .line 758
    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private isBroadcastLocalSupport()Z
    .locals 4

    const-string v0, "bluetooth.profile.bap.broadcast.source.enabled"

    const/4 v1, 0x0

    .line 844
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 846
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "enable_broadcast_advancedSettings_switch"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v2, "BluetoothAdvancedSettings"

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    const-string p0, "cloud control of broadcast not support"

    .line 849
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "broadcast profile not support"

    .line 853
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v3
.end method

.method private isHearingAidConnected()Z
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 793
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object p0

    .line 794
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isMtkAuracastSupport()Z
    .locals 3

    .line 712
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isSupportAuracast()Z

    move-result p0

    const-string v0, "bluetooth.profile.bap.broadcast.source.enabled"

    const/4 v1, 0x0

    .line 713
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "bluetooth.profile.bap.broadcast.assist.enabled"

    .line 715
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private moveResource(Ljava/lang/String;)Z
    .locals 9

    const-string v0, ".zip"

    const-string v1, "BluetoothAdvancedSettings"

    .line 584
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->checkLocalCached(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x0

    .line 591
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->PIC_FOLDER_BASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 592
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 593
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 594
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "temp_"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 595
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    :try_start_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0x400

    :try_start_3
    new-array v2, v2, [B

    .line 599
    :goto_0
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 600
    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 603
    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->closeQuietly(Ljava/io/Closeable;)V

    .line 604
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 613
    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->closeQuietly(Ljava/io/Closeable;)V

    .line 614
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->closeQuietly(Ljava/io/Closeable;)V

    const-string/jumbo p0, "moveResource success"

    .line 616
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v2

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, v2

    move-object v2, p1

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v2

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v0, v2

    move-object v6, v0

    move-object v2, p1

    move-object p1, v6

    :goto_1
    if-eqz v0, :cond_2

    .line 606
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 607
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_2
    move-object v2, v6

    goto :goto_4

    :cond_2
    :goto_3
    const-string v0, "failed to move"

    .line 609
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 613
    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->closeQuietly(Ljava/io/Closeable;)V

    .line 614
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    .line 613
    :goto_4
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->closeQuietly(Ljava/io/Closeable;)V

    .line 614
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->closeQuietly(Ljava/io/Closeable;)V

    .line 615
    throw v0

    :cond_3
    :goto_5
    return v3
.end method

.method private setSystemProp(I)V
    .locals 2

    const-string/jumbo v0, "vendor"

    .line 555
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "qcom"

    .line 557
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "persist.vendor.bt.a2dp.notification"

    .line 558
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "mediatek"

    .line 559
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "miui_bluetooth_notification"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 563
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startBroadcast()V
    .locals 8

    .line 823
    const-class v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getLEAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object v1

    const-string v2, "BluetoothAdvancedSettings"

    if-nez v1, :cond_0

    const-string p0, "btLeBroadcast null"

    .line 825
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 828
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 830
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "startBroadcast"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 832
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getBroadcastStatus()Z

    move-result p0

    if-nez p0, :cond_1

    .line 833
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Begin to start Broadcast. name = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 834
    invoke-virtual {v1, v3, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->startBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "BT Broadcast has already started."

    .line 836
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string/jumbo v0, "startBroadcast Error"

    .line 839
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private stopBroadcast()V
    .locals 0

    .line 918
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getLEAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->stopLatestBroadcast()V

    :cond_0
    return-void
.end method

.method private updateBroadcastAudioPreference()V
    .locals 5

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBroadcastAudioPreference getBroadcastStatus() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getBroadcastStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdvancedSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isBroadcastLocalSupport()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreOnlySource:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 867
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 869
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 870
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v2, v4, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 874
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isHearingAidConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getBroadcastStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    :cond_3
    move v1, v4

    .line 876
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreOnlySource:Landroidx/preference/SwitchPreference;

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 877
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreOnlySource:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getBroadcastStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 878
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 879
    sget v0, Lcom/android/settings/R$string;->bluetooth_auracast_source_explain_summary:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getBroadcastStatus()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 881
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_le_broadcast_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/settings/R$string;->bluetooth_auracast_source_opend_summary:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 885
    :cond_5
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreOnlySource:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private updateBroadcastAudioPreference(Z)V
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBroadcastAudioPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    .line 926
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 640
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdvancedSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 642
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 643
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_0

    .line 644
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 646
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    .line 647
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 546
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    new-instance v0, Lcom/android/settings/development/BluetoothMiFastConnectPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/development/BluetoothMiFastConnectPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v0, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    new-instance v0, Lcom/android/settings/development/BluetoothInbandRingingPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/development/BluetoothInbandRingingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "BluetoothAdvancedSettings"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 540
    sget p0, Lcom/android/settings/R$xml;->bluetooth_advanced_settings:I

    return p0
.end method

.method isSupportAuracast()Z
    .locals 7

    const-string/jumbo v0, "ro.product.device"

    .line 654
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 657
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->U_SHOW_AURACST_PROFILE_PHONE_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 658
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move p0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move p0, v3

    :goto_1
    if-nez p0, :cond_3

    const-string p0, ""

    .line 664
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "support_le_audio"

    .line 665
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 666
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v3, v5

    :cond_2
    move p0, v3

    :cond_3
    return p0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 933
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->updateBroadcastAudioPreference(Z)V

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 936
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->updateBroadcastAudioPreference(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "bluetooth_show"

    .line 187
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v1, "BluetoothAdvancedSettings"

    if-nez p1, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    .line 190
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSubThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_1

    .line 195
    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "HalfCloseSubThread"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSubThread:Landroid/os/HandlerThread;

    .line 196
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSubHandler:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;

    if-nez p1, :cond_2

    .line 199
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSubThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;-><init>(Landroid/os/Looper;Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSubHandler:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;

    .line 203
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 204
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBluetoothOnModeChangedListener:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;

    .line 205
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 206
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBluetoothOnModeChangedListener:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;

    .line 205
    invoke-virtual {p1, v2, v3}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 207
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string p1, "bluetooth_disable_inband_ringing"

    .line 208
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mInbandringPreference:Landroidx/preference/Preference;

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string p1, "MiuiThirdAppTest"

    const/4 v2, 0x2

    .line 212
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    const-string v2, "load_textWhiteList_flag"

    .line 213
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_3

    .line 215
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    const-string p1, "bluetooth_fastConnect_resource_load"

    .line 221
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    .line 222
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->DBG_UPLOAD_RESOURCE:Z

    if-nez v2, :cond_4

    if-eqz p1, :cond_5

    .line 224
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_4
    const-string v2, "key_device_id"

    .line 227
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    .line 229
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    :goto_1
    const/4 p1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "bluetooth_show_notification"

    .line 256
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreference;

    if-eqz v3, :cond_8

    .line 258
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getSystemProp()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    if-eqz v4, :cond_6

    move v4, p1

    goto :goto_2

    :cond_6
    move v4, v2

    .line 260
    :goto_2
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 261
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 262
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$3;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    .line 276
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_8

    .line 278
    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 283
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    const-string v3, "bluetooth_always_show_icon"

    .line 286
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreference;

    const-string v4, "bluetooth_always_show_icon_value"

    if-eqz v3, :cond_a

    const-string v5, "add show bt icon pref"

    .line 288
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 290
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    if-ne v5, p1, :cond_9

    move v5, p1

    goto :goto_4

    :cond_9
    move v5, v2

    .line 291
    :goto_4
    invoke-virtual {v3, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 292
    new-instance v5, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$4;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 305
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enable_always_show_switch"

    invoke-static {v5, v6, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "ro.product.mod_device"

    const-string v7, ""

    .line 307
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_global"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "bluetooth_halfclose_global_enable"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 310
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getMiuiVersion()I

    move-result v8

    const/16 v9, 0xe

    const/16 v10, 0xd

    if-le v8, v10, :cond_b

    if-ne v5, p1, :cond_b

    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getMiuiVersion()I

    move-result v8

    if-lt v8, v9, :cond_d

    if-eqz v6, :cond_d

    if-nez v7, :cond_d

    :cond_b
    if-eqz v3, :cond_c

    .line 313
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remove status switch, miui is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getMiuiVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", cloud is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/PreferenceGroup;

    if-eqz v5, :cond_c

    .line 316
    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 319
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_d

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    const-string v3, "bluetooth_half_close_switch"

    .line 325
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreference;

    if-eqz v3, :cond_10

    const-string v4, "add halfclose switch pref"

    .line 327
    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_bluetooth_restricte"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "bluetooth_half_close_switch_value"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 332
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    if-ne v4, p1, :cond_e

    goto :goto_5

    :cond_e
    move p1, v2

    .line 333
    :goto_5
    invoke-virtual {v3, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 334
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$5;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$5;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    invoke-virtual {v3, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 349
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getMiuiVersion()I

    move-result p1

    if-le p1, v10, :cond_f

    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getMiuiVersion()I

    move-result p1

    if-lt p1, v9, :cond_10

    if-eqz v6, :cond_10

    :cond_f
    const-string/jumbo p1, "remove half close switch"

    .line 350
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_10

    .line 353
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 358
    :cond_10
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isBroadcastLocalSupport()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 359
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x1a

    invoke-virtual {p1, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 362
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->initBroadcastPreOnlySource()V

    .line 363
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->updateBroadcastAudioPreference()V

    .line 365
    :cond_11
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->initBroadcastAudioPreference()V

    .line 367
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_12

    .line 368
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 369
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_12

    .line 370
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->updateBroadcastAudioPreference(Z)V

    .line 373
    :cond_12
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->initInbandRingPreference()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBluetoothOnModeChangedListener:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;

    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 434
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mBluetoothOnModeChangedListener:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    if-eqz v0, :cond_1

    .line 438
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    const/16 v3, 0x1a

    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 440
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mService:Landroid/bluetooth/BluetoothLeBroadcast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "BluetoothAdvancedSettings"

    const-string v3, "Error cleaning up LeAudio proxy"

    .line 442
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSubThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 451
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 452
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSubThread:Landroid/os/HandlerThread;

    .line 454
    :cond_3
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 410
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 411
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothAdvancedSettings"

    const-string/jumbo v2, "set scan mode connectable"

    .line 413
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x15

    .line 414
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 417
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mInbandringReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mInbandringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isBroadcastLocalSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 378
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 379
    sget v0, Lcom/android/settings/R$string;->advanced_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->updateActionBarTitleView(I)V

    .line 380
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothAdvancedSettings"

    const-string/jumbo v2, "set scan mode connectable and discoverable"

    .line 382
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x17

    .line 383
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 390
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 392
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.bluetooth.action.device_status"

    .line 393
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.bluetooth.action.lea_device_status"

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mInbandringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 398
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isBroadcastLocalSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.xiaomi.bluetooth.ACTION_BROADCAST_AUDIO_STATUS_CHANGED"

    .line 400
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 401
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 404
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->updateBroadcastAudioPreference()V

    :cond_2
    return-void
.end method
