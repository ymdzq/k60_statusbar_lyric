.class public Lcom/qti/extphone/DcParam;
.super Ljava/lang/Object;
.source "DcParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/DcParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final DCNR_RESTRICTED:I = 0x0

.field public static final DCNR_UNRESTRICTED:I = 0x1

.field public static final ENDC_AVAILABLE:I = 0x1

.field public static final ENDC_UNAVAILABLE:I = 0x0

.field public static final INVALID:I = -0x1


# instance fields
.field private mDcnr:I

.field private mEndc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/qti/extphone/DcParam$1;

    invoke-direct {v0}, Lcom/qti/extphone/DcParam$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/DcParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/qti/extphone/DcParam;->mEndc:I

    .line 54
    iput v0, p0, Lcom/qti/extphone/DcParam;->mDcnr:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/DcParam;->mEndc:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/extphone/DcParam;->mDcnr:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getDcnr()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/qti/extphone/DcParam;->mDcnr:I

    return p0
.end method

.method public getEndc()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/qti/extphone/DcParam;->mEndc:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DcParam: Endc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qti/extphone/DcParam;->getEndc()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Dcnr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qti/extphone/DcParam;->getDcnr()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 80
    iget p2, p0, Lcom/qti/extphone/DcParam;->mEndc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget p0, p0, Lcom/qti/extphone/DcParam;->mDcnr:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
