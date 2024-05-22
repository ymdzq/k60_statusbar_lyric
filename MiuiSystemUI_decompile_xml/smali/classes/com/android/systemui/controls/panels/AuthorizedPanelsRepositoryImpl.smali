.class public final Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;


# instance fields
.field public final context:Landroid/content/Context;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final addAuthorizedPanels(Ljava/util/Set;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->instantiateSharedPrefs()Landroid/content/SharedPreferences;

    .line 2
    move-result-object p0

    .line 5
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 6
    const-string v1, "authorized_panels"

    .line 8
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    move-result-object p0

    .line 20
    invoke-static {v0, p1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 21
    move-result-object p1

    .line 24
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 25
    move-result-object p0

    .line 28
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    return-void
    .line 32
.end method

.method public final instantiateSharedPrefs()Landroid/content/SharedPreferences;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 10
    check-cast v1, Lcom/android/systemui/settings/UserFileManagerImpl;

    .line 12
    const-string v2, "controls_prefs"

    .line 14
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences(ILjava/lang/String;)Landroid/content/SharedPreferences;

    .line 16
    move-result-object v0

    .line 19
    sget-object v1, Lcom/android/systemui/flags/Flags;->APP_PANELS_REMOVE_APPS_ALLOWED:Lcom/android/systemui/flags/ReleasedFlag;

    .line 20
    iget-object v2, p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 22
    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 24
    invoke-virtual {v2, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 26
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const-string v3, "authorized_panels"

    .line 31
    if-eqz v1, :cond_0

    .line 33
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 35
    move-result-object v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 42
    move-result-object v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 57
    :goto_1
    if-eqz v1, :cond_3

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 60
    move-result-object v1

    .line 63
    iget-object p0, p0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->context:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object p0

    .line 69
    const v2, 0x7f03004d    # @array/config_controlsPreferredPackages

    .line 70
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 77
    move-result-object p0

    .line 80
    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 81
    move-result-object p0

    .line 84
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    :cond_3
    return-object v0
    .line 88
.end method
