.class Lcom/android/settings/notification/MiuiSilentSettingsFragment$8;
.super Ljava/lang/Object;
.source "MiuiSilentSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/MiuiSilentSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$8;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 252
    check-cast p2, Ljava/lang/Boolean;

    .line 253
    iget-object p0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$8;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/Context;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 256
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, -0x3

    const-string v1, "allow_network_call_ring"

    .line 253
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 258
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string/jumbo p1, "netWorkAlarm"

    invoke-static {p1, p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    .line 259
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method
