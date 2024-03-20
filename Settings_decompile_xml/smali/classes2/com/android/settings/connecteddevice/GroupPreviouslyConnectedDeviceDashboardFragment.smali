.class public Lcom/android/settings/connecteddevice/GroupPreviouslyConnectedDeviceDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GroupPreviouslyConnectedDeviceDashboardFragment.java"


# instance fields
.field private mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 55
    sget p0, Lcom/android/settings/R$string;->group_help_url_previously_connected_devices:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "GroupPreviouslyConnectedDeviceDashboardFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 60
    sget p0, Lcom/android/settings/R$xml;->previously_connected_group_devices:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/android/settings/bluetooth/GroupUtils;

    invoke-direct {v0, p1}, Lcom/android/settings/bluetooth/GroupUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupPreviouslyConnectedDeviceDashboardFragment;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 77
    const-class p1, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupPreviouslyConnectedDeviceDashboardFragment;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/GroupUtils;->isHidePCGGroups()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
