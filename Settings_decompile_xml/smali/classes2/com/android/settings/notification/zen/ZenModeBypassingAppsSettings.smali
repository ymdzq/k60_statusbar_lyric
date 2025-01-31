.class public Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "ZenModeBypassingAppsSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings$1;

    sget v1, Lcom/android/settings/R$xml;->zen_mode_bypassing_apps:I

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    const-string v0, "ZenBypassingApps"

    .line 40
    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Application;",
            "Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;",
            "Lcom/android/settings/notification/NotificationBackend;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Application;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Application;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    new-instance v1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "ZenBypassingApps"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x634

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 68
    sget p0, Lcom/android/settings/R$xml;->zen_mode_bypassing_apps:I

    return p0
.end method
