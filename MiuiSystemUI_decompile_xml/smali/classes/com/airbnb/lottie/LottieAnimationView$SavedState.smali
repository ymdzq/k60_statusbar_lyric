.class public final Lcom/airbnb/lottie/LottieAnimationView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public animationName:Ljava/lang/String;

.field public animationResId:I

.field public imageAssetsFolder:Ljava/lang/String;

.field public isAnimating:Z

.field public progress:F

.field public repeatCount:I

.field public repeatMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState$1;

    .line 2
    invoke-direct {v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState$1;-><init>()V

    .line 4
    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 34
    move-result v0

    .line 37
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 40
    move-result p1

    .line 43
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 12
    iget-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget p2, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget p0, p0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    .line 30
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    return-void
    .line 35
.end method
