.class Lcom/qti/extphone/NrIconType$1;
.super Ljava/lang/Object;
.source "NrIconType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/NrIconType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/NrIconType;
    .locals 0

    .line 68
    new-instance p0, Lcom/qti/extphone/NrIconType;

    invoke-direct {p0, p1}, Lcom/qti/extphone/NrIconType;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/qti/extphone/NrIconType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/NrIconType;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/qti/extphone/NrIconType;
    .locals 0

    .line 72
    new-array p0, p1, [Lcom/qti/extphone/NrIconType;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/qti/extphone/NrIconType$1;->newArray(I)[Lcom/qti/extphone/NrIconType;

    move-result-object p0

    return-object p0
.end method
