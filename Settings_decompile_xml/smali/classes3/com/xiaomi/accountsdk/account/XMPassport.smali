.class public Lcom/xiaomi/accountsdk/account/XMPassport;
.super Ljava/lang/Object;
.source "XMPassport.java"


# static fields
.field public static final ACCOUNT_DOMAIN:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final INT_0:Ljava/lang/Integer;

.field private static final TIMEOUT_LONG_POLLING:Ljava/lang/Integer;

.field public static final URL_ACCOUNT_API_V2_BASE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final URL_ACCOUNT_API_V3_BASE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final URL_ACCOUNT_BASE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final URL_ACCOUNT_SAFE_API_BASE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final URL_ACOUNT_API_BASE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final URL_ACOUNT_API_BASE_SECURE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final URL_ACOUNT_API_BASE_V2_SECURE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USE_PREVIEW:Z

.field static sDisableLoginFallbackForTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 113
    sget-boolean v0, Lcom/xiaomi/accountsdk/account/URLs;->USE_PREVIEW:Z

    sput-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassport;->USE_PREVIEW:Z

    .line 116
    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->ACCOUNT_DOMAIN:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->ACCOUNT_DOMAIN:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACCOUNT_BASE:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->URL_ACCOUNT_BASE:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACOUNT_API_BASE:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->URL_ACOUNT_API_BASE:Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACOUNT_API_BASE_SECURE:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->URL_ACOUNT_API_BASE_SECURE:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACOUNT_API_BASE_V2_SECURE:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->URL_ACOUNT_API_BASE_V2_SECURE:Ljava/lang/String;

    .line 131
    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACCOUNT_SAFE_API_BASE:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->URL_ACCOUNT_SAFE_API_BASE:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACCOUNT_API_V2_BASE:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->URL_ACCOUNT_API_V2_BASE:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACCOUNT_API_V3_BASE:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->URL_ACCOUNT_API_V3_BASE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/accountsdk/account/XMPassport;->INT_0:Ljava/lang/Integer;

    .line 193
    sput-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassport;->sDisableLoginFallbackForTest:Z

    const v0, 0x493e0

    .line 3840
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->TIMEOUT_LONG_POLLING:Ljava/lang/Integer;

    return-void
.end method

