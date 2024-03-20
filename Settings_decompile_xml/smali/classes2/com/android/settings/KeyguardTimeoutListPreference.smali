.class public Lcom/android/settings/KeyguardTimeoutListPreference;
.super Lcom/android/settings/KeyguardRestrictedListPreference;
.source "KeyguardTimeoutListPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/KeyguardTimeoutListPreference;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/KeyguardRestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "ro.vendor.display.type"

    .line 37
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "oled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "ro.display.type"

    .line 38
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mIsOled:Z

    .line 39
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private getBestIndex(J)I
    .locals 4

    .line 143
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 146
    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 147
    aget-object v2, p0, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyguardTimeoutListPreference"

    const-string p2, "could not persist screen timeout setting"

    .line 153
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method


# virtual methods
.method public disableUnusableTimeouts()V
    .locals 10

    .line 160
    iget-object v0, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 162
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    .line 164
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/settings/KeyguardTimeoutListPreference;->updateDisableState(Z)V

    .line 166
    iget-boolean v7, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mIsOled:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/KeyguardRestrictedListPreference;->isDisabledByAdmin()Z

    move-result v7

    if-nez v7, :cond_3

    const-wide/32 v7, 0x7ffffffe

    if-nez v0, :cond_2

    move-wide v3, v7

    goto :goto_2

    .line 167
    :cond_2
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_3
    :goto_2
    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    return-void

    .line 172
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 176
    :goto_3
    array-length v8, v1

    if-ge v5, v8, :cond_6

    .line 177
    aget-object v8, v1, v5

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-gtz v8, :cond_5

    .line 179
    aget-object v8, v0, v5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 183
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screen time out disabled, maxTimeout ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardTimeoutListPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/KeyguardTimeoutListPreference;->updateNoEntriesState()V

    return-void

    .line 188
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/settings/KeyguardRestrictedListPreference;->setEnabled(Z)V

    .line 190
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    array-length v0, v0

    if-ne v5, v0, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v1

    if-eq v0, v1, :cond_a

    .line 191
    :cond_8
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 193
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 192
    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 194
    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    int-to-long v1, v0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_9

    .line 197
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 198
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 199
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_a

    .line 202
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public hideListView()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardRestrictedListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mValueRight:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/KeyguardRestrictedListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/KeyguardTimeoutListPreference;->updateTimeoutPreferenceSummary()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 222
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 224
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "screen_off_timeout"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/KeyguardTimeoutListPreference;->updateTimeoutPreferenceSummary()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyguardTimeoutListPreference"

    const-string p2, "could not persist screen timeout setting"

    .line 228
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/KeyguardTimeoutListPreference;->disableUnusableTimeouts()V

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardRestrictedListPreference;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {v0}, Lcom/android/settings/compat/RestrictedLockUtilsCompat;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->admin_disabled_other_options_footer:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 51
    sget p1, Lcom/android/settings/R$id;->admin_disabled_other_options:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 52
    sget v1, Lcom/android/settings/R$id;->admin_more_details_link:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/android/settings/KeyguardTimeoutListPreference$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/KeyguardTimeoutListPreference$1;-><init>(Lcom/android/settings/KeyguardTimeoutListPreference;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :goto_0
    return-void
.end method

.method public updateDisableState(Z)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "no_config_screen_timeout"

    .line 76
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 75
    invoke-static {v0, v1, v2}, Lcom/android/settings/compat/RestrictedLockUtilsCompat;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/settings/KeyguardRestrictedListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/KeyguardRestrictedListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public updateNoEntriesState()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {v0}, Lcom/android/settings/compat/RestrictedLockUtilsCompat;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/settings/KeyguardRestrictedListPreference;->setEnabled(Z)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/KeyguardRestrictedListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/KeyguardRestrictedListPreference;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/settings/KeyguardRestrictedListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    return-void
.end method

.method public updateTimeoutPreferenceSummary()V
    .locals 8

    .line 107
    iget-object v0, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, 0x7530

    const-string/jumbo v3, "screen_off_timeout"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    const-string v4, ""

    if-gez v2, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 115
    array-length v5, v2

    if-nez v5, :cond_1

    goto :goto_1

    .line 118
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/settings/KeyguardTimeoutListPreference;->getBestIndex(J)I

    move-result v4

    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 122
    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "KeyguardTimeoutListPreference"

    const-string v7, "could not persist screen timeout setting"

    .line 124
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v5, v0

    :goto_0
    cmp-long v0, v5, v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    long-to-int v1, v5

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v0, v5

    if-nez v0, :cond_3

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mIsOled:Z

    if-nez v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->screen_never_timeout_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/settings/KeyguardTimeoutListPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->screen_timeout_summary:I

    aget-object v2, v2, v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 137
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mValueRight:Landroid/widget/TextView;

    if-eqz p0, :cond_5

    .line 138
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
