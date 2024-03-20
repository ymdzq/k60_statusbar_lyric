.class public abstract Lcom/android/settings/widget/TwoStateButtonPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TwoStateButtonPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButtonOff:Landroid/widget/Button;

.field private mButtonOn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/TwoStateButtonPreference;

    .line 44
    invoke-virtual {p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->getStateOnButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOn:Landroid/widget/Button;

    .line 45
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->getStateOffButton()Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOff:Landroid/widget/Button;

    .line 47
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public abstract onButtonClicked(Z)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->state_on_button:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 68
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->onButtonClicked(Z)V

    return-void
.end method

.method protected setButtonEnabled(Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected setButtonVisibility(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
