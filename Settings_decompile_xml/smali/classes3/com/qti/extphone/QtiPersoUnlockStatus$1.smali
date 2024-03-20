.class Lcom/qti/extphone/QtiPersoUnlockStatus$1;
.super Ljava/lang/Object;
.source "QtiPersoUnlockStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/QtiPersoUnlockStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/QtiPersoUnlockStatus;
    .locals 0

    .line 45
    new-instance p0, Lcom/qti/extphone/QtiPersoUnlockStatus;

    invoke-direct {p0, p1}, Lcom/qti/extphone/QtiPersoUnlockStatus;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/qti/extphone/QtiPersoUnlockStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/QtiPersoUnlockStatus;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/qti/extphone/QtiPersoUnlockStatus;
    .locals 0

    .line 49
    new-array p0, p1, [Lcom/qti/extphone/QtiPersoUnlockStatus;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/qti/extphone/QtiPersoUnlockStatus$1;->newArray(I)[Lcom/qti/extphone/QtiPersoUnlockStatus;

    move-result-object p0

    return-object p0
.end method
