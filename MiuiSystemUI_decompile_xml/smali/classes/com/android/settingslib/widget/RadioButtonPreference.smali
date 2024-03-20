.class public Lcom/android/settingslib/widget/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAppendix:Landroid/view/View;

.field public final mAppendixVisibility:I

.field public mExtraWidget:Landroid/widget/ImageView;

.field public mExtraWidgetContainer:Landroid/view/View;

.field public mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendixVisibility:I

    .line 6
    const p1, 0x7f0d02e1    # @layout/preference_widget_radiobutton 'res/layout/preference_widget_radiobutton.xml'

    .line 8
    iput p1, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 11
    const p1, 0x7f0d02d9    # @layout/preference_radio 'res/layout/preference_radio.xml'

    .line 13
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 16
    iget-boolean p1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 18
    if-eqz p1, :cond_0

    .line 20
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 23
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 25
    :cond_0
    return-void
    .line 28
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    const v0, 0x7f0a0930    # @id/summary_container

    .line 5
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/16 v2, 0x8

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    .line 17
    move-result-object v3

    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    move v3, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v3, v1

    .line 29
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    const v0, 0x7f0a00d8    # @id/appendix

    .line 33
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendix:Landroid/view/View;

    .line 40
    if-eqz v0, :cond_1

    .line 42
    iget v3, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendixVisibility:I

    .line 44
    const/4 v4, -0x1

    .line 46
    if-eq v3, v4, :cond_1

    .line 47
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_1
    const v0, 0x7f0a0771    # @id/radio_extra_widget

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/ImageView;

    .line 59
    iput-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidget:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0a0772    # @id/radio_extra_widget_container

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidgetContainer:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    .line 72
    iput-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    .line 74
    iget-object v3, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidget:Landroid/widget/ImageView;

    .line 76
    if-eqz v3, :cond_4

    .line 78
    if-nez p1, :cond_2

    .line 80
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidgetContainer:Landroid/view/View;

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    .line 88
    if-eqz p0, :cond_3

    .line 90
    goto :goto_1

    .line 92
    :cond_3
    move v1, v2

    .line 93
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_4
    :goto_2
    return-void
    .line 97
.end method

.method public final onClick()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
