.class Lcom/android/settings/notification/MiuiSilentSettingsFragment$4;
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

    .line 176
    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$4;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 179
    check-cast p2, Ljava/lang/Boolean;

    .line 180
    iget-object p0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$4;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/Context;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 183
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, -0x3

    const-string/jumbo v0, "show_notification"

    .line 180
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 p0, 0x1

    return p0
.end method
