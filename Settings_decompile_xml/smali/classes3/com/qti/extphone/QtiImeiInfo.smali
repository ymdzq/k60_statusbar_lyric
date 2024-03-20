.class public Lcom/qti/extphone/QtiImeiInfo;
.super Ljava/lang/Object;
.source "QtiImeiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/QtiImeiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMEI_TYPE_INVALID:I = 0x0

.field public static final IMEI_TYPE_PRIMARY:I = 0x1

.field public static final IMEI_TYPE_SECONDARY:I = 0x2


# instance fields
.field private mImei:Ljava/lang/String;

.field private mImeiType:I

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/qti/extphone/QtiImeiInfo$1;

    invoke-direct {v0}, Lcom/qti/extphone/QtiImeiInfo$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/QtiImeiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/QtiImeiInfo;->mSlotId:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/extphone/QtiImeiInfo;->mImei:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/extphone/QtiImeiInfo;->mImeiType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    check-cast p1, Lcom/qti/extphone/QtiImeiInfo;

    .line 105
    iget v2, p0, Lcom/qti/extphone/QtiImeiInfo;->mSlotId:I

    iget v3, p1, Lcom/qti/extphone/QtiImeiInfo;->mSlotId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/qti/extphone/QtiImeiInfo;->mImeiType:I

    iget v3, p1, Lcom/qti/extphone/QtiImeiInfo;->mImeiType:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/qti/extphone/QtiImeiInfo;->mImei:Ljava/lang/String;

    iget-object p1, p1, Lcom/qti/extphone/QtiImeiInfo;->mImei:Ljava/lang/String;

    .line 107
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getImei()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/qti/extphone/QtiImeiInfo;->mImei:Ljava/lang/String;

    return-object p0
.end method

.method public getImeiType()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/qti/extphone/QtiImeiInfo;->mImeiType:I

    return p0
.end method

.method public getSlotId()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/qti/extphone/QtiImeiInfo;->mSlotId:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiImeiInfo{ slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/extphone/QtiImeiInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mImeiType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qti/extphone/QtiImeiInfo;->getImeiType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 78
    iget p2, p0, Lcom/qti/extphone/QtiImeiInfo;->mSlotId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object p2, p0, Lcom/qti/extphone/QtiImeiInfo;->mImei:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget p0, p0, Lcom/qti/extphone/QtiImeiInfo;->mImeiType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
