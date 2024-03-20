.class Lsrc/com/android/settings/emergency/util/CameraUtils$1;
.super Landroid/os/Handler;
.source "CameraUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsrc/com/android/settings/emergency/util/CameraUtils;-><init>(Landroid/content/Context;ILcom/android/settings/emergency/service/LocationService$ISosSnapListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;


# direct methods
.method constructor <init>(Lsrc/com/android/settings/emergency/util/CameraUtils;Landroid/os/Looper;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/CameraUtils$1;->this$0:Lsrc/com/android/settings/emergency/util/CameraUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    const/4 p0, 0x1

    .line 84
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p0, p1, :cond_0

    .line 85
    invoke-static {}, Lsrc/com/android/settings/emergency/util/CameraUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "handleMessage: MSG_FOCUS_TIMEOUT"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
