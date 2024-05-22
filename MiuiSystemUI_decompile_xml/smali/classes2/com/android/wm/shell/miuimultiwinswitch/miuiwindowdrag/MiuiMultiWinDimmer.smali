.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiMultiWinDimmer"


# instance fields
.field private final mAnimator:Lmiuix/animation/IStateStyle;

.field private final mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer$FolmeControl;

.field private final mLeash:Landroid/view/SurfaceControl;

.field private final t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFolmeControl(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer$FolmeControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer$FolmeControl;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmLeash(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;->mLeash:Landroid/view/SurfaceControl;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgett(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;->t:Landroid/view/SurfaceControl$Transaction;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;->TAG:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 5
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;->t:Landroid/view/SurfaceControl$Transaction;

    .line 10
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer$FolmeControl;

    .line 12
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer$FolmeControl;-><init>(I)V

    .line 15
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer$FolmeControl;

    .line 18
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 24
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 28
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    .line 30
    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 32
    sget-object v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;->TAG:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 37
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 41
    move-result-object v3

    .line 44
    invoke-virtual {v3, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 49
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;->mLeash:Landroid/view/SurfaceControl;

    .line 53
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 56
    iget v3, p3, Landroid/graphics/Rect;->left:I

    .line 59
    int-to-float v3, v3

    .line 61
    iget v5, p3, Landroid/graphics/Rect;->top:I

    .line 62
    int-to-float v5, v5

    .line 64
    invoke-virtual {v0, p1, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 65
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 68
    move-result v3

    .line 71
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 72
    move-result p3

    .line 75
    invoke-virtual {v0, p1, v3, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 76
    invoke-virtual {v0, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 79
    const/4 p3, 0x1

    .line 82
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 83
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 86
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 89
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 92
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 94
    new-instance p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer$1;

    .line 97
    invoke-direct {p2, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;)V

    .line 99
    filled-new-array {p2}, [Lmiuix/animation/listener/TransitionListener;

    .line 102
    move-result-object p0

    .line 105
    invoke-virtual {p1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 106
    move-result-object p0

    .line 109
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    move-result-object p1

    .line 113
    int-to-float p2, p5

    .line 114
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    move-result-object p2

    .line 118
    const-string p3, "alpha"

    .line 119
    const-string p4, "blurRadius"

    .line 121
    filled-new-array {p3, p1, p4, p2, p0}, [Ljava/lang/Object;

    .line 123
    move-result-object p0

    .line 126
    invoke-interface {v1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 127
    const-string p0, "create MiuiMultiWinDimmer"

    .line 130
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
    .line 135
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer$2;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer$2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;)V

    .line 9
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 16
    move-result-object v0

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 20
    const/4 v1, 0x0

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object v1

    .line 26
    const-string v2, "blurRadius"

    .line 27
    const-string v3, "alpha"

    .line 29
    filled-new-array {v3, v1, v2, v1, v0}, [Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 35
    return-void
    .line 38
.end method
