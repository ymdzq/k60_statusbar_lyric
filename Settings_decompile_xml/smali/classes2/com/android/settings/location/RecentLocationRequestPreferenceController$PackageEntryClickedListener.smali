.class Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationRequestPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/RecentLocationRequestPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private final mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private final mPackage:Ljava/lang/String;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 60
    iput-object p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 67
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "package"

    .line 70
    iget-object v1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    .line 74
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "is_xspace_app"

    .line 76
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 80
    :goto_0
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v4, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v4, Lcom/android/settings/applications/InstalledAppDetailsFragment;

    .line 83
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 84
    invoke-virtual {v2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->application_info_label:I

    .line 85
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 86
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v3
.end method
