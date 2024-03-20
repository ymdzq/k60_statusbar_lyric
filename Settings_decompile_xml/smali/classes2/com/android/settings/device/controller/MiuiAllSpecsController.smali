.class public Lcom/android/settings/device/controller/MiuiAllSpecsController;
.super Lcom/android/settings/device/controller/BaseDeviceInfoController;
.source "MiuiAllSpecsController.java"


# instance fields
.field private mFragment:Lcom/android/settings/device/MiuiMyDeviceSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/device/MiuiMyDeviceSettings;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/BaseDeviceInfoController;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/android/settings/device/controller/MiuiAllSpecsController;->mFragment:Lcom/android/settings/device/MiuiMyDeviceSettings;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "device_more_parameter"

    return-object p0
.end method

.method public gotoAllSpecsFragment()V
    .locals 6

    .line 44
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/android/settings/device/controller/MiuiAllSpecsController;->mFragment:Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiMyDeviceSettings;->getPresenter()Lcom/android/settings/device/DeviceBasicInfoPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isCardsInitComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cards_data"

    .line 47
    invoke-virtual {v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->getCards()[Lcom/android/settings/device/DeviceCardInfo;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings/device/controller/MiuiAllSpecsController;->mFragment:Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->complete_parameters_new:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/android/settings/device/controller/MiuiAllSpecsController;->mFragment:Lcom/android/settings/device/MiuiMyDeviceSettings;

    const-class p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/device/controller/MiuiAllSpecsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/device/controller/MiuiAllSpecsController;->gotoAllSpecsFragment()V

    const/4 p0, 0x1

    return p0

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
