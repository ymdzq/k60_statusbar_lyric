.class public final Lcom/android/systemui/screenshot/CropView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public mCrop:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/screenshot/CropView$SavedState$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/screenshot/CropView$SavedState$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/screenshot/CropView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 9
    move-result-object p1

    .line 12
    check-cast p1, Landroid/graphics/RectF;

    .line 13
    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView$SavedState;->mCrop:Landroid/graphics/RectF;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$SavedState;->mCrop:Landroid/graphics/RectF;

    .line 5
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 8
    return-void
    .line 11
.end method
