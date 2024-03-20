.class public Lcom/android/settings/applications/PermissionInfoFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PermissionInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;
    }
.end annotation


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mOtherCategory:Landroidx/preference/PreferenceCategory;

.field private mPermSet:Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

.field private mPrivacyCategory:Landroidx/preference/PreferenceCategory;

.field private mSecurityCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private buildPreferences(Ljava/util/Map;Landroidx/preference/PreferenceCategory;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/preference/PreferenceCategory;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/android/settings/R$layout;->information_preference:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p2, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private static extractPerms([Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 152
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 155
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 157
    :try_start_0
    invoke-virtual {p2, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 159
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 162
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring unknown permission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PermissionInfoActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private static getAllUsedPermissions(ILjava/util/Set;Landroid/content/pm/PackageManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 130
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 134
    invoke-static {v2, p1, p2}, Lcom/android/settings/applications/PermissionInfoFragment;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x1000

    .line 141
    :try_start_0
    invoke-virtual {p2, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 146
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 147
    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/PermissionInfoFragment;->extractPerms([Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V

    :cond_0
    return-void

    .line 143
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could\'nt retrieve permissions for package:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PermissionInfoActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static parsePermission(ILandroid/content/Context;)Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;
    .locals 7

    .line 98
    new-instance v0, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    invoke-direct {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;-><init>()V

    const/4 v1, -0x1

    if-le p0, v1, :cond_3

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->permission_risk_privacy:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$array;->permission_risk_security:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 103
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 105
    invoke-static {p0, v3, p1}, Lcom/android/settings/applications/PermissionInfoFragment;->getAllUsedPermissions(ILjava/util/Set;Landroid/content/pm/PackageManager;)V

    .line 107
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 108
    invoke-virtual {v3, p1}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 110
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v3, p1}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 113
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    iget-object v6, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    invoke-static {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->-$$Nest$fgetnPermPrivacy(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    invoke-static {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->-$$Nest$fgetnPermSecurity(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->-$$Nest$fgetnPermOther(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 47
    const-class p0, Lcom/android/settings/applications/PermissionInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget p1, Lcom/android/settings/R$xml;->permission_info:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_package_application"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_0

    const-string p1, "PermissionInfoActivity"

    const-string/jumbo v0, "onCreate: mAppInfo is null"

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 64
    :cond_0
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/applications/PermissionInfoFragment;->parsePermission(ILandroid/content/Context;)Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mPermSet:Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    const-string/jumbo p1, "privacy_relative"

    .line 66
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mPrivacyCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p1, "security_relative"

    .line 67
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p1, "other_relative"

    .line 68
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mOtherCategory:Landroidx/preference/PreferenceCategory;

    .line 70
    iget-object p1, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mPermSet:Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    invoke-static {p1}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->-$$Nest$fgetnPermPrivacy(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mPrivacyCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/PermissionInfoFragment;->buildPreferences(Ljava/util/Map;Landroidx/preference/PreferenceCategory;)V

    .line 71
    iget-object p1, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mPermSet:Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    invoke-static {p1}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->-$$Nest$fgetnPermSecurity(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/PermissionInfoFragment;->buildPreferences(Ljava/util/Map;Landroidx/preference/PreferenceCategory;)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mPermSet:Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    invoke-static {p1}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->-$$Nest$fgetnPermOther(Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mOtherCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/PermissionInfoFragment;->buildPreferences(Ljava/util/Map;Landroidx/preference/PreferenceCategory;)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/PermissionInfoFragment;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->permission_manage_title:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
