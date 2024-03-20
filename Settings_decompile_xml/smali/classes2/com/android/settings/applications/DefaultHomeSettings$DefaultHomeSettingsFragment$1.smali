.class Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment$1;
.super Ljava/lang/Object;
.source "DefaultHomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->addOlderModeLink(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment$1;->this$0:Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 183
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xiaomi.action.ENTER_ELDERLY_MODE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    iget-object p0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment$1;->this$0:Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
