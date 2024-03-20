.class public final Lcom/android/settings/accessibility/AccessibilityFooterPreference;
.super Lcom/android/settingslib/widget/FooterPreference;
.source "AccessibilityFooterPreference.java"


# instance fields
.field private mLinkEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/FooterPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 51
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020016    # @android:id/title

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "#808080"

    .line 53
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-boolean p0, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->mLinkEnabled:Z

    if-eqz p0, :cond_0

    .line 61
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p0, 0x0

    .line 65
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 67
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_0
    return-void
.end method

.method public setLinkEnabled(Z)V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->mLinkEnabled:Z

    if-eq v0, p1, :cond_0

    .line 76
    iput-boolean p1, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->mLinkEnabled:Z

    .line 77
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
