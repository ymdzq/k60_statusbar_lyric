.class Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "MiuiSmartCoverSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSmartCoverSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageRadioButtonPreference"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mNormalImageRes:I

.field private mSelectedImageRes:I

.field final synthetic this$0:Lcom/android/settings/MiuiSmartCoverSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;-><init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 205
    iput p3, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;->mNormalImageRes:I

    .line 206
    iput p4, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;->mSelectedImageRes:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;-><init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;->this$0:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    .line 195
    invoke-direct {p0, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    sget p1, Lcom/android/settings/R$layout;->radio_preference_imageview:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 211
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;->this$0:Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->smart_cover_item_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 213
    sget v0, Lcom/android/settings/R$id;->radio_button_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;->mImageView:Landroid/widget/ImageView;

    .line 214
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;->mSelectedImageRes:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;->mNormalImageRes:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
