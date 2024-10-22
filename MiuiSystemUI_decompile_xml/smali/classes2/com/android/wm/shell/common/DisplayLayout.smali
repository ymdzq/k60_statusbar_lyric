.class public final Lcom/android/wm/shell/common/DisplayLayout;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAllowSeamlessRotationDespiteNavBarMoving:Z

.field public mCutout:Landroid/view/DisplayCutout;

.field public mDensityDpi:I

.field public mHasNavigationBar:Z

.field public mHasStatusBar:Z

.field public mHeight:I

.field public mInsetsState:Landroid/view/InsetsState;

.field public mNavBarFrameHeight:I

.field public mNavigationBarCanMove:Z

.field public final mNonDecorInsets:Landroid/graphics/Rect;

.field public mReverseDefaultRotation:Z

.field public mRotation:I

.field public final mStableInsets:Landroid/graphics/Rect;

.field public mUiMode:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 6
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    .line 10
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 16
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 17
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    .line 20
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1}, Landroid/view/InsetsState;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 21
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 22
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 23
    invoke-virtual {p2, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v4, "qemu.hw.mainkeys"

    .line 25
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    .line 26
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    const-string v5, "0"

    .line 27
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x11101e3    # @android:bool/config_skipActivityRelaunchWhenDocking

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    goto :goto_4

    .line 29
    :cond_2
    iget v4, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    iget v4, v2, Landroid/view/DisplayInfo;->ownerUid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v0

    .line 30
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v5, "force_desktop_mode_on_external_displays"

    .line 31
    invoke-static {p1, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_4
    move p1, v0

    .line 32
    :goto_1
    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_6

    if-eqz p1, :cond_5

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v0

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v3

    :goto_4
    if-nez v1, :cond_7

    move v0, v3

    .line 33
    :cond_7
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    .line 34
    iget v1, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 35
    iget v1, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 36
    iget v1, v2, Landroid/view/DisplayInfo;->rotation:I

    iput v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 37
    iget-object v1, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 38
    iget v1, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 39
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    const p1, 0x111001c    # @android:bool/config_allowSeamlessRotationDespiteNavBarMoving

    .line 41
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    const p1, 0x11101b0    # @android:bool/config_navBarTapThrough

    .line 42
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    const p1, 0x11101d3    # @android:bool/config_sensorPrivacyRequiresAuthentication

    .line 43
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    .line 44
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 50
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 51
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    .line 54
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method public static computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;
    .locals 5

    .line 1
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    .line 2
    if-ne p0, v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Landroid/util/Size;

    .line 8
    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 10
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 13
    move-result p1

    .line 16
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 17
    move-result p2

    .line 20
    if-eq p1, p2, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    .line 23
    move-result-object p1

    .line 26
    iget p1, p1, Landroid/graphics/Insets;->left:I

    .line 27
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    .line 29
    move-result-object p2

    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-static {v0, p2, v1}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    .line 34
    move-result p2

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result p1

    .line 41
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    .line 42
    move-result-object p2

    .line 45
    iget p2, p2, Landroid/graphics/Insets;->top:I

    .line 46
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 48
    move-result-object v1

    .line 51
    const/16 v2, 0x30

    .line 52
    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    .line 54
    move-result v1

    .line 57
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 58
    move-result p2

    .line 61
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    .line 62
    move-result-object v1

    .line 65
    iget v1, v1, Landroid/graphics/Insets;->right:I

    .line 66
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    .line 68
    move-result-object v2

    .line 71
    const/4 v3, 0x5

    .line 72
    invoke-static {v0, v2, v3}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    .line 73
    move-result v2

    .line 76
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 77
    move-result v1

    .line 80
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    .line 81
    move-result-object v2

    .line 84
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 85
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    .line 87
    move-result-object v3

    .line 90
    const/16 v4, 0x50

    .line 91
    invoke-static {v0, v3, v4}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    .line 93
    move-result v0

    .line 96
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 97
    move-result v0

    .line 100
    new-instance v2, Landroid/graphics/Rect;

    .line 101
    invoke-direct {v2, p1, p2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    invoke-virtual {p0, v2}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    .line 106
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "not implemented: display="

    .line 115
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, " cutout="

    .line 123
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 134
    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p1
    .line 138
.end method

.method public static findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x3

    .line 10
    if-eq p2, v0, :cond_4

    .line 11
    const/4 v0, 0x5

    .line 13
    if-eq p2, v0, :cond_3

    .line 14
    const/16 v0, 0x30

    .line 16
    if-eq p2, v0, :cond_2

    .line 18
    const/16 v0, 0x50

    .line 20
    if-ne p2, v0, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 24
    move-result p0

    .line 27
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 28
    sub-int/2addr p0, p1

    .line 30
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    const-string/jumbo p1, "unknown gravity: "

    .line 38
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 49
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 51
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_3
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 56
    move-result p0

    .line 59
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 60
    sub-int/2addr p0, p1

    .line 62
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 63
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 68
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 70
    move-result p0

    .line 73
    return p0
    .line 74
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/common/DisplayLayout;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/wm/shell/common/DisplayLayout;

    .line 12
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    .line 14
    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    .line 16
    if-ne v1, v3, :cond_2

    .line 18
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 20
    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 22
    if-ne v1, v3, :cond_2

    .line 24
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 26
    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 28
    if-ne v1, v3, :cond_2

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 32
    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 34
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 42
    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 44
    if-ne v1, v3, :cond_2

    .line 46
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 48
    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 50
    if-ne v1, v3, :cond_2

    .line 52
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 54
    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 56
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 64
    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 66
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 74
    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 76
    if-ne v1, v3, :cond_2

    .line 78
    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 80
    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 82
    if-ne v1, v3, :cond_2

    .line 84
    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 86
    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 88
    if-ne v1, v3, :cond_2

    .line 90
    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    .line 92
    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    .line 94
    if-ne v1, v3, :cond_2

    .line 96
    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    .line 98
    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    .line 100
    if-ne v1, v3, :cond_2

    .line 102
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 104
    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 106
    if-ne v1, v3, :cond_2

    .line 108
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 110
    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 112
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    move-result p0

    .line 117
    if-eqz p0, :cond_2

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    move v0, v2

    .line 121
    :goto_0
    return v0
    .line 122
.end method

.method public final getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 2
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 4
    if-le v0, p0, :cond_0

    .line 6
    const/4 p0, 0x2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x1

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final getStableBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 2
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 12
    return-void
    .line 15
.end method

.method public final hashCode()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v2

    .line 9
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 15
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v4

    .line 21
    iget-object v5, v0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 22
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v6

    .line 29
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v7

    .line 35
    iget-object v8, v0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 36
    iget-object v9, v0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 38
    iget-boolean v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v10

    .line 45
    iget-boolean v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    move-result-object v11

    .line 51
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v12

    .line 57
    iget-boolean v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    move-result-object v13

    .line 63
    iget-boolean v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    move-result-object v14

    .line 69
    iget-boolean v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    move-result-object v15

    .line 75
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 76
    move-object/from16 v16, v0

    .line 78
    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 84
    move-result v0

    .line 87
    return v0
    .line 88
.end method

.method public final height()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public recalcInsets(Landroid/content/res/Resources;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 2
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 4
    iget v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 8
    iget-object v4, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 10
    iget v5, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    .line 12
    iget-boolean v6, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 14
    iget-object v7, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 18
    const/4 v8, 0x1

    .line 21
    const/4 v9, 0x0

    .line 22
    if-eqz v6, :cond_c

    .line 23
    invoke-virtual {v4}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 25
    move-result-object v6

    .line 28
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 29
    move-result v10

    .line 32
    invoke-virtual {v4, v6, v10, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 33
    move-result-object v4

    .line 36
    if-eq v1, v2, :cond_0

    .line 37
    const v6, 0x11101b0    # @android:bool/config_navBarTapThrough

    .line 39
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 42
    move-result v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    move v6, v8

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v6, v9

    .line 50
    :goto_0
    const/4 v10, 0x2

    .line 51
    const/4 v11, 0x4

    .line 52
    if-eqz v6, :cond_2

    .line 53
    if-le v1, v2, :cond_2

    .line 55
    if-ne v0, v8, :cond_1

    .line 57
    move v0, v10

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v0, v8

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v0, v11

    .line 63
    :goto_1
    if-le v1, v2, :cond_3

    .line 64
    move v1, v8

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v1, v9

    .line 68
    :goto_2
    and-int/lit8 v2, v5, 0xf

    .line 69
    const/4 v5, 0x3

    .line 71
    if-ne v2, v5, :cond_4

    .line 72
    move v2, v8

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move v2, v9

    .line 76
    :goto_3
    if-eqz v2, :cond_7

    .line 77
    if-ne v0, v11, :cond_6

    .line 79
    if-eqz v1, :cond_5

    .line 81
    const v1, 0x10501f9    # @android:dimen/notification_big_picture_max_width_low_ram

    .line 83
    goto :goto_4

    .line 86
    :cond_5
    const v1, 0x10501f7    # @android:dimen/notification_big_picture_max_height_low_ram

    .line 87
    :goto_4
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    move-result v1

    .line 93
    goto :goto_6

    .line 94
    :cond_6
    const v1, 0x10501fc    # @android:dimen/notification_content_margin_end

    .line 95
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 98
    move-result v1

    .line 101
    goto :goto_6

    .line 102
    :cond_7
    if-ne v0, v11, :cond_9

    .line 103
    if-eqz v1, :cond_8

    .line 105
    const v1, 0x10501f8    # @android:dimen/notification_big_picture_max_width

    .line 107
    goto :goto_5

    .line 110
    :cond_8
    const v1, 0x10501f6    # @android:dimen/notification_big_picture_max_height

    .line 111
    :goto_5
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    move-result v1

    .line 117
    goto :goto_6

    .line 118
    :cond_9
    const v1, 0x10501fb    # @android:dimen/notification_content_margin

    .line 119
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    move-result v1

    .line 125
    :goto_6
    if-ne v0, v11, :cond_a

    .line 126
    iget v0, v4, Landroid/graphics/Insets;->bottom:I

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 130
    move-result v0

    .line 133
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 134
    goto :goto_7

    .line 136
    :cond_a
    if-ne v0, v10, :cond_b

    .line 137
    iget v0, v4, Landroid/graphics/Insets;->right:I

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 141
    move-result v0

    .line 144
    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 145
    goto :goto_7

    .line 147
    :cond_b
    if-ne v0, v8, :cond_c

    .line 148
    iget v0, v4, Landroid/graphics/Insets;->left:I

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 152
    move-result v0

    .line 155
    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 156
    :cond_c
    :goto_7
    if-eqz v3, :cond_d

    .line 158
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 160
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 162
    move-result v1

    .line 165
    add-int/2addr v1, v0

    .line 166
    iput v1, v7, Landroid/graphics/Rect;->left:I

    .line 167
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 169
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 171
    move-result v1

    .line 174
    add-int/2addr v1, v0

    .line 175
    iput v1, v7, Landroid/graphics/Rect;->top:I

    .line 176
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 178
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 180
    move-result v1

    .line 183
    add-int/2addr v1, v0

    .line 184
    iput v1, v7, Landroid/graphics/Rect;->right:I

    .line 185
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 187
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 189
    move-result v1

    .line 192
    add-int/2addr v1, v0

    .line 193
    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 194
    :cond_d
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 196
    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 198
    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 201
    if-eqz v1, :cond_f

    .line 203
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 205
    if-nez v1, :cond_e

    .line 207
    goto :goto_8

    .line 209
    :cond_e
    invoke-static {p1, v2}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I

    .line 210
    move-result v1

    .line 213
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 214
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 216
    move-result v1

    .line 219
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 220
    :cond_f
    :goto_8
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 222
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 224
    if-le v0, v1, :cond_10

    .line 226
    goto :goto_9

    .line 228
    :cond_10
    move v8, v9

    .line 229
    :goto_9
    if-eqz v8, :cond_11

    .line 230
    const v0, 0x10501f3    # @android:dimen/notification_actions_padding_start

    .line 232
    goto :goto_a

    .line 235
    :cond_11
    const v0, 0x10501f2    # @android:dimen/notification_actions_icon_size

    .line 236
    :goto_a
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 239
    move-result p1

    .line 242
    iput p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 243
    return-void
    .line 245
.end method

.method public final rotateTo(ILandroid/content/res/Resources;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 6
    sub-int v2, v1, v2

    .line 8
    add-int/lit8 v2, v2, 0x4

    .line 10
    rem-int/lit8 v10, v2, 0x4

    .line 12
    rem-int/lit8 v2, v10, 0x2

    .line 14
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v2, :cond_0

    .line 18
    move v2, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v3

    .line 22
    :goto_0
    iget v13, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 23
    iget v14, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 25
    iput v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 27
    if-eqz v2, :cond_1

    .line 29
    iput v14, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 31
    iput v13, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 35
    if-eqz v1, :cond_c

    .line 37
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->isEmpty()Z

    .line 39
    move-result v1

    .line 42
    if-nez v1, :cond_c

    .line 43
    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 45
    if-eqz v1, :cond_b

    .line 47
    sget-object v2, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    .line 49
    if-ne v1, v2, :cond_2

    .line 51
    goto/16 :goto_6

    .line 53
    :cond_2
    if-nez v10, :cond_3

    .line 55
    invoke-static {v1, v13, v14}, Lcom/android/wm/shell/common/DisplayLayout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;

    .line 57
    move-result-object v1

    .line 60
    goto/16 :goto_7

    .line 61
    :cond_3
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    .line 63
    move-result-object v2

    .line 66
    invoke-static {v2, v10}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    .line 67
    move-result-object v2

    .line 70
    if-eq v10, v4, :cond_5

    .line 71
    const/4 v5, 0x3

    .line 73
    if-ne v10, v5, :cond_4

    .line 74
    goto :goto_1

    .line 76
    :cond_4
    move v15, v3

    .line 77
    goto :goto_2

    .line 78
    :cond_5
    :goto_1
    move v15, v4

    .line 79
    :goto_2
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    .line 80
    move-result-object v4

    .line 83
    array-length v5, v4

    .line 84
    new-array v12, v5, [Landroid/graphics/Rect;

    .line 85
    new-instance v5, Landroid/graphics/Rect;

    .line 87
    invoke-direct {v5, v3, v3, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    :goto_3
    array-length v6, v4

    .line 92
    if-ge v3, v6, :cond_8

    .line 93
    new-instance v6, Landroid/graphics/Rect;

    .line 95
    aget-object v7, v4, v3

    .line 97
    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 99
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    .line 102
    move-result v7

    .line 105
    if-nez v7, :cond_6

    .line 106
    invoke-static {v6, v5, v10}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 108
    :cond_6
    sub-int v7, v3, v10

    .line 111
    if-gez v7, :cond_7

    .line 113
    add-int/lit8 v7, v7, 0x4

    .line 115
    :cond_7
    aput-object v6, v12, v7

    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 119
    goto :goto_3

    .line 121
    :cond_8
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getCutoutPathParserInfo()Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 122
    move-result-object v1

    .line 125
    new-instance v11, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 126
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    .line 128
    move-result v4

    .line 131
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    .line 132
    move-result v5

    .line 135
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    .line 136
    move-result v6

    .line 139
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    .line 140
    move-result v7

    .line 143
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    .line 144
    move-result v8

    .line 147
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    .line 148
    move-result-object v9

    .line 151
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    .line 152
    move-result v16

    .line 155
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    .line 156
    move-result v1

    .line 159
    move-object v3, v11

    .line 160
    move/from16 v17, v13

    .line 161
    move-object v13, v11

    .line 163
    move/from16 v11, v16

    .line 164
    move/from16 v16, v14

    .line 166
    move-object v14, v12

    .line 168
    move v12, v1

    .line 169
    invoke-direct/range {v3 .. v12}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    .line 170
    invoke-static {v14, v2, v13}, Landroid/view/DisplayCutout;->constructDisplayCutout([Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)Landroid/view/DisplayCutout;

    .line 173
    move-result-object v1

    .line 176
    if-eqz v15, :cond_9

    .line 177
    move/from16 v2, v16

    .line 179
    goto :goto_4

    .line 181
    :cond_9
    move/from16 v2, v17

    .line 182
    :goto_4
    if-eqz v15, :cond_a

    .line 184
    move/from16 v13, v17

    .line 186
    goto :goto_5

    .line 188
    :cond_a
    move/from16 v13, v16

    .line 189
    :goto_5
    invoke-static {v1, v2, v13}, Lcom/android/wm/shell/common/DisplayLayout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;

    .line 191
    move-result-object v1

    .line 194
    goto :goto_7

    .line 195
    :cond_b
    :goto_6
    const/4 v1, 0x0

    .line 196
    :goto_7
    iput-object v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 197
    :cond_c
    move-object/from16 v1, p2

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    .line 201
    return-void
    .line 204
.end method

.method public final set(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    .line 2
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    .line 4
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 6
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 8
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 10
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 12
    iget-object v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 16
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 18
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 20
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 22
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 24
    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 28
    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 32
    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 36
    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    .line 40
    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    .line 44
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 46
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 48
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 50
    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 54
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 57
    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 61
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 64
    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 66
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 69
    return-void
    .line 72
.end method

.method public final width()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 2
    return p0
    .line 4
.end method
