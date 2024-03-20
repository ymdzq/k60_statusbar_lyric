.class public Lcom/android/settings/MiuiLabSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiLabSettings.java"


# instance fields
.field private mMiuiLabBaseControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/lab/MiuiLabBaseController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiLabSettings;->mMiuiLabBaseControllers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 46
    const-class p0, Lcom/android/settings/MiuiLabSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 51
    sget v0, Lcom/android/settings/R$xml;->miui_lab_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "miui_lab_features"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 56
    iget-object v1, p0, Lcom/android/settings/MiuiLabSettings;->mMiuiLabBaseControllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/lab/MiuiAiPreloadController;

    invoke-direct {v2, v0}, Lcom/android/settings/lab/MiuiAiPreloadController;-><init>(Landroidx/preference/PreferenceGroup;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lcom/android/settings/MiuiLabSettings;->mMiuiLabBaseControllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/lab/MiuiDriveModeController;

    invoke-direct {v2, v0}, Lcom/android/settings/lab/MiuiDriveModeController;-><init>(Landroidx/preference/PreferenceGroup;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lcom/android/settings/MiuiLabSettings;->mMiuiLabBaseControllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/lab/MiuiLabGestureController;

    invoke-direct {v2, v0}, Lcom/android/settings/lab/MiuiLabGestureController;-><init>(Landroidx/preference/PreferenceGroup;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lcom/android/settings/MiuiLabSettings;->mMiuiLabBaseControllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/lab/MiuiAiAsstCallScreenController;

    invoke-direct {v2, v0}, Lcom/android/settings/lab/MiuiAiAsstCallScreenController;-><init>(Landroidx/preference/PreferenceGroup;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lcom/android/settings/MiuiLabSettings;->mMiuiLabBaseControllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/lab/MiuiFlashbackController;

    invoke-direct {v2, v0}, Lcom/android/settings/lab/MiuiFlashbackController;-><init>(Landroidx/preference/PreferenceGroup;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Lcom/android/settings/MiuiLabSettings;->mMiuiLabBaseControllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/lab/MiuiVoipAssistantController;

    invoke-direct {v2, v0}, Lcom/android/settings/lab/MiuiVoipAssistantController;-><init>(Landroidx/preference/PreferenceGroup;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 79
    iget-object p0, p0, Lcom/android/settings/MiuiLabSettings;->mMiuiLabBaseControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/lab/MiuiLabBaseController;

    .line 80
    invoke-virtual {v0}, Lcom/android/settings/lab/MiuiLabBaseController;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 3

    .line 86
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/settings/MiuiLabSettings;->mMiuiLabBaseControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/lab/MiuiLabBaseController;

    .line 89
    invoke-virtual {v2, v0}, Lcom/android/settings/lab/MiuiLabBaseController;->dipatchClick(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiLabSettings;->mMiuiLabBaseControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/lab/MiuiLabBaseController;

    .line 72
    invoke-virtual {v0}, Lcom/android/settings/lab/MiuiLabBaseController;->resume()V

    goto :goto_0

    :cond_1
    return-void
.end method
