.class public Lcom/xiaomi/account/utils/LogEncryptUtils;
.super Ljava/lang/Object;
.source "LogEncryptUtils.java"


# direct methods
.method public static generateEncryptMessageLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 12
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils;->encrypt(Ljava/lang/String;)Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;

    move-result-object v0

    const-string v1, "#&^%s!!%s^&#"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    iget-object v3, v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;->encryptedKey:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v0, v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;->content:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method
