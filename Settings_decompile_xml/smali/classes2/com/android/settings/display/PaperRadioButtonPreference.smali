.class public Lcom/android/settings/display/PaperRadioButtonPreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "PaperRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private detailArrow:Landroid/widget/ImageView;

.field private isShowRightArrow:Z

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private targetIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/PaperRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->isShowRightArrow:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperRadioButtonPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->mContext:Landroid/content/Context;

    .line 75
    sget p1, Lcom/android/settings/R$layout;->preference_widget_detail:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 37
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    sget v0, Lcom/android/settings/R$id;->detail_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->detailArrow:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p1, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->detailArrow:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->isShowRightArrow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->detailArrow:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/display/PaperRadioButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PaperRadioButtonPreference$1;-><init>(Lcom/android/settings/display/PaperRadioButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 58
    iget-object p1, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->targetIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    sget-boolean p1, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 60
    invoke-static/range {v0 .. v6}, Lcom/android/settings/MiuiUtils;->startPreferencePanel(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->targetIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShowRightArrow(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->isShowRightArrow:Z

    return-void
.end method

.method public setTargetIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->mActivity:Landroid/app/Activity;

    .line 70
    iput-object p2, p0, Lcom/android/settings/display/PaperRadioButtonPreference;->targetIntent:Landroid/content/Intent;

    return-void
.end method
