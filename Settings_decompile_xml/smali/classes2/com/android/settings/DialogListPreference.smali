.class public Lcom/android/settings/DialogListPreference;
.super Lcom/android/settings/MiuiListPreference;
.source "DialogListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DialogListPreference$ListAdapter;
    }
.end annotation


# instance fields
.field private mCheckedItem:I

.field private mListAdapter:Lcom/android/settings/DialogListPreference$ListAdapter;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCheckedItem(Lcom/android/settings/DialogListPreference;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/DialogListPreference;->mCheckedItem:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummaries(Lcom/android/settings/DialogListPreference;)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/DialogListPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/DialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 34
    sget v0, Lcom/android/settings/R$attr;->textPreferenceStyle:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/DialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v0, Lcom/android/settings/R$styleable;->DialogListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 42
    sget p3, Lcom/android/settings/R$styleable;->DialogListPreference_summaries:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/DialogListPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    new-instance p2, Lcom/android/settings/DialogListPreference$ListAdapter;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/DialogListPreference$ListAdapter;-><init>(Lcom/android/settings/DialogListPreference;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/DialogListPreference;->mListAdapter:Lcom/android/settings/DialogListPreference$ListAdapter;

    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    .line 88
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 4

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 67
    iget-object v1, p0, Lcom/android/settings/DialogListPreference;->mListAdapter:Lcom/android/settings/DialogListPreference$ListAdapter;

    iget v2, p0, Lcom/android/settings/DialogListPreference;->mCheckedItem:I

    new-instance v3, Lcom/android/settings/DialogListPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DialogListPreference$1;-><init>(Lcom/android/settings/DialogListPreference;)V

    invoke-virtual {p1, v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {p1, v0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 79
    sget v0, Lcom/android/settings/R$string;->cancel:I

    invoke-direct {p0, v0}, Lcom/android/settings/DialogListPreference;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DialogListPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/DialogListPreference$2;-><init>(Lcom/android/settings/DialogListPreference;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/DialogListPreference;->mCheckedItem:I

    return-void
.end method

.method public setValueIndex(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 58
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 60
    :cond_0
    iput p1, p0, Lcom/android/settings/DialogListPreference;->mCheckedItem:I

    return-void
.end method
