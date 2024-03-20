.class public Lcom/qti/extphone/NetworkSelectionMode;
.super Ljava/lang/Object;
.source "NetworkSelectionMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCESS_MODE_INVALID:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/NetworkSelectionMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessMode:I

.field private mIsManual:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/qti/extphone/NetworkSelectionMode$1;

    invoke-direct {v0}, Lcom/qti/extphone/NetworkSelectionMode$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/NetworkSelectionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/qti/extphone/NetworkSelectionMode;->mAccessMode:I

    .line 23
    iput-boolean v0, p0, Lcom/qti/extphone/NetworkSelectionMode;->mIsManual:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/NetworkSelectionMode;->mAccessMode:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/qti/extphone/NetworkSelectionMode;->mIsManual:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getAccessMode()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/qti/extphone/NetworkSelectionMode;->mAccessMode:I

    return p0
.end method

.method public getIsManual()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/qti/extphone/NetworkSelectionMode;->mIsManual:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkSelectionMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/extphone/NetworkSelectionMode;->mAccessMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/qti/extphone/NetworkSelectionMode;->mIsManual:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 49
    iget p2, p0, Lcom/qti/extphone/NetworkSelectionMode;->mAccessMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-boolean p0, p0, Lcom/qti/extphone/NetworkSelectionMode;->mIsManual:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
