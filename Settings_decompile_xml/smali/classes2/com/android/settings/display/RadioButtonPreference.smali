.class public Lcom/android/settings/display/RadioButtonPreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "RadioButtonPreference.java"


# instance fields
.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mDefaultColorStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/display/RadioButtonPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/display/RadioButtonPreference;->init()V

    return-void
.end method

.method private generateTitleColorStateList()Landroid/content/res/ColorStateList;
    .locals 6

    const v0, 0x10100a0    # @android:attr/state_checked

    .line 78
    filled-new-array {v0}, [I

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 81
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 86
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 87
    filled-new-array {v0, v5}, [[I

    move-result-object v0

    .line 88
    sget v5, Lcom/android/settings/R$attr;->preferencePrimaryTextColor:I

    invoke-virtual {p0, v5, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 89
    iget p0, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    filled-new-array {v3, p0}, [I

    move-result-object p0

    .line 90
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/display/RadioButtonPreference;->generateTitleColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/RadioButtonPreference;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 44
    sget v0, Lcom/android/settings/R$layout;->preference_radiobutton:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const v1, 0x1020016    # @android:id/title

    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020010    # @android:id/summary

    .line 55
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 56
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 57
    check-cast v2, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    const v2, 0x1020001    # @android:id/checkbox

    if-eqz v1, :cond_4

    .line 60
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 61
    :goto_0
    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 63
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/display/RadioButtonPreference;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    .line 65
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/RadioButtonPreference;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/RadioButtonPreference;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 68
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    iget-object p0, p0, Lcom/android/settings/display/RadioButtonPreference;->mColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    :goto_1
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_4
    const/16 v0, 0xff

    .line 71
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    if-eqz p0, :cond_5

    .line 73
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    return-void
.end method
