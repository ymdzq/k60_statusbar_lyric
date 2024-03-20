.class public Lcom/android/settings/accessibility/RestrictedPreferenceHelper;
.super Ljava/lang/Object;
.source "RestrictedPreferenceHelper.java"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 70
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 72
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 74
    invoke-static {p1}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->getConfigedServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mConfigedServiceList:Ljava/util/List;

    return-void
.end method

.method private createCustomRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 100
    new-instance v0, Lcom/android/settings/accessibility/CustomRestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p6, p7}, Lcom/android/settings/accessibility/CustomRestrictedPreference;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 101
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->accessibility_summary_source:I

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v0, p5}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p4}, Lcom/android/settingslib/RestrictedPreference;->setValue(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 106
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setPersistent(Z)V

    return-object v0
.end method

.method private createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 318
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

    const-string v1, "RestrictedPreferenceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p5, p6}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 323
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v0, p4}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 331
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setPersistent(Z)V

    const/4 p0, -0x1

    .line 332
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private getAccessibilityServiceFragmentTypeName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 2

    .line 298
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 305
    const-class p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 307
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported accessibility fragment type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_1
    const-class p0, Lcom/android/settings/accessibility/InvisibleToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 301
    :cond_2
    const-class p0, Lcom/android/settings/accessibility/VolumeShortcutToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

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

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
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

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 82
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 83
    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 84
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isHideServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 91
    invoke-static {p0}, Lcom/android/settings/cloud/AccessibilityDisableList;->getCacheDisableSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "com.miui.voiceassist"

    .line 92
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    .line 95
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

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

