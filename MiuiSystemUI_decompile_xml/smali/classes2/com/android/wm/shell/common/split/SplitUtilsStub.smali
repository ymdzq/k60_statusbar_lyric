.class public Lcom/android/wm/shell/common/split/SplitUtilsStub;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final HANDLEVIEW_TOUCHING_BG_COLOR:I

.field public static final IS_CETUS:Z

.field public static final SPLITSCREEN_ACTION_MINIMIZED_FIELD_NAME:Ljava/lang/String; = "SPLITSCREEN_ACTION_MINIMIZED"

.field public static final SPLITSCREEN_ACTION_MOVE_DIVIDER_FIELD_NAME:Ljava/lang/String; = "SPLITSCREEN_ACTION_MOVE_DIVIDER"

.field static sInstance:Lcom/android/wm/shell/common/split/SplitUtilsStub;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "#0D84FF"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    move-result v0

    .line 7
    sput v0, Lcom/android/wm/shell/common/split/SplitUtilsStub;->HANDLEVIEW_TOUCHING_BG_COLOR:I

    .line 8
    const-string v0, "cetus"

    .line 10
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    sput-boolean v0, Lcom/android/wm/shell/common/split/SplitUtilsStub;->IS_CETUS:Z

    .line 18
    const-class v0, Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 20
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 26
    sput-object v0, Lcom/android/wm/shell/common/split/SplitUtilsStub;->sInstance:Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 28
    return-void
    .line 30
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/common/split/SplitUtilsStub;->sInstance:Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 2
    return-object v0
    .line 4
.end method


# virtual methods
.method public adjustForIme()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public adjustOrientationForMultiWindow(Landroid/window/TaskSnapshot;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;I)I
    .locals 0

    .line 1
    return p4
    .line 2
.end method

.method public begainBoost(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public clearSplitSwapingState()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public convertToScreenCoordinates(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public createShadowedIcon(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public dumpUnLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public endBoost(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public getDividerRoundedCornerSize(I)I
    .locals 0

    .line 1
    return p1
    .line 2
.end method

.method public getDividerSnapAlgorithm(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getDividerView(Landroid/content/Context;)Lcom/android/wm/shell/common/split/DividerView;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getDockedStackDividerInsets(I)I
    .locals 0

    .line 1
    return p1
    .line 2
.end method

.method public getHandlerViewHeight(Landroid/view/View;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getHandlerViewWidth(Landroid/view/View;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getPrimarySplitSide(Landroid/content/Context;)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public getResizingBackgroundColor([F)[F
    .locals 0

    .line 1
    return-object p1
    .line 2
.end method

.method public getRoundIcon(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    return-object p2
    .line 2
.end method

.method public getSplitController()Lcom/android/wm/shell/splitscreen/SplitScreenController;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getSwappedSplitDividerPosition(Landroid/graphics/Rect;Lcom/android/wm/shell/common/split/SplitLayout;)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public initAndInjectDependencies(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public isMiuiSplitFeatureEnable(Landroid/content/Context;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isSplitSwaping()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isTestMode()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public setFlingFinished()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setSplitSwapingState()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setTaskStackListener(Lcom/android/wm/shell/common/TaskStackListenerImpl;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public vibratorIfNeeded(Lcom/android/wm/shell/common/split/SplitWindowManager;Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public vibratorUnchecked()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
