.class public Lmiui/cloud/finddevice/FindDeviceNotification;
.super Ljava/lang/Object;
.source "FindDeviceNotification.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NOTIFY_USER_CLOSE_FAILUER:Ljava/lang/String; = "miui.cloud.finddevice.notification.CLOSE_FAILURE"

.field public static final ACTION_NOTIFY_USER_CLOSE_SUCCESS:Ljava/lang/String; = "miui.cloud.finddevice.notification.CLOSE_SUCCESS"

.field public static final ACTION_NOTIFY_USER_CRASH:Ljava/lang/String; = "miui.cloud.finddevice.notification.CRASH"

.field public static final ACTION_NOTIFY_USER_OPEN_FAILURE:Ljava/lang/String; = "miui.cloud.finddevice.notification.OPEN_FAILURE"

.field public static final ACTION_NOTIFY_USER_OPEN_SUCCESS:Ljava/lang/String; = "miui.cloud.finddevice.notification.OPEN_SUCCESS"

.field public static final ACTION_NOTIFY_USER_STORAGE_CORRUPTED:Ljava/lang/String; = "miui.cloud.finddevice.notification.STORAGE_CORRUPTED"

.field public static final ACTION_NOTIFY_USER_TELEPHONY_FAULT:Ljava/lang/String; = "miui.cloud.finddevice.notification.TELEPHONY_FAULT"

.field public static final ACTION_NOTIFY_USER_TIME_CORRECTION_FAILURE:Ljava/lang/String; = "miui.cloud.finddevice.notification.TIME_CORRECTION_FAILURE"

.field public static final ACTION_NOTIFY_USER_TIME_CORRECTION_SUCCESS:Ljava/lang/String; = "miui.cloud.finddevice.notification.TIME_CORRECTION_SUCCESS"

.field public static final KEY_CAUSE:Ljava/lang/String; = "cause"

.field public static final KEY_DETAIL:Ljava/lang/String; = "detail"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notifyStorageCorrupted(Landroid/content/Context;)V
    .locals 1

    .line 11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notifyUserCloseSuccess(Landroid/content/Context;)V
    .locals 1

    .line 8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notifyUserCrash(Landroid/content/Context;)V
    .locals 1

    .line 10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notifyUserOpenSuccess(Landroid/content/Context;)V
    .locals 1

    .line 6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notifyUserTelephonyFault(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notifyUserTimeCorrectionFailure(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 13
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notifyUserTimeCorrectionSuccess(Landroid/content/Context;)V
    .locals 1

    .line 12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
