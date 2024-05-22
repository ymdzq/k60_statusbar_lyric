.class public Lcom/android/settingslib/RestrictedTopLevelPreference;
.super Landroidx/preference/Preference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    const v0, 0x7f04060a    # @attr/preferenceStyle

    .line 2
    const v1, 0x101008e    # @android:attr/preferenceStyle

    .line 5
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 13
    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 16
    invoke-direct {v0, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v0, p0, Lcom/android/settingslib/RestrictedTopLevelPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/RestrictedTopLevelPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 2
    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 4
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/RestrictedTopLevelPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 7
    return-void
    .line 10
.end method

.method public final performClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/RestrictedTopLevelPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 2
    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final setEnabled(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/settingslib/RestrictedTopLevelPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 4
    iget-boolean v1, v0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 11
    return-void

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 15
    return-void
    .line 18
.end method
