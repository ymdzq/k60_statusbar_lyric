.class final Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 2

    .line 430
    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 437
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-$$Nest$fgetmDelayRunnable(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 445
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 447
    iget-object p2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {p2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-$$Nest$fgetmRequest(Lcom/android/settings/bluetooth/RequestPermissionActivity;)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0xa

    if-ne p1, p2, :cond_3

    .line 457
    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-$$Nest$mproceedAndFinish(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0xc

    if-ne p1, p2, :cond_3

    .line 451
    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-$$Nest$mproceedAndFinish(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    :cond_3
    :goto_0
    return-void
.end method
