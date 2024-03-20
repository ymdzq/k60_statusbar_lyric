.class public Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BluetoothBCAudioOnlySourcePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY:Ljava/lang/String; = "bluetooth_broadcast_enable"

.field private static final TAG:Ljava/lang/String; = "BluetoothBCAudioOnlySourcePreferenceController"


# instance fields
.field private isLocalSourceButtonBusy:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastPreference:Landroidx/preference/SwitchPreference;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mIsPASynced:Z

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mService:Landroid/bluetooth/BluetoothLeBroadcast;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBroadcastPreference(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mBroadcastPreference:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisLocalSourceButtonBusy(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->isLocalSourceButtonBusy:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBroadcastStatus(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->getBroadcastStatus()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandlePreferenceEnabled(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;Landroidx/preference/SwitchPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->handlePreferenceEnabled(Landroidx/preference/SwitchPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBroadcast(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->startBroadcast()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "bluetooth_broadcast_enable"

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mIsPASynced:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->isLocalSourceButtonBusy:Z

    .line 47
    iput-object p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 49
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string p2, "audio"

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    .line 51
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private createDialogForBroadcast()V
    .locals 3

    .line 104
    new-instance v0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$1;-><init>(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)V

    .line 111
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_audio_dialog_title:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 113
    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_dialog_text:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x1

    .line 114
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x104000a    # @android:string/ok

    .line 115
    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 116
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 119
    new-instance v1, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$2;-><init>(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 127
    iget-object p0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private getBroadcastStatus()Z
    .locals 2

    const-string v0, "BluetoothBCAudioOnlySourcePreferenceController"

    const/4 v1, 0x0

    .line 175
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    if-nez p0, :cond_0

    const-string/jumbo p0, "mService null"

    .line 176
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    const-string p0, "getBroadcastStatus error"

    .line 181
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getLEAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 157
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "BluetoothBCAudioOnlySourcePreferenceController"

    const-string v0, "Can not get LE Audio Broadcast Profile"

    .line 162
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private handlePreferenceEnabled(Landroidx/preference/SwitchPreference;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->isLocalSourceButtonBusy:Z

    const-string p1, "BluetoothBCAudioOnlySourcePreferenceController"

    const-string v0, "handlePreferenceEnabled"

    .line 140
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 142
    new-instance v0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$3;-><init>(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)V

    const-wide/16 v1, 0x7d0

    .line 150
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private isHearingAidConnected()Z
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object p0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 210
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private isMtkAuracastSourceSupport()Z
    .locals 2

    const-string/jumbo p0, "ro.hardware"

    const-string v0, ""

    .line 98
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "bluetooth.profile.bap.broadcast.source.enabled"

    const/4 v1, 0x0

    .line 99
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "qcom"

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private startBroadcast()V
    .locals 8

    .line 186
    const-class v0, Ljava/lang/String;

    const-string v1, "BluetoothBCAudioOnlySourcePreferenceController"

    const-string/jumbo v2, "startBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->getLEAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p0, "btLeBroadcast null"

    .line 189
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_0
    iget-object v4, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    .line 194
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 196
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->getBroadcastStatus()Z

    move-result p0

    if-nez p0, :cond_1

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Begin to start Broadcast. name = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 198
    invoke-virtual {v3, v4, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->startBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "BT Broadcast has already started."

    .line 200
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string/jumbo v0, "startBroadcast Error"

    .line 203
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private stopBroadcast()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->getLEAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->stopLatestBroadcast()V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bluetooth_broadcast_enable"

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mBroadcastPreference:Landroidx/preference/SwitchPreference;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->updateBroadcastAudioPreference()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    const-string/jumbo v0, "ro.product.device"

    const-string v1, ""

    .line 70
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "corot"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_broadcast_developmentSettings_switch"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    return v1

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->isMtkAuracastSourceSupport()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x3

    return p0
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "bluetooth_broadcast_enable"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onBluetoothServiceConnected(Landroid/bluetooth/BluetoothLeBroadcast;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->updateBroadcastAudioPreference()V

    return-void
.end method

.method public onBluetoothServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->updateBroadcastAudioPreference()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 85
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcast pre change to open? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothBCAudioOnlySourcePreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->createDialogForBroadcast()V

    goto :goto_0

    .line 90
    :cond_0
    move-object p2, p1

    check-cast p2, Landroidx/preference/SwitchPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->handlePreferenceEnabled(Landroidx/preference/SwitchPreference;)V

    .line 91
    sget p2, Lcom/android/settings/R$string;->bluetooth_auracast_source_explain_summary:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->stopBroadcast()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setPrefernceAvaiable(Z)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPrefernceAvaiable, enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothBCAudioOnlySourcePreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mIsPASynced:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->updateBroadcastAudioPreference()V

    return-void
.end method

.method public updateBroadcastAudioPreference()V
    .locals 5

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBroadcastAudioPreference getBroadcastStatus() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->getBroadcastStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isLocalSourceButtonBusy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->isLocalSourceButtonBusy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothBCAudioOnlySourcePreferenceController"

    .line 220
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mBroadcastPreference:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    const-string p0, "mBroadcastPreference null"

    .line 223
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 226
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->isLocalSourceButtonBusy:Z

    if-eqz v0, :cond_1

    const-string p0, "LocalSourceButton Busy, return"

    .line 227
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 233
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 235
    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 236
    iget-object v3, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    if-eq v2, v4, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 240
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->isHearingAidConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->getBroadcastStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mIsPASynced:Z

    if-eqz v0, :cond_5

    :cond_4
    move v1, v4

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mBroadcastPreference:Landroidx/preference/SwitchPreference;

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mBroadcastPreference:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->getBroadcastStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 246
    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_auracast_source_explain_summary:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->getBroadcastStatus()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 248
    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_le_broadcast_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->bluetooth_auracast_source_opend_summary:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_6
    iget-object p0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->mBroadcastPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
