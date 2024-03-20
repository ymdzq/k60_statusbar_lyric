.class public Lcom/android/settings/security/SecurityGooglePlayUpdateController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SecurityGooglePlayUpdateController.java"


# static fields
.field private static final SECURITY_STATUS_PARTIAL_SYSTEM_UPDATES:Ljava/lang/String; = "security_status_partial_system_updates"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mTile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method public static synthetic $r8$lambda$aAGGNlZV9E6_snZOvDuF1zWlYds(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/security/SecurityGooglePlayUpdateController;->lambda$bindPreferenceToTile$0(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/android/settings/security/SecurityGooglePlayUpdateController;->mActivity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/android/settings/security/SecurityGooglePlayUpdateController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 32
    invoke-direct {p0}, Lcom/android/settings/security/SecurityGooglePlayUpdateController;->getGooglePlayUpdateTile()Lcom/android/settingslib/drawer/Tile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/SecurityGooglePlayUpdateController;->mTile:Lcom/android/settingslib/drawer/Tile;

    return-void
.end method

.method private bindPreferenceToTile(Landroid/content/Context;Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V
    .locals 10

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v2

    .line 72
    iget-object v0, p0, Lcom/android/settings/security/SecurityGooglePlayUpdateController;->mActivity:Landroid/app/Activity;

    move-object v3, v0

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Lcom/android/settings/security/SecurityGooglePlayUpdateController;->mFragment:Landroidx/fragment/app/Fragment;

    move-object v4, p0

    check-cast v4, Lcom/android/settings/dashboard/DashboardFragment;

    const/4 v5, 0x0

    const-string/jumbo v8, "security_status_partial_system_updates"

    const v9, 0x7fffffff

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v9}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTileAndGetObservers(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/dashboard/DashboardFragment;ZLandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 74
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 77
    :cond_0
    invoke-virtual {p3, p1}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p3, p1}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 79
    invoke-virtual {p3, p1}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p0, 0x0

    .line 81
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 82
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 83
    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 84
    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 85
    new-instance p3, Lcom/android/settings/security/SecurityGooglePlayUpdateController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/security/SecurityGooglePlayUpdateController$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    return-void
.end method

.method private getGooglePlayUpdateTile()Lcom/android/settingslib/drawer/Tile;
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object p0

    const-string v0, "com.android.settings.category.ia.security"

    .line 50
    invoke-interface {p0, v0}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 60
    invoke-interface {p0, v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "security_status_partial_system_updates"

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method

.method private static synthetic lambda$bindPreferenceToTile$0(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/security/SecurityGooglePlayUpdateController;->mTile:Lcom/android/settingslib/drawer/Tile;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 43
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/security/SecurityGooglePlayUpdateController;->mTile:Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/security/SecurityGooglePlayUpdateController;->bindPreferenceToTile(Landroid/content/Context;Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
