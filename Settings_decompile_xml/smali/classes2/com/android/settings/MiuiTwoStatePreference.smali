.class public abstract Lcom/android/settings/MiuiTwoStatePreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "MiuiTwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiTwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field protected mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/MiuiTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/MiuiTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/settings/MiuiTwoStatePreference;->mChecked:Z

    return p0
.end method

.method protected onClick()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/MiuiTwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 183
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/MiuiTwoStatePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    check-cast p1, Lcom/android/settings/MiuiTwoStatePreference$SavedState;

    .line 259
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 260
    iget-boolean p1, p1, Lcom/android/settings/MiuiTwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiTwoStatePreference;->setChecked(Z)V

    return-void

    .line 254
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 239
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 245
    :cond_0
    new-instance v1, Lcom/android/settings/MiuiTwoStatePreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/MiuiTwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/MiuiTwoStatePreference;->isChecked()Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/settings/MiuiTwoStatePreference$SavedState;->checked:Z

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 188
    iget-boolean p1, p0, Lcom/android/settings/MiuiTwoStatePreference;->mChecked:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedBoolean(Z)Z

    move-result p1

    goto :goto_0

    .line 189
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 188
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiTwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .line 77
    iget-boolean v0, p0, Lcom/android/settings/MiuiTwoStatePreference;->mChecked:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 78
    iget-boolean v2, p0, Lcom/android/settings/MiuiTwoStatePreference;->mCheckedSet:Z

    if-nez v2, :cond_2

    .line 79
    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/MiuiTwoStatePreference;->mChecked:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/settings/MiuiTwoStatePreference;->mCheckedSet:Z

    .line 81
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/MiuiTwoStatePreference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 84
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 3

    .line 100
    iget-boolean v0, p0, Lcom/android/settings/MiuiTwoStatePreference;->mDisableDependentsState:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/MiuiTwoStatePreference;->mChecked:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MiuiTwoStatePreference;->mChecked:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 101
    invoke-super {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method
