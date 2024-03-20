.class public Lcom/android/settings/wifi/ButtonPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "ButtonPreference.java"


# instance fields
.field private mButtonIcon:Landroid/graphics/drawable/Drawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mImageButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    sget p1, Lcom/android/settings/R$layout;->wifi_button_preference_widget:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/android/settings/wifi/ButtonPreference;->mImageButton:Landroid/widget/ImageButton;

    .line 58
    iput-object p1, p0, Lcom/android/settings/wifi/ButtonPreference;->mButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object p1, p0, Lcom/android/settings/wifi/ButtonPreference;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private setButtonVisibility()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/ButtonPreference;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 92
    iget-object p0, p0, Lcom/android/settings/wifi/ButtonPreference;->mButtonIcon:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected initButton(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/ButtonPreference;->mImageButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 81
    sget v0, Lcom/android/settings/R$id;->button_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/settings/wifi/ButtonPreference;->mImageButton:Landroid/widget/ImageButton;

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/ButtonPreference;->mImageButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/ButtonPreference;->mButtonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/wifi/ButtonPreference;->mImageButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/settings/wifi/ButtonPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/ButtonPreference;->setButtonVisibility()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/ButtonPreference;->initButton(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/wifi/ButtonPreference;->setButtonVisibility()V

    return-void
.end method
