.class public Lcom/android/settings/AodNotificationListPreference;
.super Lcom/android/settings/KeyguardRestrictedListPreference;
.source "AodNotificationListPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/settings/KeyguardRestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object p1, p0, Lcom/android/settings/AodNotificationListPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private convertNotificationStatusToPrefIndex(I)I
    .locals 3

    .line 43
    iget-object p0, p0, Lcom/android/settings/AodNotificationListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->keyguard_notification_status_values:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 46
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 47
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardRestrictedListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 22
    iget-object p1, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mValueRight:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/AodNotificationListPreference;->updatePreferenceSummary()V

    :cond_0
    return-void
.end method

.method public updatePreferenceSummary()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/android/settings/AodNotificationListPreference;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getKeyguardNotificationStatus(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v0

    .line 31
    invoke-direct {p0, v0}, Lcom/android/settings/AodNotificationListPreference;->convertNotificationStatusToPrefIndex(I)I

    move-result v0

    .line 32
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 34
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->keyguard_notification_status_entries:I

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mValueRight:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 37
    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
