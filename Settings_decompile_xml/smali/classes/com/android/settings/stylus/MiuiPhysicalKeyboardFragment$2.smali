.class Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$2;
.super Landroid/database/ContentObserver;
.source "MiuiPhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Landroid/os/Handler;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$2;->this$0:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 416
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string/jumbo p1, "pointer_speed"

    .line 417
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "keyboard_type_level"

    .line 421
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 423
    iget-object p2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$2;->this$0:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;

    invoke-static {p2}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->-$$Nest$fgetmContentResolver(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    .line 425
    :cond_1
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$2;->this$0:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;

    invoke-static {p1, v1}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->-$$Nest$fputmIsHighMatchKeyboard(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Z)V

    .line 426
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$2;->this$0:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;

    invoke-static {p1, v2}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->-$$Nest$fputmShouldUpdateKeyboard(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Z)V

    .line 427
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$2;->this$0:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->-$$Nest$mscheduleUpdateHardKeyboards(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;)V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "mouse_gesture_naturalscroll"

    .line 428
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 429
    iget-object p2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$2;->this$0:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;

    invoke-static {p2}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->-$$Nest$fgetmContentResolver(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_3

    move v1, v2

    .line 431
    :cond_3
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$2;->this$0:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->-$$Nest$fgetmNaturalScrollSwitch(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method
