.class Lcom/xiaomi/accounts/IAccountAuthenticator$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccountAuthenticator.java"

# interfaces
.implements Lcom/xiaomi/accounts/IAccountAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accounts/IAccountAuthenticator$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaomi/accounts/IAccountAuthenticator;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/xiaomi/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/xiaomi/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getAuthToken(Lcom/xiaomi/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.accounts.IAccountAuthenticator"

    .line 339
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 340
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 342
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    invoke-virtual {p2, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 346
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 350
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 354
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    :goto_2
    iget-object p0, p0, Lcom/xiaomi/accounts/IAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 357
    invoke-static {}, Lcom/xiaomi/accounts/IAccountAuthenticator$Stub;->getDefaultImpl()Lcom/xiaomi/accounts/IAccountAuthenticator;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 358
    invoke-static {}, Lcom/xiaomi/accounts/IAccountAuthenticator$Stub;->getDefaultImpl()Lcom/xiaomi/accounts/IAccountAuthenticator;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/xiaomi/accounts/IAccountAuthenticator;->getAuthToken(Lcom/xiaomi/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw p0
.end method
