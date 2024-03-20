.class public Lcom/android/settings/display/ScreenResolutionManager;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenResolutionManager.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private mFHDHeight:I

.field private mFHDWidth:I

.field private mInitalDensity:I

.field private mInitalPoint:Landroid/graphics/Point;

.field private mQHDHeight:I

.field private mQHDWidth:I

.field mSaveBatteryCategory:Landroidx/preference/PreferenceCategory;

.field mSaveBatteryMode:Landroidx/preference/CheckBoxPreference;

.field private mScreenResolutionSwitching:Z

.field mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic $r8$lambda$kYmDe1rDv91e7uiErka2Z0ua4so(Lcom/android/settings/display/ScreenResolutionManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenResolutionManager;->lambda$onResume$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x438

    .line 53
    iput v0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mFHDWidth:I

    const/16 v0, 0x960

    .line 54
    iput v0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mFHDHeight:I

    const/16 v0, 0x5a0

    .line 55
    iput v0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mQHDWidth:I

    const/16 v0, 0xc80

    .line 56
    iput v0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mQHDHeight:I

    return-void
.end method

.method private calculateHeightFromWidth(I)I
    .locals 2

    .line 180
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    int-to-float p0, p1

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private initSupportSolution()V
    .locals 3

    const-string/jumbo v0, "screen_resolution_supported"

    .line 170
    invoke-static {v0}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 172
    aget v1, v0, v1

    iput v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mQHDWidth:I

    .line 173
    invoke-direct {p0, v1}, Lcom/android/settings/display/ScreenResolutionManager;->calculateHeightFromWidth(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mQHDHeight:I

    .line 174
    aget v0, v0, v2

    iput v0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mFHDWidth:I

    .line 175
    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenResolutionManager;->calculateHeightFromWidth(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mFHDHeight:I

    :cond_0
    return-void
.end method

.method private isCompatMode()Z
    .locals 2

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "miui_screen_compat"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isQhdMode()Z
    .locals 3

    const-string/jumbo v0, "persist.sys.miui_resolution"

    const/4 v1, 0x0

    .line 215
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 218
    iget p0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mFHDWidth:I

    if-ne v0, p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private synthetic lambda$onResume$0()V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void
.end method

.method private switchResolution(I)V
    .locals 3

    .line 186
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenResolutionManager;->calculateHeightFromWidth(I)I

    move-result v0

    .line 187
    iget v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mInitalDensity:I

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/display/ScreenResolutionManager;->mInitalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/settings/display/ScreenResolutionManager;->switchResolution(IIII)V

    return-void
.end method

.method private switchResolution(IIII)V
    .locals 5

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 195
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const-string v2, "ScreenResolutionManager"

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchResolution [ displayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", width:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", density:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    const/16 p2, 0xff

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    throw p0

    .line 209
    :catch_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 1

    .line 114
    iget-boolean p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mScreenResolutionSwitching:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mScreenResolutionSwitching:Z

    .line 116
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/display/ScreenResolutionPreference;->setSwitchEnabled(Z)V

    .line 117
    sget p1, Lcom/android/settings/R$id;->resolution_fhd:I

    if-ne p2, p1, :cond_0

    .line 118
    iget p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mFHDWidth:I

    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenResolutionManager;->switchResolution(I)V

    goto :goto_0

    .line 119
    :cond_0
    sget p1, Lcom/android/settings/R$id;->resolution_qhd:I

    if-ne p2, p1, :cond_1

    .line 120
    iget p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mQHDWidth:I

    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenResolutionManager;->switchResolution(I)V

    goto :goto_0

    :cond_1
    const-string p0, "ScreenResolutionManager"

    const-string p1, "Switch resolution error."

    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Settings onCreate"

    const-string v1, "ScreenResolutionManager"

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget v0, Lcom/android/settings/R$xml;->full_screen_resolution_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "screen_resolution_switching"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mScreenResolutionSwitching:Z

    .line 75
    :cond_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mDisplay:Landroid/view/Display;

    const-string/jumbo p1, "window"

    .line 77
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 78
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mInitalPoint:Landroid/graphics/Point;

    .line 80
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mInitalDensity:I

    .line 81
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/settings/display/ScreenResolutionManager;->mInitalPoint:Landroid/graphics/Point;

    invoke-interface {p1, v0, v2}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Exception: "

    .line 84
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenResolutionManager;->initSupportSolution()V

    const-string p1, "full_screen_resolution_selection"

    .line 87
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/ScreenResolutionPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    .line 89
    invoke-direct {p0}, Lcom/android/settings/display/ScreenResolutionManager;->isQhdMode()Z

    move-result p1

    .line 90
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    iget v2, p0, Lcom/android/settings/display/ScreenResolutionManager;->mQHDWidth:I

    iget v3, p0, Lcom/android/settings/display/ScreenResolutionManager;->mQHDHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/display/ScreenResolutionPreference;->setQHDSolution(II)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    iget v2, p0, Lcom/android/settings/display/ScreenResolutionManager;->mFHDWidth:I

    iget v3, p0, Lcom/android/settings/display/ScreenResolutionManager;->mFHDHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/display/ScreenResolutionPreference;->setFHDSolution(II)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/display/ScreenResolutionPreference;->setQhdChecked(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    sget v2, Lcom/android/settings/R$drawable;->qhd_image:I

    invoke-virtual {v1, v2}, Lcom/android/settings/display/ScreenResolutionPreference;->setQhdImage(I)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    sget v2, Lcom/android/settings/R$drawable;->fhd_image:I

    invoke-virtual {v1, v2}, Lcom/android/settings/display/ScreenResolutionPreference;->setFhdImage(I)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    sget v2, Lcom/android/settings/R$string;->resolution_qhd:I

    invoke-virtual {v1, v2}, Lcom/android/settings/display/ScreenResolutionPreference;->setQhdText(I)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    sget v2, Lcom/android/settings/R$string;->resolution_fhd:I

    invoke-virtual {v1, v2}, Lcom/android/settings/display/ScreenResolutionPreference;->setFhdText(I)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    sget v2, Lcom/android/settings/R$string;->resolution_qhd_summary:I

    invoke-virtual {v1, v2}, Lcom/android/settings/display/ScreenResolutionPreference;->setQhdTextSummary(I)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    sget v2, Lcom/android/settings/R$string;->resolution_fhd_summary:I

    invoke-virtual {v1, v2}, Lcom/android/settings/display/ScreenResolutionPreference;->setFhdTextSummary(I)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/display/ScreenResolutionPreference;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    iget-boolean v2, p0, Lcom/android/settings/display/ScreenResolutionManager;->mScreenResolutionSwitching:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/display/ScreenResolutionPreference;->setSwitchEnabled(Z)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSelectResolution:Lcom/android/settings/display/ScreenResolutionPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v0, "save_battery_mode_category"

    .line 103
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSaveBatteryCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "save_battery_mode"

    .line 104
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSaveBatteryMode:Landroidx/preference/CheckBoxPreference;

    .line 105
    invoke-direct {p0}, Lcom/android/settings/display/ScreenResolutionManager;->isCompatMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSaveBatteryMode:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    if-nez p1, :cond_1

    .line 108
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mSaveBatteryCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 159
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    const-string/jumbo v0, "miui_screen_compat"

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return p2
.end method

.method public onResume()V
    .locals 3

    .line 129
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 130
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->screen_resolution_title:I

    .line 132
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->resolution_sub_title:I

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->actionbar_item_placeholder:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    .line 141
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mScreenResolutionSwitching:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mScreenResolutionSwitching:Z

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/settings/display/ScreenResolutionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ScreenResolutionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/ScreenResolutionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    iget-boolean p0, p0, Lcom/android/settings/display/ScreenResolutionManager;->mScreenResolutionSwitching:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "screen_resolution_switching"

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
