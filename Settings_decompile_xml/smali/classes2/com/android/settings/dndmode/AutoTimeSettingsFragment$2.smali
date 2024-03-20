.class Lcom/android/settings/dndmode/AutoTimeSettingsFragment$2;
.super Landroid/database/ContentObserver;
.source "AutoTimeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dndmode/AutoTimeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$2;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$2;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmQuietWristband(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$2;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietWristband(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
