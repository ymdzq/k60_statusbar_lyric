.class public Lcom/android/settings/FontSizePreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "FontSizePreference.java"


# instance fields
.field private mPreviewSize:I


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020016    # @android:id/title

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 25
    iget v1, p0, Lcom/android/settings/FontSizePreference;->mPreviewSize:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x1020010    # @android:id/summary

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 27
    iget p0, p0, Lcom/android/settings/FontSizePreference;->mPreviewSize:I

    int-to-float p0, p0

    invoke-virtual {p1, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
