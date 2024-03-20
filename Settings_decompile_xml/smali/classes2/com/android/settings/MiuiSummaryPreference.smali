.class public Lcom/android/settings/MiuiSummaryPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "MiuiSummaryPreference.java"


# instance fields
.field private mChartEnabled:Z

.field private mEndLabel:Ljava/lang/String;

.field private mLeftRatio:F

.field private mMiddleRatio:F

.field private mStartLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/MiuiSummaryPreference;->mChartEnabled:Z

    .line 43
    sget p1, Lcom/android/settings/R$layout;->settings_summary_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6

    .line 110
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 112
    sget v0, Lcom/android/settings/R$id;->color_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 114
    iget-boolean v1, p0, Lcom/android/settings/MiuiSummaryPreference;->mChartEnabled:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    iget v1, p0, Lcom/android/settings/MiuiSummaryPreference;->mLeftRatio:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 118
    iget v5, p0, Lcom/android/settings/MiuiSummaryPreference;->mMiddleRatio:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 124
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/MiuiSummaryPreference;->mChartEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiSummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiSummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    :cond_1
    sget v0, Lcom/android/settings/R$id;->label_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020014    # @android:id/text1

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/MiuiSummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x1020015    # @android:id/text2

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/MiuiSummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 129
    :cond_2
    sget p0, Lcom/android/settings/R$id;->label_bar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
