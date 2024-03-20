.class public final Lcom/android/systemui/shared/system/smartspace/SmartspaceState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/android/systemui/shared/system/smartspace/SmartspaceState$CREATOR;


# instance fields
.field public final boundsOnScreen:Landroid/graphics/Rect;

.field public final selectedPage:I

.field public final visibleOnScreen:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState$CREATOR;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState$CREATOR;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->CREATOR:Lcom/android/systemui/shared/system/smartspace/SmartspaceState$CREATOR;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->boundsOnScreen:Landroid/graphics/Rect;

    .line 10
    sget-object v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;->INSTANCE:Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Landroid/graphics/Rect;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->boundsOnScreen:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 30
    move-result v0

    .line 33
    iput v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->selectedPage:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 36
    move-result p1

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->visibleOnScreen:Z

    .line 40
    return-void
    .line 42
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->boundsOnScreen:Landroid/graphics/Rect;

    .line 2
    iget v1, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->selectedPage:I

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->visibleOnScreen:Z

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string v3, "boundsOnScreen: "

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v0, ", selectedPage: "

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, ", visibleOnScreen: "

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    return-object p0
    .line 38
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->boundsOnScreen:Landroid/graphics/Rect;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    iget p2, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->selectedPage:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    :cond_1
    if-eqz p1, :cond_2

    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->visibleOnScreen:Z

    .line 19
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21
    :cond_2
    return-void
    .line 24
.end method
