.class public Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StylusDevicesController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field static final KEY_DEFAULT_NOTES:Ljava/lang/String; = "default_notes"

.field static final KEY_HANDWRITING:Ljava/lang/String; = "handwriting_switch"

.field static final KEY_IGNORE_BUTTON:Ljava/lang/String; = "ignore_button"

.field static final KEY_STYLUS:Ljava/lang/String; = "device_stylus"


# instance fields
.field private final mCachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private final mInputDevice:Landroid/view/InputDevice;

.field mPreferencesContainer:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/InputDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p2, p0, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->mInputDevice:Landroid/view/InputDevice;

    .line 80
    iput-object p3, p0, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->mCachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 81
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private createButtonPressPreference()Landroidx/preference/SwitchPreference;
    .locals 3

    .line 138
    new-instance v0, Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "ignore_button"

    .line 139
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->stylus_ignore_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    sget v1, Lcom/android/settings/R$drawable;->ic_block:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 142
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "stylus_buttons_enabled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-object v0
.end method

.method private createOrUpdateDefaultNotesPreference(Landroidx/preference/Preference;)Landroidx/preference/Preference;
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    if-eqz v0, :cond_4

    const-string v1, "android.app.role.NOTES"

    .line 92
    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 96
    new-instance p1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    :cond_1
    const-string v2, "default_notes"

    .line 97
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->stylus_default_notes_app:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    sget v2, Lcom/android/settings/R$drawable;->ic_article:I

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 100
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/4 v2, 0x1

    .line 101
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 103
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    sget p0, Lcom/android/settings/R$string;->default_app_none:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-object p1

    :cond_2
    const/4 v1, 0x0

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 115
    :try_start_0
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    .line 114
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    const-string p0, "StylusDevicesController"

    const-string v1, "Notes role package not found."

    .line 118
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private createOrUpdateHandwritingPreference(Landroidx/preference/SwitchPreference;)Landroidx/preference/SwitchPreference;
    .locals 3

    if-nez p1, :cond_0

    .line 125
    new-instance p1, Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    :cond_0
    const-string v0, "handwriting_switch"

    .line 126
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->stylus_textfield_handwriting:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    sget v0, Lcom/android/settings/R$drawable;->ic_text_fields_alt:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 129
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "stylus_handwriting_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 133
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->currentInputMethodSupportsHandwriting()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-object p1
.end method

.method private currentInputMethodSupportsHandwriting()Z
    .locals 1

    .line 226
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 227
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDeviceStylus(Landroid/view/InputDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x4002

    .line 244
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 249
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const/16 p1, 0x11

    .line 250
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stylus"

    .line 252
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private refresh()V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->mPreferencesContainer:Landroidx/preference/PreferenceCategory;

    const-string v1, "default_notes"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 207
    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->createOrUpdateDefaultNotesPreference(Landroidx/preference/Preference;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->mPreferencesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->mPreferencesContainer:Landroidx/preference/PreferenceCategory;

    const-string v1, "handwriting_switch"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 214
    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->createOrUpdateHandwritingPreference(Landroidx/preference/SwitchPreference;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->mPreferencesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->mPreferencesContainer:Landroidx/preference/PreferenceCategory;

    const-string v1, "ignore_button"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->mPreferencesContainer:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->createButtonPressPreference()Landroidx/preference/SwitchPreference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->mPreferencesContainer:Landroidx/preference/PreferenceCategory;

    .line 188
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->refresh()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "device_stylus"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->mInputDevice:Landroid/view/InputDevice;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->mCachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v0, p0}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->isDeviceStylus(Landroid/view/InputDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 150
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "handwriting_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "default_notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "ignore_button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    const-string/jumbo v3, "stylus_handwriting_enabled"

    .line 161
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 166
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 167
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->createStylusHandwritingSettingsActivityIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 172
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 154
    :pswitch_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p1

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.ROLE_NAME"

    const-string v1, "android.app.role.NOTES"

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 158
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 177
    :pswitch_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 179
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    const-string/jumbo v0, "stylus_buttons_enabled"

    .line 177
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    :goto_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x23f6563f -> :sswitch_2
        0x4e2f1343 -> :sswitch_1
        0x657f1e26 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->refresh()V

    return-void
.end method
