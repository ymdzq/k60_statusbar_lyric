.class Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$2;
.super Ljava/lang/Object;
.source "MiuiDndDetailSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$2;->this$0:Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 116
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$2;->this$0:Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/notification/SilentModeSettings;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$2;->this$0:Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
