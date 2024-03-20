.class Lcom/android/settings/device/DeviceDetailOnClickListener$1;
.super Landroid/os/Handler;
.source "DeviceDetailOnClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/DeviceDetailOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/DeviceDetailOnClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/device/DeviceDetailOnClickListener;Landroid/os/Looper;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener$1;->this$0:Lcom/android/settings/device/DeviceDetailOnClickListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 80
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1234

    if-ne p1, v0, :cond_1

    .line 81
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener$1;->this$0:Lcom/android/settings/device/DeviceDetailOnClickListener;

    invoke-static {p1}, Lcom/android/settings/device/DeviceDetailOnClickListener;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceDetailOnClickListener;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener$1;->this$0:Lcom/android/settings/device/DeviceDetailOnClickListener;

    invoke-static {p1}, Lcom/android/settings/device/DeviceDetailOnClickListener;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceDetailOnClickListener;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ContextThemeWrapper;

    if-nez p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener$1;->this$0:Lcom/android/settings/device/DeviceDetailOnClickListener;

    invoke-static {p0}, Lcom/android/settings/device/DeviceDetailOnClickListener;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceDetailOnClickListener;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    nop

    :cond_1
    :goto_0
    return-void
.end method
