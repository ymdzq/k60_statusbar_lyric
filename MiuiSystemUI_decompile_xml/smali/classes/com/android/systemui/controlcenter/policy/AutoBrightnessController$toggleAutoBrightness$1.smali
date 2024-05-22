.class final Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$toggleAutoBrightness$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$toggleAutoBrightness$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$toggleAutoBrightness$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->enabled:Z

    .line 4
    xor-int/lit8 v2, v1, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$toggleAutoBrightness$1$1;

    .line 10
    invoke-direct {v1, v0}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$toggleAutoBrightness$1$1;-><init>(Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;)V

    .line 12
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->bgHandler:Landroid/os/Handler;

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$toggleAutoBrightness$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->context:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$toggleAutoBrightness$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 28
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 30
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 32
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 34
    move-result v1

    .line 37
    const-string/jumbo v3, "screen_brightness_mode"

    .line 38
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 41
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$toggleAutoBrightness$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 44
    invoke-virtual {p0, v2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->setEnabled(Z)V

    .line 46
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 49
    return-object p0
    .line 51
.end method
