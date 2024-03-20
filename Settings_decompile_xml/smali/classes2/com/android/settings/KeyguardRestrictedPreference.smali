.class public Lcom/android/settings/KeyguardRestrictedPreference;
.super Lcom/android/settingslib/MiuiRestrictedPreference;
.source "KeyguardRestrictedPreference.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mFontScale:F

.field private mHandler:Landroid/os/Handler;

.field private mIconNeedPadding:Z

.field private mIsCardStyle:Z

.field private mIsDarkMode:Z

.field private mSelected:Z

.field private mShowBackground:Z

.field private mShowRightArrow:Z

.field private mShowTouchAnim:Z

.field private mValueView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFontScale(Lcom/android/settings/KeyguardRestrictedPreference;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mFontScale:F

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settingslib/MiuiRestrictedPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowRightArrow:Z

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowBackground:Z

    .line 35
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIconNeedPadding:Z

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsCardStyle:Z

    .line 37
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowTouchAnim:Z

    .line 39
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    iput p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mFontScale:F

    .line 44
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/MiuiRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowRightArrow:Z

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowBackground:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIconNeedPadding:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsCardStyle:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowTouchAnim:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    iput v2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mFontScale:F

    .line 44
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mContext:Landroid/content/Context;

    .line 57
    sget-object v2, Lcom/android/settings/R$styleable;->RestrictedPreferenceStyle:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 59
    :try_start_0
    sget v2, Lcom/android/settings/R$styleable;->RestrictedPreferenceStyle_showBackground:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowBackground:Z

    .line 60
    sget v2, Lcom/android/settings/R$styleable;->RestrictedPreferenceStyle_showRightArrow:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowRightArrow:Z

    .line 61
    sget v2, Lcom/android/settings/R$styleable;->RestrictedPreferenceStyle_iconNeedPadding:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIconNeedPadding:Z

    .line 62
    sget v2, Lcom/android/settings/R$styleable;->RestrictedPreferenceStyle_isCardStyle:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsCardStyle:Z

    .line 63
    sget v2, Lcom/android/settings/R$styleable;->RestrictedPreferenceStyle_showTouchAnim:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowTouchAnim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    iget-object p2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    iput p2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mFontScale:F

    const-string/jumbo p2, "uimode"

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsDarkMode:Z

    return-void

    :catchall_0
    move-exception p0

    .line 65
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/MiuiRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowRightArrow:Z

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowBackground:Z

    .line 35
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIconNeedPadding:Z

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsCardStyle:Z

    .line 37
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowTouchAnim:Z

    .line 39
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    iput p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mFontScale:F

    .line 44
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/MiuiRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowRightArrow:Z

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowBackground:Z

    .line 35
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIconNeedPadding:Z

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsCardStyle:Z

    .line 37
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowTouchAnim:Z

    .line 39
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    iput p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mFontScale:F

    .line 44
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private updateIcon(Z)V
    .locals 2

    const-string/jumbo v0, "unlock_set_pattern"

    .line 138
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsDarkMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->ic_unlock_pattern_icon:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v0, Lcom/android/settings/R$drawable;->ic_unlock_pattern_icon_selected:I

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    if-eqz p1, :cond_2

    .line 140
    sget p1, Lcom/android/settings/R$string;->current_password:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/android/settings/R$string;->unlock_set_unlock_pattern_summary:I

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_8

    :cond_3
    const-string/jumbo v0, "unlock_set_pin"

    .line 141
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsDarkMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    sget v0, Lcom/android/settings/R$drawable;->ic_unlock_pin_icon:I

    goto :goto_4

    :cond_5
    :goto_3
    sget v0, Lcom/android/settings/R$drawable;->ic_unlock_pin_icon_selected:I

    :goto_4
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    if-eqz p1, :cond_a

    .line 144
    sget p1, Lcom/android/settings/R$string;->current_password:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_8

    :cond_6
    const-string/jumbo v0, "unlock_set_password"

    .line 146
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsDarkMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    sget v0, Lcom/android/settings/R$drawable;->ic_unlock_password_icon:I

    goto :goto_6

    :cond_8
    :goto_5
    sget v0, Lcom/android/settings/R$drawable;->ic_unlock_password_icon_selected:I

    :goto_6
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    if-eqz p1, :cond_9

    .line 148
    sget p1, Lcom/android/settings/R$string;->current_password:I

    goto :goto_7

    :cond_9
    sget p1, Lcom/android/settings/R$string;->unlock_set_unlock_password_summary:I

    :goto_7
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_a
    :goto_8
    return-void
.end method


# virtual methods
.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 80
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsCardStyle:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/KeyguardRestrictedPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/KeyguardRestrictedPreference$1;-><init>(Lcom/android/settings/KeyguardRestrictedPreference;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowTouchAnim:Z

    if-eqz v0, :cond_1

    .line 94
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 96
    :cond_1
    sget v0, Lcom/android/settings/R$id;->value_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mValueView:Landroid/widget/TextView;

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsCardStyle:Z

    if-eqz v0, :cond_6

    const v0, 0x1020016    # @android:id/title

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020010    # @android:id/summary

    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    iget-object v2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsDarkMode:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 101
    :cond_2
    sget v3, Lcom/android/settings/R$color;->card_style_title_normal_color:I

    goto :goto_1

    .line 100
    :cond_3
    :goto_0
    sget v3, Lcom/android/settings/R$color;->card_style_title_selected_color:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIsDarkMode:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    if-eqz v2, :cond_4

    goto :goto_2

    .line 103
    :cond_4
    sget v2, Lcom/android/settings/R$color;->card_style_summary_normal_color:I

    goto :goto_3

    .line 102
    :cond_5
    :goto_2
    sget v2, Lcom/android/settings/R$color;->card_style_summary_selected_color:I

    :goto_3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowBackground:Z

    if-eqz v0, :cond_8

    .line 106
    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    if-eqz v0, :cond_7

    .line 107
    sget v0, Lcom/android/settings/R$drawable;->choose_unlock_item_background_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 109
    :cond_7
    sget v0, Lcom/android/settings/R$drawable;->choose_unlock_item_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    :cond_8
    :goto_4
    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mShowRightArrow:Z

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setShowRightArrow(Z)V

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mIconNeedPadding:Z

    if-eqz v0, :cond_9

    const v0, 0x1020006    # @android:id/icon

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    .line 118
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    iget-object v1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->choose_unlock_item_icon_left_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 120
    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$dimen;->choose_unlock_item_icon_right_padding:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    if-eq v0, p1, :cond_0

    .line 131
    iput-boolean p1, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mSelected:Z

    .line 132
    invoke-direct {p0, p1}, Lcom/android/settings/KeyguardRestrictedPreference;->updateIcon(Z)V

    .line 133
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setValue(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedPreference;->mValueView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
