.class public Lcom/android/settings/MiuiFragmentThemeHandler;
.super Ljava/lang/Object;
.source "MiuiFragmentThemeHandler.java"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/settings/MiuiFragmentThemeHandler;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private updateThemeRes(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    sget v0, Lcom/android/settings/R$style;->Theme_DayNight_Settings_NoTitle:I

    if-eqz p1, :cond_0

    const-string/jumbo v0, "theme_res_id"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 67
    :cond_0
    sget-boolean p1, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/MiuiFragmentThemeHandler;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/MiuiSettings;

    if-eqz p1, :cond_2

    .line 68
    iget-object p1, p0, Lcom/android/settings/MiuiFragmentThemeHandler;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    sget p1, Lcom/android/settings/R$style;->ShowTitleTheme:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/settings/R$style;->Theme_DayNight_Settings:I

    :goto_0
    move v0, p1

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 72
    iget-object p0, p0, Lcom/android/settings/MiuiFragmentThemeHandler;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of p1, p0, Lmiuix/appcompat/app/Fragment;

    if-eqz p1, :cond_3

    .line 73
    check-cast p0, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    goto :goto_2

    .line 74
    :cond_3
    instance-of p0, p0, Lmiuix/preference/PreferenceFragment;

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiFragmentThemeHandler;->updateThemeRes(Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 34
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c    # @android:id/home

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiFragmentThemeHandler;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v0, p1, Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 37
    check-cast p1, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 43
    :cond_2
    instance-of v0, p1, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_4

    .line 44
    iget-object v0, p0, Lcom/android/settings/MiuiFragmentThemeHandler;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 45
    iget-object p0, p0, Lcom/android/settings/MiuiFragmentThemeHandler;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 51
    :cond_4
    iget-object p0, p0, Lcom/android/settings/MiuiFragmentThemeHandler;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 54
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    iget-object p0, p0, Lcom/android/settings/MiuiFragmentThemeHandler;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v0, p0, Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_0

    .line 27
    check-cast p0, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getThemedContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result p0

    const-string/jumbo v0, "theme_res_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 28
    :cond_0
    instance-of p0, p0, Lmiuix/preference/PreferenceFragment;

    :goto_0
    return-void
.end method
