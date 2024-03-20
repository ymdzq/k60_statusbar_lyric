.class Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;
.super Ljava/lang/Object;
.source "PrivacyPasswordUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->upgradeFingerprints(Landroid/content/Context;ILcom/android/settings/FingerprintHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/android/settings/FingerprintHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;->val$userId:I

    iput-object p3, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;->val$fingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string/jumbo v0, "privacy_verify_and_activate_fingerprint_"

    const-string v1, "com_android_settings_privacypassword_fingerprint_upgrade"

    .line 377
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    return-void

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;->val$context:Landroid/content/Context;

    const-string/jumbo v5, "privacy_password_sharedPreference"

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;->val$userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 384
    iget-object v6, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;->val$fingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v6}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v6

    .line 385
    iget-object v7, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;->val$fingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v7}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;->val$fingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 386
    invoke-virtual {v7}, Lcom/android/settings/FingerprintHelper;->hasEnrolledFingerprintsAppLock()Z

    move-result v7

    if-eqz v7, :cond_2

    move v3, v4

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    .line 387
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 388
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 389
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;->val$userId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 393
    :cond_4
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "PrivacyPasswordUtils"

    const-string/jumbo v1, "upgradeFingerprints failed"

    .line 395
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
