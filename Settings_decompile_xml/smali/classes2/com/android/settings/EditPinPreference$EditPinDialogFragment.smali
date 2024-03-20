.class public Lcom/android/settings/EditPinPreference$EditPinDialogFragment;
.super Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EditPinPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditPinDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings/EditPinPreference$EditPinDialogFragment;
    .locals 3

    .line 109
    new-instance v0, Lcom/android/settings/EditPinPreference$EditPinDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/EditPinPreference$EditPinDialogFragment;-><init>()V

    .line 110
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 111
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-object p0
.end method
