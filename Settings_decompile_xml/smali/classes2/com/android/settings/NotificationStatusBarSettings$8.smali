.class Lcom/android/settings/NotificationStatusBarSettings$8;
.super Ljava/lang/Object;
.source "NotificationStatusBarSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationStatusBarSettings;->setupSmartDeviceControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationStatusBarSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationStatusBarSettings;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/android/settings/NotificationStatusBarSettings$8;->this$0:Lcom/android/settings/NotificationStatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 582
    iget-object p1, p0, Lcom/android/settings/NotificationStatusBarSettings$8;->this$0:Lcom/android/settings/NotificationStatusBarSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settings/utils/Utils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    .line 583
    iget-object p1, p0, Lcom/android/settings/NotificationStatusBarSettings$8;->this$0:Lcom/android/settings/NotificationStatusBarSettings;

    invoke-static {p1}, Lcom/android/settings/NotificationStatusBarSettings;->-$$Nest$mupdateSmartDeviceControl(Lcom/android/settings/NotificationStatusBarSettings;)V

    .line 584
    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings$8;->this$0:Lcom/android/settings/NotificationStatusBarSettings;

    invoke-static {p0}, Lcom/android/settings/NotificationStatusBarSettings;->-$$Nest$mupdateQuickControlAllDevices(Lcom/android/settings/NotificationStatusBarSettings;)V

    const/4 p0, 0x1

    return p0
.end method
