.class Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;
.super Ljava/lang/Object;
.source "GeneralAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/GeneralAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RestrictedPreferenceHelper"
.end annotation


# instance fields
.field private final mConfigedServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 517
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 518
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 520
    invoke-static {p1}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->getConfigedServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mConfigedServiceList:Ljava/util/List;

    return-void
.end method

.method private createCustomRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 769
    new-instance v0, Lcom/android/settings/accessibility/CustomRestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/CustomRestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 770
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 772
    iget-object p0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->accessibility_summary_source:I

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 773
    invoke-virtual {v0, p5}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0, p4}, Lcom/android/settingslib/RestrictedPreference;->setValue(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 775
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setPersistent(Z)V

    return-object v0
.end method

.method private createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createRestrictedPreference: title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeneralAccessibilitySettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 751
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 755
    invoke-virtual {v0, p4}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 760
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setPersistent(Z)V

    const/4 p0, -0x1

    .line 761
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private getAccessibilityServiceFragmentTypeName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 0

    .line 737
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityServiceUtils;->getAccessibilityServiceFragmentTypeName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigedServices(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 528
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 529
    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 530
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    .line 801
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "preference_key"

    .line 802
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "title"

    .line 803
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "summary"

    .line 804
    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p1, "component_name"

    .line 805
    invoke-virtual {p0, p1, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "animated_image_res"

    .line 806
    invoke-virtual {p0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "html_description"

    .line 807
    invoke-virtual {p0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putServiceExtras(Lcom/android/settingslib/RestrictedPreference;Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V
    .locals 0

    .line 817
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "resolve_info"

    .line 819
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "checked"

    .line 820
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 830
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 832
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    iget-object p0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->accessibility_menu_item_settings:I

    .line 834
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "settings_title"

    .line 833
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "settings_component_name"

    .line 835
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;ZZ)V
    .locals 0

    if-nez p3, :cond_2

    if-eqz p4, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 788
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    .line 787
    invoke-static {p0, p2, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 790
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 792
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 783
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method createAccessibilityActivityPreferenceList(Ljava/util/List;Z)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/RestrictedPreference;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 650
    iget-object v0, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 651
    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 652
    iget-object v0, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 653
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 652
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v10

    .line 655
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 656
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_6

    move-object/from16 v15, p1

    .line 660
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 661
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 662
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 664
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 665
    iget-object v2, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v6, v3}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->isHideServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v18, v9

    move-object/from16 v16, v10

    goto/16 :goto_4

    :cond_1
    if-nez p2, :cond_2

    .line 670
    sget-object v2, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 674
    :cond_2
    sget-object v2, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mConfigedServiceList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 679
    :cond_3
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 680
    iget-object v3, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 681
    iget-object v1, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    .line 682
    const-class v4, Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;

    .line 683
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 693
    invoke-direct {v8, v2, v3, v1, v4}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v5

    if-eqz v10, :cond_5

    .line 699
    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    .line 700
    :goto_3
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 702
    invoke-direct {v8, v5, v6, v1, v2}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;ZZ)V

    .line 705
    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 706
    iget-object v1, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 707
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getAnimatedImageRes()I

    move-result v16

    .line 708
    iget-object v1, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v17

    .line 709
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object v13, v1

    move-object v1, v5

    move-object/from16 v18, v9

    move-object v9, v5

    move/from16 v5, v16

    move-object/from16 v16, v10

    move-object v10, v6

    move-object/from16 v6, v17

    .line 711
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V

    .line 713
    invoke-direct {v8, v9, v10, v13}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v16

    move-object/from16 v9, v18

    goto/16 :goto_0

    :cond_6
    return-object v12
.end method

.method createAccessibilityServicePreferenceList(Ljava/util/List;Z)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/RestrictedPreference;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 549
    iget-object v0, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 550
    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 551
    iget-object v0, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 552
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 551
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v10

    .line 553
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 555
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_8

    move-object/from16 v15, p1

    .line 561
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 562
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 563
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 564
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 565
    new-instance v4, Landroid/content/ComponentName;

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v1, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1, v5, v0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->isHideServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v19, v9

    move-object/from16 v16, v10

    move/from16 v18, v11

    goto/16 :goto_5

    :cond_1
    if-nez p2, :cond_2

    .line 573
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mConfigedServiceList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 577
    :cond_2
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mConfigedServiceList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 581
    :cond_3
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 586
    :cond_4
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 587
    iget-object v0, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 588
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 591
    iget-object v0, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v2}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 592
    invoke-direct {v8, v6}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->getAccessibilityServiceFragmentTypeName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v13

    move/from16 v16, v2

    .line 593
    iget-object v2, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v4

    iget-object v4, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez p2, :cond_5

    .line 607
    invoke-direct {v8, v1, v3, v0, v13}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v0

    move-object v13, v0

    move-object/from16 v19, v9

    move/from16 v18, v11

    move/from16 v9, v16

    move-object/from16 v16, v3

    move-object v11, v5

    goto :goto_2

    :cond_5
    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v19, v9

    move/from16 v9, v16

    move-object v2, v3

    move-object/from16 v16, v3

    move-object v3, v4

    move-object/from16 v4, v18

    move/from16 v18, v11

    move-object v11, v5

    move-object v5, v13

    .line 610
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->createCustomRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v0

    move-object v13, v0

    :goto_2
    if-eqz v10, :cond_7

    .line 617
    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v0, 0x1

    .line 619
    :goto_4
    invoke-direct {v8, v13, v11, v0, v9}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;ZZ)V

    .line 622
    invoke-virtual {v13}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 623
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getAnimatedImageRes()I

    move-result v5

    .line 624
    iget-object v0, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v9}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v4

    .line 626
    iget-object v0, v8, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v20

    .line 627
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v3, v16

    move-object/from16 v16, v10

    move-object v10, v6

    move-object/from16 v6, v20

    move-object v15, v7

    move-object/from16 v7, v17

    .line 629
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V

    .line 631
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v8, v13, v15, v0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->putServiceExtras(Lcom/android/settingslib/RestrictedPreference;Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V

    .line 632
    invoke-direct {v8, v13, v11, v10}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v16

    move/from16 v11, v18

    move-object/from16 v9, v19

    goto/16 :goto_0

    :cond_8
    return-object v12
.end method
