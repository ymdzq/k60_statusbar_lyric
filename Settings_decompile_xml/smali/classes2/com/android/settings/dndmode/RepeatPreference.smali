.class public Lcom/android/settings/dndmode/RepeatPreference;
.super Lcom/android/settings/CustomListPreference;
.source "RepeatPreference.java"


# instance fields
.field private mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

.field private mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

.field private mRepeatLabel:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNewDaysOfWeek(Lcom/android/settings/dndmode/RepeatPreference;)Lcom/android/settings/dndmode/Alarm$DaysOfWeek;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/dndmode/RepeatPreference;->mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowMultiChoiceDialog(Lcom/android/settings/dndmode/RepeatPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/dndmode/RepeatPreference;->showMultiChoiceDialog()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/dndmode/RepeatPreference;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    .line 27
    new-instance p1, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-direct {p1, p2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/dndmode/RepeatPreference;->mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/android/settings/dndmode/RepeatPreference;->mRepeatLabel:Ljava/lang/String;

    .line 41
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    .line 42
    aget-object v0, p1, p2

    const/4 p2, 0x3

    aget-object v1, p1, p2

    const/4 p2, 0x4

    aget-object v2, p1, p2

    const/4 p2, 0x5

    aget-object v3, p1, p2

    const/4 p2, 0x6

    aget-object v4, p1, p2

    const/4 p2, 0x7

    aget-object v5, p1, p2

    const/4 p2, 0x1

    aget-object v6, p1, p2

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showMultiChoiceDialog()V
    .locals 4

    .line 140
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 141
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dndmode/RepeatPreference;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    .line 143
    invoke-virtual {v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v2

    new-instance v3, Lcom/android/settings/dndmode/RepeatPreference$3;

    invoke-direct {v3, p0}, Lcom/android/settings/dndmode/RepeatPreference$3;-><init>(Lcom/android/settings/dndmode/RepeatPreference;)V

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->button_text_ok:I

    new-instance v2, Lcom/android/settings/dndmode/RepeatPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/dndmode/RepeatPreference$2;-><init>(Lcom/android/settings/dndmode/RepeatPreference;)V

    .line 151
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->button_text_cancel:I

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getDaysOfWeek()Lcom/android/settings/dndmode/Alarm$DaysOfWeek;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/settings/dndmode/RepeatPreference;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    return-object p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 55
    sget v0, Lcom/android/settings/R$id;->label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lcom/android/settings/dndmode/RepeatPreference;->mRepeatLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ListPreference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onClick()V
    .locals 5

    .line 89
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->alarm_repeat_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/dndmode/HolidayHelper;->isHolidayDataInvalid(Landroid/content/Context;)Z

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->alarm_repeat_type_no_workdays:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dndmode/RepeatPreference;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->getAlarmType()I

    move-result v1

    .line 100
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 101
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/android/settings/R$array;->alarm_repeat_type_no_workdays_values:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/android/settings/R$array;->alarm_repeat_type_values:I

    .line 100
    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const/4 v3, 0x0

    .line 104
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 105
    aget v4, v2, v3

    if-ne v1, v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    .line 111
    :goto_3
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/settings/dndmode/RepeatPreference$1;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/dndmode/RepeatPreference$1;-><init>(Lcom/android/settings/dndmode/RepeatPreference;[I)V

    invoke-virtual {v1, v0, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/android/settings/dndmode/RepeatPreference;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    iget-object v0, p0, Lcom/android/settings/dndmode/RepeatPreference;->mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {p1, v0}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/dndmode/RepeatPreference;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/dndmode/RepeatPreference;->setLabel(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/android/settings/dndmode/RepeatPreference;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dndmode/RepeatPreference;->mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    iget-object p0, p0, Lcom/android/settings/dndmode/RepeatPreference;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {p1, p0}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    :goto_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 3

    .line 164
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/settings/dndmode/RepeatPreference;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    .line 167
    invoke-virtual {v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v1

    new-instance v2, Lcom/android/settings/dndmode/RepeatPreference$4;

    invoke-direct {v2, p0}, Lcom/android/settings/dndmode/RepeatPreference$4;-><init>(Lcom/android/settings/dndmode/RepeatPreference;)V

    .line 166
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public setDaysOfWeek(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dndmode/RepeatPreference;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/dndmode/RepeatPreference;->mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 182
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/dndmode/RepeatPreference;->mRepeatLabel:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/android/settings/dndmode/RepeatPreference;->mRepeatLabel:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
