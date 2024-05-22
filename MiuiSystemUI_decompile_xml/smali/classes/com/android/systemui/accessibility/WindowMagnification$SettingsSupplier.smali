.class public final Lcom/android/systemui/accessibility/WindowMagnification$SettingsSupplier;
.super Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/WindowMagnification$2;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;-><init>(Landroid/hardware/display/DisplayManager;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$SettingsSupplier;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnification$SettingsSupplier;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/accessibility/WindowMagnification$SettingsSupplier;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final createInstance(Landroid/view/Display;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$SettingsSupplier;->mContext:Landroid/content/Context;

    .line 2
    const/16 v1, 0x7f7

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    .line 7
    move-result-object v4

    .line 10
    const p1, 0x7f140561    # @style/Theme.SystemUI

    .line 11
    invoke-virtual {v4, p1}, Landroid/content/Context;->setTheme(I)V

    .line 14
    new-instance p1, Lcom/android/systemui/accessibility/MagnificationSettingsController;

    .line 17
    new-instance v5, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    .line 19
    invoke-direct {v5}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    .line 21
    iget-object v6, p0, Lcom/android/systemui/accessibility/WindowMagnification$SettingsSupplier;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    .line 24
    iget-object v7, p0, Lcom/android/systemui/accessibility/WindowMagnification$SettingsSupplier;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 26
    const/4 v8, 0x0

    .line 28
    move-object v3, p1

    .line 29
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/accessibility/MagnificationSettingsController;-><init>(Landroid/content/Context;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    .line 30
    return-object p1
    .line 33
.end method
