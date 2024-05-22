.class public final Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;->mCurrentUserId:I

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;->mObserver:Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController$BubblesSettingsObserver;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p1, "miui_bubbles_notification_switch"

    .line 11
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController$BubblesSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 18
    return-void
    .line 21
.end method
