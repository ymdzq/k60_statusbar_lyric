.class Lcom/android/settings/SettingsActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->prepareWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;

.field final synthetic val$oldAttr:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 1418
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    iput-object p2, p0, Lcom/android/settings/SettingsActivity$3;->val$oldAttr:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1421
    iget-object p1, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/SettingsActivity$3;->val$oldAttr:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1422
    iget-object p0, p0, Lcom/android/settings/SettingsActivity$3;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    return-void
.end method
