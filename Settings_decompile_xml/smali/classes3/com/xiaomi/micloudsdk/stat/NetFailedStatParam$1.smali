.class Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam$1;
.super Ljava/lang/Object;
.source "NetFailedStatParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;
    .locals 0

    .line 40
    new-instance p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;
    .locals 0

    .line 45
    new-array p0, p1, [Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam$1;->newArray(I)[Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    move-result-object p0

    return-object p0
.end method
