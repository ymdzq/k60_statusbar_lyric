.class public Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BleBroadcastSourceInfoDetailsController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final EMPTY_BD_ADDRESS:Ljava/lang/String;

.field private EMPTY_ENTRY:Ljava/lang/String;

.field private isBroadcastPINUpdated:Z

.field private mAudioSyncState:I

.field private mBisIndicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

.field private mBroadcastCode:Ljava/lang/String;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mGroupOp:Z

.field private mIsButtonRefreshOnly:Z

.field private mIsValueChanged:Z

.field private mMetadataSyncState:I

.field private mPAsyncCtrlNeeded:Z

.field private mScanAssistGroupOpDialog:Landroidx/appcompat/app/AlertDialog;

.field private mScanAssistanceMgr:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

.field private mSourceAudioSyncStatusPref:Landroidx/preference/MultiSelectListPreference;

.field private mSourceAudioSyncSwitchPref:Landroidx/preference/SwitchPreference;

.field private mSourceDevicePref:Landroidx/preference/Preference;

.field private mSourceEncStatusPref:Landroidx/preference/Preference;

.field private mSourceIdPref:Landroidx/preference/Preference;

.field private mSourceInfoContainer:Landroidx/preference/PreferenceCategory;

.field private mSourceInfoIndex:I

.field private mSourceMetadataPref:Landroidx/preference/Preference;

.field private mSourceMetadataSyncStatusPref:Landroidx/preference/Preference;

.field private mSourceMetadataSyncSwitchPref:Landroidx/preference/SwitchPreference;

.field private mSourceUpdateBcastCodePref:Landroidx/preference/EditTextPreference;

.field private mSourceUpdateSourceInfoPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private mVendorCachedDevice:Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;


