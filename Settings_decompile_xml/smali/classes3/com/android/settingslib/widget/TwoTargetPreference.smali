.class public Lcom/android/settingslib/widget/TwoTargetPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "TwoTargetPreference.java"

# interfaces
.implements Lcom/android/settingslib/miuisettings/preference/PreferenceFeature;


# instance fields
.field private mHasIcon:Z

.field private mIconSize:I

.field private mMediumIconSize:I

.field private mSmallIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mHasIcon:Z

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mHasIcon:Z

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mHasIcon:Z

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mHasIcon:Z

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .locals 0

    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mHasIcon:Z

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mHasIcon:Z

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mHasIcon:Z

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Z)V

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mHasIcon:Z

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/widget/R$dimen;->two_target_pref_small_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mSmallIconSize:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settingslib/widget/R$dimen;->two_target_pref_medium_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mMediumIconSize:I

    .line 117
    invoke-virtual {p0}, Lcom/android/settingslib/widget/TwoTargetPreference;->getSecondTargetResId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public hasIcon()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mHasIcon:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 129
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 130
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020006    # @android:id/icon

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 143
    iget v1, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mIconSize:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mSmallIconSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 148
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mMediumIconSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    :cond_2
    :goto_0
    sget v0, Lcom/android/settingslib/widget/R$id;->two_target_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020018    # @android:id/widget_frame

    .line 155
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 156
    invoke-virtual {p0}, Lcom/android/settingslib/widget/TwoTargetPreference;->shouldHideSecondTarget()Z

    move-result p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 158
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz p1, :cond_6

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    .line 161
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mIconSize:I

    return-void
.end method

.method public setShowIcon(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mHasIcon:Z

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/android/settingslib/widget/TwoTargetPreference;->getSecondTargetResId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
