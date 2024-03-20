.class public Lcom/android/settings/compat/LockPatternUtilsCompat;
.super Ljava/lang/Object;
.source "LockPatternUtilsCompat.java"


# direct methods
.method public static checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 56
    invoke-static {p0, p1, p2}, Lcom/android/settings/compat/LockPatternUtilsCompat;->getCredential(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result p0

    return p0
.end method

.method public static checkPasswordHistory(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;[BI)Z
    .locals 0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory([B[BI)Z

    move-result p0

    return p0
.end method

.method public static checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result p0

    return p0
.end method

.method public static clearLock(Lcom/android/internal/widget/LockPatternUtils;IZLjava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    invoke-static {p0, p3, p1}, Lcom/android/settings/compat/LockPatternUtilsCompat;->getCredential(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    return-void
.end method

.method private static getCredential(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;
    .locals 1

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    .line 91
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 92
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 94
    :cond_1
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 97
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 98
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 103
    :cond_3
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method public static getPasswordHistoryHashFactor(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)[B
    .locals 0

    .line 27
    invoke-static {p0, p1, p2}, Lcom/android/settings/compat/LockPatternUtilsCompat;->getCredential(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHistoryHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static patternToString(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 82
    new-instance p0, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public static removeGatekeeperPasswordHandle(Lcom/android/internal/widget/LockPatternUtils;J)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    return-void
.end method

.method public static saveLockPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 0

    if-eqz p2, :cond_0

    .line 68
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    :goto_0
    invoke-static {p0, p3, p5}, Lcom/android/settings/compat/LockPatternUtilsCompat;->getCredential(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    .line 68
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    return-void
.end method

.method public static saveLockPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-static {p0, p2, p3}, Lcom/android/settings/compat/LockPatternUtilsCompat;->getCredential(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    return-void
.end method

.method public static setSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;IZLjava/lang/String;)V
    .locals 0

    .line 74
    invoke-static {p0, p3, p1}, Lcom/android/settings/compat/LockPatternUtilsCompat;->getCredential(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    return-void
.end method

.method public static stringToPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static verifyGatekeeperPasswordHandle(Lcom/android/internal/widget/LockPatternUtils;JJI)[B
    .locals 0

    .line 43
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/widget/LockPatternUtils;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p0

    return-object p0
.end method

.method public static verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 39
    invoke-static {p0, p1, p2}, Lcom/android/settings/compat/LockPatternUtilsCompat;->getCredential(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)",
            "Lcom/android/internal/widget/VerifyCredentialResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 52
    invoke-static {p0, p1, p3}, Lcom/android/settings/compat/LockPatternUtilsCompat;->getCredential(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/internal/widget/LockPatternUtils;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p0

    return-object p0
.end method
