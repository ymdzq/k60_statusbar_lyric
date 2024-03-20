.class public Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BluetoothBlacklistFragment.java"


# instance fields
.field private mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field mDeviceListGroup:Landroidx/preference/PreferenceGroup;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mRootView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$mrefresh(Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->refresh()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getHidClassDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/16 v0, 0x51c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x540

    if-eq p1, v0, :cond_1

    const/16 v0, 0x580

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5c0

    if-eq p1, v0, :cond_1

    .line 272
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settingslib/R$drawable;->ic_bt_misc_hid:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settingslib/R$drawable;->ic_bt_pointing_hid:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 266
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settingslib/R$drawable;->ic_lockscreen_ime:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 270
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settingslib/R$drawable;->ic_bt_digital_pen:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getIconByDeviceType(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x200

    if-eq p1, v0, :cond_2

    const/16 v0, 0x500

    if-eq p1, v0, :cond_1

    const/16 p2, 0x600

    if-eq p1, p2, :cond_0

    .line 257
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settingslib/R$drawable;->ic_bt_bluetooth:I

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settingslib/R$drawable;->ic_bt_imaging:I

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 251
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->getHidClassDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 247
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone:I

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 243
    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settingslib/R$drawable;->ic_bt_laptop:I

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getScreenHeight()I
    .locals 1

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 234
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 235
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 236
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private readyInfo()V
    .locals 11

    const-string v0, "DeviceClass"

    const-string v1, "DeviceType"

    const-string v2, "DeviceName"

    .line 177
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "BlackfileForBluetoothDevice"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 178
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 179
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 180
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 181
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    .line 182
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_0

    .line 185
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 188
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 191
    :cond_1
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, -0x1

    if-eqz v7, :cond_2

    .line 192
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v9

    .line 195
    :goto_1
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 196
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 198
    :cond_3
    invoke-direct {p0, v7, v9}, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->getIconByDeviceType(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 199
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mContext:Landroid/content/Context;

    if-nez v8, :cond_4

    return-void

    .line 202
    :cond_4
    new-instance v9, Landroidx/preference/Preference;

    invoke-direct {v9, v8}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 203
    sget v8, Lcom/android/settings/R$xml;->preference_bt_device_blacklist:I

    invoke-virtual {v9, v8}, Landroidx/preference/Preference;->setLayoutResource(I)V

    if-eqz v6, :cond_5

    .line 205
    invoke-virtual {v9, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 207
    :cond_5
    invoke-virtual {v9, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    :goto_2
    invoke-virtual {v9, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v9, v7}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v5, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    return-void

    :catch_0
    move-exception p0

    const-string v0, "BluetoothBlacklistFragment"

    const-string v1, "error when readyInfo"

    .line 215
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private refresh()V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 222
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->blank_screen:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 223
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 225
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 228
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 229
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "BluetoothBlacklistFragment"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 172
    sget p0, Lcom/android/settings/R$xml;->bluetooth_device_blackfile:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const-string p0, "BluetoothBlacklistFragment"

    const-string p1, "Bluetooth is not supported on this device"

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mContext:Landroid/content/Context;

    const-string p1, "bluetooth_device_blacklist"

    .line 60
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    .line 61
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Manage_blocked_Bluetooth_devices"

    .line 63
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CN"

    .line 64
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bluetooth_blocklist"

    .line 65
    invoke-static {v0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->readyInfo()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 73
    sget v0, Lcom/android/settings/R$layout;->no_device_icon:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mRootView:Landroid/view/View;

    .line 75
    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->blank_screen:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 81
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->getScreenHeight()I

    move-result p2

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 83
    iget v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr p2, v0

    .line 84
    div-int/lit8 p2, p2, 0x2

    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 85
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->refresh()V

    .line 87
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onPause()V
    .locals 3

    .line 154
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 155
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothBlacklistFragment"

    const-string/jumbo v2, "set scan mode connectable"

    .line 157
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x15

    .line 158
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 92
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "BlackfileForBluetoothDevice"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 94
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "DeviceName"

    .line 98
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 100
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :goto_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v5, Lcom/android/settings/R$string;->bluetooth_move_out_of_blacklist:I

    invoke-virtual {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    if-eqz v2, :cond_0

    .line 104
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v5, Lcom/android/settings/R$string;->bluetooth_message_move_out_of_blacklist:I

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v4, Lcom/android/settings/R$string;->bluetooth_message_move_out_of_blacklist:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 108
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v4, Lcom/android/settings/R$string;->bluetooth_blacklist_remove_device:I

    new-instance v5, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;

    invoke-direct {v5, p0, v1, v0, p1}, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;Landroid/content/SharedPreferences;Ljava/lang/String;Landroidx/preference/Preference;)V

    invoke-virtual {v2, v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->bluetooth_blacklist_cancel_remove_device:I

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$2;-><init>(Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 133
    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 140
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 141
    sget v0, Lcom/android/settings/R$string;->bluetooth_device_blacklist_tital:I

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->updateActionBarTitleView(I)V

    .line 142
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothBlacklistFragment"

    const-string/jumbo v2, "set scan mode connectable and discoverable"

    .line 144
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x17

    .line 145
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
