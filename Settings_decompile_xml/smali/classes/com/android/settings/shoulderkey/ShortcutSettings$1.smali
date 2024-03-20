.class Lcom/android/settings/shoulderkey/ShortcutSettings$1;
.super Landroid/os/Handler;
.source "ShortcutSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/shoulderkey/ShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/shoulderkey/ShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/shoulderkey/ShortcutSettings;Landroid/os/Looper;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings$1;->this$0:Lcom/android/settings/shoulderkey/ShortcutSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings$1;->this$0:Lcom/android/settings/shoulderkey/ShortcutSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/shoulderkey/ShortcutSettings;->-$$Nest$fputmIsSwitchedToRight(Lcom/android/settings/shoulderkey/ShortcutSettings;Z)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings$1;->this$0:Lcom/android/settings/shoulderkey/ShortcutSettings;

    invoke-static {v0, v1}, Lcom/android/settings/shoulderkey/ShortcutSettings;->-$$Nest$mloadDropDownValues(Lcom/android/settings/shoulderkey/ShortcutSettings;Z)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings$1;->this$0:Lcom/android/settings/shoulderkey/ShortcutSettings;

    invoke-static {v0}, Lcom/android/settings/shoulderkey/ShortcutSettings;->-$$Nest$fgetmShoulderKeyGuideImage(Lcom/android/settings/shoulderkey/ShortcutSettings;)Lcom/android/settings/shoulderkey/FullImagePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/shoulderkey/FullImagePreference;->moveImageRight()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings$1;->this$0:Lcom/android/settings/shoulderkey/ShortcutSettings;

    invoke-static {v0, v1}, Lcom/android/settings/shoulderkey/ShortcutSettings;->-$$Nest$fputmIsSwitchedToRight(Lcom/android/settings/shoulderkey/ShortcutSettings;Z)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings$1;->this$0:Lcom/android/settings/shoulderkey/ShortcutSettings;

    invoke-static {v0, v1}, Lcom/android/settings/shoulderkey/ShortcutSettings;->-$$Nest$mloadDropDownValues(Lcom/android/settings/shoulderkey/ShortcutSettings;Z)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings$1;->this$0:Lcom/android/settings/shoulderkey/ShortcutSettings;

    invoke-static {v0}, Lcom/android/settings/shoulderkey/ShortcutSettings;->-$$Nest$fgetmShoulderKeyGuideImage(Lcom/android/settings/shoulderkey/ShortcutSettings;)Lcom/android/settings/shoulderkey/FullImagePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/shoulderkey/FullImagePreference;->moveImageLeft()V

    .line 58
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
