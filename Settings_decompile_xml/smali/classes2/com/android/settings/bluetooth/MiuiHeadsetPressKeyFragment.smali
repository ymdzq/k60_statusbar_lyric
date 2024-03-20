.class public final Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "MiuiHeadsetPressKeyFragment.java"


# instance fields
.field public PRESS_KEY_INIT:Ljava/lang/String;

.field private callAiIsremove:Z

.field private final mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mCallAI:Lmiuix/preference/RadioButtonPreference;

.field private mCheckList:Landroid/widget/LinearLayout;

.field private mClose:Landroid/widget/CheckBox;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceId:Ljava/lang/String;

.field private mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

.field private mLL:Ljava/lang/String;

.field public mLeftClose:Z

.field public mLeftDoubleKey:I

.field public mLeftKey:Z

.field public mLeftOpenAnc:Z

.field public mLeftTransparent:Z

.field public mLeftTripleKey:I

.field private mNoiseControl:Lmiuix/preference/RadioButtonPreference;

.field private mOpenAnc:Landroid/widget/CheckBox;

.field private final mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mRR:Ljava/lang/String;

.field public mRightClose:Z

.field public mRightDoubleKey:I

.field public mRightKey:Z

.field public mRightOpenAnc:Z

.field public mRightTransparent:Z

.field public mRightTripleKey:I

.field private mRootView:Landroid/view/View;

.field private mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

.field private mSupport:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTransparent:Landroid/widget/CheckBox;

