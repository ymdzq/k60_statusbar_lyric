.class public Lcom/android/settings/development/graphicsdriver/GraphicsDriverDashboard;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GraphicsDriverDashboard.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverDashboard$1;

    sget v1, Lcom/android/settings/R$xml;->graphics_driver_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverDashboard$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverDashboard;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "GraphicsDriverDashboard"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x64d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 54
    sget p0, Lcom/android/settings/R$xml;->graphics_driver_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isMiuiSettingsActivity()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    new-instance p1, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverDashboard;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 75
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverDashboard;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 77
    :goto_0
    new-instance p1, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/widget/MainSwitchBarController;

    iget-object v2, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverDashboard;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {v1, v2}, Lcom/android/settings/widget/MainSwitchBarController;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    invoke-direct {p1, v0, v1}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverDashboard;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->graphics_driver_main_switch_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverDashboard;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    return-void
.end method
