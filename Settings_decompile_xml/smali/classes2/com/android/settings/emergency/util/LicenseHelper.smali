.class public Lcom/android/settings/emergency/util/LicenseHelper;
.super Ljava/lang/Object;
.source "LicenseHelper.java"


# direct methods
.method public static buildPolicyRevoke(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    sget v1, Lcom/android/settings/R$string;->privacy_authorize_privacy_policy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    sget v2, Lcom/android/settings/R$string;->sos_privacy_policy_revoke_message_reject:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v2, Lcom/android/settings/emergency/util/LicenseHelper$5;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/util/LicenseHelper$5;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 181
    new-instance v3, Lcom/android/settings/emergency/util/UrlSpan;

    invoke-direct {v3, v2}, Lcom/android/settings/emergency/util/UrlSpan;-><init>(Lcom/android/settings/emergency/util/UrlSpan$UrlSpanOnClickListener;)V

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x21

    .line 182
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static buildPrivacyPolicyNotice(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    sget v1, Lcom/android/settings/R$string;->privacy_authorize_privacy_policy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {p0}, Lcom/android/settings/emergency/util/CommonUtils;->isSosNewFeatureSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    sget v2, Lcom/android/settings/R$string;->sos_privacy_dialog_message_new_version:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    sget v2, Lcom/android/settings/R$string;->sos_privacy_dialog_message_old_version:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    new-instance v2, Lcom/android/settings/emergency/util/LicenseHelper$2;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/util/LicenseHelper$2;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 84
    new-instance v3, Lcom/android/settings/emergency/util/UrlSpan;

    invoke-direct {v3, v2}, Lcom/android/settings/emergency/util/UrlSpan;-><init>(Lcom/android/settings/emergency/util/UrlSpan$UrlSpanOnClickListener;)V

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x21

    .line 85
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static buildPrivacyPolicyNoticeDisagree(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    sget v1, Lcom/android/settings/R$string;->privacy_authorize_privacy_policy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    sget v2, Lcom/android/settings/R$string;->sos_privacy_policy_change_message_reject:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v2, Lcom/android/settings/emergency/util/LicenseHelper$4;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/util/LicenseHelper$4;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 148
    new-instance v3, Lcom/android/settings/emergency/util/UrlSpan;

    invoke-direct {v3, v2}, Lcom/android/settings/emergency/util/UrlSpan;-><init>(Lcom/android/settings/emergency/util/UrlSpan$UrlSpanOnClickListener;)V

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x21

    .line 149
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static buildPrivacyPolicyNoticeUpdate(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    sget v1, Lcom/android/settings/R$string;->privacy_authorize_privacy_policy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/settings/R$string;->sos_privacy_policy_change_endtitle:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance v0, Lcom/android/settings/emergency/util/LicenseHelper$3;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/util/LicenseHelper$3;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 117
    new-instance v2, Lcom/android/settings/emergency/util/UrlSpan;

    invoke-direct {v2, v0}, Lcom/android/settings/emergency/util/UrlSpan;-><init>(Lcom/android/settings/emergency/util/UrlSpan$UrlSpanOnClickListener;)V

    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v1, 0x21

    .line 118
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static getSosPrivacyUrl()Ljava/lang/String;
    .locals 5

    .line 189
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 192
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v3, "_"

    if-eqz v2, :cond_0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://privacy.mi.com/sos-International/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://privacy.mi.com/SOS/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
