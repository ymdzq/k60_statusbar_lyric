.class public Lcom/android/settings/privacypassword/PrivacyPasswordManager;
.super Ljava/lang/Object;
.source "PrivacyPasswordManager.java"


# static fields
.field private static sInstance:Lcom/android/settings/privacypassword/PrivacyPasswordManager;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;
    .locals 2

    const-class v0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->sInstance:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-direct {v1, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->sInstance:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 48
    :cond_0
    sget-object p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->sInstance:Lcom/android/settings/privacypassword/PrivacyPasswordManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public bindXiaoMiAccount(Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->md5Hex([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string/jumbo v0, "privacy_add_account_md5"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public getACLockMode()I
    .locals 2

    .line 109
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "access_control_lock_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getBindXiaoMiAccount()Ljava/lang/String;
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "privacy_password_bind_xiaomi_account"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "privacy_add_account_md5"

    if-eqz v0, :cond_0

    .line 70
    iget-object v3, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->md5Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLockoutAttepmDeadline()J
    .locals 3

    .line 146
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "privacy_password_countDownTimer_deadline"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public havePattern()Z
    .locals 1

    .line 55
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyPasswordEnabled()Z

    move-result p0

    return p0
.end method

.method public isConvenientEnabled()Z
    .locals 2

    .line 113
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "access_control_lock_convenient"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isFingerprintEnable()Z
    .locals 2

    .line 94
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "fingerprint_apply_to_privacy_password"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNeverRemind()Z
    .locals 2

    .line 101
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "privacy_password_sharedPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "nerver_remind"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNeverRemindOpenFinger()Z
    .locals 2

    .line 117
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "privacy_password_sharedPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "remind_open_fingerprint"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isUsedPrivacyInBussiness()Z
    .locals 2

    .line 126
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "privacy_password_status"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isVisibilePattern()Z
    .locals 2

    .line 134
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "privacy_password_is_visible_pattern"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setFingerprintEnable(Z)V
    .locals 1

    .line 87
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const-string v0, "fingerprint_apply_to_privacy_password"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setIsNeverRemindOpenFinger(Z)V
    .locals 2

    .line 121
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "privacy_password_sharedPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "remind_open_fingerprint"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLockoutAttepmpDeadline(J)V
    .locals 1

    .line 142
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "privacy_password_countDownTimer_deadline"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public setNerverRemind(Z)V
    .locals 2

    .line 105
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "privacy_password_sharedPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "nerver_remind"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setPasswordEnable(Landroid/app/Activity;Z)V
    .locals 1

    .line 60
    new-instance p0, Landroid/security/ChooseLockSettingsHelper;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    .line 61
    invoke-virtual {p0, p2}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyPasswordEnable(Z)V

    return-void
.end method

.method public setUsedPrivacyInBussiness(Z)V
    .locals 1

    .line 130
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "privacy_password_status"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setVisibilePattern(Z)V
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "privacy_password_is_visible_pattern"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
