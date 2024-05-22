.class public abstract Lcom/android/systemui/flags/BooleanFlag;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/flags/Flag;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final default:Z

.field public final id:I

.field public final name:Ljava/lang/String;

.field public final namespace:Ljava/lang/String;

.field public final overridden:Z

.field public final teamfood:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/flags/BooleanFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Ljava/lang/String;IZZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/systemui/flags/BooleanFlag;->id:I

    .line 5
    iput-object p1, p0, Lcom/android/systemui/flags/BooleanFlag;->name:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/android/systemui/flags/BooleanFlag;->namespace:Ljava/lang/String;

    .line 9
    iput-boolean p3, p0, Lcom/android/systemui/flags/BooleanFlag;->default:Z

    .line 11
    iput-boolean p4, p0, Lcom/android/systemui/flags/BooleanFlag;->teamfood:Z

    .line 13
    iput-boolean p5, p0, Lcom/android/systemui/flags/BooleanFlag;->overridden:Z

    .line 15
    return-void
    .line 17
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

.method public getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/flags/BooleanFlag;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/flags/BooleanFlag;->name:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/flags/BooleanFlag;->namespace:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getOverridden()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/flags/BooleanFlag;->overridden:Z

    .line 2
    return p0
    .line 4
.end method

.method public getTeamfood()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/flags/BooleanFlag;->teamfood:Z

    .line 2
    return p0
    .line 4
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getId()I

    .line 2
    move-result p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getName()Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getNamespace()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-boolean p2, p0, Lcom/android/systemui/flags/BooleanFlag;->default:Z

    .line 23
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    move-result p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getTeamfood()Z

    .line 36
    move-result p2

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/flags/BooleanFlag;->getOverridden()Z

    .line 43
    move-result p0

    .line 46
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 47
    return-void
    .line 50
.end method
