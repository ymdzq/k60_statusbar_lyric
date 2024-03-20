.class public Lcom/android/settings/accessibility/haptic/CustomRadioButtonPreference;
.super Lmiuix/preference/RadioButtonPreference;
.source "CustomRadioButtonPreference.java"


# instance fields
.field private radioButton:Landroid/widget/RadioButton;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 27
    sget v0, Lmiuix/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lmiuix/preference/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 33
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/CustomRadioButtonPreference;->view:Landroid/view/View;

    const v0, 0x1020001    # @android:id/checkbox

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/CustomRadioButtonPreference;->radioButton:Landroid/widget/RadioButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 37
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/CustomRadioButtonPreference;->radioButton:Landroid/widget/RadioButton;

    const p1, 0x106000d    # @android:color/transparent

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    :cond_0
    return-void
.end method