.method private putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;I)V
    .locals 0

    .line 381
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "preference_key"

    .line 382
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "title"

    .line 383
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p1, "intro"

    .line 384
    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "summary"

    .line 385
    invoke-virtual {p0, p1, p5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p1, "component_name"

    .line 386
    invoke-virtual {p0, p1, p8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "animated_image_res"

    .line 387
    invoke-virtual {p0, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "html_description"

    .line 388
    invoke-virtual {p0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "metrics_category"

    .line 389
    invoke-virtual {p0, p1, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private putServiceExtras(Lcom/android/settingslib/RestrictedPreference;Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V
    .locals 0

    .line 403
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "resolve_info"

    .line 405
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "checked"

    .line 406
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 421
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 423
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object p0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->accessibility_menu_item_settings:I

    .line 425
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "settings_title"

    .line 424
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "settings_component_name"

    .line 426
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private putTileServiceExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 446
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 447
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 448
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "tile_service_component_name"

    .line 448
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/RestrictedPreference;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 341
    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    if-eqz p2, :cond_4

    .line 345
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 347
    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x77

    .line 345
    invoke-virtual {v2, v5, v3, v4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 348
    iget-object v3, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110166    # @android:bool/config_faceAuthDismissesKeyguard

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move p2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move p2, v1

    :goto_3
    move v2, p2

    goto :goto_4

    :catch_0
    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    if-nez p2, :cond_8

    if-eqz p3, :cond_5

    goto :goto_5

    .line 363
    :cond_5
    iget-object p0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 365
    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    .line 364
    invoke-static {p0, p2, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 368
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_6

    :cond_6
    if-nez v2, :cond_7

    .line 370
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAppOps(Z)V

    goto :goto_6

    .line 372
    :cond_7
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_6

    .line 360
    :cond_8
    :goto_5
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_6
    return-void
.end method


# virtual methods
.method public createAccessibilityActivityPreferenceList(Ljava/util/List;Z)Ljava/util/List;
    .locals 21
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

    move-object/from16 v10, p0

    .line 224
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 225
    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v11

    .line 226
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 227
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 226
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v12

    .line 229
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    .line 230
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v15, v0

    :goto_0
    if-ge v15, v13, :cond_4

    move-object/from16 v9, p1

    .line 234
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 235
    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 236
    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 238
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 239
    iget-object v2, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->isHideServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v20, v11

    move-object/from16 v16, v12

    move/from16 v17, v13

    goto/16 :goto_2

    :cond_1
    if-nez p2, :cond_2

    .line 244
    sget-object v2, Lcom/android/settings/accessibility/AccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 248
    :cond_2
    sget-object v2, Lcom/android/settings/accessibility/AccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mConfigedServiceList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 253
    :cond_3
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 254
    iget-object v2, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 255
    iget-object v2, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v2}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    .line 256
    const-class v2, Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;

    .line 257
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    .line 267
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v6

    .line 271
    invoke-interface {v11, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 273
    invoke-direct {v10, v6, v12, v0}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/util/List;Z)V

    .line 275
    invoke-virtual {v6}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 276
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadIntro(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 277
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getAnimatedImageRes()I

    move-result v17

    .line 279
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v18

    .line 280
    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object v7

    .line 282
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getAccessibilityMetricsFeatureProvider()Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProvider;

    move-result-object v0

    .line 284
    invoke-interface {v0, v8}, Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProvider;->getDownloadedFeatureMetricsCategory(Landroid/content/ComponentName;)I

    move-result v19

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v20, v11

    move-object v11, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v12

    move-object v12, v6

    move/from16 v6, v17

    move/from16 v17, v13

    move-object v13, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v9, v19

    .line 286
    invoke-direct/range {v0 .. v9}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;I)V

    .line 288
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v12, v0, v11}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v12, v0, v13}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putTileServiceExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v11, v20

    goto/16 :goto_0

    :cond_4
    return-object v14
.end method

.method public createAccessibilityServicePreferenceList(Ljava/util/List;Z)Ljava/util/List;
    .locals 23
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

    move-object/from16 v10, p0

    .line 123
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 124
    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v11

    .line 125
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 126
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v12

    .line 127
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    .line 129
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v15, v0

    :goto_0
    if-ge v15, v13, :cond_5

    move-object/from16 v9, p1

    .line 133
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 134
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 135
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 136
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 141
    iget-object v1, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1, v6, v0}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->isHideServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move/from16 v18, v13

    move-object v0, v14

    move/from16 v16, v15

    goto/16 :goto_3

    :cond_1
    if-nez p2, :cond_2

    .line 146
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mConfigedServiceList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 150
    :cond_2
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mConfigedServiceList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 158
    invoke-interface {v11, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 162
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v17

    .line 164
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-direct {v10, v8}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->getAccessibilityServiceFragmentTypeName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v18

    if-nez p2, :cond_4

    .line 179
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move/from16 v19, v3

    move-object/from16 v3, v17

    move-object/from16 v20, v11

    move v11, v4

    move-object/from16 v4, v18

    move-object v9, v5

    move-object v5, v6

    move-object/from16 v21, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v0

    move/from16 v18, v13

    move-object v13, v7

    goto :goto_2

    :cond_4
    move-object v9, v5

    move-object/from16 v21, v6

    move-object/from16 v20, v11

    move v11, v4

    .line 183
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v17, v6

    move-object/from16 v6, v21

    move/from16 v18, v13

    move-object v13, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->createCustomRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v0

    :goto_2
    move-object v7, v0

    .line 188
    invoke-direct {v10, v7, v12, v11}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/util/List;Z)V

    .line 190
    invoke-virtual {v7}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getAnimatedImageRes()I

    move-result v6

    .line 192
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadIntro(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 193
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v11}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v5

    .line 195
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v17

    .line 196
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object v8

    .line 198
    iget-object v0, v10, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getAccessibilityMetricsFeatureProvider()Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProvider;

    move-result-object v0

    .line 200
    invoke-interface {v0, v9}, Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProvider;->getDownloadedFeatureMetricsCategory(Landroid/content/ComponentName;)I

    move-result v19

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v22, v12

    move-object v12, v3

    move-object/from16 v3, v16

    move/from16 v16, v15

    move-object v15, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v14

    move-object v14, v8

    move-object v8, v9

    move/from16 v9, v19

    .line 202
    invoke-direct/range {v0 .. v9}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;I)V

    .line 204
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v10, v15, v13, v0}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putServiceExtras(Lcom/android/settingslib/RestrictedPreference;Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V

    move-object/from16 v0, v21

    .line 205
    invoke-direct {v10, v15, v0, v12}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {v10, v15, v0, v14}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putTileServiceExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    .line 208
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v15, v16, 0x1

    move-object v14, v0

    move/from16 v13, v18

    move-object/from16 v11, v20

    move-object/from16 v12, v22

    goto/16 :goto_0

    :cond_5
    move-object v0, v14

    return-object v0
.end method
