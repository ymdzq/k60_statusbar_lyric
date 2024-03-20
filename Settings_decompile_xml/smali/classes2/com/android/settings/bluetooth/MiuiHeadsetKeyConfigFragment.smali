.class public final Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "MiuiHeadsetKeyConfigFragment.java"


# instance fields
.field private PRESS_KEY_INIT:Ljava/lang/String;

.field private final mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceConnected:Z

.field private mDeviceId:Ljava/lang/String;

.field private mDoubleClickLeft:Lmiuix/preference/DropDownPreference;

.field private mDoubleClickRight:Lmiuix/preference/DropDownPreference;

.field public mDropdownLeftKey:I

.field private mDropdownPrefLeft:Lmiuix/preference/DropDownPreference;

.field private mDropdownPrefRight:Lmiuix/preference/DropDownPreference;

.field public mDropdownRightKey:I

.field private mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

.field public mLeftDoubleKey:I

.field public mLeftKey:Z

.field public mLeftTripleKey:I

.field private final mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field public mRightDoubleKey:I

.field public mRightKey:Z

.field public mRightTripleKey:I

.field private mRootView:Landroid/view/View;

.field private mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

.field private mSupport:Ljava/lang/String;

.field private mTripleClickLeft:Lmiuix/preference/DropDownPreference;

.field private mTripleClickRight:Lmiuix/preference/DropDownPreference;

