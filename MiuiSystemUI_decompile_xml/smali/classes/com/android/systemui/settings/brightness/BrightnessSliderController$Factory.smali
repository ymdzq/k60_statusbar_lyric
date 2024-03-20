.class public final Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const v1, 0x7f0d0312    # @layout/quick_settings_brightness_dialog 'res/layout/quick_settings_brightness_dialog.xml'

    .line 7
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 14
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 18
    invoke-direct {p2, p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;Lcom/android/systemui/plugins/FalsingManager;)V

    .line 20
    return-object p2
    .line 23
.end method
