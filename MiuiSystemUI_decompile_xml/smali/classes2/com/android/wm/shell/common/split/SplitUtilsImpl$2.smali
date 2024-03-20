.class public final Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitUtilsImpl;Landroid/os/Handler;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->this$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->val$context:Landroid/content/Context;

    .line 6
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->this$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

    const-string v0, "ro.miui.cts"

    .line 2
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "persist.sys.miui_optimization"

    .line 3
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->IS_CTS_MODE:Z

    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->this$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->IS_CTS_MODE:Z

    xor-int/lit8 p0, p0, 0x1

    const-string/jumbo v0, "wmshell.sosc_enable"

    .line 6
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->this$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->this$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMiuiSplitActive()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p1, "press_meta_key_and_w"

    .line 9
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->val$context:Landroid/content/Context;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->val$context:Landroid/content/Context;

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string/jumbo p1, "update_split_snap_target"

    .line 14
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 15
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->val$context:Landroid/content/Context;

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->val$context:Landroid/content/Context;

    .line 18
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    :cond_2
    sget p1, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->COVER_MODE_NIGHT_YES_BG_COLOR:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Settings changed str:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplitUtilsImpl"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo p1, "snap_to_right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo p1, "snap_to_left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string p1, "expand_dock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, p2

    goto :goto_1

    :sswitch_3
    const-string p1, "expand_other"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    .line 21
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->this$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

    invoke-static {p0, p2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->-$$Nest$msnapToNextTarget(Lcom/android/wm/shell/common/split/SplitUtilsImpl;Z)V

    goto :goto_2

    .line 22
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->this$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

    invoke-static {p0, v1}, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->-$$Nest$msnapToNextTarget(Lcom/android/wm/shell/common/split/SplitUtilsImpl;Z)V

    goto :goto_2

    .line 23
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->this$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

    .line 24
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 25
    new-instance v0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/SplitUtilsImpl;Z)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 26
    :pswitch_4
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$2;->this$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 28
    new-instance p2, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/SplitUtilsImpl;Z)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x28871ad5 -> :sswitch_3
        -0x1a19f348 -> :sswitch_2
        0x24904bd6 -> :sswitch_1
        0x6dcf902d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
