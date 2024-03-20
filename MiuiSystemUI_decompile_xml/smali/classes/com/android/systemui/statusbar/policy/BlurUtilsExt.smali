.class public final Lcom/android/systemui/statusbar/policy/BlurUtilsExt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final URI_DISABLE_WINDOW_BLURS:Landroid/net/Uri;


# instance fields
.field public blendColors:[I

.field public blurDisabledBySettings:Z

.field public blurFeatureSupportedOnDevice:Z

.field public final blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

.field public final context:Landroid/content/Context;

.field public dimColorAlpha:I

.field public dimColorRGB:I

.field public miBlurMaxRadius:I

.field public solidColorAlpha:I

.field public solidColorRGB:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "disable_window_blurs"

    .line 2
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->URI_DISABLE_WINDOW_BLURS:Landroid/net/Uri;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/CrossWindowBlurListeners;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->context:Landroid/content/Context;

    .line 5
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 7
    const/16 v0, 0x64

    .line 9
    iput v0, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->miBlurMaxRadius:I

    .line 11
    new-instance v0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt$blurListener$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BlurUtilsExt$blurListener$1;-><init>(Lcom/android/systemui/statusbar/policy/BlurUtilsExt;)V

    .line 15
    new-instance v1, Lcom/android/systemui/statusbar/policy/BlurUtilsExt$settingsListener$1;

    .line 18
    invoke-direct {v1, p7, p0}, Lcom/android/systemui/statusbar/policy/BlurUtilsExt$settingsListener$1;-><init>(Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/BlurUtilsExt;)V

    .line 20
    check-cast p3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 23
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 25
    new-instance p3, Lcom/android/systemui/statusbar/policy/BlurUtilsExt$sam$java_util_function_Consumer$0;

    .line 28
    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/policy/BlurUtilsExt$sam$java_util_function_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    invoke-virtual {p4, p6, p3}, Landroid/view/CrossWindowBlurListeners;->addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    move-result-object p3

    .line 39
    sget-object p4, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->URI_DISABLE_WINDOW_BLURS:Landroid/net/Uri;

    .line 40
    const/4 p6, 0x0

    .line 42
    invoke-virtual {p3, p4, p6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->updateResources()V

    .line 46
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    .line 49
    move-result p3

    .line 52
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurFeatureSupportedOnDevice:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    move-result-object p1

    .line 58
    const-string p3, "disable_window_blurs"

    .line 59
    invoke-static {p1, p3, p6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 61
    move-result p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    const/4 p6, 0x1

    .line 67
    :cond_0
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurDisabledBySettings:Z

    .line 68
    const-class p1, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 75
    sget-object p3, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 76
    invoke-virtual {p2, p1, p0, p3}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 78
    return-void
    .line 81
.end method


# virtual methods
.method public final applyBlur(Landroid/view/View;FZ)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->context:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/miui/systemui/util/MiBlurCompat;->getBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 22
    const/4 v4, 0x0

    .line 24
    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    if-eqz p3, :cond_1

    .line 33
    invoke-static {p1, v2}, Lcom/miui/systemui/util/MiBlurCompat;->setPassWindowBlurEnabledCompat(Landroid/view/View;Z)V

    .line 35
    invoke-static {v2, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurModeCompat(ILandroid/view/View;)V

    .line 38
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/miui/systemui/util/MiBlurCompat;->getPassWindowBlurEnabledCompat(Landroid/view/View;)Z

    .line 42
    move-result p3

    .line 45
    if-nez p3, :cond_2

    .line 46
    invoke-static {p1, v1}, Lcom/miui/systemui/util/MiBlurCompat;->setPassWindowBlurEnabledCompat(Landroid/view/View;Z)V

    .line 48
    invoke-static {v1, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurModeCompat(ILandroid/view/View;)V

    .line 51
    :cond_2
    :goto_1
    cmpg-float p3, p2, v4

    .line 54
    if-nez p3, :cond_3

    .line 56
    move p3, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move p3, v2

    .line 60
    :goto_2
    xor-int/2addr p3, v1

    .line 61
    invoke-static {p3, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiViewBlurModeCompat(ILandroid/view/View;)V

    .line 62
    iget p3, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->miBlurMaxRadius:I

    .line 65
    int-to-float v0, v2

    .line 67
    int-to-float p3, p3

    .line 68
    invoke-static {v0, p3, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 69
    move-result p3

    .line 72
    float-to-int p3, p3

    .line 73
    if-gez p3, :cond_4

    .line 74
    move p3, v2

    .line 76
    :cond_4
    invoke-static {p3, p1}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurRadiusCompat(ILandroid/view/View;)V

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blendColors:[I

    .line 80
    if-nez p0, :cond_5

    .line 82
    const/4 p0, 0x0

    .line 84
    :cond_5
    invoke-static {p2, v4, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    .line 85
    move-result p3

    .line 88
    invoke-static {p1, p0, p3}, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlendColors(Landroid/view/View;[IF)V

    .line 89
    const p0, 0x3d99999a    # 0.075f

    .line 92
    invoke-static {v4, p0, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 95
    move-result p0

    .line 98
    :try_start_0
    sget-object p2, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurScaleRatioMethod$delegate:Lkotlin/Lazy;

    .line 99
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 101
    move-result-object p2

    .line 104
    check-cast p2, Ljava/lang/reflect/Method;

    .line 105
    if-eqz p2, :cond_9

    .line 107
    new-array p3, v1, [Ljava/lang/Object;

    .line 109
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 111
    move-result-object p0

    .line 114
    aput-object p0, p3, v2

    .line 115
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    goto :goto_4

    .line 120
    :cond_6
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 121
    move-result p3

    .line 124
    xor-int/2addr p3, v1

    .line 125
    if-eqz p3, :cond_7

    .line 126
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurDisabledBySettings:Z

    .line 128
    if-nez p3, :cond_7

    .line 130
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurFeatureSupportedOnDevice:Z

    .line 132
    if-eqz p3, :cond_7

    .line 134
    goto :goto_3

    .line 136
    :cond_7
    move v1, v2

    .line 137
    :goto_3
    if-eqz v1, :cond_8

    .line 138
    invoke-static {p1, v2}, Lcom/miui/systemui/util/MiBlurCompat;->setPassWindowBlurEnabledCompat(Landroid/view/View;Z)V

    .line 140
    invoke-static {p2, v4, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    .line 143
    move-result p3

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 147
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    .line 149
    move-result p3

    .line 152
    float-to-int p3, p3

    .line 153
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->dimColorAlpha:I

    .line 154
    int-to-float v1, v1

    .line 156
    invoke-static {p2, v4, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    .line 157
    move-result p2

    .line 160
    mul-float/2addr p2, v1

    .line 161
    float-to-int p2, p2

    .line 162
    shl-int/lit8 p2, p2, 0x18

    .line 163
    iget p0, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->dimColorRGB:I

    .line 165
    or-int/2addr p0, p2

    .line 167
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 171
    move-result-object p0

    .line 174
    invoke-virtual {v0, p0, p3, v2}, Lcom/android/systemui/statusbar/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;IZ)V

    .line 175
    goto :goto_4

    .line 178
    :cond_8
    iget p3, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->solidColorAlpha:I

    .line 179
    int-to-float p3, p3

    .line 181
    invoke-static {p2, v4, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    .line 182
    move-result p2

    .line 185
    mul-float/2addr p2, p3

    .line 186
    float-to-int p2, p2

    .line 187
    shl-int/lit8 p2, p2, 0x18

    .line 188
    iget p0, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->solidColorRGB:I

    .line 190
    or-int/2addr p0, p2

    .line 192
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 193
    :catchall_0
    :cond_9
    :goto_4
    return-void
    .line 196
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Landroid/util/IndentingPrintWriter;

    .line 2
    const-string v0, "  "

    .line 4
    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    const-string p1, "BlurUtilsExt:"

    .line 9
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurFeatureSupportedOnDevice:Z

    .line 17
    const-string v0, "blurFeatureSupportedOnDevice: "

    .line 19
    invoke-static {v0, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 21
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurDisabledBySettings:Z

    .line 24
    const-string p1, "blurDisabledBySettings: "

    .line 26
    invoke-static {p1, p0, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 28
    return-void
    .line 31
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->updateResources()V

    .line 2
    return-void
    .line 5
.end method

.method public final updateResources()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f06073f    # @color/notification_control_center_blur_dim_color '#59555555'

    .line 8
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 12
    move-result v1

    .line 15
    shr-int/lit8 v2, v1, 0x18

    .line 16
    and-int/lit16 v2, v2, 0xff

    .line 18
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->dimColorAlpha:I

    .line 20
    shl-int/lit8 v2, v2, 0x18

    .line 22
    not-int v2, v2

    .line 24
    and-int/2addr v1, v2

    .line 25
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->dimColorRGB:I

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v1

    .line 31
    const v2, 0x7f060740    # @color/notification_control_center_solid_background_color '#ff6e6e6e'

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 35
    move-result v1

    .line 38
    shr-int/lit8 v2, v1, 0x18

    .line 39
    and-int/lit16 v2, v2, 0xff

    .line 41
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->solidColorAlpha:I

    .line 43
    shl-int/lit8 v2, v2, 0x18

    .line 45
    not-int v2, v2

    .line 47
    and-int/2addr v1, v2

    .line 48
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->solidColorRGB:I

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v1

    .line 54
    const v2, 0x7f0300e9    # @array/window_background_blend_colors

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 58
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blendColors:[I

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v0

    .line 67
    const v1, 0x7f0707c2    # @dimen/mi_blur_max_radius '100.0dp'

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    move-result v0

    .line 74
    iput v0, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->miBlurMaxRadius:I

    .line 75
    return-void
    .line 77
.end method
