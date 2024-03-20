.class public Lcom/android/settings/display/FluencyModeListPreference;
.super Lcom/android/settings/MiuiListPreference;
.source "FluencyModeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;,
        Lcom/android/settings/display/FluencyModeListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mConfirmArray:[Ljava/lang/String;

.field private mContentArray:[Ljava/lang/String;

.field private mLocalAdapter:Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;

.field private mStatus:I

.field private mStoredPosition:I

.field private mSummaryArray:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContentArray(Lcom/android/settings/display/FluencyModeListPreference;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/FluencyModeListPreference;->mContentArray:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatus(Lcom/android/settings/display/FluencyModeListPreference;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummaryArray(Lcom/android/settings/display/FluencyModeListPreference;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/FluencyModeListPreference;->mSummaryArray:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmStoredPosition(Lcom/android/settings/display/FluencyModeListPreference;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStoredPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeMiuiLiteMode(Lcom/android/settings/display/FluencyModeListPreference;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/FluencyModeListPreference;->changeMiuiLiteMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialog(Lcom/android/settings/display/FluencyModeListPreference;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/FluencyModeListPreference;->showDialog(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p2, Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;-><init>(Lcom/android/settings/display/FluencyModeListPreference;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/FluencyModeListPreference;->mLocalAdapter:Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 50
    sget p2, Lcom/android/settings/R$array;->fluency_mode_entries:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/display/FluencyModeListPreference;->mContentArray:[Ljava/lang/String;

    .line 51
    sget p2, Lcom/android/settings/R$array;->fluency_mode_summaries:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/display/FluencyModeListPreference;->mSummaryArray:[Ljava/lang/String;

    .line 52
    sget p2, Lcom/android/settings/R$array;->fluency_mode_confirms:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference;->mConfirmArray:[Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference;->mContentArray:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/display/FluencyModeListPreference;->getStatus()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStatus:I

    .line 55
    iput p1, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStoredPosition:I

    .line 56
    iget-object p2, p0, Lcom/android/settings/display/FluencyModeListPreference;->mContentArray:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private changeMiuiLiteMode(I)V
    .locals 2

    const-string/jumbo v0, "persist.sys.miui_feature_config"

    if-nez p1, :cond_0

    const-string p1, "/system/etc/miui_feature/lite.conf"

    .line 209
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "/system/etc/miui_feature/default.conf"

    .line 211
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method private getStatus()I
    .locals 0

    .line 158
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->isLiteMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private showDialog(I)V
    .locals 3

    .line 133
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/display/FluencyModeListPreference;->mContentArray:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 134
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355    # @android:attr/alertDialogIcon

    .line 135
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/FluencyModeListPreference;->mConfirmArray:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 136
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->fluency_mode_confirm_and_reboot:I

    new-instance v2, Lcom/android/settings/display/FluencyModeListPreference$4;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/display/FluencyModeListPreference$4;-><init>(Lcom/android/settings/display/FluencyModeListPreference;I)V

    .line 137
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/display/FluencyModeListPreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/display/FluencyModeListPreference$3;-><init>(Lcom/android/settings/display/FluencyModeListPreference;)V

    const v1, 0x1040009    # @android:string/no

    .line 143
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/display/FluencyModeListPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/FluencyModeListPreference$2;-><init>(Lcom/android/settings/display/FluencyModeListPreference;)V

    .line 149
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->mLocalAdapter:Lcom/android/settings/display/FluencyModeListPreference$LocalAdapter;

    iget v1, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStatus:I

    new-instance v2, Lcom/android/settings/display/FluencyModeListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/display/FluencyModeListPreference$1;-><init>(Lcom/android/settings/display/FluencyModeListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 129
    invoke-virtual {p1, p0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/display/FluencyModeListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    check-cast p1, Lcom/android/settings/display/FluencyModeListPreference$SavedState;

    .line 75
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 76
    iget p1, p1, Lcom/android/settings/display/FluencyModeListPreference$SavedState;->value:I

    iput p1, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStoredPosition:I

    .line 77
    iget v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStatus:I

    if-eq v0, p1, :cond_1

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/display/FluencyModeListPreference;->showDialog(I)V

    :cond_1
    return-void

    .line 70
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 61
    new-instance v0, Lcom/android/settings/display/FluencyModeListPreference$SavedState;

    invoke-super {p0}, Landroidx/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/display/FluencyModeListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 62
    iget p0, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStoredPosition:I

    iput p0, v0, Lcom/android/settings/display/FluencyModeListPreference$SavedState;->value:I

    return-object v0
.end method
