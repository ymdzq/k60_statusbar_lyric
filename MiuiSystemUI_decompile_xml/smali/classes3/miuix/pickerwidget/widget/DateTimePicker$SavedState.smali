.class public final Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final nTimeInMillis:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState$1;

    .line 2
    invoke-direct {v0}, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState$1;-><init>()V

    .line 4
    sput-object v0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    iput-wide p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-wide v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    return-void
    .line 10
.end method
