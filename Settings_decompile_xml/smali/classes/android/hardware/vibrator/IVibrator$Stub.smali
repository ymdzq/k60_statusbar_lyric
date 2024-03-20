.class public abstract Landroid/hardware/vibrator/IVibrator$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/vibrator/IVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/IVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$vibrator$IVibrator"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibrator;
    .locals 2

    .line 0
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/vibrator/IVibrator;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/vibrator/IVibrator;

    return-object v0

    :cond_1
    new-instance v0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/hardware/vibrator/IVibrator;
    .locals 1

    .line 0
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;->sDefaultImpl:Landroid/hardware/vibrator/IVibrator;

    return-object v0
.end method