.method private static addDeviceIdInCookies(Lcom/xiaomi/accountsdk/utils/EasyMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/utils/EasyMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 3881
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 3882
    invoke-static {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/OAIDUtil;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3883
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassport;->getHashedDeviceId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_1

    .line 3885
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "deviceId cannot be empty"

    invoke-static {v0, v2, v4, v3}, Lcom/xiaomi/accountsdk/utils/AssertionUtils;->checkCondition(Landroid/content/Context;ZLjava/lang/String;Z)V

    :cond_1
    const-string v0, "deviceId"

    .line 3887
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p0

    const-string v0, "pass_o"

    .line 3888
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p0

    const-string/jumbo v0, "userSpaceId"

    .line 3889
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/UserSpaceIdUtil;->getNullableUserSpaceIdCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    return-object p1

    .line 3879
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cookie params should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static fillCommonParams(Lcom/xiaomi/accountsdk/utils/EasyMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/utils/EasyMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 3897
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->getDefaultLocaleParam()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected static getClientSign(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 779
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 781
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "nonce"

    invoke-virtual {v0, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 782
    invoke-static {p0, p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHashedDeviceId()Ljava/lang/String;
    .locals 2

    .line 3902
    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->getHashedDeviceIdNoThrow()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetaLoginData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 789
    :try_start_0
    invoke-static {p0, p1, v0, v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->loginByPassToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string p1, "Unexpected login success with empty pass token"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 793
    :catch_0
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string p1, "PackageNameDeniedException is unexpected with empty userId or passToken"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 791
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->getMetaLoginData()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object p0

    return-object p0
.end method

.method private static getServiceTokenByStsUrl(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Ljava/lang/Long;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceId:Ljava/lang/String;

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start sts request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMPassport"

    invoke-static {v2, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->getClientSign(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1047
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getAutoLoginUrl()Ljava/lang/String;

    move-result-object v2

    .line 1048
    new-instance v3, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v4, "clientSign"

    .line 1049
    invoke-virtual {v3, v4, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p1

    const-string v3, "_userIdNeedEncrypt"

    const-string/jumbo v4, "true"

    .line 1050
    invoke-virtual {p1, v3, v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p1

    .line 1052
    sget-object v3, Lcom/xiaomi/accountsdk/request/log/HttpMethod;->GET:Lcom/xiaomi/accountsdk/request/log/HttpMethod;

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper;->newRequestLog(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/log/HttpMethod;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLog;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLog;->paramOrNull(Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLog;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$Log;->log()V

    const/4 v3, 0x0

    .line 1054
    invoke-static {v2, p1, v3, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequestForAccount;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1

    .line 1055
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s_serviceToken"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "serviceToken"

    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper;->newResponseLog(Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogWithMask;

    move-result-object v2

    .line 1056
    invoke-interface {v2, p1}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogWithMask;->jsonResponseWithMaskOrNull(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogWithMask;

    move-result-object v2

    .line 1057
    invoke-interface {v2}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$Log;->log()V

    if-eqz p1, :cond_3

    .line 1062
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 1063
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1064
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1065
    invoke-virtual {p1, v5}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1066
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1067
    :cond_0
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no service token contained in callback cookies: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1072
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_slh"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1073
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_ph"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1075
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getCookieKeys()Ljava/util/Set;

    move-result-object v4

    .line 1076
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1077
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1078
    invoke-virtual {p1, v6}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1079
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1082
    :cond_2
    new-instance p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    .line 1083
    invoke-virtual {p1, v4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->userId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    .line 1084
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->serviceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    .line 1085
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->passToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    .line 1086
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->encryptedUserId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    .line 1087
    invoke-virtual {p1, v2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->serviceToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    .line 1088
    invoke-static {v5}, Lcom/xiaomi/passport/utils/HttpCookies;->stringify(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->stsCookies(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    .line 1089
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->security(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->psecurity:Ljava/lang/String;

    .line 1090
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->psecurity(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasLocalChannel:Ljava/lang/Boolean;

    .line 1091
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->hasLocalChannel(Ljava/lang/Boolean;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    .line 1092
    invoke-virtual {p1, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->slh(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    .line 1093
    invoke-virtual {p1, v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->ph(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->rePassToken:Ljava/lang/String;

    .line 1094
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->rePassToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasPwd:Z

    .line 1095
    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->hasPwd(Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 1096
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->build()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0

    .line 1059
    :cond_3
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string p1, "no response when get service token"

    invoke-direct {p0, v1, p1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "failed to get client sign"

    .line 1043
    invoke-static {v2, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo p1, "sign parameters failure"

    invoke-direct {p0, v1, p1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static logLoginResponseAllowNull(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)V
    .locals 2

    const-string v0, "passToken"

    const-string v1, "Set-Cookie"

    .line 3906
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper;->newResponseLog(Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogWithMask;

    move-result-object p0

    .line 3907
    invoke-interface {p0, p1}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogWithMask;->jsonResponseWithMaskOrNull(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$ResponseLogWithMask;

    move-result-object p0

    .line 3908
    invoke-interface {p0}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$Log;->log()V

    return-void
.end method

.method public static loginByPassToken(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException;
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 552
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->loginRequestUrl:Ljava/lang/String;

    .line 553
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->URL_LOGIN_HTTPS:Ljava/lang/String;

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->serviceId:Ljava/lang/String;

    .line 558
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "passport"

    :cond_1
    move-object v4, v1

    .line 562
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->userId:Ljava/lang/String;

    .line 563
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->passToken:Ljava/lang/String;

    .line 564
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->deviceId:Ljava/lang/String;

    .line 565
    iget-object v5, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->uDevId:Ljava/lang/String;

    .line 566
    iget-boolean v7, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->returnStsUrl:Z

    .line 567
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v8, "sid"

    invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 568
    new-instance v9, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v9}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    .line 569
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 570
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 571
    invoke-virtual {v9, v8, v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 572
    invoke-static {v4}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->addExtendedSidUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v6, "_json"

    const-string/jumbo v8, "true"

    .line 574
    invoke-virtual {v9, v6, v8}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 576
    iget-object v6, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "appName"

    .line 577
    iget-object v8, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6, v8}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 580
    :cond_3
    iget-boolean v6, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->isGetPhoneTicketLoginMetaData:Z

    if-eqz v6, :cond_4

    const-string v6, "_loginSign"

    const-string/jumbo v8, "ticket"

    .line 581
    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_4
    invoke-static {v9}, Lcom/xiaomi/accountsdk/account/XMPassport;->fillCommonParams(Lcom/xiaomi/accountsdk/utils/EasyMap;)V

    .line 585
    new-instance v6, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v6}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string/jumbo v8, "userId"

    .line 586
    invoke-virtual {v6, v8, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v6

    const-string v8, "passToken"

    .line 587
    invoke-virtual {v6, v8, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v1

    const-string/jumbo v6, "uDevId"

    .line 588
    invoke-virtual {v1, v6, v5}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v1

    .line 589
    invoke-static {v1, v3}, Lcom/xiaomi/accountsdk/account/XMPassport;->addDeviceIdInCookies(Lcom/xiaomi/accountsdk/utils/EasyMap;Ljava/lang/String;)Ljava/lang/String;

    .line 591
    new-instance v3, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;-><init>()V

    .line 592
    invoke-virtual {v3, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->setUrl(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v3, v1}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->putAllCookies(Ljava/util/Map;)V

    .line 594
    invoke-virtual {v3, v9}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->putAllParams(Ljava/util/Map;)V

    const/4 v5, 0x1

    .line 595
    invoke-virtual {v3, v5}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->setReadBody(Z)V

    .line 597
    new-instance v6, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassToken;

    invoke-direct {v6, v3}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassToken;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    .line 600
    :try_start_0
    sget-object v3, Lcom/xiaomi/accountsdk/request/log/HttpMethod;->GET:Lcom/xiaomi/accountsdk/request/log/HttpMethod;

    new-array v5, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v5, v11

    invoke-static {v0, v3, v5}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper;->newRequestLog(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/log/HttpMethod;[Ljava/lang/String;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLogWithMask;

    move-result-object v3

    .line 601
    invoke-interface {v3, v1}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLogWithMask;->cookieWithMaskOrNull(Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLogWithMask;

    move-result-object v1

    .line 602
    invoke-interface {v1, v9}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLog;->paramOrNull(Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLog;

    move-result-object v1

    .line 603
    invoke-interface {v1}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$Log;->log()V

    .line 604
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 605
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->addExtendedCallingPkgNameUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v10, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_5
    invoke-virtual {v6}, Lcom/xiaomi/accountsdk/request/PassportRequest;->executeEx()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v3

    .line 609
    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/account/XMPassport;->logLoginResponseAllowNull(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)V

    if-eqz v3, :cond_7

    const/4 v5, 0x1

    .line 615
    invoke-virtual {v6}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->isResultFromCA()Z

    move-result v6

    .line 613
    invoke-static/range {v2 .. v7}, Lcom/xiaomi/accountsdk/account/XMPassport;->processLoginContent(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/exception/PassportCAException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 625
    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->removeExtendedUserAgentForCurrentThread(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-object p0

    .line 611
    :cond_7
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "failed to get response from service server"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/xiaomi/account/exception/PassportCAException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 622
    :catch_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 620
    :catch_1
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v0, "Unexpected NeedCaptchaException"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 618
    :catch_2
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v0, "Unexpected NeedVerificationException"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 624
    :goto_1
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 625
    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->removeExtendedUserAgentForCurrentThread(Ljava/lang/String;)V

    goto :goto_2

    .line 627
    :cond_8
    throw p0

    .line 549
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "passToken login params can not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loginByPassToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;
        }
    .end annotation

    .line 531
    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->URL_LOGIN_HTTPS:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->loginByPassToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static loginByPassToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;
        }
    .end annotation

    .line 539
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/accountsdk/account/XMPassport;->loginByPassTokenNE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 541
    :catch_0
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string p1, "Unexpected NeedNotificationException"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loginByPassTokenNE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException;
        }
    .end annotation

    .line 513
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;-><init>()V

    .line 514
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->userId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 515
    invoke-virtual {p0, p3}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->passToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 516
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->serviceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 517
    invoke-virtual {p0, p4}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->loginRequestUrl(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 518
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->deviceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 519
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->isReturnStsUrl(Z)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 520
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->isGetPhoneTicketLoginMetaData(Z)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 521
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->build()Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;

    move-result-object p0

    .line 522
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->loginByPassToken(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static loginByPassword(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
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

    if-eqz p0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->password:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 335
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->userId:Ljava/lang/String;

    .line 337
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->deviceId:Ljava/lang/String;

    .line 338
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->serviceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "passport"

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->serviceId:Ljava/lang/String;

    .line 339
    :goto_0
    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->verifyToken:Ljava/lang/String;

    .line 340
    iget-object v5, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->captIck:Ljava/lang/String;

    .line 341
    iget-object v6, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->captCode:Ljava/lang/String;

    .line 343
    iget-boolean v7, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->returnStsUrl:Z

    .line 344
    iget-boolean v8, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->needProcessNotification:Z

    .line 345
    iget-object v9, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 346
    iget-object v10, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    .line 347
    iget-object v11, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->countryCode:Ljava/lang/String;

    .line 348
    new-instance v12, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v12}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    .line 350
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getPassWordEncryptor()Lcom/xiaomi/accountsdk/account/PasswordEncryptor;

    .line 361
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->getMd5DigestUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "hash"

    invoke-virtual {v12, v13, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v0, "user"

    .line 363
    invoke-virtual {v12, v0, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string/jumbo v14, "sid"

    .line 364
    invoke-virtual {v0, v14, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string v14, "captCode"

    .line 365
    invoke-virtual {v0, v14, v6}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string v6, "cc"

    .line 366
    invoke-virtual {v0, v6, v11}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string v6, "_json"

    const-string/jumbo v11, "true"

    .line 367
    invoke-virtual {v0, v6, v11}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 368
    invoke-static {v12}, Lcom/xiaomi/accountsdk/account/XMPassport;->fillCommonParams(Lcom/xiaomi/accountsdk/utils/EasyMap;)V

    .line 370
    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v6, "ick"

    .line 371
    invoke-virtual {v0, v6, v5}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->ticketToken:Ljava/lang/String;

    const-string/jumbo v5, "ticketToken"

    .line 372
    invoke-virtual {v0, v5, p0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p0

    .line 374
    invoke-static {p0, v2}, Lcom/xiaomi/accountsdk/account/XMPassport;->addDeviceIdInCookies(Lcom/xiaomi/accountsdk/utils/EasyMap;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "activatorToken"

    const-string/jumbo v2, "userHash"

    if-eqz v10, :cond_1

    .line 377
    iget-object v6, v10, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phoneHash:Ljava/lang/String;

    invoke-virtual {v12, v2, v6}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 378
    iget-object v6, v10, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->activatorToken:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 381
    :cond_1
    new-instance v6, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v6}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string/jumbo v10, "vToken"

    .line 382
    invoke-virtual {v6, v10, v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v4

    .line 384
    sget-object v6, Lcom/xiaomi/accountsdk/account/URLs;->URL_LOGIN_AUTH2_HTTPS:Ljava/lang/String;

    .line 385
    new-instance v10, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    invoke-direct {v10}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;-><init>()V

    .line 386
    invoke-virtual {v10, v12}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->putAllParams(Ljava/util/Map;)V

    .line 387
    invoke-virtual {v10, p0}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->putAllCookies(Ljava/util/Map;)V

    .line 388
    invoke-virtual {v10, v4}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->putAllHeaders(Ljava/util/Map;)V

    .line 389
    invoke-virtual {v10, v6}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->setUrl(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 390
    invoke-virtual {v10, v4}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->setReadBody(Z)V

    .line 395
    new-instance v11, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;

    invoke-direct {v11, v10, v1, v3, v9}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)V

    .line 400
    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/request/log/HttpMethod;->POST:Lcom/xiaomi/accountsdk/request/log/HttpMethod;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v13, v9, v10

    aput-object v5, v9, v4

    const/4 v4, 0x2

    aput-object v2, v9, v4

    const/4 v2, 0x3

    aput-object v0, v9, v2

    const-string v0, "EUI"

    const/4 v2, 0x4

    aput-object v0, v9, v2

    invoke-static {v6, v1, v9}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper;->newRequestLog(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/log/HttpMethod;[Ljava/lang/String;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLogWithMask;

    move-result-object v0

    .line 401
    invoke-interface {v0, v12}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLogWithMask;->paramWithMaskOrNull(Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLogWithMask;

    move-result-object v0

    .line 402
    invoke-interface {v0, p0}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLogWithMask;->cookieWithMaskOrNull(Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$RequestLogWithMask;

    move-result-object p0

    .line 403
    invoke-interface {p0}, Lcom/xiaomi/accountsdk/request/log/ProtocolLogHelper$Log;->log()V

    .line 404
    invoke-virtual {v11}, Lcom/xiaomi/accountsdk/request/PassportRequest;->executeEx()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 405
    invoke-static {v6, p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->logLoginResponseAllowNull(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)V
    :try_end_0
    .catch Lcom/xiaomi/account/exception/PassportCAException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_2

    .line 414
    :try_start_1
    invoke-static {p0, v3, v8, v7}, Lcom/xiaomi/accountsdk/account/XMPassport;->processLoginContent(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 416
    :catch_0
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v0, "It\'s not loginByPassToken(), PackageNameDeniedException is unexpected"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 411
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "failed to get response from server"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 407
    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "this should never happen in product environment.Have you set sDisableLoginFallbackForTest to be true? "

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "password params should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loginByPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Z[Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
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

    .line 260
    :try_start_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->getInstance()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 258
    invoke-static/range {v0 .. v10}, Lcom/xiaomi/accountsdk/account/XMPassport;->loginByPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Z[Ljava/lang/String;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0
    :try_end_0
    .catch Lcom/xiaomi/account/exception/PassportCAException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 262
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this should never happen in product environment.Have you set sDisableLoginFallbackForTest to be true? "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static loginByPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Z[Ljava/lang/String;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Lcom/xiaomi/account/exception/PassportCAException;
        }
    .end annotation

    .line 311
    new-instance p9, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    invoke-direct {p9}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;-><init>()V

    .line 312
    invoke-virtual {p9, p0}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->setUserId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 313
    invoke-virtual {p0, p3}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->setPassword(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->setDeviceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 315
    invoke-virtual {p0, p4}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->setCaptCode(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 316
    invoke-virtual {p0, p5}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->setCaptIck(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 317
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->setServiceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 318
    invoke-virtual {p0, p6}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->setMetaLoginData(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 319
    invoke-virtual {p0, p7}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->setNeedProcessNotification(Z)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 320
    invoke-virtual {p0, p10}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->setIsReturnStsUrl(Z)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 321
    invoke-virtual {p0, p8}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->setHashedEnvFactors([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->build()Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    move-result-object p0

    .line 323
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->loginByPassword(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method private static parseLoginResult(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "psecurity"

    const-string v3, "nonce"

    const-string/jumbo v4, "ssecurity"

    const-string/jumbo v5, "sts url request error"

    const-string v6, "XMPassport"

    .line 949
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->removeSafePrefixAndGetRealBody(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v7

    .line 950
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    const-string v7, "cUserId"

    const-string v9, "passToken"

    if-eqz p4, :cond_0

    .line 954
    :try_start_1
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 955
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {v1, v9}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 958
    invoke-virtual {v1, v7}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 961
    :goto_0
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 962
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 963
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    if-nez v12, :cond_4

    :cond_1
    :try_start_2
    const-string v13, "extension-pragma"

    .line 966
    invoke-virtual {v1, v13}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 967
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v13, "Extension-Pragma"

    .line 969
    invoke-virtual {v1, v13}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 970
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_1

    .line 971
    :cond_2
    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v3, "empty extension-pragma"

    invoke-direct {v0, v3}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_3
    :goto_1
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 976
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 977
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_4
    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    if-eqz v12, :cond_a

    :try_start_3
    const-string v0, "re-pass-token"

    .line 987
    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pwd"

    .line 988
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    const-string v3, "haveLocalUpChannel"

    .line 989
    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "location"

    .line 990
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 991
    new-instance v13, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    invoke-direct {v13}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;-><init>()V

    move-object v14, p0

    .line 992
    invoke-virtual {v13, p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->userId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v13

    .line 993
    invoke-virtual {v13, v7}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->encryptedUserId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v7

    .line 994
    invoke-virtual {v7, v2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->serviceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v7

    .line 995
    invoke-virtual {v7, v9}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->passToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v7

    .line 996
    invoke-virtual {v7, v12}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->psecurity(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v7

    if-nez p3, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v8, p3

    .line 997
    :goto_3
    invoke-virtual {v7, v8}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->autoLoginUrl(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v7

    .line 998
    invoke-virtual {v7, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->rePassToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    .line 999
    invoke-virtual {v0, v4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->hasPwd(Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    .line 1000
    invoke-virtual {v0, v10}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->security(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    .line 1001
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->hasLocalChannel(Ljava/lang/Boolean;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    .line 1002
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->build()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    .line 1004
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "passport"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    if-nez v3, :cond_9

    if-eqz p5, :cond_8

    goto :goto_5

    .line 1010
    :cond_8
    :try_start_4
    invoke-static {v0, v11}, Lcom/xiaomi/accountsdk/account/XMPassport;->getServiceTokenByStsUrl(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Ljava/lang/Long;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0
    :try_end_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    return-object v0

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 1025
    :try_start_5
    invoke-static {v6, v5, v3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    invoke-virtual {v3, v2}, Lcom/xiaomi/accountsdk/account/exception/HttpException;->stsUrlRequestError(Ljava/lang/String;)V

    .line 1027
    throw v3

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 1020
    invoke-static {v6, v5, v3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/PassportIOException;

    invoke-direct {v0, v3}, Lcom/xiaomi/accountsdk/account/exception/PassportIOException;-><init>(Ljava/io/IOException;)V

    .line 1022
    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/exception/PassportIOException;->stsUrlRequestError(Ljava/lang/String;)V

    .line 1023
    throw v0

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 1016
    invoke-static {v6, v5, v3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    invoke-virtual {v3, v2}, Lcom/xiaomi/accountsdk/account/exception/AccountException;->stsUrlRequestError(Ljava/lang/String;)V

    .line 1018
    throw v3

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 1012
    invoke-static {v6, v5, v3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1013
    invoke-virtual {v3, v2}, Lcom/xiaomi/accountsdk/account/exception/HttpException;->stsUrlRequestError(Ljava/lang/String;)V

    .line 1014
    throw v3

    :cond_9
    :goto_5
    return-object v0

    .line 984
    :cond_a
    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo v2, "security, nonce or psecurity is null"

    invoke-direct {v0, v2}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1030
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseLoginResult: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v1, "parseLoginResult JSONException"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static processLoginContent(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 819
    invoke-static {p0, p1, p2, v0, p3}, Lcom/xiaomi/accountsdk/account/XMPassport;->processLoginContent(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method private static processLoginContent(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 829
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/XMPassport;->processLoginContent(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method private static processLoginContent(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException;
        }
    .end annotation

    move-object v6, p1

    const-string v7, "XMPassport"

    .line 841
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->removeSafePrefixAndGetRealBody(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v0

    .line 842
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 843
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "desc"

    .line 844
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 845
    new-instance v3, Lcom/xiaomi/accountsdk/account/ServerError;

    invoke-direct {v3, v1}, Lcom/xiaomi/accountsdk/account/ServerError;-><init>(Lorg/json/JSONObject;)V

    .line 846
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLoginContent, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", desc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "userId"

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    const/16 v8, 0x4e23

    if-eq v0, v8, :cond_6

    const/16 v8, 0x55f9

    if-eq v0, v8, :cond_5

    const v8, 0x11172

    if-eq v0, v8, :cond_4

    const v5, 0x11180

    const-string v8, "callback"

    const-string v9, "qs"

    const-string v10, "captchaUrl"

    const-string v11, "_sign"

    if-eq v0, v5, :cond_2

    const v5, 0x13c6b

    if-eq v0, v5, :cond_1

    const v4, 0x153d9

    if-eq v0, v4, :cond_0

    .line 933
    :try_start_1
    new-instance v1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    invoke-direct {v1, v0, v2, v3}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(ILjava/lang/String;Lcom/xiaomi/accountsdk/account/ServerError;)V

    throw v1

    .line 914
    :cond_0
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type"

    .line 915
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 916
    new-instance v4, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 919
    :cond_1
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 920
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 921
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "step1Token"

    .line 922
    invoke-virtual {p1, v5}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 923
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    new-instance v4, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    new-instance v8, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-direct {v8, v0, v2, v3}, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v8, v5, v1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;-><init>(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 900
    :cond_2
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 901
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 902
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 903
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "null"

    .line 904
    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v1, 0x0

    .line 907
    :cond_3
    new-instance v8, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v2, v9}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;-><init>(ILjava/lang/String;Z)V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-direct {v0, v3, v4, v5}, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-virtual {v8, v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->metaLoginData(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    move-result-object v0

    .line 909
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->captchaUrl(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    move-result-object v0

    throw v0

    .line 912
    :cond_4
    new-instance v1, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    invoke-direct {v1, v0, v2, v5}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;-><init>(ILjava/lang/String;Z)V

    throw v1

    .line 928
    :cond_5
    new-instance v1, Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException;

    invoke-direct {v1, v0, v2}, Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException;-><init>(ILjava/lang/String;)V

    .line 929
    invoke-static {v7, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    throw v1

    .line 897
    :cond_6
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;-><init>()V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    const-string v0, "passToken"

    if-eqz p4, :cond_8

    .line 854
    :try_start_2
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 855
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 857
    :cond_8
    invoke-virtual {p1, v4}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 858
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    if-eqz p3, :cond_9

    if-eqz p0, :cond_9

    const-string v3, "disableHotfixMiui73508"

    .line 866
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    goto :goto_1

    :cond_9
    move/from16 v3, p3

    :goto_1
    const-string/jumbo v4, "securityStatus"

    .line 871
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 872
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "securityStatus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    const-string v2, "notificationUrl"

    .line 874
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "http"

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 879
    new-instance v2, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    invoke-direct {v2, v0, v1, p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)V

    throw v2

    .line 881
    :cond_a
    new-instance v2, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaomi/accountsdk/account/XMPassport;->ACCOUNT_DOMAIN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1, p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)V

    throw v2

    .line 876
    :cond_b
    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v1, "noticationUrl is null"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 889
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    .line 893
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/XMPassport;->parseLoginResult(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0

    .line 890
    :cond_d
    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v1, "no passToken in login response"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_e
    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v1, "no user Id"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 937
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processLoginContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v1, "processLoginContent JSONException"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeSafePrefixAndGetRealBody(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1968
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object p0

    const-string v0, "&&&START&&&"

    .line 1969
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    .line 1966
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "failed to get response to check register verify code"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
