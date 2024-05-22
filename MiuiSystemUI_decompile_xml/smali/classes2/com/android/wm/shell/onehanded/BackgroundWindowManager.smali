.class public final Lcom/android/wm/shell/onehanded/BackgroundWindowManager;
.super Landroid/view/WindowlessWindowManager;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final THEME_COLOR_OFFSET:I = 0xa


# instance fields
.field private mBackgroundView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDisplayBounds:Landroid/graphics/Rect;

.field private mLeash:Landroid/view/SurfaceControl;

.field private mRootDisplayAreaOrganizer:Lcom/android/wm/shell/RootDisplayAreaOrganizer;

.field private final mTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field private mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    .line 2
    const-string v0, "BackgroundWindowManager"

    .line 4
    sput-object v0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->TAG:Ljava/lang/String;

    .line 6
    return-void
    .line 8
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/RootDisplayAreaOrganizer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, v1}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mRootDisplayAreaOrganizer:Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    .line 16
    new-instance p1, Lcom/android/wm/shell/onehanded/BackgroundWindowManager$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {p1}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager$$ExternalSyntheticLambda0;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 23
    return-void
    .line 25
.end method

.method private adjustColor(I)F
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0xa

    .line 2
    const/4 p0, 0x0

    .line 4
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 5
    move-result p0

    .line 8
    int-to-float p0, p0

    .line 9
    const/high16 p1, 0x437f0000    # 255.0f

    .line 10
    div-float/2addr p0, p1

    .line 12
    return p0
    .line 13
.end method

.method private getThemeColor()I
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    .line 4
    const v1, 0x10302e3    # @android:style/Theme.DeviceDefault.DayNight

    .line 6
    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 9
    const p0, 0x7f06076b    # @color/one_handed_tutorial_background_color 'res/color/one_handed_tutorial_background_color.xml'

    .line 12
    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    .line 15
    move-result p0

    .line 18
    return p0
    .line 19
.end method

.method private updateThemeOnly()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 10
    if-nez v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 19
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->getThemeColorForBackground()I

    .line 23
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    .line 32
    invoke-virtual {v1, p0, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 34
    return-void

    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "Background view or SurfaceControl does not exist when trying to update theme only!"

    .line 40
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
    .line 45
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->TAG:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string v0, "  mDisplayBounds="

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mDisplayBounds:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 14
    const-string v0, "  mViewHost="

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 24
    const-string v0, "  mLeash="

    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 34
    const-string v0, "  mBackgroundView="

    .line 37
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    .line 42
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 44
    return-void
    .line 47
.end method

.method public getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    .line 2
    new-instance p2, Landroid/view/SurfaceSession;

    .line 4
    invoke-direct {p2}, Landroid/view/SurfaceSession;-><init>()V

    .line 6
    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 12
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mDisplayBounds:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 18
    move-result p2

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mDisplayBounds:Landroid/graphics/Rect;

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 28
    move-result-object p1

    .line 31
    const/4 p2, 0x3

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 33
    move-result-object p1

    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 38
    move-result-object p1

    .line 41
    sget-object p2, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->TAG:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 44
    move-result-object p1

    .line 47
    const-string p2, "BackgroundWindowManager#attachToParentSurface"

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 50
    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mRootDisplayAreaOrganizer:Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    .line 54
    iget-object p2, p2, Lcom/android/wm/shell/RootDisplayAreaOrganizer;->mLeashes:Landroid/util/SparseArray;

    .line 56
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 62
    check-cast p2, Landroid/view/SurfaceControl;

    .line 63
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 70
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 74
    return-object p1
    .line 76
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getThemeColorForBackground()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->getThemeColor()I

    .line 2
    move-result p0

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 6
    move-result v0

    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 10
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0xa

    .line 14
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 16
    move-result v2

    .line 19
    add-int/lit8 v2, v2, -0xa

    .line 20
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 22
    move-result p0

    .line 25
    add-int/lit8 p0, p0, -0xa

    .line 26
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 28
    move-result p0

    .line 31
    return p0
.end method

.method public initView()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/view/SurfaceControlViewHost;

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 15
    move-result-object v2

    .line 18
    const-string v3, "BackgroundWindowManager"

    .line 19
    invoke-direct {v0, v1, v2, p0, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    move-result-object v0

    .line 31
    const v1, 0x7f0d004c    # @layout/background_panel 'res/layout/background_panel.xml'

    .line 32
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    .line 40
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 42
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mDisplayBounds:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 46
    move-result v2

    .line 49
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mDisplayBounds:Landroid/graphics/Rect;

    .line 50
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 52
    move-result v3

    .line 55
    const/4 v4, 0x0

    .line 56
    const v5, 0x20040028

    .line 57
    const/4 v6, -0x3

    .line 60
    move-object v1, v0

    .line 61
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 62
    new-instance v1, Landroid/os/Binder;

    .line 65
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 67
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 70
    const-string v1, "background-panel"

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 77
    const v2, 0x20000040

    .line 79
    or-int/2addr v1, v2

    .line 82
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 83
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->getThemeColorForBackground()I

    .line 87
    move-result v2

    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 94
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    .line 96
    invoke-virtual {v1, p0, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 98
    const/4 p0, 0x1

    .line 101
    return p0

    .line 102
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 103
    return p0
    .line 104
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mCurrentState:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->updateThemeOnly()V

    .line 10
    :cond_1
    return-void
    .line 13
.end method

.method public onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 4
    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mDisplayBounds:Landroid/graphics/Rect;

    .line 12
    return-void
    .line 14
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mCurrentState:I

    .line 2
    return-void
    .line 4
.end method

.method public removeBackgroundLayer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mBackgroundView:Landroid/view/View;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 13
    iput-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 18
    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 22
    invoke-interface {v0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 24
    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 28
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 34
    iput-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 37
    :cond_2
    return-void
    .line 39
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mContext:Landroid/content/Context;

    .line 11
    return-void
    .line 13
.end method

.method public showBackgroundLayer()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->initView()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->updateThemeOnly()V

    .line 8
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 12
    if-nez v0, :cond_1

    .line 14
    sget-object p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->TAG:Ljava/lang/String;

    .line 16
    const-string v0, "SurfaceControl mLeash is null, can\'t show One-handed mode background panel!"

    .line 18
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 24
    invoke-interface {v0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 26
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 30
    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 34
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 38
    const/4 v2, -0x1

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 41
    move-result-object v0

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 45
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 51
    return-void
    .line 54
.end method
