.class public Lcom/android/settings/datetime/DualClockHintController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DualClockHintController.java"


# instance fields
.field private tipPreference:Lcom/android/settings/widget/TipPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "dual_clock_hint"

    .line 23
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/TipPreference;

    iput-object p1, p0, Lcom/android/settings/datetime/DualClockHintController;->tipPreference:Lcom/android/settings/widget/TipPreference;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/TipPreference;->setTouchAnimationEnable(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "dual_clock_hint"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 32
    sget p0, Lcom/android/settings/R$string;->dual_clock_hint:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 p0, 0x1

    .line 33
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
