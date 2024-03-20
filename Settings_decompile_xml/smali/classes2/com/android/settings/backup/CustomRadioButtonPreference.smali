.class public Lcom/android/settings/backup/CustomRadioButtonPreference;
.super Lmiuix/preference/RadioButtonPreference;
.source "CustomRadioButtonPreference.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private radioButton:Landroid/widget/RadioButton;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    sget v0, Lmiuix/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setInternalItemIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 47
    iput-object p1, p0, Lcom/android/settings/backup/CustomRadioButtonPreference;->icon:Landroid/graphics/drawable/Drawable;

    .line 48
    iget-object v0, p0, Lcom/android/settings/backup/CustomRadioButtonPreference;->radioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 50
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/backup/CustomRadioButtonPreference;->radioButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings/backup/CustomRadioButtonPreference;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object p1, p0, Lcom/android/settings/backup/CustomRadioButtonPreference;->radioButton:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 53
    iget-object p0, p0, Lcom/android/settings/backup/CustomRadioButtonPreference;->radioButton:Landroid/widget/RadioButton;

    const p1, 0x106000d    # @android:color/transparent

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lmiuix/preference/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 34
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/backup/CustomRadioButtonPreference;->view:Landroid/view/View;

    const v0, 0x1020001    # @android:id/checkbox

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/settings/backup/CustomRadioButtonPreference;->radioButton:Landroid/widget/RadioButton;

    .line 36
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->backup_item_icon_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 38
    iget-object v0, p0, Lcom/android/settings/backup/CustomRadioButtonPreference;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object p1, p0, Lcom/android/settings/backup/CustomRadioButtonPreference;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/android/settings/backup/CustomRadioButtonPreference;->setInternalItemIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomItemIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/backup/CustomRadioButtonPreference;->setInternalItemIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
