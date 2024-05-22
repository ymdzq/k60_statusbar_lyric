.class public final Lcom/android/systemui/MiuiVendorServices$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/MiuiVendorServices;


# direct methods
.method public constructor <init>(Lcom/android/systemui/MiuiVendorServices;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/MiuiVendorServices$1;->this$0:Lcom/android/systemui/MiuiVendorServices;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/MiuiVendorServices$1;->this$0:Lcom/android/systemui/MiuiVendorServices;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/MiuiVendorServices;->miuiNotificationCenter:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;->start(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    move-result-object p0

    .line 12
    const-string p2, "notification_focus_protocol"

    .line 13
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, p2, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 16
    return-void
    .line 19
.end method
