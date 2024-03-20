.class public Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;
.super Ljava/lang/Object;
.source "ServiceTokenUIResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResponse:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse$1;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse$1;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;->mResponse:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;->mResponse:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

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

    .line 86
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;->mResponse:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
