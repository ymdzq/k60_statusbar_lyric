.class Lcom/android/settings/colorled/ColorLedSettings$1;
.super Ljava/lang/Object;
.source "ColorLedSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/colorled/ColorLedSettings;->setupManageNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/colorled/ColorLedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/colorled/ColorLedSettings;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/colorled/ColorLedSettings$1;->this$0:Lcom/android/settings/colorled/ColorLedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedSettings$1;->this$0:Lcom/android/settings/colorled/ColorLedSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->getPreferManageEntranceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p0, p0, Lcom/android/settings/colorled/ColorLedSettings$1;->this$0:Lcom/android/settings/colorled/ColorLedSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
