.class public Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge;
.super Ljava/lang/Object;
.source "ProfileFragmentBridge.java"


# static fields
.field public static final FRAGMENT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge;->FRAGMENT_MAP:Ljava/util/Map;

    .line 43
    const-class v1, Lcom/android/settings/accounts/AccountDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectAccountFragment;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-class v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectManageApplications;

    .line 46
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-class v1, Lcom/android/settings/location/LocationServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment;

    .line 48
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-class v1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-class v1, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectKeyboardFragment;

    .line 52
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-class v1, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectPhysicalKeyboardFragment;

    .line 54
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
