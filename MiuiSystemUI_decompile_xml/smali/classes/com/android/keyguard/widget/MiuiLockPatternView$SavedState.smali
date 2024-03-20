.class public final Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final mDisplayMode:I

.field public final mInStealthMode:Z

.field public final mInputEnabled:Z

.field public final mSerializedPattern:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState$1;

    .line 2
    invoke-direct {v0}, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mDisplayMode:I

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mDisplayMode:I

    .line 4
    iput-boolean p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    .line 5
    iput-boolean p4, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mDisplayMode:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-boolean p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    .line 15
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 21
    iget-boolean p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    .line 24
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 30
    return-void
    .line 33
.end method
