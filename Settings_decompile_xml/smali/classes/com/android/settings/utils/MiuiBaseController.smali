.class public abstract Lcom/android/settings/utils/MiuiBaseController;
.super Lcom/android/settingslib/core/MiuiAbstractPreferenceController;
.source "MiuiBaseController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/preference/Preference;",
        ">",
        "Lcom/android/settingslib/core/MiuiAbstractPreferenceController;"
    }
.end annotation


# instance fields
.field protected mPreference:Landroidx/preference/Preference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/core/MiuiAbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/android/settings/utils/MiuiBaseController;->attach()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/MiuiBaseController;->mPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "preference not found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBaseController"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/utils/MiuiBaseController;->create()V

    return-void
.end method

.method private final attach()V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/utils/MiuiBaseController;->onAttach()V

    return-void
.end method

.method private final create()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/utils/MiuiBaseController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/utils/MiuiBaseController;->onCreate()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/utils/MiuiBaseController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/utils/MiuiBaseController;->onDestroy()V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected onAttach()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onCreate()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 0
    return-void
.end method

.method public final pause()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/utils/MiuiBaseController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/utils/MiuiBaseController;->onPause()V

    return-void
.end method

.method public final resume()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/settings/utils/MiuiBaseController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/utils/MiuiBaseController;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/utils/MiuiBaseController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
