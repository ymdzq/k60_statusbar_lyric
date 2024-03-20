.class Landroid/hardware/dumpstate/IDumpstateDevice$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDumpstateDevice.java"

# interfaces
.implements Landroid/hardware/dumpstate/IDumpstateDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/dumpstate/IDumpstateDevice$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 140
    iput v0, p0, Landroid/hardware/dumpstate/IDumpstateDevice$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 141
    iput-object v0, p0, Landroid/hardware/dumpstate/IDumpstateDevice$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Landroid/hardware/dumpstate/IDumpstateDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 144
    iget-object p0, p0, Landroid/hardware/dumpstate/IDumpstateDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
