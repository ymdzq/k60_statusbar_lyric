.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mIsDialogShowing:Z

    .line 5
    return-void
    .line 7
.end method
