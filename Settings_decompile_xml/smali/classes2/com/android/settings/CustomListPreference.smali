.class public Lcom/android/settings/CustomListPreference;
.super Lcom/android/settingslib/miuisettings/preference/ListPreference;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;,
        Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;


# direct methods
.method static bridge synthetic -$$Nest$msetFragment(Lcom/android/settings/CustomListPreference;Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/CustomListPreference;->setFragment(Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private setFragment(Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/CustomListPreference;->mFragment:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method protected getConfirmationMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/CustomListPreference;->mFragment:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected isAutoClosePreference()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/CustomListPreference;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    return-void
.end method
