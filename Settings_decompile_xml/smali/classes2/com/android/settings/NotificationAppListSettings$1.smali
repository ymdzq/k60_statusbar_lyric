.class Lcom/android/settings/NotificationAppListSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationAppListSettings;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings$1;->this$0:Lcom/android/settings/NotificationAppListSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/settings/NotificationAppListSettings$1;->this$0:Lcom/android/settings/NotificationAppListSettings;

    invoke-static {p0}, Lcom/android/settings/NotificationAppListSettings;->-$$Nest$mloadPackages(Lcom/android/settings/NotificationAppListSettings;)V

    return-void
.end method
