.class Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 3149
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 3149
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;
    .locals 0

    .line 3153
    new-instance p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;
    .locals 0

    .line 3164
    new-instance p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3149
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState$1;->newArray(I)[Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;
    .locals 0

    .line 3158
    new-array p0, p1, [Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    return-object p0
.end method
