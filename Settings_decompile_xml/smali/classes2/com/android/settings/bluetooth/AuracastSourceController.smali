.class public Lcom/android/settings/bluetooth/AuracastSourceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AuracastSourceController.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_LE_AUDIO_MASK_PROP:Ljava/lang/String; = "persist.vendor.service.bt.adv_audio_mask"

.field public static final BROADCAST_AUDIO_MASK:I = 0x4

.field private static final CANCEL_DISABLE_OP:I = 0x65

.field private static final CANCEL_DISABLE_OP_DELAY:I = 0xbb8

.field public static final KEY_BROADCAST_ENABLE:Ljava/lang/String; = "bluetooth_broadcast_enable"

.field private static final REFRESH_AFTER_PROFILE_READY:I = 0x66

.field private static final REFRESH_AFTER_PROFILE_READY_DELAY:I = 0x12c

.field private static final STATE_DISABLED:I = 0xa

.field private static final STATE_DISABLING:I = 0xd

.field private static final STATE_ENABLED:I = 0xc

.field private static final STATE_ENABLING:I = 0xb

.field private static final STATE_STREAMING:I = 0xe

.field public static final TAG:Ljava/lang/String; = "AuracastSourceController"


# instance fields
.field private isBluetoothLeBroadcastAudioSupported:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBapBroadcastProfile:Ljava/lang/Object;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCallbacksRegistered:Z

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mState:Z

