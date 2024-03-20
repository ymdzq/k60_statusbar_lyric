.class public abstract Lcom/android/settings/print/ProfileSettingsPreferenceFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "ProfileSettingsPreferenceFragment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private hasMultiIntentActivity(Lcom/android/settings/dashboard/profileselector/UserAdapter;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 88
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/dashboard/profileselector/UserAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 89
    invoke-virtual {p1, v1}, Lcom/android/settings/dashboard/profileselector/UserAdapter;->getItemId(I)J

    move-result-wide v3

    .line 90
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->getIntentActionString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    long-to-int v3, v3

    invoke-virtual {v6, v5, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-le v2, p0, :cond_2

    move v0, p0

    :cond_2
    return v0
.end method


# virtual methods
.method protected abstract getIntentActionString()Ljava/lang/String;
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string/jumbo p1, "user"

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/dashboard/profileselector/UserAdapter;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/dashboard/profileselector/UserAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->hasMultiIntentActivity(Lcom/android/settings/dashboard/profileselector/UserAdapter;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    sget p2, Lcom/android/settings/R$layout;->spinner_view:I

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    .line 52
    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 53
    new-instance v0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;-><init>(Lcom/android/settings/print/ProfileSettingsPreferenceFragment;Lcom/android/settings/dashboard/profileselector/UserAdapter;Landroid/widget/Spinner;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method
