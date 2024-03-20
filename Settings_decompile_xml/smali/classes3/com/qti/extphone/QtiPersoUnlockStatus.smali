.class public Lcom/qti/extphone/QtiPersoUnlockStatus;
.super Ljava/lang/Object;
.source "QtiPersoUnlockStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/QtiPersoUnlockStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMANENT_UNLOCKED:I = 0x2

.field public static final TEMPORARY_UNLOCKED:I = 0x1

.field public static final UNKNOWN:I


# instance fields
.field private mPersoUnlockStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/qti/extphone/QtiPersoUnlockStatus$1;

    invoke-direct {v0}, Lcom/qti/extphone/QtiPersoUnlockStatus$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/QtiPersoUnlockStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/extphone/QtiPersoUnlockStatus;->mPersoUnlockStatus:I

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

    .line 29
    iget p0, p0, Lcom/qti/extphone/QtiPersoUnlockStatus;->mPersoUnlockStatus:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiPersoUnlockStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qti/extphone/QtiPersoUnlockStatus;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget p0, p0, Lcom/qti/extphone/QtiPersoUnlockStatus;->mPersoUnlockStatus:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
