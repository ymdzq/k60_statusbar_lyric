.class public Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;
.super Lcom/android/settings/backup/CustomRadioButtonPreference;
.source "VoiceAccessRadioButtonPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetailArrow:Landroid/widget/ImageView;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRootView:Landroid/view/View;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mlaunchVoiceAccess(Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->launchVoiceAccess()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    sget v0, Lmiuix/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/backup/CustomRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    .line 51
    sget p1, Lcom/android/settings/R$layout;->preference_widget_detail:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/backup/CustomRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    .line 45
    sget p1, Lcom/android/settings/R$layout;->preference_widget_detail:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private launchVoiceAccess()V
    .locals 3

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.accessibility"

    const-string v2, "com.miui.accessibility.voiceaccess.settings.VoiceAccessSettings"

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object p0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/backup/CustomRadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 57
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mRootView:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->voice_access_preference_container_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 59
    iget-object v0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mRootView:Landroid/view/View;

    const v1, 0x1020001    # @android:id/checkbox

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 61
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 63
    iget-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mRootView:Landroid/view/View;

    const v0, 0x1020016    # @android:id/title

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mTitleView:Landroid/widget/TextView;

    .line 66
    iget-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mRootView:Landroid/view/View;

    const v0, 0x1020010    # @android:id/summary

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mSummaryView:Landroid/widget/TextView;

    .line 67
    iget-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->detail_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mDetailArrow:Landroid/widget/ImageView;

    const/4 v0, 0x2

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mDetailArrow:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference$1;-><init>(Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance p1, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference$2;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference$2;-><init>(Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessController;->isVoiceAccessOn(Landroid/content/Context;)Z

    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->setPreferenceState(Z)V

    return-void
.end method

.method public setPreferenceState(Z)V
    .locals 4

    if-nez p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->ic_voice_access_normal:I

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    sget v0, Lcom/android/settings/R$drawable;->ic_voice_access_selected:I

    .line 97
    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/backup/CustomRadioButtonPreference;->setCustomItemIcon(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->voice_access_radio_preference_bg_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->voice_access_radio_preference_bg_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 102
    :goto_2
    iget-object v1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mRootView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    if-eqz p1, :cond_4

    .line 108
    iget-object v0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->voice_access_radio_preference_title_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_3

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->voice_access_radio_preference_title_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 110
    :goto_3
    iget-object v1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 111
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 115
    iget-object v0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->voice_access_radio_preference_summary_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_4

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->voice_access_radio_preference_summary_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_4
    if-eqz p1, :cond_7

    .line 118
    iget-object v1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->vpn_on:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 119
    :cond_7
    iget-object v1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->vpn_off:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    :goto_5
    iget-object v3, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 121
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    if-eqz p1, :cond_9

    .line 127
    iget-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->ic_arrow_detail_selected:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_6

    .line 128
    :cond_9
    iget-object p1, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->ic_arrow_detail_normal:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 129
    :goto_6
    iget-object p0, p0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessRadioButtonPreference;->mDetailArrow:Landroid/widget/ImageView;

    if-eqz p0, :cond_a

    .line 130
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void
.end method