.field private pressKeyGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallAI(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCallAI:Lmiuix/preference/RadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClose(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mClose:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNoiseControl(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mNoiseControl:Lmiuix/preference/RadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpenAnc(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mOpenAnc:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransparent(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTransparent:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLL(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLL:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRR(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRR:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbooleanToString(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Z)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->booleanToString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveNoiseControlList(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->removeNoiseControlList(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPreferenceEnable(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->setPreferenceEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNoiseControlList(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->showNoiseControlList(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateANCConfig(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->updateANCConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateKeyPressConfig(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->updateKeyPressConfig()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftDoubleKey:I

    .line 80
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTripleKey:I

    .line 81
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightDoubleKey:I

    .line 82
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTripleKey:I

    .line 83
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftKey:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftOpenAnc:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTransparent:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftClose:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightKey:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightOpenAnc:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTransparent:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightClose:Z

    const-string v1, ""

    .line 92
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mSupport:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDeviceId:Ljava/lang/String;

    const-string v1, "000011101110"

    .line 94
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    const-string v1, "left"

    .line 105
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    const-string v1, "FF"

    .line 106
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLL:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRR:Ljava/lang/String;

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->callAiIsremove:Z

    .line 201
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private booleanToString(Z)Ljava/lang/String;
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method private getRadioButtonConfig()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 748
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "MiuiHeadsetPressKeyFragment"

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x6a

    .line 752
    invoke-interface {v1, v4, v0, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 753
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 754
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x69

    invoke-interface {v0, v4, v1, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 756
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->saveFragmentInitInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get radio button is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 749
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioButtonConfig(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

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

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->PRESS_KEY_INIT:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 764
    :catch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    return-object p0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 4

    .line 372
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 374
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 375
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

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hexToByteArray failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiHeadsetPressKeyFragment"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private initRadioButton(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo p1, "press_key_group"

    .line 290
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->pressKeyGroup:Landroidx/preference/PreferenceGroup;

    const-string p1, "config_call_mi_ai"

    .line 291
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCallAI:Lmiuix/preference/RadioButtonPreference;

    const-string p1, "config_noise_control"

    .line 292
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mNoiseControl:Lmiuix/preference/RadioButtonPreference;

    const-string p1, "0201010001"

    .line 293
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "MiuiHeadsetPressKeyFragment"

    if-eqz p1, :cond_0

    const-string p1, "mDeviceId equals TWSID_GL"

    .line 294
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->pressKeyGroup:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCallAI:Lmiuix/preference/RadioButtonPreference;

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->callAiIsremove:Z

    const/4 p1, 0x0

    .line 298
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCallAI:Lmiuix/preference/RadioButtonPreference;

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCallAI:Lmiuix/preference/RadioButtonPreference;

    if-eqz p1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 305
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mNoiseControl:Lmiuix/preference/RadioButtonPreference;

    if-eqz p1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 316
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-nez p1, :cond_3

    .line 317
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 319
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->getRadioButtonConfig()Ljava/lang/String;

    move-result-object p1

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radio button init to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->refeshFragment(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get radio press key newConfig failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initTitle()V
    .locals 3

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 282
    sget p0, Lcom/android/settings/R$string;->miheadset_key_config_press_left:I

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    const-string/jumbo v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 284
    sget p0, Lcom/android/settings/R$string;->miheadset_key_config_press_right:I

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refeshFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "MiuiHeadsetPressKeyFragment"

    .line 329
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refeshFragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 331
    aget-byte v3, v1, v2

    iput v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftDoubleKey:I

    const/4 v3, 0x1

    .line 332
    aget-byte v4, v1, v3

    iput v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTripleKey:I

    const/4 v4, 0x2

    .line 333
    aget-byte v4, v1, v4

    iput v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightDoubleKey:I

    const/4 v4, 0x3

    .line 334
    aget-byte v4, v1, v4

    iput v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTripleKey:I

    const/4 v4, 0x4

    .line 335
    aget-byte v4, v1, v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftKey:Z

    const/4 v4, 0x5

    .line 336
    aget-byte v4, v1, v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTransparent:Z

    const/4 v4, 0x6

    .line 337
    aget-byte v4, v1, v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftOpenAnc:Z

    const/4 v4, 0x7

    .line 338
    aget-byte v4, v1, v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftClose:Z

    const/16 v4, 0x8

    .line 339
    aget-byte v4, v1, v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightKey:Z

    const/16 v4, 0x9

    .line 340
    aget-byte v4, v1, v4

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_5
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTransparent:Z

    const/16 v4, 0xa

    .line 341
    aget-byte v4, v1, v4

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_6

    :cond_6
    move v4, v2

    :goto_6
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightOpenAnc:Z

    const/16 v4, 0xb

    .line 342
    aget-byte v1, v1, v4

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightClose:Z

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    iput-object p2, v1, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->mDeviceConfig:Ljava/lang/String;

    .line 346
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCallAI:Lmiuix/preference/RadioButtonPreference;

    if-eqz p2, :cond_8

    invoke-virtual {p2, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 347
    :cond_8
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mNoiseControl:Lmiuix/preference/RadioButtonPreference;

    if-eqz p2, :cond_9

    invoke-virtual {p2, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_9
    const-string p2, "left"

    .line 348
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCallAI:Lmiuix/preference/RadioButtonPreference;

    if-nez p2, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->callAiIsremove:Z

    if-eqz v1, :cond_c

    :cond_a
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mNoiseControl:Lmiuix/preference/RadioButtonPreference;

    if-eqz v1, :cond_c

    .line 349
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftKey:Z

    if-nez v2, :cond_b

    if-eqz p2, :cond_f

    .line 350
    invoke-virtual {p2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_8

    .line 352
    :cond_b
    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 354
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->showNoiseControlList(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    const-string/jumbo p2, "right"

    .line 356
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCallAI:Lmiuix/preference/RadioButtonPreference;

    if-nez p2, :cond_d

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->callAiIsremove:Z

    if-eqz v1, :cond_f

    :cond_d
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mNoiseControl:Lmiuix/preference/RadioButtonPreference;

    if-eqz v1, :cond_f

    .line 357
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightKey:Z

    if-nez v2, :cond_e

    if-eqz p2, :cond_f

    .line 358
    invoke-virtual {p2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_8

    .line 360
    :cond_e
    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 362
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->showNoiseControlList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get radio press key newConfig failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_8
    return-void
.end method

.method private removeNoiseControlList(Ljava/lang/String;)V
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCheckList:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private saveFragmentInitInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 768
    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    .line 769
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->setDeviceConfig(Ljava/lang/String;)V

    .line 771
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Headset_Side"

    .line 772
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Headset_Key_Init"

    .line 773
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Headset_DeviceId"

    .line 774
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private setPreferenceEnable(Z)V
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreferenceEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetPressKeyFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->pressKeyGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCheckList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mOpenAnc:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTransparent:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 251
    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mClose:Landroid/widget/CheckBox;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method private showNoiseControlList(Ljava/lang/String;)V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCheckList:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->miheadset_key_openAnc_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mOpenAnc:Landroid/widget/CheckBox;

    .line 459
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->miheadset_key_transparent_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTransparent:Landroid/widget/CheckBox;

    .line 460
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->miheadset_key_close_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mClose:Landroid/widget/CheckBox;

    .line 462
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mOpenAnc:Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTransparent:Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "left"

    .line 467
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mOpenAnc:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftOpenAnc:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 469
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTransparent:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTransparent:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 470
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mClose:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftClose:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "right"

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 472
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mOpenAnc:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightOpenAnc:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 473
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTransparent:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTransparent:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 474
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mClose:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightClose:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 477
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mOpenAnc:Landroid/widget/CheckBox;

    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 539
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTransparent:Landroid/widget/CheckBox;

    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$4;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 601
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mClose:Landroid/widget/CheckBox;

    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$5;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "MiuiHeadsetPressKeyFragment"

    const-string p1, "Checkbox init failed!"

    .line 463
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateANCConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "MiuiHeadsetPressKeyFragment"

    .line 724
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftOpenAnc:Z

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTransparent:Z

    if-ne v1, v2, :cond_0

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftClose:Z

    if-eqz v1, :cond_7

    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightOpenAnc:Z

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTransparent:Z

    if-ne v1, v2, :cond_1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightClose:Z

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 726
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_2

    goto :goto_2

    .line 731
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->updateDeviceConfig()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo p0, "updateDeviceConfig failed!"

    .line 733
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 737
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 738
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update ANC config+ "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, v2, p1, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_5

    .line 727
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Send ANC config failed: Service: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    move p2, v2

    goto :goto_3

    :cond_5
    move p2, v1

    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",Device: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 742
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "update ANC config failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    return-void
.end method

.method private updateDeviceConfig()Z
    .locals 5

    const-string v0, "MiuiHeadsetPressKeyFragment"

    .line 673
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftDoubleKey:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTripleKey:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightDoubleKey:I

    .line 674
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTripleKey:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftKey:Z

    .line 675
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTransparent:Z

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftOpenAnc:Z

    .line 676
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftClose:Z

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightKey:Z

    .line 677
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTransparent:Z

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightOpenAnc:Z

    .line 678
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightClose:Z

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update Device newConfig+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    .line 681
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x69

    invoke-interface {v2, v4, v1, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 682
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->saveFragmentInitInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update device key config failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateKeyPressConfig()V
    .locals 6

    const-string v0, "FF"

    const-string v1, "MiuiHeadsetPressKeyFragment"

    .line 694
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftOpenAnc:Z

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTransparent:Z

    if-ne v2, v3, :cond_0

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftClose:Z

    if-eqz v2, :cond_8

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightOpenAnc:Z

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTransparent:Z

    if-ne v2, v3, :cond_1

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightClose:Z

    if-eqz v2, :cond_8

    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 696
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_2

    goto :goto_2

    .line 701
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->updateDeviceConfig()Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo p0, "updateDeviceConfig failed!"

    .line 703
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 707
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "03"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRR:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 708
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRR:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo p0, "no press key config to update "

    .line 709
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 712
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateKeyPressConfig: update key config+ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRR:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLL:Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3, v2, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_4

    .line 697
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send press key config failed: Service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",Device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update press key config failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 111
    const-class p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 184
    sget p0, Lcom/android/settings/R$xml;->headset_key_press_config:I

    return p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 117
    check-cast p1, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 118
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    .line 120
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getCachedBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 121
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getSupport()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mSupport:Ljava/lang/String;

    .line 122
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Headset_Side"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "Headset_Key_Init"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    .line 135
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "Headset_DeviceId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDeviceId:Ljava/lang/String;

    .line 138
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getArguments(), mTitle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", init key:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->PRESS_KEY_INIT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiHeadsetPressKeyFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "MiuiHeadsetPressKeyFragment"

    .line 147
    sget v1, Lcom/android/settings/R$layout;->headset_key_press_config:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRootView:Landroid/view/View;

    .line 148
    sget v2, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 150
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-nez p1, :cond_0

    const-string p1, "Service is null"

    .line 153
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miheadset_checklist:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mCheckList:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    const-string p1, "CheckList is null"

    .line 155
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "miui headset activity service error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->initTitle()V

    .line 163
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->initRadioButton(Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    sget v1, Lcom/android/settings/R$string;->miheadset_key_config_gesture_control:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 261
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 272
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 266
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->initTitle()V

    return-void
.end method

.method public onServiceConnected()V
    .locals 4

    const-string v0, "MiuiHeadsetPressKeyFragment"

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 173
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 174
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->getRadioButtonConfig()Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected: radio button is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->refeshFragment(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity define service error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 189
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.bluetooth.ACTION.MMA_STATUS_CHANGED"

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 197
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setTitleKey(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mTitle:Ljava/lang/String;

    return-void
.end method
