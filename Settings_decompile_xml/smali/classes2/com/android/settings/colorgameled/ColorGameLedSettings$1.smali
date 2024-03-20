.class Lcom/android/settings/colorgameled/ColorGameLedSettings$1;
.super Ljava/lang/Object;
.source "ColorGameLedSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/colorgameled/ColorGameLedSettings;->setupManageNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/colorgameled/ColorGameLedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/colorgameled/ColorGameLedSettings;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings$1;->this$0:Lcom/android/settings/colorgameled/ColorGameLedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings$1;->this$0:Lcom/android/settings/colorgameled/ColorGameLedSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/notification/NotificationSettingsHelper;->getPreferManageEntranceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings$1;->this$0:Lcom/android/settings/colorgameled/ColorGameLedSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
