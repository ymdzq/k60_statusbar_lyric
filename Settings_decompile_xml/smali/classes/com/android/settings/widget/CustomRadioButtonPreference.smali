.class public Lcom/android/settings/widget/CustomRadioButtonPreference;
.super Lmiuix/preference/RadioButtonPreference;
.source "CustomRadioButtonPreference.java"


# instance fields
.field private mSummaryCheckedTextView:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 24
    sget v0, Lmiuix/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lmiuix/preference/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 30
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020010    # @android:id/summary

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/android/settings/widget/CustomRadioButtonPreference;->mSummaryCheckedTextView:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    .line 32
    new-instance v0, Lcom/android/settings/widget/CustomRadioButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/CustomRadioButtonPreference$1;-><init>(Lcom/android/settings/widget/CustomRadioButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method
