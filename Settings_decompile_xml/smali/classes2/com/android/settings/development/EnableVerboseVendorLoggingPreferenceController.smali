.class public Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "EnableVerboseVendorLoggingPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final DBG:Z

.field private static final DUMP_STATE_AIDL_SERVICE_NAME:Ljava/lang/String;


# instance fields
.field private mDumpstateHalVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "EnableVerboseVendorLoggingPreferenceController"

    const/4 v1, 0x3

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/dumpstate/IDumpstateDevice;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DUMP_STATE_AIDL_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    return-void
.end method


# virtual methods
.method getDumpstateDeviceAidlService()Landroid/hardware/dumpstate/IDumpstateDevice;
    .locals 3

    .line 182
    :try_start_0
    sget-object v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DUMP_STATE_AIDL_SERVICE_NAME:Ljava/lang/String;

    .line 183
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/hardware/dumpstate/IDumpstateDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/dumpstate/IDumpstateDevice;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    sget-boolean v1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get AIDL service fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnableVerboseVendorLoggingPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 189
    iput v1, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    :cond_1
    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "enable_verbose_vendor_logging"

    return-object p0
.end method

.method getVerboseLoggingEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->isIDumpstateDeviceAidlServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->isIDumpstateDeviceV1_1ServiceAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isIDumpstateDeviceAidlServiceAvailable()Z
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceAidlService()Landroid/hardware/dumpstate/IDumpstateDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isIDumpstateDeviceV1_1ServiceAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->setVerboseLoggingEnabled(Z)V

    .line 87
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 72
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->setVerboseLoggingEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method setVerboseLoggingEnabled(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getVerboseLoggingEnabled()Z

    move-result p1

    .line 80
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