.field oldState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBapBroadcastProfile(Lcom/android/settings/bluetooth/AuracastSourceController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBapBroadcastProfile:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/bluetooth/AuracastSourceController;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmManager(Lcom/android/settings/bluetooth/AuracastSourceController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/AuracastSourceController;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBapBroadcastProfile(Lcom/android/settings/bluetooth/AuracastSourceController;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBapBroadcastProfile:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePreferenceState(Lcom/android/settings/bluetooth/AuracastSourceController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->updatePreferenceState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/settings/bluetooth/AuracastSourceController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->updateState(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 73
    iput-object p2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mState:Z

    .line 78
    iput-object p2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBapBroadcastProfile:Ljava/lang/Object;

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->isBluetoothLeBroadcastAudioSupported:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mCallbacksRegistered:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mReceiverRegistered:Z

    .line 82
    iput-object p2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/16 p2, 0xa

    .line 92
    iput p2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->oldState:I

    .line 94
    new-instance p2, Lcom/android/settings/bluetooth/AuracastSourceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/AuracastSourceController$1;-><init>(Lcom/android/settings/bluetooth/AuracastSourceController;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    new-instance p2, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;-><init>(Lcom/android/settings/bluetooth/AuracastSourceController;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mHandler:Landroid/os/Handler;

    const-string p2, "AuracastSourceController"

    const-string v0, "Constructor() with key"

    .line 111
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->Init(Landroid/content/Context;)V

    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    const-string/jumbo v0, "persist.vendor.service.bt.adv_audio_mask"

    const/4 v1, 0x0

    .line 118
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 119
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->isBluetoothLeBroadcastAudioSupported:Z

    if-eqz v1, :cond_1

    .line 121
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 123
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getBroadcastProfile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBapBroadcastProfile:Ljava/lang/Object;

    .line 124
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    const-string p0, "AuracastSourceController"

    const-string p1, "Init done"

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createDialogForBroadcast()V
    .locals 3

    .line 166
    new-instance v0, Lcom/android/settings/bluetooth/AuracastSourceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/AuracastSourceController$2;-><init>(Lcom/android/settings/bluetooth/AuracastSourceController;)V

    .line 174
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_audio_dialog_title:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 176
    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_dialog_text:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x1

    .line 177
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x104000a    # @android:string/ok

    .line 178
    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 179
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/android/settings/bluetooth/AuracastSourceController$3;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/AuracastSourceController$3;-><init>(Lcom/android/settings/bluetooth/AuracastSourceController;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 190
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static updateKeySummaryDetail(Landroid/content/Context;Lcom/android/settingslib/RestrictedSwitchPreference;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "AuracastSourceController"

    const-string/jumbo v1, "updateKeySummaryDetail "

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 205
    invoke-static {p2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isProfileReady(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    invoke-static {p2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getEncryptionKey(Ljava/lang/Object;)[B

    move-result-object p2

    const-string v2, ""

    if-eqz p2, :cond_2

    .line 208
    array-length v3, p2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    .line 209
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pin("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, p2, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    :cond_1
    invoke-static {p2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->convertBytesToString([B)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v2

    .line 214
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->bluetooth_auracast_source_opend_summary:I

    .line 217
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 218
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    return-void
.end method

.method private updatePreferenceState(Z)V
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuracastSourceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mState:Z

    .line 163
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateState(Z)V
    .locals 5

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateState req "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuracastSourceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mState:Z

    if-eq p1, v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateState to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBapBroadcastProfile:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->setBroadcastMode(Ljava/lang/Object;Z)Z

    const-string/jumbo v0, "updateState done "

    .line 145
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "TestAuracastNoPin"

    const/4 v1, 0x2

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBapBroadcastProfile:Ljava/lang/Object;

    invoke-static {p0, p1, v2, v2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->setEncryption(Ljava/lang/Object;ZIZ)Z

    goto :goto_0

    .line 155
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBapBroadcastProfile:Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {p0, p1, v0, v2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->setEncryption(Ljava/lang/Object;ZIZ)Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 316
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "displayPreference"

    const-string v1, "AuracastSourceController"

    .line 317
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AuracastSourceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez p1, :cond_0

    return-void

    .line 322
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->isBluetoothLeBroadcastAudioSupported:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 323
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 324
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    .line 326
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bluetooth_restricte_state"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/16 v3, 0xc

    if-ne p1, v3, :cond_3

    if-nez v0, :cond_3

    .line 332
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBapBroadcastProfile:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isProfileReady(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "get isProfileReady false "

    .line 333
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x66

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AuracastSourceController;->refreshPreference()V

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_4

    const/4 p1, 0x1

    if-ne v0, p1, :cond_5

    .line 340
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/AuracastSourceController;->updatePreferenceState(Z)V

    .line 341
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 343
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 344
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 346
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "displayPreference "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 348
    :cond_7
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    const-string v0, "AuracastSourceController"

    const-string v1, "getAvailabilityStatus"

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->isBluetoothLeBroadcastAudioSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
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
    .locals 1

    const-string p0, "AuracastSourceController"

    const-string v0, "getPreferenceKey"

    .line 310
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "bluetooth_broadcast_enable"

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 2

    const-string v0, "AuracastSourceController"

    const-string v1, "getSliceHighlightMenuRes"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->isBluetoothLeBroadcastAudioSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public hasAsyncUpdate()Z
    .locals 1

    const-string p0, "AuracastSourceController"

    const-string v0, "hasAsyncUpdate"

    .line 416
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 376
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mState:Z

    return p0
.end method

.method public isPublicSlice()Z
    .locals 1

    const-string p0, "AuracastSourceController"

    const-string v0, "isPublicSlice"

    .line 422
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onA2dpCodecConfigChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onA2dpCodecConfigChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;)V

    return-void
.end method

.method public bridge synthetic onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public bridge synthetic onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public bridge synthetic onAudioModeChanged()V
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onAudioModeChanged()V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuracastSourceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 273
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 278
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBroadcastKeyGenerated()V
    .locals 3

    const-string/jumbo v0, "onBroadcastKeyGenerated"

    const-string v1, "AuracastSourceController"

    .line 401
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AuracastSourceController;->refreshPreference()V

    .line 408
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "onBroadcastKeyGenerated CANCEL_DISABLE_OP"

    .line 409
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string/jumbo p0, "onBroadcastKeyGenerated mContext is null"

    .line 403
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBroadcastStateChanged(I)V
    .locals 3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBroadcastStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->oldState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuracastSourceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->oldState:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_audio_started_toast:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 294
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/AuracastSourceController;->updatePreferenceState(Z)V

    goto :goto_0

    .line 297
    :cond_2
    iget v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->oldState:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    .line 298
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->notice_broadcast_audio_stopped:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AuracastSourceController;->updatePreferenceState(Z)V

    .line 305
    :goto_0
    iput p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->oldState:I

    return-void
.end method

.method public bridge synthetic onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public bridge synthetic onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public bridge synthetic onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public bridge synthetic onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public bridge synthetic onGroupDiscoveryStatusChanged(III)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onGroupDiscoveryStatusChanged(III)V

    return-void
.end method

.method public bridge synthetic onHearingAidAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onHearingAidAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public bridge synthetic onHearingAidDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onHearingAidDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public bridge synthetic onNewGroupFound(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ILjava/util/UUID;)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onNewGroupFound(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ILjava/util/UUID;)V

    return-void
.end method

.method public bridge synthetic onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V

    return-void
.end method

.method public bridge synthetic onScanningStateChanged(Z)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    const-string v1, "AuracastSourceController"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onStart isBluetoothScoOn"

    .line 132
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method refreshPreference()V
    .locals 8

    .line 353
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBapBroadcastProfile:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getBroadcastStatus(Ljava/lang/Object;)I

    move-result v0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshPreference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AuracastSourceController"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe

    if-eq v0, v1, :cond_4

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    const/16 v4, 0xd

    if-eq v0, v1, :cond_2

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "bapState is error "

    .line 370
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 365
    :cond_2
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/AuracastSourceController;->updatePreferenceState(Z)V

    .line 366
    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    sget v7, Lcom/android/settings/R$string;->bluetooth_auracast_source_explain_summary:I

    invoke-virtual {v1, v7}, Landroidx/preference/Preference;->setSummary(I)V

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eq v0, v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_2

    .line 356
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    const-string p0, "get status, this is null"

    .line 357
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 360
    :cond_5
    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBapBroadcastProfile:Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/settings/bluetooth/AuracastSourceController;->updateKeySummaryDetail(Landroid/content/Context;Lcom/android/settingslib/RestrictedSwitchPreference;Ljava/lang/Object;)V

    .line 361
    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/AuracastSourceController;->updatePreferenceState(Z)V

    .line 362
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eq v0, v4, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public registerObserver()V
    .locals 4

    const-string/jumbo v0, "registerObserver"

    const-string v1, "AuracastSourceController"

    .line 427
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mCallbacksRegistered:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "Registering EventManager callbacks"

    .line 429
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mCallbacksRegistered:Z

    .line 431
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 434
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mReceiverRegistered:Z

    if-nez v0, :cond_1

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering half close receiver "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mReceiverRegistered:Z

    .line 437
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 438
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AuracastSourceController;->createDialogForBroadcast()V

    goto :goto_0

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->updateState(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public unRegisterObserver()V
    .locals 4

    const-string/jumbo v0, "unRegisterObserver"

    const-string v1, "AuracastSourceController"

    .line 446
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 447
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mCallbacksRegistered:Z

    const/4 v2, 0x0

    .line 448
    iput-object v2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mBapBroadcastProfile:Ljava/lang/Object;

    .line 449
    iget-object v2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v2, :cond_0

    .line 450
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 451
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mReceiverRegistered:Z

    if-eqz v2, :cond_1

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregister half close receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mReceiverRegistered:Z

    .line 454
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
