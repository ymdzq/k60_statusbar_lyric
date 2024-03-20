.class Lcom/android/settings/notification/MiuiZenModeSettings$5;
.super Ljava/lang/Object;
.source "MiuiZenModeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/MiuiZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MiuiZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$5;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 188
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$5;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/dndmode/AlarmContentActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$5;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetisCts(Lcom/android/settings/notification/MiuiZenModeSettings;)Z

    move-result v0

    const-string v1, "isCts"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$5;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
