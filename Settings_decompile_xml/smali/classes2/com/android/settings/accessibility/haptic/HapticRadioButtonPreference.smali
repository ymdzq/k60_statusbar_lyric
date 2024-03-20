.class public Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;
.super Lcom/android/settings/accessibility/haptic/CustomRadioButtonPreference;
.source "HapticRadioButtonPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetailArrow:Landroid/widget/ImageView;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRootView:Landroid/view/View;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mlaunchScreenReaderSettings(Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->launchScreenReaderSettings()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/haptic/CustomRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 45
    sget v0, Lmiuix/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/accessibility/haptic/CustomRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accessibility/haptic/CustomRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mContext:Landroid/content/Context;

    .line 51
    sget p1, Lcom/android/settings/R$layout;->bg_custom_radio_btn_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 52
    sget p1, Lcom/android/settings/R$layout;->preference_widget_detail:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private launchScreenReaderSettings()V
    .locals 3

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SubSettings"

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment"

    .line 97
    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_args"

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_title_resid"

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, ":miui:starting_window_label"

    .line 100
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_title"

    .line 101
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 102
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/haptic/CustomRadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 58
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mRootView:Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->haptic_preference_container_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 60
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mRootView:Landroid/view/View;

    const v0, 0x1020001    # @android:id/checkbox

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 62
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mRootView:Landroid/view/View;

    const v0, 0x1020016    # @android:id/title

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mTitleView:Landroid/widget/TextView;

    .line 63
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mRootView:Landroid/view/View;

    const v0, 0x1020010    # @android:id/summary

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mSummaryView:Landroid/widget/TextView;

    .line 64
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->detail_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mDetailArrow:Landroid/widget/ImageView;

    const/4 v0, 0x2

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mDetailArrow:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$1;-><init>(Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance p1, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$2;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$2;-><init>(Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    new-instance p1, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$3;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference$3;-><init>(Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 90
    invoke-static {p1, v0}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isAccessibilityServiceOn(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->setPreferenceState(Z)V

    return-void
.end method

.method public setPreferenceState(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->haptic_radio_preference_bg_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->haptic_radio_preference_bg_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    if-eqz p1, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->haptic_radio_preference_title_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->haptic_radio_preference_title_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 117
    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 122
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->haptic_radio_preference_summary_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_2

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->haptic_radio_preference_summary_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 124
    :goto_2
    iget-object v1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 125
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 129
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->ic_arrow_detail_selected:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_3

    .line 130
    :cond_6
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->ic_arrow_detail_normal:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 131
    :goto_3
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->mDetailArrow:Landroid/widget/ImageView;

    if-eqz p0, :cond_7

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method
