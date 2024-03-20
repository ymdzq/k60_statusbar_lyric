.class public Lcom/android/settings/device/DeviceCardInfo;
.super Ljava/lang/Object;
.source "DeviceCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/device/DeviceCardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private listener:Landroid/view/View$OnClickListener;

.field private mFirstValue:Ljava/lang/String;

.field private mIconResId:I

.field private mIndex:I

.field private mKey:Ljava/lang/String;

.field private mSecondValue:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTitle2:Ljava/lang/String;

.field private mType:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/android/settings/device/DeviceCardInfo$1;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceCardInfo$1;-><init>()V

    sput-object v0, Lcom/android/settings/device/DeviceCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/DeviceCardInfo;->mTitle:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/DeviceCardInfo;->mTitle2:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/DeviceCardInfo;->mValue:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/DeviceCardInfo;->mFirstValue:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/DeviceCardInfo;->mSecondValue:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/device/DeviceCardInfo;->mIconResId:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/device/DeviceCardInfo;->mType:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/DeviceCardInfo;->mKey:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/settings/device/DeviceCardInfo;->mIndex:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getFirstValue()Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/device/DeviceCardInfo;->mFirstValue:Ljava/lang/String;

    return-object p0
.end method

.method public getIconResId()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/android/settings/device/DeviceCardInfo;->mIconResId:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/android/settings/device/DeviceCardInfo;->mIndex:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/settings/device/DeviceCardInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/settings/device/DeviceCardInfo;->listener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getSecondValue()Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/device/DeviceCardInfo;->mSecondValue:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/device/DeviceCardInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle2()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/device/DeviceCardInfo;->mTitle2:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/android/settings/device/DeviceCardInfo;->mType:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/device/DeviceCardInfo;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public setFirstValue(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/settings/device/DeviceCardInfo;->mFirstValue:Ljava/lang/String;

    return-void
.end method

.method public setIconResId(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/android/settings/device/DeviceCardInfo;->mIconResId:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/android/settings/device/DeviceCardInfo;->mIndex:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/device/DeviceCardInfo;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/device/DeviceCardInfo;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSecondValue(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/settings/device/DeviceCardInfo;->mSecondValue:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/device/DeviceCardInfo;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle2(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/device/DeviceCardInfo;->mTitle2:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/settings/device/DeviceCardInfo;->mType:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/device/DeviceCardInfo;->mValue:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 66
    iget-object p2, p0, Lcom/android/settings/device/DeviceCardInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/android/settings/device/DeviceCardInfo;->mTitle2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/android/settings/device/DeviceCardInfo;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/android/settings/device/DeviceCardInfo;->mFirstValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/android/settings/device/DeviceCardInfo;->mSecondValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget p2, p0, Lcom/android/settings/device/DeviceCardInfo;->mIconResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget p2, p0, Lcom/android/settings/device/DeviceCardInfo;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object p2, p0, Lcom/android/settings/device/DeviceCardInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget p0, p0, Lcom/android/settings/device/DeviceCardInfo;->mIndex:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
