.class public abstract Lcom/xiaomi/accountsdk/request/PassportRequest;
.super Ljava/lang/Object;
.source "PassportRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation
.end method

.method public final executeEx()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/exception/PassportCAException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;
        }
    .end annotation

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;->execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 33
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    if-nez v0, :cond_9

    .line 35
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    if-nez v0, :cond_8

    .line 37
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    if-nez v0, :cond_7

    .line 39
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    if-nez v0, :cond_6

    .line 41
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    if-nez v0, :cond_5

    .line 43
    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_4

    .line 45
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    if-nez v0, :cond_3

    .line 47
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    if-nez v0, :cond_2

    .line 49
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    if-nez v0, :cond_1

    .line 51
    instance-of v0, p0, Lcom/xiaomi/account/exception/PassportCAException;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lcom/xiaomi/account/exception/PassportCAException;

    throw p0

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_1
    check-cast p0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    throw p0

    .line 48
    :cond_2
    check-cast p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    throw p0

    .line 46
    :cond_3
    check-cast p0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    throw p0

    .line 44
    :cond_4
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 42
    :cond_5
    check-cast p0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    throw p0

    .line 40
    :cond_6
    check-cast p0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    throw p0

    .line 38
    :cond_7
    check-cast p0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    throw p0

    .line 36
    :cond_8
    check-cast p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    throw p0

    .line 34
    :cond_9
    check-cast p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    throw p0
.end method
