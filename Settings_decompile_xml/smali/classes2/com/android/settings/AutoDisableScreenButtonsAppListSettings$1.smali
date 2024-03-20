.class Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$1;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->initHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$1;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 138
    iget-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$1;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmContext(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "enable_auto_disable_screen_rotation"

    .line 139
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v1

    .line 138
    invoke-static {p1, v0, p2, v1}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 140
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$1;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.CHANGE_AUTO_DISABLE_BTN_STATUS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "is_auto_disable_btn_rotation"

    .line 141
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    new-instance p2, Landroid/os/UserHandle;

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 140
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
