.class public Lcom/android/settings/colorlamp/ColorLampSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorLampSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mManageNotification:Landroidx/preference/Preference;

.field private mVisibleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/colorlamp/IVisibleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/android/settings/colorlamp/ColorLampSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/colorlamp/ColorLampSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/colorlamp/ColorLampSettings;->mVisibleListeners:Ljava/util/List;

    return-void
.end method

.method private setupManageNotification()V
    .locals 2

    const-string v0, "color_lamp_applications"

    .line 72
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/colorlamp/ColorLampSettings;->mManageNotification:Landroidx/preference/Preference;

    .line 73
    new-instance v1, Lcom/android/settings/colorlamp/ColorLampSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/colorlamp/ColorLampSettings$1;-><init>(Lcom/android/settings/colorlamp/ColorLampSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v1, Lcom/android/settings/colorlamp/ColorLampBatteryController;

    invoke-direct {v1, p1}, Lcom/android/settings/colorlamp/ColorLampBatteryController;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v2, Lcom/android/settings/colorlamp/ColorLampNotificationController;

    invoke-direct {v2, p1}, Lcom/android/settings/colorlamp/ColorLampNotificationController;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v3, Lcom/android/settings/colorlamp/ColorLampInCallModeController;

    invoke-direct {v3, p1}, Lcom/android/settings/colorlamp/ColorLampInCallModeController;-><init>(Landroid/content/Context;)V

    .line 53
    iget-object v4, p0, Lcom/android/settings/colorlamp/ColorLampSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v4, p0, Lcom/android/settings/colorlamp/ColorLampSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v4, p0, Lcom/android/settings/colorlamp/ColorLampSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcom/android/settings/colorlamp/ColorLampController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/colorlamp/ColorLampController;-><init>(Landroid/content/Context;Lcom/android/settings/colorlamp/ColorLampSettings;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public ensureVisibleOtherPreference(Z)V
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/android/settings/colorlamp/ColorLampSettings;->mVisibleListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 96
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/colorlamp/IVisibleListener;

    .line 97
    invoke-interface {v0, p1}, Lcom/android/settings/colorlamp/IVisibleListener;->ensureVisible(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 37
    sget-object p0, Lcom/android/settings/colorlamp/ColorLampSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 32
    sget p0, Lcom/android/settings/R$xml;->color_lamp:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/android/settings/colorlamp/ColorLampSettings;->setupManageNotification()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 89
    iget-object p0, p0, Lcom/android/settings/colorlamp/ColorLampSettings;->mVisibleListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 90
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