.field private pref_left:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private pref_right:Lcom/android/settingslib/miuisettings/preference/ValuePreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceConnected(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoubleClickLeft(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lmiuix/preference/DropDownPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickLeft:Lmiuix/preference/DropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoubleClickRight(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lmiuix/preference/DropDownPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickRight:Lmiuix/preference/DropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTripleClickLeft(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lmiuix/preference/DropDownPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickLeft:Lmiuix/preference/DropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTripleClickRight(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lmiuix/preference/DropDownPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickRight:Lmiuix/preference/DropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDeviceConnected(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPreferenceEnable(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->setPreferenceEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateKeyConfig(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->updateKeyConfig()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v0, ""

    .line 102
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mSupport:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    const-string v0, "000011101110"

    .line 104
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftDoubleKey:I

    .line 117
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftTripleKey:I

    .line 118
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightDoubleKey:I

    .line 119
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightTripleKey:I

    .line 120
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftKey:Z

    .line 121
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownLeftKey:I

    .line 122
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightKey:Z

    .line 123
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownRightKey:I

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceConnected:Z

    .line 267
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private getRadioButtonConfig()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 621
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "MiuiHeadsetKeyConfigFragment"

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x6a

    .line 625
    invoke-interface {v1, v4, v0, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x69

    invoke-interface {v0, v4, v1, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 629
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    .line 631
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->saveCurrentKeyConfig(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get radio button is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 622
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioButtonConfig(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->PRESS_KEY_INIT:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 637
    :catch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    return-object p0
.end method

.method private gotoPressKeyFragment(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 610
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;-><init>()V

    .line 615
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->setTitleKey(Ljava/lang/String;)V

    .line 616
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->changeFragment(Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "MiuiHeadsetKeyConfigFragment"

    const-string p1, "go to fragment presskey, it\'s title is null"

    .line 611
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 4

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 222
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 223
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hexToByteArray error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiHeadsetKeyConfigFragment"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private initKeyConfig()V
    .locals 5

    .line 192
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->getRadioButtonConfig()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radio button is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiHeadsetKeyConfigFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 195
    aget-byte v2, v0, v1

    iput v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftDoubleKey:I

    const/4 v2, 0x2

    .line 196
    aget-byte v2, v0, v2

    iput v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftTripleKey:I

    const/4 v2, 0x1

    .line 197
    aget-byte v3, v0, v2

    iput v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightDoubleKey:I

    const/4 v3, 0x3

    .line 198
    aget-byte v3, v0, v3

    iput v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightTripleKey:I

    const/4 v3, 0x4

    .line 199
    aget-byte v3, v0, v3

    if-eqz v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftKey:Z

    .line 200
    iput v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownLeftKey:I

    const/16 v3, 0x8

    .line 201
    aget-byte v0, v0, v3

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightKey:Z

    .line 202
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownRightKey:I

    return-void
.end method

.method private initResource()V
    .locals 3

    const-string v0, "left_double"

    .line 365
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickLeft:Lmiuix/preference/DropDownPreference;

    const-string/jumbo v0, "right_double"

    .line 366
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickRight:Lmiuix/preference/DropDownPreference;

    const-string v0, "left_triple"

    .line 367
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickLeft:Lmiuix/preference/DropDownPreference;

    const-string/jumbo v0, "right_triple"

    .line 368
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickRight:Lmiuix/preference/DropDownPreference;

    .line 370
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickLeft:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_0

    .line 371
    iget v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftDoubleKey:I

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickLeft:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickRight:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_1

    .line 375
    iget v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightDoubleKey:I

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickRight:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickLeft:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_2

    .line 379
    iget v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftTripleKey:I

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 380
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickLeft:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickRight:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_3

    .line 383
    iget v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightTripleKey:I

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickRight:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sHeadset(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "long_press_right_headset"

    const-string v2, "long_press_left_headset"

    if-eqz v0, :cond_5

    .line 389
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownPrefLeft:Lmiuix/preference/DropDownPreference;

    .line 390
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownPrefRight:Lmiuix/preference/DropDownPreference;

    .line 391
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownPrefLeft:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_4

    .line 392
    iget v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownLeftKey:I

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownPrefLeft:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 395
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownPrefRight:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_8

    .line 396
    iget v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownRightKey:I

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownPrefRight:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .line 400
    :cond_5
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->pref_left:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 401
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->pref_right:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 402
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->pref_left:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftKey:Z

    if-eqz v1, :cond_6

    sget v1, Lcom/android/settings/R$string;->miheadset_key_config_noise_control:I

    goto :goto_0

    .line 403
    :cond_6
    sget v1, Lcom/android/settings/R$string;->miheadset_key_config_call_ai:I

    .line 402
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->pref_right:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightKey:Z

    if-eqz v1, :cond_7

    sget v1, Lcom/android/settings/R$string;->miheadset_key_config_noise_control:I

    goto :goto_1

    .line 405
    :cond_7
    sget v1, Lcom/android/settings/R$string;->miheadset_key_config_call_ai:I

    .line 404
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    .line 407
    :cond_8
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceConnected:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    .line 408
    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v0, 0x1

    .line 407
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->setPreferenceEnable(Z)V

    return-void
.end method

.method private saveCurrentKeyConfig(Ljava/lang/String;)V
    .locals 2

    .line 641
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->setDeviceConfig(Ljava/lang/String;)V

    .line 643
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Headset_Key_Init"

    .line 644
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Headset_DeviceId"

    .line 645
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private setPreferenceEnable(Z)V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreferenceEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetKeyConfigFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickLeft:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickRight:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickLeft:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickRight:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 319
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownPrefLeft:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 320
    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownPrefRight:Lmiuix/preference/DropDownPreference;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->pref_left:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 323
    :cond_6
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->pref_right:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method private updateKeyConfig()V
    .locals 5

    const-string v0, "MiuiHeadsetKeyConfigFragment"

    .line 591
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateKeyConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_5

    .line 593
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->getRadioButtonConfig()Ljava/lang/String;

    move-result-object v1

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftDoubleKey:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightDoubleKey:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftTripleKey:I

    .line 595
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightTripleKey:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sHeadset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownLeftKey:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "0000"

    const-string v4, "1000"

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownRightKey:I

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 599
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 601
    :goto_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x69

    invoke-interface {v2, v4, v1, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 602
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->saveCurrentKeyConfig(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get device load list failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 129
    const-class p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MiuiHeadsetKeyConfigFragment"

    if-nez v0, :cond_4

    const-string v0, "gesture"

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    .line 234
    invoke-static {v0, v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "K77s device ID "

    .line 239
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget p0, Lcom/android/settings/R$xml;->headset_key_config_tws_k77s:I

    return p0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "K73 device ID "

    .line 243
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget p0, Lcom/android/settings/R$xml;->headset_key_config:I

    return p0

    .line 246
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "K75 device ID "

    .line 247
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget p0, Lcom/android/settings/R$xml;->headset_key_config:I

    return p0

    .line 250
    :cond_3
    sget p0, Lcom/android/settings/R$xml;->headset_key_config:I

    return p0

    :cond_4
    :goto_0
    const-string p0, "K76 device ID "

    .line 235
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget p0, Lcom/android/settings/R$xml;->headset_key_config_TWS01:I

    return p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 135
    check-cast p1, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 136
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    .line 137
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getSupport()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mSupport:Ljava/lang/String;

    .line 138
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    .line 139
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDeviceConfig()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    .line 140
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getCachedBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Headset_Key_Init"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Headset_DeviceId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getArguments(), init key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetKeyConfigFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 167
    sget v0, Lcom/android/settings/R$layout;->headset_key_config_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRootView:Landroid/view/View;

    .line 169
    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 171
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 177
    sget p2, Lcom/android/settings/R$string;->miheadset_key_config_gesture_control:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "device_connected"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDeviceConnected:Z

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->initKeyConfig()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->initResource()V

    .line 188
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 329
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 348
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_2

    .line 349
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    if-eqz p1, :cond_2

    .line 350
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDeviceConfig()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    .line 351
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->initKeyConfig()V

    .line 352
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->pref_left:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftKey:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->miheadset_key_config_noise_control:I

    goto :goto_0

    .line 353
    :cond_0
    sget v0, Lcom/android/settings/R$string;->miheadset_key_config_call_ai:I

    .line 352
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    .line 354
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->pref_right:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightKey:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settings/R$string;->miheadset_key_config_noise_control:I

    goto :goto_1

    .line 355
    :cond_1
    sget v0, Lcom/android/settings/R$string;->miheadset_key_config_call_ai:I

    .line 354
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    .line 356
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickLeft:Lmiuix/preference/DropDownPreference;

    iget v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftDoubleKey:I

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 357
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickLeft:Lmiuix/preference/DropDownPreference;

    iget v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftTripleKey:I

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 358
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDoubleClickRight:Lmiuix/preference/DropDownPreference;

    iget v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightDoubleKey:I

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 359
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mTripleClickRight:Lmiuix/preference/DropDownPreference;

    iget p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightTripleKey:I

    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 343
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 0

    .line 413
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "long_press_right_headset"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "long_press_left_headset"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "left"

    .line 415
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->gotoPressKeyFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "right"

    .line 419
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->gotoPressKeyFragment(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 334
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 337
    sget v0, Lcom/android/settings/R$string;->miheadset_key_config_gesture_control:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 211
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 212
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->initKeyConfig()V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->initResource()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity define service error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiHeadsetKeyConfigFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 255
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.bluetooth.ACTION.MMA_STATUS_CHANGED"

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
