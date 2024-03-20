.class public Lcom/miui/systemui/BlurFrameLayout;
.super Lcom/miui/blur/sdk/backdrop/BackdropBlurFrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BLUR_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 7
    const v2, -0x33101011

    .line 9
    const/4 v3, 0x0

    .line 12
    invoke-direct {v1, v2, v3}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v1, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 19
    new-instance v2, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 21
    const v3, -0x5f505051

    .line 23
    invoke-direct {v2, v3, v1}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-boolean v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    .line 32
    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 36
    const/4 v2, 0x0

    .line 38
    new-array v2, v2, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 45
    const/16 v2, 0xa

    .line 47
    invoke-direct {v1, v2, v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle;-><init>(I[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;)V

    .line 49
    goto :goto_0

    .line 52
    :cond_0
    sget-object v1, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 53
    :goto_0
    sput-object v1, Lcom/miui/systemui/BlurFrameLayout;->BLUR_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 55
    return-void
    .line 57
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurFrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "window"

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3
    new-instance p1, Lcom/miui/systemui/BlurFrameLayout$1;

    invoke-direct {p1}, Lcom/miui/systemui/BlurFrameLayout$1;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/miui/blur/sdk/backdrop/BackdropBlurFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getBlurStyleDayMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/systemui/BlurFrameLayout;->BLUR_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 2
    return-object p0
    .line 4
.end method

.method public getBlurStyleNightMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/systemui/BlurFrameLayout;->BLUR_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 2
    return-object p0
    .line 4
.end method
