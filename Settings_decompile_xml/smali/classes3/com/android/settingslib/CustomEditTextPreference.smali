.class public Lcom/android/settingslib/CustomEditTextPreference;
.super Lcom/android/settingslib/miuisettings/preference/EditTextPreference;
.source "CustomEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;


# direct methods
.method static bridge synthetic -$$Nest$msetFragment(Lcom/android/settingslib/CustomEditTextPreference;Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->setFragment(Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private setFragment(Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x1020003    # @android:id/edit

    .line 58
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    const p0, 0x1020003    # @android:id/edit

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    if-eqz p0, :cond_0

    const/16 p1, 0x4001

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 89
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 0
    return-void
.end method
