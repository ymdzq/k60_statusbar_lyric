.class public final Lcom/android/systemui/accessibility/MagnificationSettingsController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/MagnificationSettingsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onSettingsPanelVisibilityChanged(Z)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    .line 4
    iget p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    .line 6
    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 10
    iget-object v2, v1, Lcom/android/systemui/accessibility/WindowMagnification;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance v3, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;

    .line 14
    const/4 v4, 0x0

    .line 16
    invoke-direct {v3, v0, p0, p1, v4}, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnification$2;IZI)V

    .line 17
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    if-eqz p1, :cond_0

    .line 23
    sget-object p0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_PANEL_OPENED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    sget-object p0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_PANEL_CLOSED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 28
    :goto_0
    iget-object p1, v1, Lcom/android/systemui/accessibility/WindowMagnification;->mA11yLogger:Lcom/android/systemui/accessibility/AccessibilityLogger;

    .line 30
    iget-object p1, p1, Lcom/android/systemui/accessibility/AccessibilityLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 32
    invoke-interface {p1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 34
    return-void
    .line 37
.end method