# direct methods
.method public static synthetic $r8$lambda$7jZAtFnbhJCUxsIGduv-WEVfREY(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->lambda$init$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Svgg4hqsDcs2jveDY8sf0K298ys(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmScanAssistGroupOpDialog(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistGroupOpDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmGroupOp(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mGroupOp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScanAssistGroupOpDialog(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistGroupOpDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mtriggerRemoveBroadcastSource(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->triggerRemoveBroadcastSource()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtriggerUpdateBroadcastSource(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->triggerUpdateBroadcastSource()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/bluetooth/BleBroadcastSourceInfo;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ILcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 136
    invoke-direct {p0, p1, p2, p4, p6}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const-string p2, "00:00:00:00:00:00"

    .line 84
    iput-object p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->EMPTY_BD_ADDRESS:Ljava/lang/String;

    const/4 p2, 0x0

    .line 117
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsValueChanged:Z

    .line 120
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->isBroadcastPINUpdated:Z

    const-string v0, "EMPTY ENTRY"

    .line 123
    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->EMPTY_ENTRY:Ljava/lang/String;

    .line 126
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsButtonRefreshOnly:Z

    .line 127
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mGroupOp:Z

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistGroupOpDialog:Landroidx/appcompat/app/AlertDialog;

    .line 130
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mPAsyncCtrlNeeded:Z

    .line 138
    iput-object p3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 139
    iput-object p4, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 140
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    .line 142
    invoke-static {p4, p1}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->getVendorCachedBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mVendorCachedDevice:Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    .line 143
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->getScanAssistManager()Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistanceMgr:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 144
    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 145
    iput p5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    .line 146
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->clearInputs()V

    .line 147
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mPAsyncCtrlNeeded:Z

    return-void
.end method

.method private clearInputs()V
    .locals 1

    const/4 v0, 0x2

    .line 152
    iput v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mMetadataSyncState:I

    const v0, 0xffff

    .line 154
    iput v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mAudioSyncState:I

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBroadcastCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->isBroadcastPINUpdated:Z

    return-void
.end method

.method private getSyncState(II)I
    .locals 1

    .line 0
    const/4 p0, 0x2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    if-ne p2, v0, :cond_1

    if-eq p1, p0, :cond_1

    return v0

    :cond_1
    if-eq p2, v0, :cond_2

    if-ne p1, p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private isPinUpdatedNeeded()Z
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->isLocalDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const-string v1, "BleBroadcastSourceInfoDetailsController"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Local Device, Dont allow User to update PWD"

    .line 577
    invoke-static {v1, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 580
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getEncryptionStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v2, v0

    .line 585
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPinUpdatedNeeded return"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->onUpdateBroadcastSourceInfoPressed()V

    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;)V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->onRemoveBroadcastSourceInfoPressed()V

    return-void
.end method

.method private onRemoveBroadcastSourceInfoPressed()V
    .locals 10

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":onRemoveBroadcastSourceInfoPressed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleBroadcastSourceInfoDetailsController"

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGroupDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->bluetooth_device:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->group_remove_source_message:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->group_remove_source_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 194
    new-instance v6, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$1;

    invoke-direct {v6, p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$1;-><init>(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)V

    .line 204
    new-instance v7, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$2;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$2;-><init>(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)V

    .line 214
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mGroupOp:Z

    .line 215
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistGroupOpDialog:Landroidx/appcompat/app/AlertDialog;

    .line 216
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    .line 215
    invoke-static/range {v4 .. v9}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->showAssistanceGroupOptionsDialog(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistGroupOpDialog:Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 219
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mGroupOp:Z

    .line 220
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->triggerRemoveBroadcastSource()V

    :goto_0
    return-void
.end method

.method private onUpdateBroadcastSourceInfoPressed()V
    .locals 10

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onUpdateBroadcastSourceInfoPressed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleBroadcastSourceInfoDetailsController"

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGroupDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->bluetooth_device:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->group_update_source_message:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->group_update_source_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 284
    new-instance v6, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$3;

    invoke-direct {v6, p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$3;-><init>(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)V

    .line 294
    new-instance v7, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$4;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$4;-><init>(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)V

    .line 304
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mGroupOp:Z

    .line 305
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistGroupOpDialog:Landroidx/appcompat/app/AlertDialog;

    .line 306
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    .line 305
    invoke-static/range {v4 .. v9}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->showAssistanceGroupOptionsDialog(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistGroupOpDialog:Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 309
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mGroupOp:Z

    .line 310
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->triggerUpdateBroadcastSource()V

    :goto_0
    return-void
.end method

.method private triggerRemoveBroadcastSource()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistanceMgr:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 164
    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v1

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mGroupOp:Z

    .line 163
    invoke-virtual {v0, v1, p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->removeBroadcastSource(BZ)Z

    :cond_0
    return-void
.end method

.method private triggerUpdateBroadcastSource()V
    .locals 6

    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistanceMgr:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz v0, :cond_3

    .line 249
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsValueChanged:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 250
    iget v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mMetadataSyncState:I

    iget v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mAudioSyncState:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->getSyncState(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p0, "BleBroadcastSourceInfoDetailsController"

    const-string/jumbo v0, "triggerUpdateBroadcastSource: Invalid sync Input, Ignore"

    .line 252
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistanceMgr:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 256
    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v1

    iget v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mMetadataSyncState:I

    iget v4, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mAudioSyncState:I

    .line 257
    invoke-direct {p0, v3, v4}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->getSyncState(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mGroupOp:Z

    .line 255
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->updateBroadcastSource(BILjava/util/List;Z)Z

    .line 259
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsValueChanged:Z

    .line 262
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->isBroadcastPINUpdated:Z

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mScanAssistanceMgr:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 264
    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBroadcastCode:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mGroupOp:Z

    .line 263
    invoke-virtual {v0, v1, v3, v4}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->setBroadcastCode(BLjava/lang/String;Z)Z

    .line 265
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->isBroadcastPINUpdated:Z

    .line 267
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->clearInputs()V

    :cond_3
    return-void
.end method


# virtual methods
.method getAudioSyncStatusString(I)Ljava/lang/String;
    .locals 0

    .line 0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "IN SYNC"

    return-object p0

    :cond_1
    const-string p0, "NOT IN SYNC"

    return-object p0
.end method

.method getEncryptionStatusString(I)Ljava/lang/String;
    .locals 0

    .line 0
    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "ENCRYPTION STATE UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "INCORRECT BROADCAST PIN"

    return-object p0

    :cond_1
    const-string p0, "DECRYPTING SUCCESSFULLY"

    return-object p0

    :cond_2
    const-string p0, "PIN UPDATE NEEDED"

    return-object p0

    :cond_3
    const-string p0, "UNENCRYPTED STREAMING"

    return-object p0
.end method

.method getMetadataSyncStatusString(I)Ljava/lang/String;
    .locals 0

    .line 0
    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "NO PAST"

    return-object p0

    :cond_1
    const-string p0, "SYNC FAIL"

    return-object p0

    :cond_2
    const-string p0, "IN SYNC"

    return-object p0

    :cond_3
    const-string p0, "SYNCINFO NEEDED"

    return-object p0

    :cond_4
    const-string p0, "IDLE"

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "broadcast_source_details_category"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoContainer:Landroidx/preference/PreferenceCategory;

    const-string v0, "broadcast_si_sourceId"

    .line 320
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceIdPref:Landroidx/preference/Preference;

    .line 322
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoContainer:Landroidx/preference/PreferenceCategory;

    const-string v0, "broadcast_si_source_address"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceDevicePref:Landroidx/preference/Preference;

    .line 324
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoContainer:Landroidx/preference/PreferenceCategory;

    const-string v0, "broadcast_si_encryption_state"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceEncStatusPref:Landroidx/preference/Preference;

    .line 326
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoContainer:Landroidx/preference/PreferenceCategory;

    const-string v0, "broadcast_si_metadata"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceMetadataPref:Landroidx/preference/Preference;

    .line 328
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoContainer:Landroidx/preference/PreferenceCategory;

    const-string v0, "broadcast_si_metadata_state"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceMetadataSyncStatusPref:Landroidx/preference/Preference;

    .line 330
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mPAsyncCtrlNeeded:Z

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoContainer:Landroidx/preference/PreferenceCategory;

    const-string v0, "broadcast_si_enable_metadata_sync"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceMetadataSyncSwitchPref:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoContainer:Landroidx/preference/PreferenceCategory;

    const-string v0, "broadcast_si_audio_state"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/MultiSelectListPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceAudioSyncStatusPref:Landroidx/preference/MultiSelectListPreference;

    if-eqz p1, :cond_1

    .line 341
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoContainer:Landroidx/preference/PreferenceCategory;

    const-string v0, "broadcast_si_enable_audio_sync"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceAudioSyncSwitchPref:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_2

    .line 347
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 349
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoContainer:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "update_broadcast_code"

    .line 350
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceUpdateBcastCodePref:Landroidx/preference/EditTextPreference;

    if-eqz p1, :cond_3

    .line 353
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 354
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceUpdateBcastCodePref:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 356
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoContainer:Landroidx/preference/PreferenceCategory;

    const-string v0, "bcast_si_update_button"

    .line 357
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v0, Lcom/android/settings/R$string;->update_sourceinfo_btn_txt:I

    .line 359
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v1, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)V

    .line 361
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->remove_sourceinfo_btn_txt:I

    .line 362
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_close:I

    .line 363
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    .line 364
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)V

    .line 365
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceUpdateSourceInfoPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->refresh()V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 5

    .line 373
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mVendorCachedDevice:Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    .line 374
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->getAllBleBroadcastreceiverStates()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 379
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 380
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 383
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    const-string v4, "BleBroadcastSourceInfoDetailsController"

    if-ne v2, v3, :cond_4

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":matching source Info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->isEmptyEntry()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":source info seem to be removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iput-object v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    const-string v1, "Source Info Removal"

    goto :goto_2

    .line 390
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BleBroadcastSourceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 392
    iput-object v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":Update in Broadcast Source Information"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Source Info Update"

    goto :goto_2

    .line 396
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":No Update to Source Information values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 399
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":Ignore this case"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_1

    .line 402
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 407
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->refresh()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 514
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->onPause()V

    .line 515
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .line 411
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":onPreferenceChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleBroadcastSourceInfoDetailsController"

    invoke-static {v2, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "update_broadcast_code"

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 414
    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 415
    check-cast p2, Ljava/lang/String;

    .line 417
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->isBroadcastPINUpdated:Z

    .line 418
    iput-object p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBroadcastCode:Ljava/lang/String;

    goto/16 :goto_3

    :cond_0
    const-string v1, "broadcast_si_audio_state"

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>Checked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    check-cast p1, Landroidx/preference/MultiSelectListPreference;

    .line 422
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    .line 423
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    .line 425
    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 429
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 430
    aput-object v4, p1, v1

    move v5, v0

    .line 431
    :goto_1
    iget-object v6, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "]- "

    if-ge v5, v6, :cond_3

    .line 432
    iget-object v6, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v6}, Landroid/bluetooth/BleBroadcastSourceChannel;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 433
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected: value["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v6, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v6}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v6

    if-ne v6, v3, :cond_1

    .line 435
    iget-object v6, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BleBroadcastSourceChannel;->setStatus(Z)V

    goto :goto_2

    .line 437
    :cond_1
    iget-object v6, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v6, v3}, Landroid/bluetooth/BleBroadcastSourceChannel;->setStatus(Z)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 441
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "value["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v6

    goto/16 :goto_0

    .line 443
    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsValueChanged:Z

    .line 445
    :cond_5
    :goto_3
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsButtonRefreshOnly:Z

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->refresh()V

    return v3
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 456
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":onPreferenceClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BleBroadcastSourceInfoDetailsController"

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 458
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsValueChanged:Z

    .line 459
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mPAsyncCtrlNeeded:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-string v4, "broadcast_si_enable_metadata_sync"

    .line 460
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 461
    move-object v4, p1

    check-cast v4, Landroidx/preference/SwitchPreference;

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":Meta data sync state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mMetadataSyncState:I

    goto :goto_0

    .line 464
    :cond_0
    iput v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mMetadataSyncState:I

    .line 467
    :goto_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceAudioSyncSwitchPref:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 468
    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    iput v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mAudioSyncState:I

    goto :goto_1

    .line 472
    :cond_1
    iput v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mAudioSyncState:I

    :cond_2
    :goto_1
    const-string v4, "broadcast_si_enable_audio_sync"

    .line 477
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 478
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":Audio sync state:  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    iput v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mAudioSyncState:I

    goto :goto_2

    .line 482
    :cond_3
    iput v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mAudioSyncState:I

    .line 484
    :goto_2
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mPAsyncCtrlNeeded:Z

    if-eqz p1, :cond_7

    .line 486
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceMetadataSyncSwitchPref:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_7

    .line 487
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 488
    iput v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mMetadataSyncState:I

    goto :goto_3

    .line 491
    :cond_4
    iput v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mMetadataSyncState:I

    goto :goto_3

    :cond_5
    const-string/jumbo v4, "update_broadcast_code"

    .line 495
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 496
    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":>>Pin code updated:  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsValueChanged:Z

    .line 500
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->isBroadcastPINUpdated:Z

    .line 501
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBroadcastCode:Ljava/lang/String;

    goto :goto_3

    .line 503
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":unhandled preference"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsValueChanged:Z

    .line 506
    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsButtonRefreshOnly:Z

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->refresh()V

    return v1
.end method

.method public onResume()V
    .locals 1

    .line 520
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->onResume()V

    .line 521
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    return-void
.end method

.method protected refresh()V
    .locals 9

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":refresh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mSourceIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleBroadcastSourceInfoDetailsController"

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    if-nez v0, :cond_0

    return-void

    .line 599
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceIdPref:Landroidx/preference/Preference;

    .line 600
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 603
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 606
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(Self)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    .line 613
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    const-string v0, "00:00:00:00:00:00"

    .line 616
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 617
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":NULL source device"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "EMPTY_ENTRY"

    .line 620
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceDevicePref:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceEncStatusPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 623
    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceInfo;->getEncryptionStatus()I

    move-result v2

    .line 622
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->getEncryptionStatusString(I)Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->isEmptyEntry()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":Source Information seem to be Empty"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mPAsyncCtrlNeeded:Z

    if-eqz v0, :cond_6

    .line 629
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceMetadataSyncSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 631
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceAudioSyncSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 632
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceUpdateBcastCodePref:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 634
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceUpdateSourceInfoPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 635
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceUpdateSourceInfoPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 636
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceAudioSyncStatusPref:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 637
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsValueChanged:Z

    goto/16 :goto_b

    .line 640
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mPAsyncCtrlNeeded:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    .line 641
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceMetadataSyncSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 643
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceAudioSyncSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 644
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceUpdateBcastCodePref:Landroidx/preference/EditTextPreference;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->isPinUpdatedNeeded()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 646
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsButtonRefreshOnly:Z

    if-eq v0, v4, :cond_13

    .line 647
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceMetadataSyncStatusPref:Landroidx/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 648
    invoke-virtual {v5}, Landroid/bluetooth/BleBroadcastSourceInfo;->getMetadataSyncState()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->getMetadataSyncStatusString(I)Ljava/lang/String;

    move-result-object v5

    .line 647
    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceAudioSyncStatusPref:Landroidx/preference/MultiSelectListPreference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 651
    invoke-virtual {v5}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAudioSyncState()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->getAudioSyncStatusString(I)Ljava/lang/String;

    move-result-object v5

    .line 650
    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcastChannelsSyncStatus()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 655
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 656
    iget-object v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Z

    .line 657
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move v7, v2

    .line 658
    :goto_2
    iget-object v8, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 659
    iget-object v8, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v8}, Landroid/bluetooth/BleBroadcastSourceChannel;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 660
    iget-object v8, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v8}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v8

    aput-boolean v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 662
    :cond_9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 663
    iget-object v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceAudioSyncStatusPref:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v5, v0}, Landroidx/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 664
    iget-object v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceAudioSyncStatusPref:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v5, v0}, Landroidx/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 665
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceAudioSyncStatusPref:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 669
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mPAsyncCtrlNeeded:Z

    const/4 v5, 0x2

    if-eqz v0, :cond_c

    .line 670
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceMetadataSyncSwitchPref:Landroidx/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v6}, Landroid/bluetooth/BleBroadcastSourceInfo;->getMetadataSyncState()I

    move-result v6

    if-ne v6, v5, :cond_b

    move v6, v4

    goto :goto_3

    :cond_b
    move v6, v2

    :goto_3
    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 673
    :cond_c
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceAudioSyncSwitchPref:Landroidx/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v6}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAudioSyncState()I

    move-result v6

    if-ne v6, v4, :cond_d

    move v6, v4

    goto :goto_4

    :cond_d
    move v6, v2

    :goto_4
    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 677
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    const/4 v6, -0x1

    if-eqz v0, :cond_f

    move v0, v2

    .line 678
    :goto_5
    iget-object v7, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_f

    .line 679
    iget-object v7, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v7}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v7

    if-ne v7, v4, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    move v0, v6

    :goto_6
    if-eq v0, v6, :cond_10

    .line 687
    iget-object v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBisIndicies:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceChannel;->getMetadata()[B

    move-result-object v3

    :cond_10
    if-eqz v3, :cond_11

    .line 690
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceInfoIndex:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":Metadata:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceMetadataPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 694
    :cond_11
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceMetadataPref:Landroidx/preference/Preference;

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 697
    :goto_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    if-eqz v0, :cond_12

    .line 698
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getMetadataSyncState()I

    move-result v0

    if-eq v0, v5, :cond_12

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 699
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAudioSyncState()I

    move-result v0

    if-eq v0, v4, :cond_12

    .line 701
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceUpdateSourceInfoPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_8

    .line 703
    :cond_12
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceUpdateSourceInfoPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 708
    :cond_13
    :goto_8
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsValueChanged:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->isBroadcastPINUpdated:Z

    if-eqz v0, :cond_14

    goto :goto_9

    .line 712
    :cond_14
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceUpdateSourceInfoPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_a

    .line 710
    :cond_15
    :goto_9
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mSourceUpdateSourceInfoPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 714
    :goto_a
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->mIsButtonRefreshOnly:Z

    :goto_b
    return-void
.end method
