.class Lcom/android/settings/notification/MiuiSilentSettingsFragment$1;
.super Landroid/os/Handler;
.source "MiuiSilentSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/MiuiSilentSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;Landroid/os/Looper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$1;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 106
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$1;->this$0:Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->-$$Nest$mupdateControl(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V

    :goto_0
    return-void
.end method
