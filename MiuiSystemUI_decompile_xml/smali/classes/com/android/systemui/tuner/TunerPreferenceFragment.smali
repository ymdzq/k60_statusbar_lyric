.class public abstract Lcom/android/systemui/tuner/TunerPreferenceFragment;
.super Landroidx/preference/PreferenceFragment;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/systemui/tuner/CustomListPreference;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    .line 8
    invoke-direct {v0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;-><init>()V

    .line 10
    new-instance v1, Landroid/os/Bundle;

    .line 13
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 16
    const-string v2, "key"

    .line 19
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    .line 28
    const/4 v0, 0x0

    .line 31
    :goto_0
    const/4 p1, 0x0

    .line 32
    invoke-virtual {v0, p0, p1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 36
    move-result-object p0

    .line 39
    const-string p1, "dialog_preference"

    .line 40
    invoke-virtual {v0, p0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    return-void
    .line 45
.end method
