.class public final Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;
.super Ljava/lang/Object;
.source "MiuiBluetoothEnabler.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mPreference:Landroidx/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleStateChanged(Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->handleStateChanged(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/CheckBoxPreference;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->setPreference(Landroidx/preference/CheckBoxPreference;)V

    .line 69
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 73
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 77
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private handleStateChanged(IZ)V
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 163
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 165
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 153
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 149
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeEnforceRestrictions()Z
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "no_bluetooth"

    .line 208
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 207
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "no_config_bluetooth"

    .line 211
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 210
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 216
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1
    if-eqz v0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public checkedChanged(Z)V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->maybeEnforceRestrictions()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    .line 134
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public resume()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 92
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->handleStateChanged(IZ)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object v0

    invoke-interface {v0}, Lmiui/enterprise/IRestrictionsHelper;->isBluetoothRestriction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setPreference(Landroidx/preference/CheckBoxPreference;)V
    .locals 4

    .line 81
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    .line 82
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v0, 0xa

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-ne p1, v0, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v3

    .line 86
    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 87
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :cond_4
    :goto_3
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
