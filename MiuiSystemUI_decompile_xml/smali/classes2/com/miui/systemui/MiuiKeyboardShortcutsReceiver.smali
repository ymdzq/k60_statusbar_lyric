.class public final Lcom/miui/systemui/MiuiKeyboardShortcutsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string p0, "is_pad"

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    if-eqz p2, :cond_1

    .line 13
    const-string v1, "deviceId"

    .line 15
    invoke-virtual {p2, v1, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    move-result p0

    .line 20
    const-string/jumbo v1, "system"

    .line 21
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 24
    move-result v1

    .line 27
    const-string/jumbo v2, "show"

    .line 28
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 31
    move-result p2

    .line 34
    move v0, v1

    .line 35
    move v3, p2

    .line 36
    move p2, p0

    .line 37
    move p0, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move p2, p0

    .line 40
    :goto_0
    if-eqz p0, :cond_2

    .line 41
    invoke-static {p2, v0, p1}, Lcom/miui/systemui/MiuiKeyboardShortcuts$Companion;->show(IZLandroid/content/Context;)V

    .line 43
    goto :goto_1

    .line 46
    :cond_2
    sget-object p0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->instance:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 47
    if-eqz p0, :cond_3

    .line 49
    invoke-static {p0}, Lcom/miui/systemui/MiuiKeyboardShortcuts;->access$dismissDialog(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 51
    :cond_3
    :goto_1
    return-void
    .line 54
.end method
