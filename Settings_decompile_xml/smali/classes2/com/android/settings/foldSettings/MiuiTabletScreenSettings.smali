.class public Lcom/android/settings/foldSettings/MiuiTabletScreenSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MiuiTabletScreenSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/android/settings/foldSettings/MiuiTabletScreenSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/foldSettings/MiuiTabletScreenSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v1, Lcom/android/settings/connection/MiMirrorController;

    const-string/jumbo v2, "mimirror_settings"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/connection/MiMirrorController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/android/settings/applicationmode/AppController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v2, "application_mode"

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/applicationmode/AppController;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance p0, Lcom/android/settings/foldSettings/MiuiTofController;

    const-string/jumbo v1, "miui_tof_screen_off"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/foldSettings/MiuiTofController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance p0, Lcom/android/settings/foldSettings/MiuiTofController;

    const-string/jumbo v1, "miui_tof_screen_on"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/foldSettings/MiuiTofController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance p0, Lcom/android/settings/foldSettings/MiuiTofController;

    const-string v1, "gaze_lock_screen"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/foldSettings/MiuiTofController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected displayResourceTilesToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->displayResourceTilesToScreen(Landroidx/preference/PreferenceScreen;)V

    .line 37
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_0

    const-string p0, "device_ime_keyboard"

    .line 38
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 31
    sget-object p0, Lcom/android/settings/foldSettings/MiuiTabletScreenSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 26
    sget p0, Lcom/android/settings/R$xml;->tablet_screen_settings:I

    return p0
.end method
