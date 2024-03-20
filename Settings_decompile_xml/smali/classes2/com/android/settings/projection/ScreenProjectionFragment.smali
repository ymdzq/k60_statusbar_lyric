.class public Lcom/android/settings/projection/ScreenProjectionFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ScreenProjectionFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v1, Lcom/android/settings/projection/ScreenProjectionSwitchController;

    const-string/jumbo v2, "pref_key_enable_screen_projection"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/projection/ScreenProjectionSwitchController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance p0, Lcom/android/settings/projection/ScreenProjectionHelperController;

    const-string/jumbo v1, "pref_key_screen_projection_help"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/projection/ScreenProjectionHelperController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance p0, Lcom/android/settings/projection/ScreenProjectionPolicyController;

    const-string/jumbo v1, "pref_key_screen_projection_privacy_policy"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/projection/ScreenProjectionPolicyController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/projection/ScreenProjectionFragment;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "ScreenProjectionFragment"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 21
    sget p0, Lcom/android/settings/R$xml;->screen_projection_settings:I

    return p0
.end method
