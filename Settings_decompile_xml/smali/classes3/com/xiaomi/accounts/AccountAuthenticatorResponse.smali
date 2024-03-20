.class public Lcom/xiaomi/accounts/AccountAuthenticatorResponse;
.super Ljava/lang/Object;
.source "AccountAuthenticatorResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accounts/AccountAuthenticatorResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountAuthenticatorResponse:Lcom/xiaomi/accounts/IAccountAuthenticatorResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/xiaomi/accounts/AccountAuthenticatorResponse$1;

    invoke-direct {v0}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/accounts/IAccountAuthenticatorResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Lcom/xiaomi/accounts/IAccountAuthenticatorResponse;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accounts/IAccountAuthenticatorResponse;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Lcom/xiaomi/accounts/IAccountAuthenticatorResponse;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Lcom/xiaomi/accounts/IAccountAuthenticatorResponse;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
