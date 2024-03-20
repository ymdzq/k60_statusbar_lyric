.class public Lcom/android/settings/Autostar/Autoallow;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Autoallow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Autostar/Autoallow$AppPreference;
    }
.end annotation


# instance fields
.field ClickListener:Landroid/view/View$OnClickListener;

.field EmptyView:Landroid/widget/TextView;

.field private mApplicationsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPm:Landroid/content/pm/PackageManager;

.field mPrefGroup:Landroidx/preference/PreferenceGroup;

.field mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/Autostar/Autoallow$AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/Autostar/Autoallow$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Autostar/Autoallow$1;-><init>(Lcom/android/settings/Autostar/Autoallow;)V

    iput-object v0, p0, Lcom/android/settings/Autostar/Autoallow;->ClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static isThidPartApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 83
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v0, 0x2710

    if-le p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private loadApps()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/android/settings/Autostar/Autoallow;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/Autostar/Autoallow;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 74
    invoke-static {v1}, Lcom/android/settings/Autostar/Autoallow;->isThidPartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/settings/Autostar/Autoallow;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method buildList()V
    .locals 9

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 92
    iget-object v0, p0, Lcom/android/settings/Autostar/Autoallow;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/Autostar/Autoallow;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/Autostar/Autoallow;->loadApps()V

    const/4 v0, 0x0

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/android/settings/Autostar/Autoallow;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/Autostar/Autoallow;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/Autostar/Autoallow;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, v8, v2}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 101
    iget-object v1, p0, Lcom/android/settings/Autostar/Autoallow;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 102
    new-instance v1, Lcom/android/settings/Autostar/Autoallow$AppPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, v1

    move-object v3, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/Autostar/Autoallow$AppPreference;-><init>(Lcom/android/settings/Autostar/Autoallow;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/Autostar/Autoallow;Landroid/content/pm/ApplicationInfo;)V

    .line 103
    iget-object v2, p0, Lcom/android/settings/Autostar/Autoallow;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lcom/android/settings/Autostar/Autoallow;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 63
    sget p3, Lcom/android/settings/R$layout;->autorun_applications_manage:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Autostar/Autoallow;->mView:Landroid/view/View;

    const p2, 0x1020004    # @android:id/empty

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/Autostar/Autoallow;->EmptyView:Landroid/widget/TextView;

    .line 65
    iget-object p2, p0, Lcom/android/settings/Autostar/Autoallow;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object p0, p0, Lcom/android/settings/Autostar/Autoallow;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 56
    const-class p0, Lcom/android/settings/Autostar/Autoallow;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget p1, Lcom/android/settings/R$xml;->autorun:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Autostar/Autoallow;->mPm:Landroid/content/pm/PackageManager;

    const-string p1, "autorun"

    .line 115
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/Autostar/Autoallow;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/Autostar/Autoallow;->mApplicationsInfos:Ljava/util/List;

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/Autostar/Autoallow;->mPrefs:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/Autostar/Autoallow;->buildList()V

    return-void
.end method
