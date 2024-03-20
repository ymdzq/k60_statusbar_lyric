.class public abstract Lcom/android/settings/view/VisualCheckBoxPreference;
.super Landroidx/preference/Preference;
.source "VisualCheckBoxPreference.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;


# instance fields
.field private mChecked:Z

.field private mNegativeCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mNegativeContentRes:I

.field private mNegativeDescText:Ljava/lang/String;

.field private mNegativeTitleText:Ljava/lang/String;

.field private mPositiveCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mPositiveContentRes:I

.field private mPositiveDescText:Ljava/lang/String;

.field private mPositiveTitleText:Ljava/lang/String;

.field private mSetupContent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget v0, Lcom/android/settings/R$layout;->layout_visual_checkbox_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/view/VisualCheckBoxPreference;->fromAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private fromAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/android/settings/R$styleable;->VisualCheckBoxPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    sget p2, Lcom/android/settings/R$styleable;->VisualCheckBoxPreference_positiveTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mPositiveTitleText:Ljava/lang/String;

    .line 48
    sget p2, Lcom/android/settings/R$styleable;->VisualCheckBoxPreference_positiveDescription:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mPositiveDescText:Ljava/lang/String;

    .line 49
    sget p2, Lcom/android/settings/R$styleable;->VisualCheckBoxPreference_negativeTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mNegativeTitleText:Ljava/lang/String;

    .line 50
    sget p2, Lcom/android/settings/R$styleable;->VisualCheckBoxPreference_negativeDescription:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mNegativeDescText:Ljava/lang/String;

    .line 51
    sget p2, Lcom/android/settings/R$styleable;->VisualCheckBoxPreference_positiveContent:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mPositiveContentRes:I

    .line 52
    sget p2, Lcom/android/settings/R$styleable;->VisualCheckBoxPreference_negativeContent:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mNegativeContentRes:I

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setChecked(ZZ)V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mChecked:Z

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mChecked:Z

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mPositiveCheckBox:Lmiuix/visual/check/VisualCheckBox;

    if-eqz p1, :cond_2

    .line 133
    invoke-virtual {p1, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mNegativeCheckBox:Lmiuix/visual/check/VisualCheckBox;

    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p1, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 141
    iget-boolean p1, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mChecked:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private setupContent(Landroid/view/View;)V
    .locals 4

    .line 100
    iget-boolean v0, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mSetupContent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mSetupContent:Z

    .line 104
    sget v0, Lcom/android/settings/R$id;->border_positive:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/BorderLayout;

    .line 105
    sget v1, Lcom/android/settings/R$id;->border_negative:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/BorderLayout;

    .line 106
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 108
    iget v2, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mPositiveContentRes:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 111
    :goto_0
    iget v2, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mNegativeContentRes:I

    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 114
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/view/VisualCheckBoxPreference;->onCreateVisualContent(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private setupText(Landroid/view/View;)V
    .locals 3

    .line 73
    sget v0, Lcom/android/settings/R$id;->tv_positive_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckedTextView;

    .line 74
    iget-object v1, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mPositiveTitleText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mPositiveTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    sget v0, Lcom/android/settings/R$id;->tv_positive_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckedTextView;

    .line 80
    iget-object v1, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mPositiveDescText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mPositiveDescText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_1
    sget v0, Lcom/android/settings/R$id;->tv_negative_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckedTextView;

    .line 86
    iget-object v1, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mNegativeTitleText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mNegativeTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_2
    sget v0, Lcom/android/settings/R$id;->tv_negative_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckedTextView;

    .line 92
    iget-object v0, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mNegativeDescText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 95
    :cond_3
    iget-object p0, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mNegativeDescText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 58
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lmiuix/visual/check/VisualCheckGroup;

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 60
    sget v0, Lcom/android/settings/R$id;->checkbox_negative:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mNegativeCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 61
    sget v0, Lcom/android/settings/R$id;->checkbox_positive:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mPositiveCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 62
    iget-boolean v1, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mChecked:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0, v2}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/view/VisualCheckBoxPreference;->mNegativeCheckBox:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0, v2}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 67
    :goto_0
    invoke-virtual {p1, p0}, Lmiuix/visual/check/VisualCheckGroup;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/view/VisualCheckBoxPreference;->setupText(Landroid/view/View;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/view/VisualCheckBoxPreference;->setupContent(Landroid/view/View;)V

    return-void
.end method

.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 1

    .line 119
    sget p1, Lcom/android/settings/R$id;->checkbox_positive:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings/view/VisualCheckBoxPreference;->setChecked(ZZ)V

    return-void
.end method

.method protected abstract onCreateVisualContent(Landroid/view/View;Landroid/view/View;)V
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/android/settings/view/VisualCheckBoxPreference;->setChecked(ZZ)V

    return-void
.end method
