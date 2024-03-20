.class public Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "PreferenceFragment.java"


# instance fields
.field private mHavePrefs:Z

.field private mOnUnbindCalled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->mOnUnbindCalled:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->mHavePrefs:Z

    return-void
.end method

.method private static dispatchOnBindPreferences(Landroidx/preference/PreferenceGroup;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 93
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 96
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 97
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 98
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-static {v2, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->dispatchOnBindPreferences(Landroidx/preference/PreferenceGroup;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static dispatchOnDetach(Landroidx/preference/PreferenceGroup;)V
    .locals 4

    .line 79
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 82
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 83
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 84
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-static {v2}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->dispatchOnDetach(Landroidx/preference/PreferenceGroup;)V

    goto :goto_1

    .line 85
    :cond_0
    instance-of v3, v2, Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;

    if-eqz v3, :cond_1

    .line 86
    check-cast v2, Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;

    invoke-interface {v2}, Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;->onDetached()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 1

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 139
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 0

    .line 149
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onBindPreferences()V

    .line 31
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->dispatchOnBindPreferences(Landroidx/preference/PreferenceGroup;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 107
    invoke-super {p0, p1, p2, p3}, Lmiuix/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 55
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroyView()V

    .line 56
    iget-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->dispatchOnDetach(Landroidx/preference/PreferenceGroup;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onUnbindPreferences()V

    :cond_1
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

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

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected onUnbindPreferences()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    .line 39
    iget-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->mHavePrefs:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->mOnUnbindCalled:Z

    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 47
    iget-boolean p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->mOnUnbindCalled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->mOnUnbindCalled:Z

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->mHavePrefs:Z

    :cond_0
    return-void
.end method

.method public setThemeRes(I)V
    .locals 0

    .line 0
    return-void
.end method
