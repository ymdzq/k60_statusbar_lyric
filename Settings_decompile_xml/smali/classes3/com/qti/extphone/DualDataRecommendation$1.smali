.class Lcom/qti/extphone/DualDataRecommendation$1;
.super Ljava/lang/Object;
.source "DualDataRecommendation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/DualDataRecommendation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/DualDataRecommendation;
    .locals 0

    .line 57
    new-instance p0, Lcom/qti/extphone/DualDataRecommendation;

    invoke-direct {p0, p1}, Lcom/qti/extphone/DualDataRecommendation;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/qti/extphone/DualDataRecommendation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/DualDataRecommendation;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/qti/extphone/DualDataRecommendation;
    .locals 0

    .line 61
    new-array p0, p1, [Lcom/qti/extphone/DualDataRecommendation;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/qti/extphone/DualDataRecommendation$1;->newArray(I)[Lcom/qti/extphone/DualDataRecommendation;

    move-result-object p0

    return-object p0
.end method
