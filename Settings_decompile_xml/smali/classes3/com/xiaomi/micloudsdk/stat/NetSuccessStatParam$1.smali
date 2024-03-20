.class Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam$1;
.super Ljava/lang/Object;
.source "NetSuccessStatParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;
    .locals 0

    .line 39
    new-instance p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;
    .locals 0

    .line 44
    new-array p0, p1, [Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam$1;->newArray(I)[Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;

    move-result-object p0

    return-object p0
.end method
