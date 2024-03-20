.class public Lcom/android/settings/location/AppLocationPermissionPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "AppLocationPermissionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/AppLocationPermissionPreferenceController$MiuiPermissionControllerManager;
    }
.end annotation


# static fields
.field private static final KEY_APP_LEVEL_PERMISSIONS:Ljava/lang/String; = "app_level_permissions"


# instance fields
.field final loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLocationManager:Landroid/location/LocationManager;

.field mNumHasLocation:I

.field private mNumHasLocationLoading:I

.field mNumTotal:I

.field private mNumTotalLoading:I

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNumHasLocationLoading(Lcom/android/settings/location/AppLocationPermissionPreferenceController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumTotalLoading(Lcom/android/settings/location/AppLocationPermissionPreferenceController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmNumHasLocationLoading(Lcom/android/settings/location/AppLocationPermissionPreferenceController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumTotalLoading(Lcom/android/settings/location/AppLocationPermissionPreferenceController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAppCounts(Lcom/android/settings/location/AppLocationPermissionPreferenceController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->setAppCounts(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 38
    iput p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotal:I

    .line 41
    iput p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocation:I

    .line 44
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    iput v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    .line 46
    iput v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    const-string p2, "location"

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private setAppCounts(II)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotal:I

    .line 84
    iput p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocation:I

    .line 85
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 59
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_settings_link_to_permissions_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "app_level_permissions"

    .line 197
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 203
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.permission.single_item"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.securitycenter"

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "permissionID"

    const-string v1, "32"

    .line 209
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 204
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_PERMISSION_APPS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.PERMISSION_NAME"

    const-string v1, "android.permission-group.LOCATION"

    .line 205
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    :goto_1
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x10

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 215
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

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

.method public onLocationModeChanged(IZ)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 9

    .line 90
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 91
    iput-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 94
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    .line 99
    iput p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 109
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 112
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 112
    invoke-static {v3, v2}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, p1

    :goto_1
    if-ge v2, v4, :cond_2

    .line 116
    iget-object v3, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_3

    .line 117
    iget v3, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    iget v5, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    invoke-direct {p0, v3, v5}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->setAppCounts(II)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_4
    const-class v2, Landroid/permission/PermissionControllerManager;

    .line 126
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/permission/PermissionControllerManager;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    .line 145
    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/android/settings/location/AppLocationPermissionPreferenceController$MiuiPermissionControllerManager;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/location/AppLocationPermissionPreferenceController$MiuiPermissionControllerManager;-><init>(Lcom/android/settings/location/AppLocationPermissionPreferenceController;I)V

    const/4 v8, 0x0

    .line 145
    invoke-virtual {v2, v6, p1, v7, v8}, Landroid/permission/PermissionControllerManager;->countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V

    .line 148
    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Lcom/android/settings/location/AppLocationPermissionPreferenceController$MiuiPermissionControllerManager;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/android/settings/location/AppLocationPermissionPreferenceController$MiuiPermissionControllerManager;-><init>(Lcom/android/settings/location/AppLocationPermissionPreferenceController;I)V

    .line 148
    invoke-virtual {v2, v3, v6, v5, v8}, Landroid/permission/PermissionControllerManager;->countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
