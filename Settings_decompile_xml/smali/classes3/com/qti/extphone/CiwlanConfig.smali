.class public Lcom/qti/extphone/CiwlanConfig;
.super Ljava/lang/Object;
.source "CiwlanConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/CiwlanConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID:I = -0x1

.field public static final ONLY:I = 0x0

.field public static final PREFERRED:I = 0x1

.field public static final UNSUPPORTED:I = 0x2


# instance fields
.field private mHomeMode:I

.field private mRoamMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/qti/extphone/CiwlanConfig$1;

    invoke-direct {v0}, Lcom/qti/extphone/CiwlanConfig$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/CiwlanConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/qti/extphone/CiwlanConfig;->mHomeMode:I

    .line 24
    iput v0, p0, Lcom/qti/extphone/CiwlanConfig;->mRoamMode:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/CiwlanConfig;->mHomeMode:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/extphone/CiwlanConfig;->mRoamMode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getHomeCiwlanMode()Ljava/lang/String;
    .locals 1

    .line 37
    iget p0, p0, Lcom/qti/extphone/CiwlanConfig;->mHomeMode:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "INVALID"

    return-object p0

    :cond_0
    const-string p0, "UNSUPPORTED"

    return-object p0

    :cond_1
    const-string p0, "PREFERRED"

    return-object p0

    :cond_2
    const-string p0, "ONLY"

    return-object p0
.end method

.method public getRoamCiwlanMode()Ljava/lang/String;
    .locals 1

    .line 50
    iget p0, p0, Lcom/qti/extphone/CiwlanConfig;->mRoamMode:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "INVALID"

    return-object p0

    :cond_0
    const-string p0, "UNSUPPORTED"

    return-object p0

    :cond_1
    const-string p0, "PREFERRED"

    return-object p0

    :cond_2
    const-string p0, "ONLY"

    return-object p0
.end method

.method public isCiwlanModeSupported()Z
    .locals 2

    .line 71
    iget v0, p0, Lcom/qti/extphone/CiwlanConfig;->mHomeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/qti/extphone/CiwlanConfig;->mRoamMode:I

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCiwlanOnlyInHome()Z
    .locals 0

    .line 63
    iget p0, p0, Lcom/qti/extphone/CiwlanConfig;->mHomeMode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCiwlanOnlyInRoam()Z
    .locals 0

    .line 67
    iget p0, p0, Lcom/qti/extphone/CiwlanConfig;->mRoamMode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CiwlanConfig homeMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qti/extphone/CiwlanConfig;->getHomeCiwlanMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roamMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qti/extphone/CiwlanConfig;->getRoamCiwlanMode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 85
    iget p2, p0, Lcom/qti/extphone/CiwlanConfig;->mHomeMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget p0, p0, Lcom/qti/extphone/CiwlanConfig;->mRoamMode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
