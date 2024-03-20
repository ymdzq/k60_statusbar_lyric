.class public Lcom/android/settings/Autostar/AutoMangement;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoMangement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Autostar/AutoMangement$AppPreference;
    }
.end annotation


# instance fields
.field EmptyView:Landroid/widget/TextView;

.field count:Landroid/widget/FrameLayout;

.field mActivity:Landroid/app/Activity;

.field private mApplicationsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field mClickListener:Landroid/view/View$OnClickListener;

.field mClickadd:Landroid/view/View$OnClickListener;

.field mFragment:Landroidx/fragment/app/Fragment;

.field mPm:Landroid/content/pm/PackageManager;

.field mPrefGroup:Landroidx/preference/PreferenceGroup;

.field mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/Autostar/AutoMangement$AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field mView:Landroid/view/View;

.field mtext:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmApplicationsInfos(Lcom/android/settings/Autostar/AutoMangement;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/Autostar/AutoMangement;->mApplicationsInfos:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/Autostar/AutoMangement$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Autostar/AutoMangement$1;-><init>(Lcom/android/settings/Autostar/AutoMangement;)V

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mClickListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/android/settings/Autostar/AutoMangement$2;

    invoke-direct {v0, p0}, Lcom/android/settings/Autostar/AutoMangement$2;-><init>(Lcom/android/settings/Autostar/AutoMangement;)V

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mClickadd:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/Autostar/AutoMangement;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isThidPartApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 130
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

    .line 117
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 121
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

    .line 122
    invoke-static {v1}, Lcom/android/settings/Autostar/AutoMangement;->isThidPartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/settings/Autostar/AutoMangement;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method buildList()V
    .locals 9

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 139
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/Autostar/AutoMangement;->loadApps()V

    const/4 v0, 0x0

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 146
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/Autostar/AutoMangement;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, v8, v2}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 148
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 149
    new-instance v1, Lcom/android/settings/Autostar/AutoMangement$AppPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, v1

    move-object v3, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/Autostar/AutoMangement$AppPreference;-><init>(Lcom/android/settings/Autostar/AutoMangement;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/Autostar/AutoMangement;Landroid/content/pm/ApplicationInfo;)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/Autostar/AutoMangement;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v2, p0, Lcom/android/settings/Autostar/AutoMangement;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 89
    const-class p0, Lcom/android/settings/Autostar/AutoMangement;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->buildList()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 160
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    sget p1, Lcom/android/settings/R$xml;->autorun:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Autostar/AutoMangement;->mPm:Landroid/content/pm/PackageManager;

    .line 163
    iput-object p0, p0, Lcom/android/settings/Autostar/AutoMangement;->mFragment:Landroidx/fragment/app/Fragment;

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Autostar/AutoMangement;->mActivity:Landroid/app/Activity;

    const-string p1, "autorun"

    .line 165
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/Autostar/AutoMangement;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/Autostar/AutoMangement;->mApplicationsInfos:Ljava/util/List;

    .line 167
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/Autostar/AutoMangement;->mPrefs:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->buildList()V

    .line 169
    iget-object p1, p0, Lcom/android/settings/Autostar/AutoMangement;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$plurals;->auto_startup_count:I

    iget-object v2, p0, Lcom/android/settings/Autostar/AutoMangement;->mApplicationsInfos:Ljava/util/List;

    .line 170
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/Autostar/AutoMangement;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 169
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 96
    sget v0, Lcom/android/settings/R$layout;->autorun_pref:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    .line 98
    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 100
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 103
    iget-object p2, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    const p3, 0x1020004    # @android:id/empty

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/Autostar/AutoMangement;->EmptyView:Landroid/widget/TextView;

    .line 104
    iget-object p2, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    sget p3, Lcom/android/settings/R$id;->startup_count:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/Autostar/AutoMangement;->mtext:Landroid/widget/TextView;

    .line 105
    iget-object p2, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    sget p3, Lcom/android/settings/R$id;->count:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/settings/Autostar/AutoMangement;->count:Landroid/widget/FrameLayout;

    .line 106
    iget-object p2, p0, Lcom/android/settings/Autostar/AutoMangement;->mClickadd:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p0, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onResume()V
    .locals 5

    .line 175
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->buildList()V

    .line 177
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mtext:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$plurals;->auto_startup_count:I

    iget-object v3, p0, Lcom/android/settings/Autostar/AutoMangement;->mApplicationsInfos:Ljava/util/List;

    .line 178
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/Autostar/AutoMangement;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 177
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->count:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 182
    iget-object p0, p0, Lcom/android/settings/Autostar/AutoMangement;->EmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->count:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 186
    iget-object p0, p0, Lcom/android/settings/Autostar/AutoMangement;->EmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
