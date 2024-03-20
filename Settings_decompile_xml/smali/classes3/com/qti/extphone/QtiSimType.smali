.class public Lcom/qti/extphone/QtiSimType;
.super Ljava/lang/Object;
.source "QtiSimType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/QtiSimType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIM_TYPE_ESIM:I = 0x1

.field public static final SIM_TYPE_ESIM_IUICC:I = 0x5

.field public static final SIM_TYPE_INVALID:I = -0x1

.field public static final SIM_TYPE_IUICC:I = 0x2

.field public static final SIM_TYPE_PHYSICAL:I = 0x0

.field public static final SIM_TYPE_PHYSICAL_ESIM:I = 0x3

.field public static final SIM_TYPE_PHYSICAL_ESIM_IUICC:I = 0x6

.field public static final SIM_TYPE_PHYSICAL_IUICC:I = 0x4


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/qti/extphone/QtiSimType$1;

    invoke-direct {v0}, Lcom/qti/extphone/QtiSimType$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/QtiSimType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/extphone/QtiSimType;->mType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public get()I
    .locals 0

    .line 38
    iget p0, p0, Lcom/qti/extphone/QtiSimType;->mType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiSimType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qti/extphone/QtiSimType;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 48
    iget p0, p0, Lcom/qti/extphone/QtiSimType;->mType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
