.class Lcom/android/settings/notification/MiuiZenModeSettingsFragment$2;
.super Landroid/os/Handler;
.source "MiuiZenModeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MiuiZenModeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;Landroid/os/Looper;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment$2;->this$0:Lcom/android/settings/notification/MiuiZenModeSettingsFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 116
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 117
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment$2;->this$0:Lcom/android/settings/notification/MiuiZenModeSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->-$$Nest$mrefreshUI(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;)V

    :cond_0
    return-void
.end method
