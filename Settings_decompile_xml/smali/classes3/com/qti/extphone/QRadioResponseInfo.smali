.class public Lcom/qti/extphone/QRadioResponseInfo;
.super Ljava/lang/Object;
.source "QRadioResponseInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/QRadioResponseInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GENERIC_FAILURE:I = 0x2

.field public static final NONE:I = 0x0

.field public static final RADIO_NOT_AVAILABLE:I = 0x1

.field public static final SOLICITED:I = 0x0

.field public static final SOLICITED_ACK:I = 0x1

.field public static final SOLICITED_ACK_EXP:I = 0x2


# instance fields
.field private mError:I

.field private mResponseType:I

.field private mSerial:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/qti/extphone/QRadioResponseInfo$1;

    invoke-direct {v0}, Lcom/qti/extphone/QRadioResponseInfo$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/QRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/QRadioResponseInfo;->mResponseType:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/QRadioResponseInfo;->mSerial:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/extphone/QRadioResponseInfo;->mError:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getError()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/qti/extphone/QRadioResponseInfo;->mError:I

    return p0
.end method

.method public getResponseType()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/qti/extphone/QRadioResponseInfo;->mResponseType:I

    return p0
.end method

.method public getSerial()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/qti/extphone/QRadioResponseInfo;->mSerial:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QRadioResponseInfo: ResponseType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qti/extphone/QRadioResponseInfo;->getResponseType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Serial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qti/extphone/QRadioResponseInfo;->getSerial()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/qti/extphone/QRadioResponseInfo;->getError()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 83
    iget p2, p0, Lcom/qti/extphone/QRadioResponseInfo;->mResponseType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget p2, p0, Lcom/qti/extphone/QRadioResponseInfo;->mSerial:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget p0, p0, Lcom/qti/extphone/QRadioResponseInfo;->mError:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
