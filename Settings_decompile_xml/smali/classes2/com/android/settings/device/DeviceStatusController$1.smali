.class Lcom/android/settings/device/DeviceStatusController$1;
.super Ljava/lang/Object;
.source "DeviceStatusController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/DeviceStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/DeviceStatusController;


# direct methods
.method constructor <init>(Lcom/android/settings/device/DeviceStatusController;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/device/DeviceStatusController$1;->this$0:Lcom/android/settings/device/DeviceStatusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/android/settings/device/DeviceStatusController$1;->this$0:Lcom/android/settings/device/DeviceStatusController;

    invoke-static {p1}, Lcom/android/settings/device/DeviceStatusController;->access$000(Lcom/android/settings/device/DeviceStatusController;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/device/DeviceStatusController$1;->this$0:Lcom/android/settings/device/DeviceStatusController;

    invoke-static {p1}, Lcom/android/settings/device/DeviceStatusController;->access$100(Lcom/android/settings/device/DeviceStatusController;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    const-string p1, "about_phone_click"

    .line 130
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/android/settings/device/DeviceStatusController$1;->this$0:Lcom/android/settings/device/DeviceStatusController;

    invoke-static {p0}, Lcom/android/settings/device/DeviceStatusController;->access$200(Lcom/android/settings/device/DeviceStatusController;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->startUpdater(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
