.class public final Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    const/4 v0, 0x3

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 14
    const/16 p1, 0xa

    .line 16
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
    .line 22
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
