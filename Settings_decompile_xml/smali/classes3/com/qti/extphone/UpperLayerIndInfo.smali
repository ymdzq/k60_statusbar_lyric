.class public Lcom/qti/extphone/UpperLayerIndInfo;
.super Ljava/lang/Object;
.source "UpperLayerIndInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/UpperLayerIndInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID:I = -0x1

.field public static final PLMN_INFO_LIST_AVAILABLE:I = 0x1

.field public static final PLMN_INFO_LIST_UNAVAILABLE:I = 0x0

.field public static final UPPER_LAYER_IND_INFO_AVAILABLE:I = 0x1

.field public static final UPPER_LAYER_IND_INFO_UNAVAILABLE:I


# instance fields
.field private mPlmnInfoListAvailable:I

.field private mUpperLayerIndInfoAvailable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/qti/extphone/UpperLayerIndInfo$1;

    invoke-direct {v0}, Lcom/qti/extphone/UpperLayerIndInfo$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/UpperLayerIndInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/qti/extphone/UpperLayerIndInfo;->mPlmnInfoListAvailable:I

    .line 48
    iput v0, p0, Lcom/qti/extphone/UpperLayerIndInfo;->mUpperLayerIndInfoAvailable:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/UpperLayerIndInfo;->mPlmnInfoListAvailable:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/extphone/UpperLayerIndInfo;->mUpperLayerIndInfoAvailable:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getPlmnInfoListAvailable()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/qti/extphone/UpperLayerIndInfo;->mPlmnInfoListAvailable:I

    return p0
.end method

.method public getUpperLayerIndInfoAvailable()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/qti/extphone/UpperLayerIndInfo;->mUpperLayerIndInfoAvailable:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpperLayerIndInfo: PLMN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qti/extphone/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " UpperLayerIndInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lcom/qti/extphone/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 74
    iget p2, p0, Lcom/qti/extphone/UpperLayerIndInfo;->mPlmnInfoListAvailable:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget p0, p0, Lcom/qti/extphone/UpperLayerIndInfo;->mUpperLayerIndInfoAvailable:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
