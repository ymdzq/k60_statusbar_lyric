.class public Lcom/android/settings/notification/app/ImportancePreference;
.super Landroidx/preference/Preference;
.source "ImportancePreference.java"


# instance fields
.field private mAlertButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mImportance:I

.field private mIsConfigurable:Z

.field private mSilenceButton:Landroid/view/View;

.field selectedBackground:Landroid/graphics/drawable/Drawable;

.field unselectedBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$-VwutnIRXCirBpDHGY0cQpgnivM(Lcom/android/settings/notification/app/ImportancePreference;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ImportancePreference;->lambda$onBindViewHolder$3(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U17XNltua_bNxisEYOQoi5BvTSg(Lcom/android/settings/notification/app/ImportancePreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/app/ImportancePreference;->lambda$onBindViewHolder$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$frfdZf5xKTLK4rYqWzF0A2a6z-I(Lcom/android/settings/notification/app/ImportancePreference;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ImportancePreference;->lambda$onBindViewHolder$1(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mPGZJdrjsrnugDwDjsr5Ub0la5c(Lcom/android/settings/notification/app/ImportancePreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/app/ImportancePreference;->lambda$onBindViewHolder$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mIsConfigurable:Z

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ImportancePreference;->mIsConfigurable:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ImportancePreference;->mIsConfigurable:Z

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/notification/app/ImportancePreference;->mIsConfigurable:Z

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getAccentTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 156
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private getRegularTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 160
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010036    # @android:attr/textColorPrimary

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 79
    iput-object p1, p0, Lcom/android/settings/notification/app/ImportancePreference;->mContext:Landroid/content/Context;

    .line 80
    sget v0, Lcom/android/settings/R$drawable;->button_border_selected:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object p1, p0, Lcom/android/settings/notification/app/ImportancePreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->button_border_unselected:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    .line 82
    sget p1, Lcom/android/settings/R$layout;->notif_importance_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 140
    iget-object p0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x2

    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/settings/notification/app/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    .line 138
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/app/ImportancePreference;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 150
    iget-object p0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x3

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/settings/notification/app/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    .line 148
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/notification/app/ImportancePreference;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 104
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 106
    sget v0, Lcom/android/settings/R$id;->silence:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    .line 107
    sget v0, Lcom/android/settings/R$id;->alert:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mIsConfigurable:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/settings/notification/app/ImportancePreference;->mImportance:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/notification/app/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    .line 115
    iget v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mImportance:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setImportanceSummary(Landroid/view/ViewGroup;IZ)V
    .locals 3

    if-eqz p3, :cond_0

    .line 165
    new-instance p3, Landroid/transition/AutoTransition;

    invoke-direct {p3}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v0, 0x64

    .line 166
    invoke-virtual {p3, v0, v1}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 167
    invoke-static {p1, p3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/app/ImportancePreference;->getAccentTint()Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 171
    invoke-direct {p0}, Lcom/android/settings/notification/app/ImportancePreference;->getRegularTint()Landroid/content/res/ColorStateList;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt p2, v0, :cond_1

    .line 174
    sget p2, Lcom/android/settings/R$id;->silence_summary:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    sget p2, Lcom/android/settings/R$id;->silence_icon:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 176
    sget p2, Lcom/android/settings/R$id;->silence_label:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 178
    sget p0, Lcom/android/settings/R$id;->alert_icon:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 179
    sget p0, Lcom/android/settings/R$id;->alert_label:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 181
    sget p0, Lcom/android/settings/R$id;->alert_summary:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_1
    sget p2, Lcom/android/settings/R$id;->alert_summary:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    sget p2, Lcom/android/settings/R$id;->alert_icon:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 185
    sget p2, Lcom/android/settings/R$id;->alert_label:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 187
    sget p0, Lcom/android/settings/R$id;->silence_icon:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 188
    sget p0, Lcom/android/settings/R$id;->silence_label:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 189
    sget p0, Lcom/android/settings/R$id;->silence_summary:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
