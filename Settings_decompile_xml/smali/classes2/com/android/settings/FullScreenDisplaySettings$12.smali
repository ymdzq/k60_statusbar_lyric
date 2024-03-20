.class Lcom/android/settings/FullScreenDisplaySettings$12;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FullScreenDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FullScreenDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FullScreenDisplaySettings;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$12;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 442
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$12;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmContext(Lcom/android/settings/FullScreenDisplaySettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/Utils;->useMiuiHomeAsDefaultHome(Landroid/content/Context;)Z

    move-result p1

    .line 443
    iget-object p2, p0, Lcom/android/settings/FullScreenDisplaySettings$12;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmUseMiuiHomeAsDefaultHome(Lcom/android/settings/FullScreenDisplaySettings;)Z

    move-result p2

    if-eq p2, p1, :cond_0

    .line 444
    iget-object p2, p0, Lcom/android/settings/FullScreenDisplaySettings$12;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p2, p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fputmUseMiuiHomeAsDefaultHome(Lcom/android/settings/FullScreenDisplaySettings;Z)V

    .line 445
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$12;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$mupdateHideGesturePreference(Lcom/android/settings/FullScreenDisplaySettings;)V

    .line 446
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$12;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$mupdateGestureLineOfNavBarGuideView(Lcom/android/settings/FullScreenDisplaySettings;)V

    :cond_0
    return-void
.end method
