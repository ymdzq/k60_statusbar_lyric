.class public Lcom/android/settings/widget/AppPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "AppPreference.java"

# interfaces
.implements Lcom/android/settingslib/miuisettings/preference/PreferenceFeature;


# instance fields
.field private mProgress:I

.field private mProgressVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget p1, Lcom/android/settings/R$layout;->preference_app:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public hasIcon()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 56
    sget v0, Lcom/android/settings/R$id;->summary_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x102000d    # @android:id/progress

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 59
    iget-boolean v0, p0, Lcom/android/settings/widget/AppPreference;->mProgressVisible:Z

    if-eqz v0, :cond_1

    .line 60
    iget p0, p0, Lcom/android/settings/widget/AppPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 61
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    return-void
.end method
