.class public final Landroidx/appcompat/widget/Toolbar$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public expandedMenuItemId:I

.field public isOverflowOpen:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$SavedState$1;

    .line 2
    invoke-direct {v0}, Landroidx/appcompat/widget/Toolbar$SavedState$1;-><init>()V

    .line 4
    sput-object v0, Landroidx/appcompat/widget/Toolbar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    move-result p2

    .line 8
    iput p2, p0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget p2, p0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean p0, p0, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 12
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    return-void
    .line 17
.end method
