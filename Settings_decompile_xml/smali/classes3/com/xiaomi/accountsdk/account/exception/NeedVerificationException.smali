.class public Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;
.super Ljava/lang/Exception;
.source "NeedVerificationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field private final mStep1Token:Ljava/lang/String;

.field private final mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Need verification code"

    .line 17
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->mMetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 19
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->mStep1Token:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0, p1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;-><init>(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
