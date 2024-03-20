.class Lcom/android/settings/NotificationControlCenterSettings$1;
.super Landroid/database/ContentObserver;
.source "NotificationControlCenterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationControlCenterSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationControlCenterSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationControlCenterSettings;Landroid/os/Handler;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/NotificationControlCenterSettings$1;->this$0:Lcom/android/settings/NotificationControlCenterSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/android/settings/NotificationControlCenterSettings$1;->this$0:Lcom/android/settings/NotificationControlCenterSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p0, p0, Lcom/android/settings/NotificationControlCenterSettings$1;->this$0:Lcom/android/settings/NotificationControlCenterSettings;

    invoke-static {p0}, Lcom/android/settings/NotificationControlCenterSettings;->-$$Nest$mupdateNotificationAnimationPref(Lcom/android/settings/NotificationControlCenterSettings;)V

    :cond_0
    return-void
.end method
