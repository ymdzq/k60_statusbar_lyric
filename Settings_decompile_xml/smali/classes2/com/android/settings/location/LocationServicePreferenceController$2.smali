.class Lcom/android/settings/location/LocationServicePreferenceController$2;
.super Ljava/lang/Object;
.source "LocationServicePreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationServicePreferenceController;->getLocationServices()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationServicePreferenceController;

.field final synthetic val$profileUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationServicePreferenceController;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController$2;->this$0:Lcom/android/settings/location/LocationServicePreferenceController;

    iput p2, p0, Lcom/android/settings/location/LocationServicePreferenceController$2;->val$profileUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController$2;->this$0:Lcom/android/settings/location/LocationServicePreferenceController;

    iget-object v1, v0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjector:Lcom/android/settings/location/AppSettingsInjector;

    iget-object v2, v0, Lcom/android/settings/location/LocationBasePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 142
    iget v3, p0, Lcom/android/settings/location/LocationServicePreferenceController$2;->val$profileUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/location/LocationServicePreferenceController$2;->this$0:Lcom/android/settings/location/LocationServicePreferenceController;

    iget-object v4, v4, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 143
    invoke-virtual {v4, v3}, Lcom/android/settings/location/LocationEnabler;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 144
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x2

    .line 141
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/location/SettingsInjector;->getInjectedSettings(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/location/LocationServicePreferenceController;->-$$Nest$fputmLocationServicesMap(Lcom/android/settings/location/LocationServicePreferenceController;Ljava/util/Map;)V

    .line 145
    new-instance v0, Lcom/android/settings/location/LocationServicePreferenceController$2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationServicePreferenceController$2$1;-><init>(Lcom/android/settings/location/LocationServicePreferenceController$2;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
