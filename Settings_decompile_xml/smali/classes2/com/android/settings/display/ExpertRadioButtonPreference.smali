.class public Lcom/android/settings/display/ExpertRadioButtonPreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "ExpertRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private arrow:Landroid/widget/ImageView;

.field isPreferenceScreenEnable:Z

.field private mSummaryCheckedTextView:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/android/settings/display/ExpertRadioButtonPreference;->isPreferenceScreenEnable:Z

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/display/ExpertRadioButtonPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/android/settings/display/ExpertRadioButtonPreference;->isPreferenceScreenEnable:Z

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/display/ExpertRadioButtonPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/android/settings/display/ExpertRadioButtonPreference;->isPreferenceScreenEnable:Z

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/display/ExpertRadioButtonPreference;->init()V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 49
    sget v0, Lcom/android/settings/R$layout;->expert_arrow:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 55
    sget v0, Lcom/android/settings/R$id;->arrow_image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/display/ExpertRadioButtonPreference;->arrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/display/ExpertRadioButtonPreference;->isPreferenceScreenEnable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/display/ExpertRadioButtonPreference;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/display/ExpertRadioButtonPreference;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x1020010    # @android:id/summary

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/android/settings/display/ExpertRadioButtonPreference;->mSummaryCheckedTextView:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_3

    .line 63
    new-instance v0, Lcom/android/settings/display/ExpertRadioButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ExpertRadioButtonPreference$1;-><init>(Lcom/android/settings/display/ExpertRadioButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.SCREEN_EXPERT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 90
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo p0, "screen_effect"

    const-string p1, "expert_details"

    .line 93
    invoke-static {p0, p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/display/ExpertRadioButtonPreference;->arrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 78
    iget-boolean p0, p0, Lcom/android/settings/display/ExpertRadioButtonPreference;->isPreferenceScreenEnable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setPreferenceScreenStatus(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/android/settings/display/ExpertRadioButtonPreference;->isPreferenceScreenEnable:Z

    return-void
.end method
