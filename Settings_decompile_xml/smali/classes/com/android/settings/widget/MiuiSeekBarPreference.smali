.class public Lcom/android/settings/widget/MiuiSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "MiuiSeekBarPreference.java"


# instance fields
.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShowTitleIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/android/settings/widget/MiuiSeekBarPreference;->mShowTitleIcon:Z

    .line 34
    invoke-direct {p0}, Lcom/android/settings/widget/MiuiSeekBarPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/android/settings/widget/MiuiSeekBarPreference;->mShowTitleIcon:Z

    .line 29
    invoke-direct {p0}, Lcom/android/settings/widget/MiuiSeekBarPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportPaperEyeCare()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$layout;->miui_seekbar_preference_layout:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$layout;->old_miui_seekbar_preference_layout:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 40
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    sget v0, Lcom/android/settings/R$id;->title_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 46
    iget-boolean p0, p0, Lcom/android/settings/widget/MiuiSeekBarPreference;->mShowTitleIcon:Z

    if-nez p0, :cond_1

    const/16 p0, 0x8

    .line 47
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 54
    sget v0, Lcom/android/settings/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/settings/widget/MiuiSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/widget/SeekBar;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public setShowTitleIcon(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/widget/MiuiSeekBarPreference;->mShowTitleIcon:Z

    .line 66
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
