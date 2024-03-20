.class public Lcom/android/settings/display/ScreenResolutionPreference;
.super Landroidx/preference/Preference;
.source "ScreenResolutionPreference.java"


# instance fields
.field private mCheckedListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

.field mContext:Landroid/content/Context;

.field private mFHDHeight:I

.field private mFHDWidth:I

.field private mFhdImageRes:I

.field private mFhdTextRes:I

.field private mFhdTextResSummary:I

.field private mFhdView:Lcom/android/settings/display/ResolutionVisualCheckBox;

.field private mQHDHeight:I

.field private mQHDWidth:I

.field private mQhdChecked:Z

.field private mQhdImageRes:I

.field private mQhdTextRes:I

.field private mQhdTextResSummary:I

.field private mQhdView:Lcom/android/settings/display/ResolutionVisualCheckBox;

.field private mRootView:Landroid/view/View;

.field private mSwitchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x438

    .line 36
    iput p2, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFHDWidth:I

    const/16 p2, 0x960

    .line 37
    iput p2, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFHDHeight:I

    const/16 p2, 0x5a0

    .line 38
    iput p2, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQHDWidth:I

    const/16 p2, 0xc80

    .line 39
    iput p2, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQHDHeight:I

    .line 43
    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mContext:Landroid/content/Context;

    .line 44
    sget p1, Lcom/android/settings/R$layout;->resolution_selection_view:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    .line 50
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 52
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mRootView:Landroid/view/View;

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->checkgroup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckGroup;

    .line 56
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->resolution_qhd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/ResolutionVisualCheckBox;

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdView:Lcom/android/settings/display/ResolutionVisualCheckBox;

    .line 57
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->resolution_fhd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/ResolutionVisualCheckBox;

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFhdView:Lcom/android/settings/display/ResolutionVisualCheckBox;

    .line 58
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->qhd_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckedTextView;

    .line 59
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fhd_text_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/visual/check/VisualCheckedTextView;

    .line 60
    iget-object v2, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->qhd_text_view_summary:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/visual/check/VisualCheckedTextView;

    .line 61
    iget-object v3, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mRootView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->fhd_text_view_summary:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/visual/check/VisualCheckedTextView;

    .line 62
    iget-object v4, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mRootView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->qhd_img_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 63
    iget-object v5, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->fhd_img_view:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 65
    iget-object v6, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdView:Lcom/android/settings/display/ResolutionVisualCheckBox;

    iget-boolean v7, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdChecked:Z

    invoke-virtual {v6, v7}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 66
    iget-object v6, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFhdView:Lcom/android/settings/display/ResolutionVisualCheckBox;

    iget-boolean v7, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdChecked:Z

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 67
    iget v6, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdTextRes:I

    if-eqz v6, :cond_1

    .line 68
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :cond_1
    iget v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFhdTextRes:I

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 73
    :cond_2
    iget v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdTextResSummary:I

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdTextResSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQHDHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v6, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQHDWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_3
    iget v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFhdTextResSummary:I

    if-eqz v0, :cond_4

    .line 78
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFhdTextResSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFHDHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFHDWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_4
    iget v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdImageRes:I

    if-eqz v0, :cond_5

    .line 81
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :cond_5
    iget v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFhdImageRes:I

    if-eqz v0, :cond_6

    .line 84
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :cond_6
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mCheckedListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lmiuix/visual/check/VisualCheckGroup;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdView:Lcom/android/settings/display/ResolutionVisualCheckBox;

    iget-boolean v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mSwitchEnabled:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/display/ResolutionVisualCheckBox;->setCheckEnabled(Z)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFhdView:Lcom/android/settings/display/ResolutionVisualCheckBox;

    iget-boolean p0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mSwitchEnabled:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/display/ResolutionVisualCheckBox;->setCheckEnabled(Z)V

    return-void
.end method

.method public setFHDSolution(II)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFHDWidth:I

    .line 117
    iput p2, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFHDHeight:I

    return-void
.end method

.method public setFhdImage(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFhdImageRes:I

    return-void
.end method

.method public setFhdText(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFhdTextRes:I

    return-void
.end method

.method public setFhdTextSummary(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFhdTextResSummary:I

    return-void
.end method

.method public setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mCheckedListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

    return-void
.end method

.method public setQHDSolution(II)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQHDWidth:I

    .line 112
    iput p2, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQHDHeight:I

    return-void
.end method

.method public setQhdChecked(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdChecked:Z

    return-void
.end method

.method public setQhdImage(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdImageRes:I

    return-void
.end method

.method public setQhdText(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdTextRes:I

    return-void
.end method

.method public setQhdTextSummary(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdTextResSummary:I

    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 1

    .line 101
    iput-boolean p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mSwitchEnabled:Z

    .line 102
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mQhdView:Lcom/android/settings/display/ResolutionVisualCheckBox;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/android/settings/display/ResolutionVisualCheckBox;->setCheckEnabled(Z)V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mFhdView:Lcom/android/settings/display/ResolutionVisualCheckBox;

    if-eqz p1, :cond_1

    .line 106
    iget-boolean p0, p0, Lcom/android/settings/display/ScreenResolutionPreference;->mSwitchEnabled:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/display/ResolutionVisualCheckBox;->setCheckEnabled(Z)V

    :cond_1
    return-void
.end method
