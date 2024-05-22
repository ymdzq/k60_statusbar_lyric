.class public Lcom/android/systemui/screenshot/ScreenshotServiceErrorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "window"

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroid/view/WindowManager;

    .line 9
    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    .line 11
    invoke-direct {p2, p1, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    .line 13
    const p0, 0x7f130a8f    # @string/screenshot_failed_to_save_unknown_text 'Try taking screenshot again'

    .line 16
    invoke-virtual {p2, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    .line 19
    return-void
    .line 22
.end method
