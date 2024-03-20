.class public Lcom/xiaomi/account/XiaomiOAuthResponse;
.super Ljava/lang/Object;
.source "XiaomiOAuthResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/account/XiaomiOAuthResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/xiaomi/account/XiaomiOAuthResponse$1;

    invoke-direct {v0}, Lcom/xiaomi/account/XiaomiOAuthResponse$1;-><init>()V

    sput-object v0, Lcom/xiaomi/account/XiaomiOAuthResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/account/IXiaomiAuthResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/account/IXiaomiAuthResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/account/XiaomiOAuthResponse;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/account/IXiaomiAuthResponse;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaomi/account/XiaomiOAuthResponse;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    return-void
.end method

.method public static setIXiaomiAuthResponseCancel(Lcom/xiaomi/account/IXiaomiAuthResponse;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/xiaomi/account/IXiaomiAuthResponse;->onCancel()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 101
    sget-object v0, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    const-string v1, "RemoteException"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 99
    sget-object v0, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    const-string v1, "RuntimeException"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setIXiaomiAuthResponseResult(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "RemoteException"

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/xiaomi/account/IXiaomiAuthResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 85
    sget-object p1, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 70
    sget-object v1, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_error_code"

    const/4 v3, -0x1

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "extra_error_description"

    .line 74
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :try_start_1
    invoke-interface {p0, v1}, Lcom/xiaomi/account/IXiaomiAuthResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 82
    sget-object p1, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p0

    .line 80
    sget-object p1, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    const-string v0, "RuntimeException"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onCancel()V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaomi/account/XiaomiOAuthResponse;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    invoke-static {p0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->setIXiaomiAuthResponseCancel(Lcom/xiaomi/account/IXiaomiAuthResponse;)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaomi/account/XiaomiOAuthResponse;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    invoke-static {p0, p1}, Lcom/xiaomi/account/XiaomiOAuthResponse;->setIXiaomiAuthResponseResult(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaomi/account/XiaomiOAuthResponse;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
