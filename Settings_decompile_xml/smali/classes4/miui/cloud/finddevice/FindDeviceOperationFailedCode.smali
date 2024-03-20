.class public Lmiui/cloud/finddevice/FindDeviceOperationFailedCode;
.super Ljava/lang/Object;
.source "FindDeviceOperationFailedCode.java"


# static fields
.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PASSOWRD_NOT_CONFIRMED:I = 0x15010

.field public static final ERROR_PASSWORD_RECENTLY_CHANGED_CODE:I = 0x15000

.field public static final ERROR_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
