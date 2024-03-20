.class public Lcom/android/settingslib/RestrictedSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field public final mRestrictedSwitchSummary:Ljava/lang/CharSequence;

.field public final mUseAdditionalSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    const v0, 0x7f0407b9    # @attr/switchPreferenceStyle

    .line 2
    const v1, 0x101036d    # @android:attr/switchPreferenceStyle

    .line 5
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    .line 8
    move-result v0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 16
    new-instance v1, Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 18
    invoke-direct {v1, p1, p0, p2, v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;I)V

    .line 20
    iput-object v1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 23
    if-eqz p2, :cond_3

    .line 25
    sget-object v2, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    .line 27
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 29
    move-result-object p2

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 34
    move-result-object v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    iget v4, v3, Landroid/util/TypedValue;->type:I

    .line 40
    const/16 v5, 0x12

    .line 42
    if-ne v4, v5, :cond_0

    .line 44
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 46
    if-eqz v3, :cond_0

    .line 48
    goto :goto_0

    .line 50
    :cond_0
    move v2, v0

    .line 51
    :goto_0
    iput-boolean v2, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 52
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 54
    move-result-object v2

    .line 57
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    if-eqz v2, :cond_3

    .line 61
    iget p2, v2, Landroid/util/TypedValue;->type:I

    .line 63
    const/4 v3, 0x3

    .line 65
    if-ne p2, v3, :cond_3

    .line 66
    iget p2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 68
    if-eqz p2, :cond_2

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 72
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    .line 76
    goto :goto_1

    .line 78
    :cond_2
    iget-object p1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 79
    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    .line 81
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 83
    if-eqz p1, :cond_4

    .line 85
    const p1, 0x7f0d031b    # @layout/restricted_switch_preference 'res/layout/restricted_switch_preference.xml'

    .line 87
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 90
    iput-boolean v0, v1, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledSummary:Z

    .line 92
    :cond_4
    return-void
    .line 94
.end method


# virtual methods
.method public final onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 2
    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 4
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    const v0, 0x1020040    # @android:id/switch_widget

    .line 5
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 24
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    .line 27
    if-nez v0, :cond_2

    .line 29
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 37
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 45
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 47
    move-result-object v1

    .line 50
    new-instance v2, Lcom/android/settingslib/RestrictedSwitchPreference$$ExternalSyntheticLambda0;

    .line 51
    const v3, 0x7f1303e7    # @string/enabled_by_admin 'Enabled by admin'

    .line 53
    invoke-direct {v2, v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    .line 56
    const-string v0, "Settings.ENABLED_BY_ADMIN_SWITCH_SUMMARY"

    .line 59
    invoke-virtual {v1, v0, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 66
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 74
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 76
    move-result-object v1

    .line 79
    new-instance v2, Lcom/android/settingslib/RestrictedSwitchPreference$$ExternalSyntheticLambda0;

    .line 80
    const v3, 0x7f130393    # @string/disabled_by_admin 'Disabled by admin'

    .line 82
    invoke-direct {v2, v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    .line 85
    const-string v0, "Settings.DISABLED_BY_ADMIN_SWITCH_SUMMARY"

    .line 88
    invoke-virtual {v1, v0, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 93
    :cond_2
    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 94
    const v2, 0x1020006    # @android:id/icon

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v1

    .line 102
    check-cast v1, Landroid/widget/ImageView;

    .line 103
    iget-boolean v1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 105
    const/4 v2, 0x0

    .line 107
    if-eqz v1, :cond_4

    .line 108
    const v1, 0x7f0a009c    # @id/additional_summary

    .line 110
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p1

    .line 116
    check-cast p1, Landroid/widget/TextView;

    .line 117
    if-eqz p1, :cond_5

    .line 119
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 121
    iget-boolean p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    .line 123
    if-eqz p0, :cond_3

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    goto :goto_1

    .line 133
    :cond_3
    const/16 p0, 0x8

    .line 134
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    goto :goto_1

    .line 139
    :cond_4
    const v1, 0x1020010    # @android:id/summary

    .line 140
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object p1

    .line 146
    check-cast p1, Landroid/widget/TextView;

    .line 147
    if-eqz p1, :cond_5

    .line 149
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 151
    iget-boolean p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    .line 153
    if-eqz p0, :cond_5

    .line 155
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :cond_5
    :goto_1
    return-void
    .line 163
.end method

.method public final performClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

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

.method public setAppOps(Landroid/app/AppOpsManager;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setEnabled(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 6
    iget-boolean v3, v2, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    .line 8
    if-eqz v3, :cond_0

    .line 10
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 13
    move v2, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v1

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    iget-object v3, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 21
    iget-boolean v4, v3, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAppOps:Z

    .line 23
    if-eqz v4, :cond_1

    .line 25
    if-eqz v4, :cond_2

    .line 27
    iput-boolean v1, v3, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAppOps:Z

    .line 29
    invoke-virtual {v3}, Lcom/android/settingslib/RestrictedPreferenceHelper;->updateDisabledState()V

    .line 31
    goto :goto_1

    .line 34
    :cond_1
    move v0, v2

    .line 35
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 36
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 38
    :cond_3
    return-void
    .line 41
.end method
