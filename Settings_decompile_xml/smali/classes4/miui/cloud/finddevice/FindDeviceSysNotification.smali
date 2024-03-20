.class public Lmiui/cloud/finddevice/FindDeviceSysNotification;
.super Ljava/lang/Object;
.source "FindDeviceSysNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    }
.end annotation


# static fields
.field public static final ACTION_DISMISS:Ljava/lang/String; = "action_dismiss"

.field public static final ACTION_SHOW:Ljava/lang/String; = "action_show"

.field public static final KEY_NOTIFICATION:Ljava/lang/String; = "key_notification"

.field public static final KEY_TYPE:Ljava/lang/String; = "key_type"

.field public static final TYPE_ASYNC_OPEN_FAILED:I = 0x30

.field public static final TYPE_GUIDE_COMMON:I = 0x10

.field public static final TYPE_GUIDE_FINANCE:I = 0x20

.field public static final TYPE_VERIFY:I = 0x40


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dismiss(Landroid/content/Context;I)V
    .locals 0

    .line 16
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static show(Landroid/content/Context;Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;)V
    .locals 0

    .line 15
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
