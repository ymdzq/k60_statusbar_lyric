.class Lcom/android/settings/notification/MiuiSilentSettingsFragment$6;
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

    .line 215
    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$6;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 218
    check-cast p2, Ljava/lang/Boolean;

    .line 219
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$6;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 222
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, -0x3

    const-string/jumbo v2, "mute_voiceassit_at_silent"

    .line 219
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 224
    iget-object p0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$6;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->updateSilentMode(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method
