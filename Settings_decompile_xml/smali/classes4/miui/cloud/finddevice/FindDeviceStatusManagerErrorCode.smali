.class public Lmiui/cloud/finddevice/FindDeviceStatusManagerErrorCode;
.super Ljava/lang/Object;
.source "FindDeviceStatusManagerErrorCode.java"


# static fields
.field public static final ACCESS_DENIED:I = -0x1

.field public static final ACCOUNT_ERROR:I = -0x2

.field public static final BAD_RESPONSE_ERROR:I = -0x6

.field public static final INTERRUPTED:I = -0x64

.field public static final IO_ERROR:I = -0x8

.field public static final NO_ERROR:I = 0x0

.field public static final NULL_CRENDENTIAL_ERROR:I = -0x3

.field public static final OPERATION_FAILED_ERROR:I = -0x7

.field public static final REQUEST_ERROR:I = -0x5

.field public static final REQUEST_PREPARE_ERROR:I = -0x4

.field public static final UNKNOWN_ERROR:I = 0x1


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
