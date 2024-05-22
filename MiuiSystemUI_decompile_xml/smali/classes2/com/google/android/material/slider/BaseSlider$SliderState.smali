.class public final Lcom/google/android/material/slider/BaseSlider$SliderState;
.super Landroid/view/View$BaseSavedState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public hasFocus:Z

.field public stepSize:F

.field public valueFrom:F

.field public valueTo:F

.field public values:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$SliderState$1;

    .line 2
    invoke-direct {v0}, Lcom/google/android/material/slider/BaseSlider$SliderState$1;-><init>()V

    .line 4
    sput-object v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 5
    move-result v0

    .line 8
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    .line 22
    const-class v1, Ljava/lang/Float;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 33
    move-result v0

    .line 36
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    .line 39
    move-result-object p1

    .line 42
    const/4 v0, 0x0

    .line 43
    aget-boolean p1, p1, v0

    .line 44
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    .line 46
    return-void
    .line 48
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 12
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 17
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 22
    const/4 p2, 0x1

    .line 25
    new-array p2, p2, [Z

    .line 26
    const/4 v0, 0x0

    .line 28
    iget-boolean p0, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    .line 29
    aput-boolean p0, p2, v0

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 33
    return-void
    .line 36
.end method
