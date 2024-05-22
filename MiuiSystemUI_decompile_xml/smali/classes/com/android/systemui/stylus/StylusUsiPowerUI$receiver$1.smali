.class public final Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p2

    .line 5
    const-string v0, "StylusUsiPowerUI.dismiss"

    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 15
    const-class p1, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;

    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 26
    sget-object p2, Lcom/android/systemui/stylus/StylusUiEvent;->STYLUS_LOW_BATTERY_NOTIFICATION_DISMISSED:Lcom/android/systemui/stylus/StylusUiEvent;

    .line 28
    invoke-virtual {p1, p2}, Lcom/android/systemui/stylus/StylusUsiPowerUI;->logUiEvent(Lcom/android/systemui/stylus/StylusUiEvent;)V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    new-instance p1, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;

    .line 38
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;Z)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    .line 43
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "StylusUsiPowerUI.click"

    .line 49
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result p2

    .line 54
    if-eqz p2, :cond_2

    .line 55
    sget-boolean p2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 57
    const-class p2, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;

    .line 59
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 61
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 65
    iget-object p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 68
    sget-object v0, Lcom/android/systemui/stylus/StylusUiEvent;->STYLUS_LOW_BATTERY_NOTIFICATION_CLICKED:Lcom/android/systemui/stylus/StylusUiEvent;

    .line 70
    invoke-virtual {p2, v0}, Lcom/android/systemui/stylus/StylusUsiPowerUI;->logUiEvent(Lcom/android/systemui/stylus/StylusUiEvent;)V

    .line 72
    iget-object p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    new-instance v0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;

    .line 80
    invoke-direct {v0, p2, v1}, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;Z)V

    .line 82
    iget-object p2, p2, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    iget-object p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 90
    iget-object p2, p2, Lcom/android/systemui/stylus/StylusUsiPowerUI;->inputDeviceId:Ljava/lang/Integer;

    .line 92
    if-nez p2, :cond_1

    .line 94
    return-void

    .line 96
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    .line 97
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 99
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 102
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->inputDeviceId:Ljava/lang/Integer;

    .line 104
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 109
    move-result p0

    .line 112
    const-string v0, "device_input_id"

    .line 113
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    .line 118
    const-string v0, "com.android.settings.STYLUS_USI_DETAILS_SETTINGS"

    .line 120
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v0, ":settings:show_fragment_args"

    .line 125
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    move-result-object p0

    .line 130
    const/high16 p2, 0x4000000

    .line 131
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    move-result-object p0

    .line 136
    const/high16 p2, 0x10000000

    .line 137
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    move-result-object p0

    .line 142
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 146
    :catch_0
    const-string p0, "StylusUsiPowerUI"

    .line 147
    const-string p1, "Cannot open USI details page."

    .line 149
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    :goto_0
    return-void
    .line 154
.end method
