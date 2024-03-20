.class public Lcom/qti/extphone/DualDataRecommendation;
.super Ljava/lang/Object;
.source "DualDataRecommendation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_DATA_ALLOW:I = 0x1

.field public static final ACTION_DATA_NOT_ALLOW:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/DualDataRecommendation;",
            ">;"
        }
    .end annotation
.end field

.field public static final DDS:I = 0x1

.field public static final NON_DDS:I = 0x2


# instance fields
.field private mAction:I

.field private mSub:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/qti/extphone/DualDataRecommendation$1;

    invoke-direct {v0}, Lcom/qti/extphone/DualDataRecommendation$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/DualDataRecommendation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/DualDataRecommendation;->mSub:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/extphone/DualDataRecommendation;->mAction:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getAction()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/qti/extphone/DualDataRecommendation;->mAction:I

    return p0
.end method

.method public getRecommendedSub()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/qti/extphone/DualDataRecommendation;->mSub:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DualDataRecommendation: getRecommendedSub(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qti/extphone/DualDataRecommendation;->getRecommendedSub()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Lcom/qti/extphone/DualDataRecommendation;->getAction()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 50
    iget p2, p0, Lcom/qti/extphone/DualDataRecommendation;->mSub:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget p0, p0, Lcom/qti/extphone/DualDataRecommendation;->mAction:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
