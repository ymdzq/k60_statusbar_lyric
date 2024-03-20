.class public Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;
.super Lcom/android/settings/CustomListPreference;
.source "RepeatPreferenceWithBg.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;
.implements Lmiuix/preference/PreferenceExtraPadding;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackground:I

.field private mContext:Landroid/content/Context;

.field private mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

.field private mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

.field private mRepeatLabel:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNewDaysOfWeek(Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;)Lcom/android/settings/dndmode/Alarm$DaysOfWeek;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    .line 40
    new-instance v0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-direct {v0, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mRepeatLabel:Ljava/lang/String;

    .line 57
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    .line 58
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

    .line 67
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 72
    iput-object p1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 74
    sget-object v0, Lcom/android/settings/R$styleable;->RepeatPreferenceWithBg:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    sget p2, Lcom/android/settings/R$styleable;->RepeatPreferenceWithBg_backgroundRes:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mBackground:I

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private showMultiChoiceDialog()V
    .locals 4

    .line 127
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 128
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    .line 130
    invoke-virtual {v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v2

    new-instance v3, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$2;

    invoke-direct {v3, p0}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$2;-><init>(Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;)V

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->button_text_ok:I

    new-instance v2, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$1;

    invoke-direct {v2, p0}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$1;-><init>(Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;)V

    .line 138
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->button_text_cancel:I

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getDaysOfWeek()Lcom/android/settings/dndmode/Alarm$DaysOfWeek;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    return-object p0
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    sget v0, Lcom/android/settings/R$id;->label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mRepeatLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 85
    iget v0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mBackground:I

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 89
    invoke-static {p1}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    goto :goto_0

    .line 91
    :cond_1
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/ITouchStyle;->setTouchUp()V

    :goto_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->showMultiChoiceDialog()V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    iget-object v0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {p1, v0}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->setLabel(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    iget-object p0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {p1, p0}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    :goto_0
    return-void
.end method

.method public onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    .line 179
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->auto_rule_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miuix_preference_item_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, p2

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$dimen;->auto_rule_padding_right:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    sub-float/2addr v0, p2

    float-to-int p2, v0

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 185
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 186
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 187
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 3

    .line 151
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    .line 154
    invoke-virtual {v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v1

    new-instance v2, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$3;

    invoke-direct {v2, p0}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$3;-><init>(Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;)V

    .line 153
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public setDaysOfWeek(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mNewDaysOfWeek:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 169
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mRepeatLabel:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iput-object p1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->mRepeatLabel:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
