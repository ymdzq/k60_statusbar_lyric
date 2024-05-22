.class Lcom/android/settings/NotificationStatusBarSettings$4;
.super Ljava/lang/Object;
.source "NotificationStatusBarSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationStatusBarSettings;->setupBatteryIndicator()V
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

    .line 430
    iput-object p1, p0, Lcom/android/settings/NotificationStatusBarSettings$4;->this$0:Lcom/android/settings/NotificationStatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 433
    iget-object p1, p0, Lcom/android/settings/NotificationStatusBarSettings$4;->this$0:Lcom/android/settings/NotificationStatusBarSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settings/utils/Utils;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "battery_indicator_style"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings$4;->this$0:Lcom/android/settings/NotificationStatusBarSettings;

    invoke-static {p0}, Lcom/android/settings/NotificationStatusBarSettings;->-$$Nest$mupdateBatteryIndicator(Lcom/android/settings/NotificationStatusBarSettings;)V

    const/4 p0, 0x1

    return p0
.end method
