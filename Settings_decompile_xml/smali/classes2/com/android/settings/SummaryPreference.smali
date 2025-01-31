.class public Lcom/android/settings/SummaryPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "SummaryPreference.java"


# instance fields
.field private mAmount:Ljava/lang/String;

.field private mChartEnabled:Z

.field private mEndLabel:Ljava/lang/String;

.field private mLeftRatio:F

.field private mMiddleRatio:F

.field private mRightRatio:F

.field private mStartLabel:Ljava/lang/String;

.field private mUnits:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    .line 42
    sget p1, Lcom/android/settings/R$layout;->settings_summary_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 85
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->color_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 87
    iget-boolean v1, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    iget v1, p0, Lcom/android/settings/SummaryPreference;->mLeftRatio:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    iget v5, p0, Lcom/android/settings/SummaryPreference;->mMiddleRatio:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    :cond_1
    sget v0, Lcom/android/settings/R$id;->label_bar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020014    # @android:id/text1

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x1020015    # @android:id/text2

    .line 99
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/SummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 101
    :cond_2
    sget p0, Lcom/android/settings/R$id;->label_bar:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 2

    .line 53
    iput-object p1, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->storage_size_large:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/android/settings/SummaryPreference;->mLeftRatio:F

    .line 76
    iput p2, p0, Lcom/android/settings/SummaryPreference;->mMiddleRatio:F

    .line 77
    iput p3, p0, Lcom/android/settings/SummaryPreference;->mRightRatio:F

    .line 78
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setUnits(Ljava/lang/String;)V
    .locals 2

    .line 61
    iput-object p1, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->storage_size_large:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
