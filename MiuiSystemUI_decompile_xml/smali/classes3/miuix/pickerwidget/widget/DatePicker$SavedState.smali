.class public final Lmiuix/pickerwidget/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final mDay:I

.field public final mIsLunar:Z

.field public final mMonth:I

.field public final mYear:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/pickerwidget/widget/DatePicker$SavedState$1;

    .line 2
    invoke-direct {v0}, Lmiuix/pickerwidget/widget/DatePicker$SavedState$1;-><init>()V

    .line 4
    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    iput p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I

    .line 3
    iput p3, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I

    .line 4
    iput p4, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I

    .line 5
    iput-boolean p5, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z

    .line 20
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    return-void
    .line 25
.end method
