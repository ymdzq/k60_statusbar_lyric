.class public final Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Landroid/content/Context;

.field public maxRippleHeight:F

.field public maxRippleWidth:F

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->windowManager:Landroid/view/WindowManager;

    .line 7
    return-void
    .line 9
.end method

.method public static final access$layoutIconRipple(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->windowManager:Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 17
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->getReceiverIconSize$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()I

    .line 22
    move-result v2

    .line 25
    int-to-float v2, v2

    .line 26
    const v3, 0x3f4ccccd    # 0.8f

    .line 27
    mul-float/2addr v2, v3

    .line 30
    invoke-virtual {p1, v2, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setMaxSize(FF)V

    .line 31
    const/high16 v2, 0x3f000000    # 0.5f

    .line 34
    mul-float/2addr v0, v2

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->getReceiverIconSize$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()I

    .line 37
    move-result v3

    .line 40
    int-to-float v3, v3

    .line 41
    mul-float/2addr v3, v2

    .line 42
    sub-float/2addr v1, v3

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->context:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v2

    .line 49
    const v3, 0x7f0707ba    # @dimen/media_ttt_receiver_icon_bottom_margin '10.0dp'

    .line 50
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    sub-float/2addr v1, v2

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    .line 59
    const/4 v0, 0x0

    .line 62
    const v1, 0x7f0408af    # @attr/wallpaperTextColorAccent

    .line 63
    invoke-static {p0, v1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 66
    move-result p0

    .line 69
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 70
    move-result-object p0

    .line 73
    const/high16 v0, 0x42be0000    # 95.0f

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/res/ColorStateList;->withLStar(F)Landroid/content/res/ColorStateList;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 80
    move-result p0

    .line 83
    const/16 v0, 0x46

    .line 84
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setColor(II)V

    .line 86
    return-void
    .line 89
.end method


# virtual methods
.method public final getReceiverIconSize$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    const v0, 0x7f0707b9    # @dimen/media_ttt_icon_size_receiver '112.0dp'

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final layoutRipple(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->windowManager:Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 17
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    if-eqz p2, :cond_0

    .line 22
    const/high16 p2, 0x40000000    # 2.0f

    .line 24
    mul-float v2, v1, p2

    .line 26
    iput v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleHeight:F

    .line 28
    mul-float/2addr p2, v0

    .line 30
    iput p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleWidth:F

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->getReceiverIconSize$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()I

    .line 34
    move-result p2

    .line 37
    int-to-float p2, p2

    .line 38
    const/high16 v2, 0x40800000    # 4.0f

    .line 39
    mul-float/2addr p2, v2

    .line 41
    iput p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleHeight:F

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->getReceiverIconSize$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()I

    .line 44
    move-result p2

    .line 47
    int-to-float p2, p2

    .line 48
    mul-float/2addr p2, v2

    .line 49
    iput p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleWidth:F

    .line 50
    :goto_0
    iget p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleWidth:F

    .line 52
    iget v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleHeight:F

    .line 54
    invoke-virtual {p1, p2, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setMaxSize(FF)V

    .line 56
    const/high16 p2, 0x3f000000    # 0.5f

    .line 59
    mul-float/2addr v0, p2

    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    .line 62
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->context:Landroid/content/Context;

    .line 65
    const p2, 0x7f0408af    # @attr/wallpaperTextColorAccent

    .line 67
    const/4 v0, 0x0

    .line 70
    invoke-static {p0, p2, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 71
    move-result p0

    .line 74
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 75
    move-result-object p0

    .line 78
    const/high16 p2, 0x42be0000    # 95.0f

    .line 79
    invoke-virtual {p0, p2}, Landroid/content/res/ColorStateList;->withLStar(F)Landroid/content/res/ColorStateList;

    .line 81
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 85
    move-result p0

    .line 88
    const/16 p2, 0x46

    .line 89
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setColor(II)V

    .line 91
    return-void
    .line 94
.end method
