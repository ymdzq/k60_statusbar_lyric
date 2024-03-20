.class public Lmiui/cloud/finddevice/FindDeviceKeyguardController;
.super Ljava/lang/Object;
.source "FindDeviceKeyguardController.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final KEY_EXTRA_BACKOFF:Ljava/lang/String; = "key_backoff"

.field public static final KEY_EXTRA_DISPLAY_ID:Ljava/lang/String; = "key_display_id"

.field public static final KEY_EXTRA_EMAIL:Ljava/lang/String; = "key_email"

.field public static final KEY_EXTRA_NOTIFY_CODE:Ljava/lang/String; = "key_notify_code"

.field public static final KEY_EXTRA_NOTIFY_EXTRA:Ljava/lang/String; = "key_notify_extra"

.field public static final KEY_EXTRA_PHONE:Ljava/lang/String; = "key_phone"

.field public static final KEY_EXTRA_USERID:Ljava/lang/String; = "key_user_id"

.field public static final LOCK_ACTION:Ljava/lang/String; = "miui.cloud.finddevice.keyguard.LOCK"

.field public static final NOTIFY_ACTION:Ljava/lang/String; = "miui.cloud.finddevice.keygurad.NOTIFY"

.field public static final NOTIFY_CODE_ACCOUNT_LOGIN_FINISHED:I = 0x1

.field public static final NOTIFY_CODE_INVALID:I = 0x0

.field public static final NOTIFY_CODE_UPDATE_MESSAGE:I = 0x2

.field public static final NOTIFY_EXTRA_KEY_ACCOUNT_LOGIN_RESULT:Ljava/lang/String; = "notify_extra_key_account_login_result"

.field public static final NOTIFY_EXTRA_KEY_UPDATE_MESSAGE_CONTENT:Ljava/lang/String; = "notify_extra_key_update_message_content"

.field public static final SET_BACKOFF_ACTION:Ljava/lang/String; = "miui.cloud.finddevice.keyguard.SET_BACKOFF"

.field public static final UNLOCK_ACTION:Ljava/lang/String; = "miui.cloud.finddevice.keyguard.UNLOCK"


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

.method public static lock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notify(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setBackoff(Landroid/content/Context;Z)V
    .locals 0

    .line 8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unlock(Landroid/content/Context;)V
    .locals 1

    .line 7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
