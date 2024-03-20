.class public final Landroidx/preference/SeekBarPreference$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public mMax:I

.field public mMin:I

.field public mSeekBarValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/preference/SeekBarPreference$SavedState$1;

    .line 2
    invoke-direct {v0}, Landroidx/preference/SeekBarPreference$SavedState$1;-><init>()V

    .line 4
    sput-object v0, Landroidx/preference/SeekBarPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    move-result v0

    .line 8
    iput v0, p0, Landroidx/preference/SeekBarPreference$SavedState;->mSeekBarValue:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Landroidx/preference/SeekBarPreference$SavedState;->mMin:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 17
    move-result p1

    .line 20
    iput p1, p0, Landroidx/preference/SeekBarPreference$SavedState;->mMax:I

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Landroidx/preference/SeekBarPreference$SavedState;->mSeekBarValue:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Landroidx/preference/SeekBarPreference$SavedState;->mMin:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p0, p0, Landroidx/preference/SeekBarPreference$SavedState;->mMax:I

    .line 15
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    return-void
    .line 20
.end method
