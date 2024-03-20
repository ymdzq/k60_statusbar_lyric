.class public final Lcom/android/systemui/wmshell/MiuiBubbleManager$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/wmshell/MiuiBubbleManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/MiuiBubbleManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;->this$0:Lcom/android/systemui/wmshell/MiuiBubbleManager;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;->$r8$classId:I

    .line 2
    const-string v1, "MiuiBubbleManager"

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;->this$0:Lcom/android/systemui/wmshell/MiuiBubbleManager;

    .line 13
    iget-object v0, p1, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->isBubbleNotificationSwitchOpen(Landroid/content/Context;)Z

    .line 17
    move-result v0

    .line 20
    iput-boolean v0, p1, Lcom/android/systemui/wmshell/MiuiBubbleManager;->isBubbleSwitchOpen:Z

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    const-string v0, "onChange: isBubbleSwitchOpen="

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;->this$0:Lcom/android/systemui/wmshell/MiuiBubbleManager;

    .line 30
    iget-boolean p0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->isBubbleSwitchOpen:Z

    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 44
    :goto_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 45
    iget-object p1, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;->this$0:Lcom/android/systemui/wmshell/MiuiBubbleManager;

    .line 48
    iget-object p1, p1, Lcom/android/systemui/wmshell/MiuiBubbleManager;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    move-result-object p1

    .line 55
    const-string/jumbo v0, "zen_mode"

    .line 56
    const/4 v2, 0x0

    .line 59
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 60
    move-result p1

    .line 63
    iget-object v0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;->this$0:Lcom/android/systemui/wmshell/MiuiBubbleManager;

    .line 64
    if-eqz p1, :cond_0

    .line 66
    const/4 v2, 0x1

    .line 68
    :cond_0
    iput-boolean v2, v0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->isZenMode:Z

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    const-string v0, "onChange: isZenMode = "

    .line 73
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager$1;->this$0:Lcom/android/systemui/wmshell/MiuiBubbleManager;

    .line 78
    iget-boolean p0, p0, Lcom/android/systemui/wmshell/MiuiBubbleManager;->isZenMode:Z

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 94
.end method
