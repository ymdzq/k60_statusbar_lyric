.class Lcom/android/settings/wireless/TetherEntryController$1;
.super Landroid/content/BroadcastReceiver;
.source "TetherEntryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wireless/TetherEntryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wireless/TetherEntryController;


# direct methods
.method constructor <init>(Lcom/android/settings/wireless/TetherEntryController;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/settings/wireless/TetherEntryController$1;->this$0:Lcom/android/settings/wireless/TetherEntryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/android/settings/wireless/TetherEntryController$1;->this$0:Lcom/android/settings/wireless/TetherEntryController;

    invoke-static {p1}, Lcom/android/settings/wireless/TetherEntryController;->-$$Nest$fgetmPreference(Lcom/android/settings/wireless/TetherEntryController;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p0, p0, Lcom/android/settings/wireless/TetherEntryController$1;->this$0:Lcom/android/settings/wireless/TetherEntryController;

    invoke-static {p0}, Lcom/android/settings/wireless/TetherEntryController;->-$$Nest$mupdateValue(Lcom/android/settings/wireless/TetherEntryController;)V

    :cond_0
    return-void
.end method
