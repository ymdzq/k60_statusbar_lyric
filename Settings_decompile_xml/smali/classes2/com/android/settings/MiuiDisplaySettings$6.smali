.class Lcom/android/settings/MiuiDisplaySettings$6;
.super Ljava/lang/Object;
.source "MiuiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiDisplaySettings;->checkRestrictionAndSetEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$6;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 577
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$6;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmContext(Lcom/android/settings/MiuiDisplaySettings;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "no_config_brightness"

    .line 579
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 577
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fputmEnforcedAdmin(Lcom/android/settings/MiuiDisplaySettings;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 580
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$6;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmEnforcedAdmin(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fputmDisabledByAdmin(Lcom/android/settings/MiuiDisplaySettings;Z)V

    return-void
.end method
