.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final AVOID:I = 0x4

.field static final BOTTOM_CAPTION_ACTION_MODE_FULLSCREEN:I = 0x2

.field static final BOTTOM_CAPTION_ACTION_MODE_FULLSCREEN_MOVE_TO_BACK:I = 0x1

.field static final BOTTOM_CAPTION_ACTION_MODE_RESET:I = 0x0

.field private static final BOTTOM_CAPTION_EXCLUDE_OFFSET_DIP:I = 0x44

.field private static final BOTTOM_CAPTION_EXTRA_OFFSET_DIP:I = 0x8

.field private static final BOTTOM_CAPTION_MIN_WIDTH_DIP:I = 0x60

.field public static final ENTERED:I = 0x3

.field public static final ENTERING:I = 0x2

.field public static final EXITING:I = 0x1

.field public static final FREEFORM_HOTSPOT_NONE:I = -0x1

.field public static final FREEFORM_ROUND_CORNER_DIP:F = 18.0f

.field public static final MINI_FREEFORM_PADDING_STROKE:I = 0x14

.field public static final MINI_FREEFORM_ROUND_CORNER_DIP:F = 12.0f

.field static final RESIZE_BACK_TO_MAXSIZE:I = 0x1

.field static final RESIZE_BACK_TO_MINSIZE:I = 0x2

.field static final RESIZE_BACK_UNDEFINED:I = 0x0

.field private static final RESIZE_HEIGHT_DIP:I = 0x20

.field private static final RESIZE_HEIGHT_DIP_PAD:I = 0x28

.field static final RESIZE_TO_MINI:I = 0x3

.field private static final RESIZE_WIDTH_DIP:I = 0x28

.field private static final RESIZE_WIDTH_DIP_PAD:I = 0x2c

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeTaskInfo"

.field private static final TOP_CAPTION_EXCLUDE_OFFSET_DIP:I = 0x28

.field private static final TOP_CAPTION_EXTRA_OFFSET_DIP:I = 0x8

.field private static final TOP_CAPTION_TIP_SHOW_DIP:I = 0x36

.field private static final TOP_CAPTION_TIP_WIDTH_DIP:I = 0x46

.field public static final UNDEFINED:I = 0x0

.field public static miniResizeLimit:F = 0.1f


# instance fields
.field private DEBUG:Z

.field private mActionMode:I

.field private final mAnimatingBounds:Landroid/graphics/Rect;

.field private final mAnimatingClipRect:Landroid/graphics/Rect;

.field private mAnimatingScaleX:F

.field private mAnimatingScaleY:F

.field private mAnimationType:I

.field private final mBasedBounds:Landroid/graphics/Rect;

.field private final mBasedClipRect:Landroid/graphics/Rect;

.field private mBasedCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

.field private mBasedRadius:F

.field private mBasedScaleX:F

.field private mBasedScaleY:F

.field private mBasedStrokeThickness:F

.field private mBottomCaptionActionMode:I

.field private final mBounds:Landroid/graphics/Rect;

.field private final mCaptionRegion:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mCornerAnimType:I

.field private mCornerPosition:I

.field private mCtrlType:I

.field private mDestLCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

.field private mDestRCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

.field private mDestStrokeAlpha:F

.field private mDestStrokeColors:[F

.field private mDestStrokeThickness:F

.field private mDestinationAlpha:F

.field private final mDestinationBounds:Landroid/graphics/Rect;

.field private final mDestinationClipRect:Landroid/graphics/Rect;

.field private mDestinationRadius:F

.field private mDestinationScaleX:F

.field private mDestinationScaleY:F

.field private final mDragCornerSize:Landroid/graphics/Rect;

.field public mEnterFreeFormTime:J

.field private mEnterState:I

.field public mExitFreeFormReason:Ljava/lang/String;

.field mExitIconBitmap:Landroid/graphics/Bitmap;

.field mExitIconHeight:I

.field mExitIconWidth:I

.field private mExiting:Z

.field mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public mFloatIconSurface:Landroid/view/SurfaceControl;

.field private mFolmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

.field private mFriction:Landroid/graphics/PointF;

.field private volatile mHadHideStackFormFullScreen:Z

.field public mHasPendingUnpinTransition:Z

.field private mHasSetShadow:Z

.field private mIsEnteringMini:Z

.field private mIsForegroundPin:Z

.field private mIsFreeformEludeAnimation:Z

.field private mIsFreeformEludeShowScaleAnimation:Z

.field private mIsFreeformEludeShowYAnimation:Z

.field private mIsInDragTaskResizeAnim:Z

.field private mIsLandcapeFreeform:Z

.field private mIsNeedImeToAvoid:Z

.field private mIsNormalFreeForm:Z

.field private mLCornerState:I

.field private mLastBottomCaptionActionMode:I

.field private final mLastBounds:Landroid/graphics/Rect;

.field private final mLaunchMiniFreeformFromRect:Landroid/graphics/Rect;

.field private mMiniRestoreScaleX:F

.field private mMiniRestoreScaleY:F

.field private mMiniScale:F

.field private mMode:I

.field private mNeedAnimation:Z

.field private mOriFreeformScale:F

.field private mPackageName:Ljava/lang/String;

.field mPinDestBounds:Landroid/graphics/Rect;

.field public mPinFloatingWindowPos:Landroid/graphics/Rect;

.field mPinedActiveTime:J

.field mPinedStartTime:J

.field private mRCornerState:I

.field public mRatio:Ljava/lang/String;

.field private mRequireAutoLayoutAfterAniCompleted:Z

.field private mResizeMode:I

.field private final mRestoreMiniBounds:Landroid/graphics/Rect;

.field private final mRestoreNormalBounds:Landroid/graphics/Rect;

.field private mRunningAnimationTypes:Ljava/util/ArrayList;

.field private mScale:F

.field private mState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

.field private mTempAvoidActiveTaskBounds:Landroid/graphics/Rect;

.field private final mTmpBottomLeftCorner:Landroid/graphics/Rect;

.field private final mTmpBottomRightCorner:Landroid/graphics/Rect;

.field private mTmpDownMode:I

.field private final mTmpEludeBounds:Landroid/graphics/Rect;

.field private mTmpLCornerState:I

.field private mTmpMode:I

.field mTmpModeChanged:Z

.field private mTmpRCornerState:I

.field private final mTmpRegion:Landroid/graphics/Region;

.field private mTopCaptionHandleShowGestureDetectBounds:Landroid/graphics/Rect;

.field private mTopCaptionHandleTriggerGestureDetectBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 6
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mEnterState:I

    .line 8
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimationType:I

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRunningAnimationTypes:Ljava/util/ArrayList;

    .line 17
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 19
    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpMode:I

    .line 22
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpDownMode:I

    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mScale:F

    .line 28
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsLandcapeFreeform:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mHadHideStackFormFullScreen:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExiting:Z

    .line 34
    const/4 v3, 0x0

    .line 36
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPackageName:Ljava/lang/String;

    .line 37
    const/4 v3, 0x1

    .line 39
    iput-boolean v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsNormalFreeForm:Z

    .line 40
    iput-boolean v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mNeedAnimation:Z

    .line 42
    new-instance v3, Landroid/graphics/Rect;

    .line 44
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 46
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLaunchMiniFreeformFromRect:Landroid/graphics/Rect;

    .line 49
    new-instance v3, Landroid/graphics/Rect;

    .line 51
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 53
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 56
    new-instance v3, Landroid/graphics/Rect;

    .line 58
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 60
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLastBounds:Landroid/graphics/Rect;

    .line 63
    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 65
    invoke-direct {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;-><init>()V

    .line 67
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFolmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 70
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBottomCaptionActionMode:I

    .line 72
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mActionMode:I

    .line 74
    new-instance v3, Landroid/graphics/Rect;

    .line 76
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 78
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDragCornerSize:Landroid/graphics/Rect;

    .line 81
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mOriFreeformScale:F

    .line 83
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMiniScale:F

    .line 85
    new-instance v3, Landroid/graphics/Rect;

    .line 87
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 89
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCaptionRegion:Landroid/graphics/Rect;

    .line 92
    new-instance v3, Landroid/graphics/Rect;

    .line 94
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 96
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 99
    new-instance v3, Landroid/graphics/Rect;

    .line 101
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 103
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    .line 108
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 110
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTopCaptionHandleTriggerGestureDetectBounds:Landroid/graphics/Rect;

    .line 113
    new-instance v3, Landroid/graphics/Rect;

    .line 115
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 117
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTopCaptionHandleShowGestureDetectBounds:Landroid/graphics/Rect;

    .line 120
    new-instance v3, Landroid/graphics/Region;

    .line 122
    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 124
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 127
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCtrlType:I

    .line 129
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mResizeMode:I

    .line 131
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMiniRestoreScaleX:F

    .line 133
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMiniRestoreScaleY:F

    .line 135
    new-instance v3, Landroid/graphics/Rect;

    .line 137
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 139
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 142
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationAlpha:F

    .line 144
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationScaleX:F

    .line 146
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationScaleY:F

    .line 148
    new-instance v3, Landroid/graphics/Rect;

    .line 150
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 152
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationClipRect:Landroid/graphics/Rect;

    .line 155
    new-instance v3, Landroid/graphics/Rect;

    .line 157
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 159
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingBounds:Landroid/graphics/Rect;

    .line 162
    const/high16 v3, -0x40800000    # -1.0f

    .line 164
    iput v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingScaleX:F

    .line 166
    iput v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingScaleY:F

    .line 168
    new-instance v3, Landroid/graphics/Rect;

    .line 170
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 172
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingClipRect:Landroid/graphics/Rect;

    .line 175
    new-instance v3, Landroid/graphics/Rect;

    .line 177
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 179
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedBounds:Landroid/graphics/Rect;

    .line 182
    new-instance v3, Landroid/graphics/Rect;

    .line 184
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 186
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedClipRect:Landroid/graphics/Rect;

    .line 189
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedScaleX:F

    .line 191
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedScaleY:F

    .line 193
    new-instance v2, Landroid/graphics/PointF;

    .line 195
    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 197
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFriction:Landroid/graphics/PointF;

    .line 200
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsEnteringMini:Z

    .line 202
    new-instance v2, Landroid/graphics/Rect;

    .line 204
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 206
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRestoreMiniBounds:Landroid/graphics/Rect;

    .line 209
    new-instance v2, Landroid/graphics/Rect;

    .line 211
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 213
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRestoreNormalBounds:Landroid/graphics/Rect;

    .line 216
    new-instance v2, Landroid/graphics/Rect;

    .line 218
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 220
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 223
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsForegroundPin:Z

    .line 225
    new-instance v2, Landroid/graphics/Rect;

    .line 227
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 229
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTempAvoidActiveTaskBounds:Landroid/graphics/Rect;

    .line 232
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mHasSetShadow:Z

    .line 234
    const/4 v2, 0x3

    .line 236
    new-array v2, v2, [F

    .line 237
    fill-array-data v2, :array_0

    .line 239
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestStrokeColors:[F

    .line 242
    const v2, 0x3f4ccccd    # 0.8f

    .line 244
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestStrokeAlpha:F

    .line 247
    new-instance v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 249
    invoke-direct {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;-><init>()V

    .line 251
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestLCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 254
    new-instance v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 256
    invoke-direct {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;-><init>()V

    .line 258
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestRCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 261
    new-instance v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 263
    invoke-direct {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;-><init>()V

    .line 265
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 268
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpLCornerState:I

    .line 270
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRCornerState:I

    .line 272
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsFreeformEludeAnimation:Z

    .line 274
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsFreeformEludeShowYAnimation:Z

    .line 276
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsFreeformEludeShowScaleAnimation:Z

    .line 278
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsInDragTaskResizeAnim:Z

    .line 280
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsNeedImeToAvoid:Z

    .line 282
    new-instance v1, Landroid/graphics/Rect;

    .line 284
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 286
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpEludeBounds:Landroid/graphics/Rect;

    .line 289
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRequireAutoLayoutAfterAniCompleted:Z

    .line 291
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 293
    invoke-direct {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;-><init>()V

    .line 295
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 298
    iput-object p1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 300
    iput-object p2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 302
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->initShellState(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 304
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 307
    return-void

    .line 309
    :array_0
    .array-data 4
        0x3f65e354    # 0.898f
        0x3f65e354    # 0.898f
        0x3f65e354    # 0.898f
    .end array-data
    .line 310
.end method

.method private initShellState(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 6
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 8
    move-result-object v1

    .line 11
    iget-wide v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->timestamp:J

    .line 12
    iput-wide v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->timestamp:J

    .line 14
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 16
    iget v1, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    .line 18
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 20
    iget v1, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 22
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mScale:F

    .line 24
    iget-boolean v1, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isLandcapeFreeform:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsLandcapeFreeform:Z

    .line 28
    if-eqz v1, :cond_0

    .line 30
    const-string/jumbo v1, "\u6e38\u620f/\u89c6\u9891\u6bd4\u4f8b"

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    const-string/jumbo v1, "\u624b\u673a\u6bd4\u4f8b"

    .line 36
    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRatio:Ljava/lang/String;

    .line 39
    iget-object v1, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPackageName:Ljava/lang/String;

    .line 43
    iget-boolean v1, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isNormalFreeForm:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsNormalFreeForm:Z

    .line 47
    iget-boolean v1, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isForegroundPin:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsForegroundPin:Z

    .line 51
    iget v1, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->cornerPosition:I

    .line 53
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCornerPosition:I

    .line 55
    iget-boolean v0, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->needAnimation:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mNeedAnimation:Z

    .line 59
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 61
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 63
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 65
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 67
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mScale:F

    .line 74
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationScaleX:F

    .line 76
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationScaleY:F

    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 80
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 84
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 87
    move-result-object v0

    .line 90
    iget v0, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->cornerPosition:I

    .line 91
    const/4 v1, -0x1

    .line 93
    if-eq v0, v1, :cond_1

    .line 94
    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setIsEnteringMini(Z)V

    .line 97
    :cond_1
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 100
    iget-object v0, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformFromRect:Landroid/graphics/Rect;

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLaunchMiniFreeformFromRect(Landroid/graphics/Rect;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    const-string v1, " initShellState task: "

    .line 109
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string p1, " mIsLandcapeFreeform: "

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsLandcapeFreeform:Z

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    const-string p1, " mMode: "

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string p1, " mScale: "

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mScale:F

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 146
    const-string p1, " mBounds: "

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string p1, " mNeedAnimation: "

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mNeedAnimation:Z

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p0

    .line 172
    const-string p1, "MiuiFreeformModeTaskInfo"

    .line 173
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_2
    return-void
    .line 178
.end method


# virtual methods
.method public actionModeToBoostType(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_0

    .line 6
    const-string p0, "UNDEFINED_TYPE"

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "FF_NoUI/FREEFORM_ACTION_ENTER_FULL_SCREEN"

    .line 11
    goto :goto_0

    .line 13
    :cond_1
    const-string p0, "FF_NoUI/FREEFORM_ACTION_CLOSE"

    .line 14
    :goto_0
    return-object p0
    .line 16
.end method

.method public declared-synchronized addRunningAnimationType(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRunningAnimationTypes:Ljava/util/ArrayList;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1

    .line 17
    :cond_0
    :goto_0
    monitor-exit p0

    .line 18
    return-void
    .line 19
.end method

.method public applyFriction(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 2
    move-result p0

    .line 5
    int-to-float p0, p0

    .line 6
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 7
    mul-float/2addr p0, v0

    .line 9
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 10
    int-to-float v0, v0

    .line 12
    add-float/2addr p0, v0

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 14
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 19
    mul-float/2addr v0, p2

    .line 21
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 22
    int-to-float p1, p1

    .line 24
    add-float/2addr v0, p1

    .line 25
    new-instance p1, Landroid/graphics/PointF;

    .line 26
    invoke-direct {p1, p0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 28
    return-object p1
    .line 31
.end method

.method public callFinishCallback(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 7
    invoke-interface {v0, p1, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public clearIconSurfaceLayer(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "clearIconSurfaceLayer this: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiFreeformModeTaskInfo"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 25
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 34
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 40
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 44
    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFloatIconSurface:Landroid/view/SurfaceControl;

    .line 47
    :cond_1
    return-void
    .line 49
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "MiuiFreeformModeTaskInfo taskId="

    .line 2
    invoke-static {p2, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 8
    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string p2, "  "

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 42
    const-string v0, "mDisplayId="

    .line 43
    invoke-static {p2, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 49
    move-result-object v1

    .line 52
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 53
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 55
    const-string v2, "mUserId="

    .line 57
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 63
    move-result-object v1

    .line 66
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 67
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 69
    const-string v2, "mPackageName="

    .line 71
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPackageName:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "mMode="

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 102
    const-string v2, "mIsLandcapeFreeform="

    .line 104
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    move-result-object v0

    .line 109
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsLandcapeFreeform:Z

    .line 110
    const-string v2, "mIsNormalFreeForm="

    .line 112
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    move-result-object v0

    .line 117
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsNormalFreeForm:Z

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 130
    move-result v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    const-string v0, "mPinFloatingWindowPos="

    .line 136
    invoke-static {p2, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    :cond_0
    const-string v0, "mScale="

    .line 154
    invoke-static {p2, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    move-result-object v0

    .line 159
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mScale:F

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "mBounds="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 193
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "mDestinationScaleX="

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationScaleX:F

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object v0

    .line 218
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, "mDestinationBounds="

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 243
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "miuiFreeFormStackInfo="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 260
    move-result-object v1

    .line 263
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 264
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v0

    .line 274
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string p2, "mConfiguration="

    .line 286
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 291
    move-result-object p0

    .line 294
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 295
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 297
    move-result-object p0

    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object p0

    .line 307
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    return-void
    .line 311
.end method

.method public getActionMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mActionMode:I

    .line 2
    return p0
    .line 4
.end method

.method public getActiveTaskBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTempAvoidActiveTaskBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTempAvoidActiveTaskBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object p0

    .line 20
    :goto_0
    return-object p0
    .line 21
.end method

.method public getAnimatingBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getAnimatingClipRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingClipRect:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getAnimatingscaleX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingScaleX:F

    .line 2
    return p0
    .line 4
.end method

.method public getAnimatingscaleY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingScaleY:F

    .line 2
    return p0
    .line 4
.end method

.method public getAnimationType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimationType:I

    .line 2
    return p0
    .line 4
.end method

.method public getBasedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getBasedClipRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedClipRect:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    return-object p0
    .line 4
.end method

.method public getBasedRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getBasedScaleX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedScaleX:F

    .line 2
    return p0
    .line 4
.end method

.method public getBasedScaleY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedScaleY:F

    .line 2
    return p0
    .line 4
.end method

.method public getBasedStrokeThickness()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedStrokeThickness:F

    .line 2
    return p0
    .line 4
.end method

.method public getBottomCaptionActionMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBottomCaptionActionMode:I

    .line 2
    return p0
    .line 4
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "getBounds taskId: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 13
    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " mBounds: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/Throwable;

    .line 38
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 40
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 43
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 48
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 50
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 52
    return-object v0
    .line 55
.end method

.method public getBoundsRange(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 14
    const/high16 v1, 0x41a00000    # 20.0f

    .line 16
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 18
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 23
    const/high16 v1, 0x40c00000    # 6.0f

    .line 25
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 27
    move-result v0

    .line 30
    :goto_0
    float-to-int v0, v0

    .line 31
    new-instance v1, Landroid/graphics/Rect;

    .line 32
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 34
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 40
    move-result p0

    .line 43
    const/4 p1, 0x0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    add-int/lit8 v0, v0, 0x14

    .line 47
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 49
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 53
    :goto_1
    iget p0, v1, Landroid/graphics/Rect;->left:I

    .line 56
    iget p1, v1, Landroid/graphics/Rect;->right:I

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 60
    move-result v0

    .line 63
    sub-int/2addr p1, v0

    .line 64
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 65
    move-result p0

    .line 68
    iput p0, v1, Landroid/graphics/Rect;->right:I

    .line 69
    iget p0, v1, Landroid/graphics/Rect;->top:I

    .line 71
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 73
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 75
    move-result p2

    .line 78
    sub-int/2addr p1, p2

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 80
    move-result p0

    .line 83
    sub-int/2addr p0, p3

    .line 84
    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    .line 85
    return-object v1
    .line 87
.end method

.method public getCaptionRegion()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCaptionRegion:Landroid/graphics/Rect;

    .line 2
    return-object p0
    .line 4
.end method

.method public getCornerAnimType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCornerAnimType:I

    .line 2
    return p0
    .line 4
.end method

.method public getCornerPosition()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCornerPosition:I

    .line 2
    return p0
    .line 4
.end method

.method public getCornerRadius()F
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius(ZI)F

    move-result p0

    return p0
.end method

.method public getCornerRadius(ZI)F
    .locals 2

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x41900000    # 18.0f

    if-nez p1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalPinedState()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniPinedState()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    if-eqz p2, :cond_7

    const/4 p0, 0x2

    if-ne p2, p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    if-eq p2, p0, :cond_6

    const/4 p0, 0x3

    if-ne p2, p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public getCornerStateStr()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "; left state:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLCornerState:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", right state:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRCornerState:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", tmp left state: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpLCornerState:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", tmp right state: "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRCornerState:I

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    return-object p0
    .line 48
.end method

.method public getCtrlType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCtrlType:I

    .line 2
    return p0
    .line 4
.end method

.method public getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestLCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestRCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDestStrokeAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestStrokeAlpha:F

    .line 2
    return p0
    .line 4
.end method

.method public getDestStrokeColors()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestStrokeColors:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public getDestStrokeThickness()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestStrokeThickness:F

    .line 2
    return p0
    .line 4
.end method

.method public getDestinationAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationAlpha:F

    .line 2
    return p0
    .line 4
.end method

.method public getDestinationBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getDestinationClipRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationClipRect:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getDestinationRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getDestinationScaleX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationScaleX:F

    .line 2
    return p0
    .line 4
.end method

.method public getDestinationScaleY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationScaleY:F

    .line 2
    return p0
    .line 4
.end method

.method public getEnterMiniFreeformReason()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 12
    move-result-object p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    iget-object p0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformReason:Ljava/lang/String;

    .line 18
    if-eqz p0, :cond_2

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string v0, "from_control_center"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    const-string v0, "enterSmallFreeFormByFreeFormRecommend"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p0

    .line 38
    if-nez p0, :cond_0

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    const-string/jumbo p0, "\u63a8\u8350\u5f15\u5bfc"

    .line 42
    return-object p0

    .line 45
    :cond_1
    const-string/jumbo p0, "\u63a7\u5236\u4e2d\u5fc3"

    .line 46
    return-object p0

    .line 49
    :cond_2
    :goto_0
    const-string/jumbo p0, "\u5176\u5b83"

    .line 50
    return-object p0
    .line 53
.end method

.method public getEnterState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mEnterState:I

    .line 2
    return p0
    .line 4
.end method

.method public getExitFreeFormReason()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInMultiWinFreeFormExit()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitFreeFormReason:Ljava/lang/String;

    .line 8
    return-object p0

    .line 10
    :cond_0
    const-string/jumbo p0, "\u5176\u4ed6"

    .line 11
    return-object p0
    .line 14
.end method

.method public getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFolmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 2
    return-object p0
    .line 4
.end method

.method public getFreeformScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mScale:F

    .line 2
    return p0
    .line 4
.end method

.method public getFriction()Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFriction:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getFriction(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 2

    .line 2
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p0, v1

    .line 3
    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p0, v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-nez p1, :cond_1

    move p2, v1

    .line 6
    :cond_1
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public getLastBottomCaptionActionMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLastBottomCaptionActionMode:I

    .line 2
    return p0
    .line 4
.end method

.method public getLastBounds()Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "getLastBounds taskId: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 13
    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " mLastBounds: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLastBounds:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/Throwable;

    .line 38
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 40
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 43
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 48
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLastBounds:Landroid/graphics/Rect;

    .line 50
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 52
    return-object v0
    .line 55
.end method

.method public getLaunchMiniFreeformFromRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLaunchMiniFreeformFromRect:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getLeftCornerState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLCornerState:I

    .line 2
    return p0
    .line 4
.end method

.method public getMiniRestoreScaleX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMiniRestoreScaleX:F

    .line 2
    return p0
    .line 4
.end method

.method public getMiniRestoreScaleY()F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "getMiniRestoreScaleY downScaleY: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMiniRestoreScaleY:F

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/Throwable;

    .line 22
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 24
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 27
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_0
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMiniRestoreScaleY:F

    .line 32
    return p0
    .line 34
.end method

.method public getMiniScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMiniScale:F

    .line 2
    return p0
    .line 4
.end method

.method public getMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 2
    return p0
    .line 4
.end method

.method public getOriFreeformScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mOriFreeformScale:F

    .line 2
    return p0
    .line 4
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPackageName:Ljava/lang/String;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-string p0, ""

    .line 6
    :cond_0
    return-object p0
    .line 8
.end method

.method public getPinedActiveTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinedActiveTime:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public getResizeMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mResizeMode:I

    .line 2
    return p0
    .line 4
.end method

.method public getRestoreMiniBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRestoreMiniBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getRestoreNormalBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRestoreNormalBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getRightCornerState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRCornerState:I

    .line 2
    return p0
    .line 4
.end method

.method public getRunningAnimationTypes()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRunningAnimationTypes:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getScaledAnimatingBounds()Landroid/graphics/Rect;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingScaleX:F

    .line 7
    const/high16 v2, -0x40800000    # -1.0f

    .line 9
    cmpl-float v1, v1, v2

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingBounds:Landroid/graphics/Rect;

    .line 15
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 17
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 19
    int-to-float v4, v2

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 22
    move-result v1

    .line 25
    int-to-float v1, v1

    .line 26
    iget v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingScaleX:F

    .line 27
    mul-float/2addr v1, v5

    .line 29
    add-float/2addr v1, v4

    .line 30
    float-to-int v1, v1

    .line 31
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingBounds:Landroid/graphics/Rect;

    .line 32
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 34
    int-to-float v5, v5

    .line 36
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 37
    move-result v4

    .line 40
    int-to-float v4, v4

    .line 41
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingScaleY:F

    .line 42
    mul-float/2addr v4, p0

    .line 44
    add-float/2addr v4, v5

    .line 45
    float-to-int p0, v4

    .line 46
    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 47
    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingBounds:Landroid/graphics/Rect;

    .line 51
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 53
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 55
    int-to-float v4, v2

    .line 57
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 58
    move-result v1

    .line 61
    int-to-float v1, v1

    .line 62
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 63
    move-result v5

    .line 66
    mul-float/2addr v5, v1

    .line 67
    add-float/2addr v5, v4

    .line 68
    float-to-int v1, v5

    .line 69
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingBounds:Landroid/graphics/Rect;

    .line 70
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 72
    int-to-float v5, v5

    .line 74
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 75
    move-result v4

    .line 78
    int-to-float v4, v4

    .line 79
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 80
    move-result p0

    .line 83
    mul-float/2addr p0, v4

    .line 84
    add-float/2addr p0, v5

    .line 85
    float-to-int p0, p0

    .line 86
    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
    :goto_0
    return-object v0
    .line 90
.end method

.method public getScaledBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 16
    move-result p0

    .line 19
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 20
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 29
    move-result p0

    .line 32
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 33
    move-result-object p0

    .line 36
    :goto_0
    return-object p0
    .line 37
.end method

.method public getScaledBoundsUnchecked()Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getLastBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getLastBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 16
    move-result p0

    .line 19
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 20
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 29
    move-result p0

    .line 32
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method

.method public getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTaskId()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, -0x1

    .line 6
    const-string v1, "MiuiFreeformModeTaskInfo"

    .line 7
    if-nez p0, :cond_0

    .line 9
    const-string/jumbo p0, "state is null"

    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return v0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    if-nez p0, :cond_1

    .line 20
    const-string p0, "runningTaskInfo is null"

    .line 22
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return v0

    .line 27
    :cond_1
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 28
    return p0
    .line 30
.end method

.method public getTaskInfoRealHeight()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 4
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 9
    move-result p0

    .line 12
    mul-float/2addr p0, v0

    .line 13
    return p0
    .line 14
.end method

.method public getTaskInfoRealWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 9
    move-result p0

    .line 12
    mul-float/2addr p0, v0

    .line 13
    return p0
    .line 14
.end method

.method public getTempAvoidActiveTaskBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTempAvoidActiveTaskBounds:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public getTmpBottomLeftCorner()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTmpBottomRightCorner()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTmpDownMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpDownMode:I

    .line 2
    return p0
    .line 4
.end method

.method public getTmpDownModeIsMini()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpDownMode:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
    .line 9
.end method

.method public getTmpEludeBounds()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpEludeBounds:Landroid/graphics/Rect;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTmpLCornerState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpLCornerState:I

    .line 2
    return p0
    .line 4
.end method

.method public getTmpMode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, " getTmpMode: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpMode:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/Throwable;

    .line 22
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 24
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 27
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_0
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpMode:I

    .line 32
    return p0
    .line 34
.end method

.method public getTmpRCornerState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRCornerState:I

    .line 2
    return p0
    .line 4
.end method

.method public getTmpTargetIsMini()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpMode()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
    .line 11
.end method

.method public hasSetShadow()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mHasSetShadow:Z

    .line 2
    return p0
    .line 4
.end method

.method public declared-synchronized isAnyInRunningAnimatingList(Ljava/util/ArrayList;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRunningAnimationTypes:Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRunningAnimationTypes:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    xor-int/lit8 p1, p1, 0x1

    .line 19
    monitor-exit p0

    .line 21
    return p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
    .line 25
.end method

.method public isEnteringMini()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "isEnteringMini taskId: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 13
    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " isEnteringMini: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsEnteringMini:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/Throwable;

    .line 38
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 40
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 43
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsEnteringMini:Z

    .line 48
    return p0
    .line 50
.end method

.method public isExiting()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExiting:Z

    .line 2
    return p0
    .line 4
.end method

.method public isForegroundPin()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsForegroundPin:Z

    .line 2
    return p0
    .line 4
.end method

.method public isFreeformEludeAnimation()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsFreeformEludeAnimation:Z

    .line 2
    return p0
    .line 4
.end method

.method public isFreeformEludeShowScaleAnimation()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsFreeformEludeShowScaleAnimation:Z

    .line 2
    return p0
    .line 4
.end method

.method public isFreeformEludeShowYAnimation()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsFreeformEludeShowYAnimation:Z

    .line 2
    return p0
    .line 4
.end method

.method public isHideStackFromFullScreen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mHadHideStackFormFullScreen:Z

    .line 2
    return p0
    .line 4
.end method

.method public isInAnimating()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimationType:I

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public isInDragTaskResizeAnim()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsInDragTaskResizeAnim:Z

    .line 2
    return p0
    .line 4
.end method

.method public isInMultiWinFreeFormExit()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "\u63a7\u5236\u5668"

    .line 2
    const-string/jumbo v1, "\u7a97\u53e3\u62d6\u62fd"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitFreeFormReason:Ljava/lang/String;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method

.method public isInPinMode()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 2
    const/4 v0, 0x3

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
    .line 14
.end method

.method public declared-synchronized isInRunningAnimatingList(I)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRunningAnimationTypes:Ljava/util/ArrayList;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
    .line 17
.end method

.method public isLandcapeFreeform()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsLandcapeFreeform:Z

    .line 2
    return p0
    .line 4
.end method

.method public isLastTargetIsFullsceen()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLastBottomCaptionActionMode:I

    .line 2
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public isLastTargetIsMoveToBack()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLastBottomCaptionActionMode:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
    .line 9
.end method

.method public isLastTargetIsReset()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLastBottomCaptionActionMode:I

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public isLeftCornerHide()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpLCornerState:I

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move v2, v3

    .line 12
    :goto_0
    return v2

    .line 13
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLCornerState:I

    .line 14
    if-nez p0, :cond_2

    .line 16
    goto :goto_1

    .line 18
    :cond_2
    move v2, v3

    .line 19
    :goto_1
    return v2
    .line 20
.end method

.method public isLeftCornerHold()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpLCornerState:I

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    if-ne v0, v4, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move v2, v3

    .line 13
    :goto_0
    return v2

    .line 14
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLCornerState:I

    .line 15
    if-ne p0, v4, :cond_2

    .line 17
    goto :goto_1

    .line 19
    :cond_2
    move v2, v3

    .line 20
    :goto_1
    return v2
    .line 21
.end method

.method public isMiniPinedState()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 2
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public isMiniState()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
    .line 9
.end method

.method public isNeedAnimation()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mNeedAnimation:Z

    .line 2
    return p0
    .line 4
.end method

.method public isNeedImeToAvoid()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsNeedImeToAvoid:Z

    .line 2
    return p0
    .line 4
.end method

.method public isNormalFreeForm()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsNormalFreeForm:Z

    .line 2
    return p0
    .line 4
.end method

.method public isNormalPinedState()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 2
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public isNormalState()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public isRequireAutoLayoutAfterAniCompleted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRequireAutoLayoutAfterAniCompleted:Z

    .line 2
    return p0
    .line 4
.end method

.method public isRightCornerHide()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRCornerState:I

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move v2, v3

    .line 12
    :goto_0
    return v2

    .line 13
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRCornerState:I

    .line 14
    if-nez p0, :cond_2

    .line 16
    goto :goto_1

    .line 18
    :cond_2
    move v2, v3

    .line 19
    :goto_1
    return v2
    .line 20
.end method

.method public isRightCornerHold()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRCornerState:I

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    if-ne v0, v4, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move v2, v3

    .line 13
    :goto_0
    return v2

    .line 14
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRCornerState:I

    .line 15
    if-ne p0, v4, :cond_2

    .line 17
    goto :goto_1

    .line 19
    :cond_2
    move v2, v3

    .line 20
    :goto_1
    return v2
    .line 21
.end method

.method public isRunningContinuousAnimation()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v1

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 13
    const/4 v3, 0x3

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v3

    .line 18
    filled-new-array {v1, v2, v3}, [Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isAnyInRunningAnimatingList(Ljava/util/ArrayList;)Z

    .line 30
    move-result p0

    .line 33
    return p0
    .line 34
.end method

.method public isWithinBottomCaptionRegion(Landroid/graphics/Rect;III)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 2
    const/high16 v1, 0x42880000    # 68.0f

    .line 4
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 6
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 11
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 15
    const/high16 v3, 0x42c00000    # 96.0f

    .line 17
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 19
    move-result v2

    .line 22
    float-to-int v2, v2

    .line 23
    sub-int/2addr v1, v2

    .line 24
    div-int/lit8 v1, v1, 0x2

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 27
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 31
    const/high16 v2, 0x41000000    # 8.0f

    .line 33
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 35
    move-result v1

    .line 38
    float-to-int v1, v1

    .line 39
    int-to-float p4, p4

    .line 40
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 41
    move-result v2

    .line 44
    mul-float/2addr v2, p4

    .line 45
    float-to-int p4, v2

    .line 46
    new-instance v2, Landroid/graphics/Rect;

    .line 47
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 49
    add-int/2addr v3, v0

    .line 51
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 52
    sub-int v5, v4, p4

    .line 54
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 56
    sub-int/2addr v6, v0

    .line 58
    invoke-direct {v2, v3, v5, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 62
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v3, v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 68
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    new-instance v3, Landroid/graphics/Rect;

    .line 74
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 76
    add-int/2addr v4, v0

    .line 78
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 79
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 81
    sub-int/2addr v6, v0

    .line 83
    sget v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->HOT_SPACE_BOTTOM_OFFSITE_PAD:I

    .line 84
    add-int/2addr v7, v5

    .line 86
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 87
    goto :goto_0

    .line 90
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    .line 91
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 93
    add-int/2addr v4, v0

    .line 95
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 96
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 98
    sub-int/2addr v6, v0

    .line 100
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 101
    move-result-object v7

    .line 104
    invoke-virtual {v7}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 105
    move-result v7

    .line 108
    float-to-int v7, v7

    .line 109
    add-int/2addr v7, v5

    .line 110
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    .line 114
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 116
    add-int/2addr v5, v0

    .line 118
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 119
    sub-int v7, v6, p4

    .line 121
    sub-int/2addr v7, v1

    .line 123
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 124
    sub-int/2addr p1, v0

    .line 126
    sub-int/2addr v6, p4

    .line 127
    invoke-direct {v4, v5, v7, p1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 133
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 136
    sget-object p4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 138
    invoke-virtual {p1, v2, p4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 140
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 143
    sget-object p4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 145
    invoke-virtual {p1, v3, p4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 147
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 150
    sget-object p4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 152
    invoke-virtual {p1, v4, p4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 154
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 157
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Region;->contains(II)Z

    .line 159
    move-result p0

    .line 162
    return p0
    .line 163
.end method

.method public isWithinDragResizeRegion(Landroid/graphics/Rect;II)Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 11
    const/high16 v1, 0x42200000    # 40.0f

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 16
    const/high16 v3, 0x42300000    # 44.0f

    .line 18
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 20
    move-result v2

    .line 23
    float-to-int v2, v2

    .line 24
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 25
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 29
    move-result v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 36
    move-result v2

    .line 39
    float-to-int v2, v2

    .line 40
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 41
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 45
    move-result v3

    .line 48
    :goto_0
    float-to-int v3, v3

    .line 49
    add-int/2addr v2, v3

    .line 50
    const/high16 v3, 0x42000000    # 32.0f

    .line 51
    if-eqz v0, :cond_1

    .line 53
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {v4, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 57
    move-result v4

    .line 60
    float-to-int v4, v4

    .line 61
    sget v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->HOT_SPACE_BOTTOM_OFFSITE_PAD:I

    .line 62
    goto :goto_1

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {v4, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 67
    move-result v4

    .line 70
    float-to-int v4, v4

    .line 71
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 72
    move-result-object v5

    .line 75
    invoke-virtual {v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 76
    move-result v5

    .line 79
    float-to-int v5, v5

    .line 80
    :goto_1
    add-int/2addr v4, v5

    .line 81
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDragCornerSize:Landroid/graphics/Rect;

    .line 82
    const/4 v6, 0x0

    .line 84
    invoke-virtual {v5, v6, v6, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 88
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDragCornerSize:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 95
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDragCornerSize:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 104
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 106
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 108
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 112
    move-result v4

    .line 115
    float-to-int v4, v4

    .line 116
    sub-int/2addr v3, v4

    .line 117
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 118
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {v5, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 122
    move-result v5

    .line 125
    float-to-int v5, v5

    .line 126
    sub-int/2addr v4, v5

    .line 127
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 128
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 131
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 133
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 135
    move-result-object v4

    .line 138
    invoke-virtual {v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 139
    move-result v4

    .line 142
    float-to-int v4, v4

    .line 143
    add-int/2addr v3, v4

    .line 144
    sub-int/2addr v3, v2

    .line 145
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 146
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 150
    move-result v1

    .line 153
    float-to-int v1, v1

    .line 154
    sub-int/2addr p1, v1

    .line 155
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 156
    goto/16 :goto_2

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 161
    move-result v0

    .line 164
    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 167
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 169
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 171
    move-result-object v4

    .line 174
    invoke-virtual {v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 175
    move-result v4

    .line 178
    float-to-int v4, v4

    .line 179
    sub-int/2addr v1, v4

    .line 180
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 181
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 183
    invoke-static {v5, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 185
    move-result v5

    .line 188
    float-to-int v5, v5

    .line 189
    sub-int/2addr v4, v5

    .line 190
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 191
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 194
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 196
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 198
    move-result-object v4

    .line 201
    invoke-virtual {v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 202
    move-result v4

    .line 205
    float-to-int v4, v4

    .line 206
    add-int/2addr v1, v4

    .line 207
    sub-int/2addr v1, v2

    .line 208
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 209
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 211
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 213
    move-result v2

    .line 216
    float-to-int v2, v2

    .line 217
    sub-int/2addr p1, v2

    .line 218
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 219
    goto :goto_2

    .line 222
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 223
    move-result v0

    .line 226
    if-eqz v0, :cond_4

    .line 227
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 229
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 231
    add-int/lit8 v1, v1, -0x14

    .line 233
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 235
    move-result-object v4

    .line 238
    invoke-virtual {v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 239
    move-result v4

    .line 242
    float-to-int v4, v4

    .line 243
    sub-int/2addr v1, v4

    .line 244
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 245
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 247
    invoke-static {v5, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 249
    move-result v5

    .line 252
    float-to-int v5, v5

    .line 253
    sub-int/2addr v4, v5

    .line 254
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 255
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 258
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 260
    add-int/lit8 v1, v1, 0x14

    .line 262
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 264
    move-result-object v4

    .line 267
    invoke-virtual {v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 268
    move-result v4

    .line 271
    float-to-int v4, v4

    .line 272
    add-int/2addr v1, v4

    .line 273
    sub-int/2addr v1, v2

    .line 274
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 275
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 277
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 279
    move-result v2

    .line 282
    float-to-int v2, v2

    .line 283
    sub-int/2addr p1, v2

    .line 284
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 285
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 288
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 290
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 293
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 295
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 297
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 299
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 302
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 304
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 306
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 308
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 311
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Region;->contains(II)Z

    .line 313
    move-result p0

    .line 316
    return p0
    .line 317
.end method

.method public isWithinLeftResizeRegion(Landroid/graphics/Rect;II)Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 11
    const/high16 v1, 0x42200000    # 40.0f

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 16
    const/high16 v3, 0x42300000    # 44.0f

    .line 18
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 20
    move-result v2

    .line 23
    float-to-int v2, v2

    .line 24
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 25
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 29
    move-result v3

    .line 32
    float-to-int v3, v3

    .line 33
    add-int/2addr v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 38
    move-result v2

    .line 41
    float-to-int v2, v2

    .line 42
    :goto_0
    const/high16 v3, 0x42000000    # 32.0f

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {v4, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 49
    move-result v4

    .line 52
    float-to-int v4, v4

    .line 53
    sget v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->HOT_SPACE_BOTTOM_OFFSITE_PAD:I

    .line 54
    goto :goto_1

    .line 56
    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v4, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 59
    move-result v4

    .line 62
    float-to-int v4, v4

    .line 63
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 64
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 68
    move-result v5

    .line 71
    float-to-int v5, v5

    .line 72
    :goto_1
    add-int/2addr v4, v5

    .line 73
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDragCornerSize:Landroid/graphics/Rect;

    .line 74
    const/4 v6, 0x0

    .line 76
    invoke-virtual {v5, v6, v6, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 82
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 84
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 86
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 90
    move-result v3

    .line 93
    float-to-int v3, v3

    .line 94
    sub-int/2addr v2, v3

    .line 95
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 96
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {v3, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 100
    move-result v1

    .line 103
    float-to-int v1, v1

    .line 104
    sub-int/2addr p1, v1

    .line 105
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 106
    goto :goto_2

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 110
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 116
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 118
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 120
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 124
    move-result v2

    .line 127
    float-to-int v2, v2

    .line 128
    sub-int/2addr p1, v2

    .line 129
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 130
    goto :goto_2

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 134
    move-result v0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 140
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 142
    add-int/lit8 v1, v1, -0x14

    .line 144
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 146
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 150
    move-result v2

    .line 153
    float-to-int v2, v2

    .line 154
    sub-int/2addr p1, v2

    .line 155
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 156
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 161
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 164
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 166
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 168
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 170
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 173
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Region;->contains(II)Z

    .line 175
    move-result p0

    .line 178
    return p0
    .line 179
.end method

.method public isWithinRightResizeRegion(Landroid/graphics/Rect;II)Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 11
    const/high16 v1, 0x42200000    # 40.0f

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 16
    const/high16 v3, 0x42300000    # 44.0f

    .line 18
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 20
    move-result v2

    .line 23
    float-to-int v2, v2

    .line 24
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 25
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 29
    move-result v3

    .line 32
    float-to-int v3, v3

    .line 33
    add-int/2addr v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 38
    move-result v2

    .line 41
    float-to-int v2, v2

    .line 42
    :goto_0
    const/high16 v3, 0x42000000    # 32.0f

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {v4, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 49
    move-result v4

    .line 52
    float-to-int v4, v4

    .line 53
    sget v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->HOT_SPACE_BOTTOM_OFFSITE_PAD:I

    .line 54
    goto :goto_1

    .line 56
    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v4, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 59
    move-result v4

    .line 62
    float-to-int v4, v4

    .line 63
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 64
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 68
    move-result v5

    .line 71
    float-to-int v5, v5

    .line 72
    :goto_1
    add-int/2addr v4, v5

    .line 73
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDragCornerSize:Landroid/graphics/Rect;

    .line 74
    const/4 v6, 0x0

    .line 76
    invoke-virtual {v5, v6, v6, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 80
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDragCornerSize:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 84
    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 89
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 91
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 93
    move-result-object v4

    .line 96
    invoke-virtual {v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 97
    move-result v4

    .line 100
    float-to-int v4, v4

    .line 101
    add-int/2addr v3, v4

    .line 102
    sub-int/2addr v3, v2

    .line 103
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 104
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 108
    move-result v1

    .line 111
    float-to-int v1, v1

    .line 112
    sub-int/2addr p1, v1

    .line 113
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 114
    goto :goto_2

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 118
    move-result v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 124
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 126
    sub-int/2addr v1, v2

    .line 128
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 129
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 133
    move-result v2

    .line 136
    float-to-int v2, v2

    .line 137
    sub-int/2addr p1, v2

    .line 138
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 139
    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 143
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 149
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 151
    add-int/lit8 v1, v1, 0x14

    .line 153
    sub-int/2addr v1, v2

    .line 155
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 156
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 160
    move-result v2

    .line 163
    float-to-int v2, v2

    .line 164
    sub-int/2addr p1, v2

    .line 165
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 166
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 171
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 174
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 176
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 180
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 183
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Region;->contains(II)Z

    .line 185
    move-result p0

    .line 188
    return p0
    .line 189
.end method

.method public isWithinTopCaptionRegion(Landroid/graphics/Rect;III)Z
    .locals 7

    .line 1
    int-to-float p4, p4

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 3
    move-result v0

    .line 6
    mul-float/2addr v0, p4

    .line 7
    float-to-int p4, v0

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 9
    const/high16 v1, 0x42200000    # 40.0f

    .line 11
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 13
    move-result v0

    .line 16
    float-to-int v0, v0

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 18
    const/high16 v2, 0x41000000    # 8.0f

    .line 20
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 22
    move-result v1

    .line 25
    float-to-int v1, v1

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCaptionRegion:Landroid/graphics/Rect;

    .line 27
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 29
    add-int/2addr v3, v0

    .line 31
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 32
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 34
    sub-int/2addr v5, v0

    .line 36
    add-int v6, v4, p4

    .line 37
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    new-instance v2, Landroid/graphics/Rect;

    .line 42
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 44
    add-int/2addr v3, v0

    .line 46
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 47
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 49
    move-result-object v5

    .line 52
    invoke-virtual {v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 53
    move-result v5

    .line 56
    float-to-int v5, v5

    .line 57
    sub-int/2addr v4, v5

    .line 58
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 59
    sub-int/2addr v5, v0

    .line 61
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 62
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    new-instance v3, Landroid/graphics/Rect;

    .line 67
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 69
    add-int/2addr v4, v0

    .line 71
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 72
    add-int v6, v5, p4

    .line 74
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 76
    sub-int/2addr p1, v0

    .line 78
    add-int/2addr v5, p4

    .line 79
    add-int/2addr v5, v1

    .line 80
    invoke-direct {v3, v4, v6, p1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 81
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 86
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 89
    iget-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCaptionRegion:Landroid/graphics/Rect;

    .line 91
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 93
    invoke-virtual {p1, p4, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 95
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 98
    sget-object p4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 100
    invoke-virtual {p1, v2, p4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 102
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 105
    sget-object p4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 107
    invoke-virtual {p1, v3, p4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 109
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 112
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Region;->contains(II)Z

    .line 114
    move-result p0

    .line 117
    return p0
    .line 118
.end method

.method public isWithinTopCaptionTipRegion(Landroid/graphics/Rect;III)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 2
    const/high16 v1, 0x428c0000    # 70.0f

    .line 4
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 6
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    int-to-float p4, p4

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 12
    move-result v1

    .line 15
    mul-float/2addr v1, p4

    .line 16
    float-to-int p4, v1

    .line 17
    new-instance v1, Landroid/graphics/Rect;

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 20
    move-result v2

    .line 23
    div-int/lit8 v0, v0, 0x2

    .line 24
    sub-int/2addr v2, v0

    .line 26
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 29
    move-result v4

    .line 32
    add-int/2addr v4, v0

    .line 33
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 34
    add-int/2addr v5, p4

    .line 36
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 37
    new-instance p4, Landroid/graphics/Rect;

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 42
    move-result v2

    .line 45
    sub-int/2addr v2, v0

    .line 46
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 47
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 49
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 53
    move-result v4

    .line 56
    float-to-int v4, v4

    .line 57
    sub-int/2addr v3, v4

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 59
    move-result v4

    .line 62
    add-int/2addr v4, v0

    .line 63
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 64
    invoke-direct {p4, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 71
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 74
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 76
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 78
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 81
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 83
    invoke-virtual {p1, p4, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 85
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 88
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Region;->contains(II)Z

    .line 90
    move-result p0

    .line 93
    return p0
    .line 94
.end method

.method public isWithinTopCaptionTipShowRegion(Landroid/graphics/Rect;III)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 2
    const/high16 v1, 0x428c0000    # 70.0f

    .line 4
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 6
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mContext:Landroid/content/Context;

    .line 11
    const/high16 v2, 0x42580000    # 54.0f

    .line 13
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 15
    move-result v1

    .line 18
    float-to-int v1, v1

    .line 19
    int-to-float p4, p4

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 21
    move-result v2

    .line 24
    mul-float/2addr v2, p4

    .line 25
    float-to-int p4, v2

    .line 26
    new-instance v2, Landroid/graphics/Rect;

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 29
    move-result v3

    .line 32
    div-int/lit8 v0, v0, 0x2

    .line 33
    sub-int/2addr v3, v0

    .line 35
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 38
    move-result v5

    .line 41
    add-int/2addr v5, v0

    .line 42
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 43
    add-int/2addr v6, p4

    .line 45
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 46
    new-instance v3, Landroid/graphics/Rect;

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 51
    move-result v4

    .line 54
    sub-int/2addr v4, v0

    .line 55
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 56
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 58
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHotSpaceOffsite()F

    .line 62
    move-result v6

    .line 65
    float-to-int v6, v6

    .line 66
    sub-int/2addr v5, v6

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 68
    move-result v6

    .line 71
    add-int/2addr v6, v0

    .line 72
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 73
    add-int/2addr p1, p4

    .line 75
    add-int/2addr p1, v1

    .line 76
    invoke-direct {v3, v4, v5, v6, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 82
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 85
    sget-object p4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 87
    invoke-virtual {p1, v2, p4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 89
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 92
    sget-object p4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 94
    invoke-virtual {p1, v3, p4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 96
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRegion:Landroid/graphics/Region;

    .line 99
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Region;->contains(II)Z

    .line 101
    move-result p0

    .line 104
    return p0
    .line 105
.end method

.method public declared-synchronized removeRunningAnimationType(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRunningAnimationTypes:Ljava/util/ArrayList;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
    .line 16
.end method

.method public setActionMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mActionMode:I

    .line 2
    return-void
    .line 4
.end method

.method public setAnimatingBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public setAnimatingClipRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingClipRect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public setAnimatingscaleX(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-string p0, "MiuiFreeformModeTaskInfo"

    .line 8
    const-string/jumbo p1, "setAnimatingscaleX: animatingscaleX is NaN!"

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void

    .line 16
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingScaleX:F

    .line 17
    return-void
    .line 19
.end method

.method public setAnimatingscaleY(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-string p0, "MiuiFreeformModeTaskInfo"

    .line 8
    const-string/jumbo p1, "setAnimatingscaleY: animatingscaleY is NaN!"

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void

    .line 16
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimatingScaleY:F

    .line 17
    return-void
    .line 19
.end method

.method public setAnimationType(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "setAnimationType taskId: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 14
    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " animationType: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/Throwable;

    .line 37
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 39
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 42
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mAnimationType:I

    .line 47
    return-void
    .line 49
.end method

.method public setBaseBound()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedBounds(Landroid/graphics/Rect;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedBounds(Landroid/graphics/Rect;)V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedBounds(Landroid/graphics/Rect;)V

    .line 38
    :goto_0
    return-void
    .line 41
.end method

.method public setBaseParams()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedBounds(Landroid/graphics/Rect;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedBounds(Landroid/graphics/Rect;)V

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingscaleX()F

    .line 33
    move-result v0

    .line 36
    const/high16 v1, -0x40800000    # -1.0f

    .line 37
    cmpl-float v0, v0, v1

    .line 39
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingscaleX()F

    .line 43
    move-result v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedScaleX(F)V

    .line 47
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingscaleY()F

    .line 50
    move-result v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedScaleY(F)V

    .line 54
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 58
    move-result v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedScaleX(F)V

    .line 62
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 65
    move-result v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedScaleY(F)V

    .line 69
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedBounds(Landroid/graphics/Rect;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 80
    move-result v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedScaleX(F)V

    .line 84
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 87
    move-result v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBasedScaleY(F)V

    .line 91
    :goto_1
    return-void
    .line 94
.end method

.method public setBasedBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public setBasedClipRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedClipRect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public setBasedCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    return-void
    .line 4
.end method

.method public setBasedRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setBasedScaleX(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    const-string v1, "MiuiFreeformModeTaskInfo"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "setBasedScaleX this: "

    .line 10
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, " basedScaleX: "

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    new-instance v2, Ljava/lang/Throwable;

    .line 31
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 33
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    const-string/jumbo p0, "setBasedScaleX: basedScaleX is NaN!"

    .line 45
    invoke-static {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 51
    :cond_1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedScaleX:F

    .line 52
    return-void
    .line 54
.end method

.method public setBasedScaleY(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-string p0, "MiuiFreeformModeTaskInfo"

    .line 8
    const-string/jumbo p1, "setBasedScaleY: basedScaleY is NaN!"

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void

    .line 16
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedScaleY:F

    .line 17
    return-void
    .line 19
.end method

.method public setBasedStrokeThickness(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBasedStrokeThickness:F

    .line 2
    return-void
    .line 4
.end method

.method public setBottomCaptionActionMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBottomCaptionActionMode:I

    .line 2
    return-void
    .line 4
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "setBounds taskId: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 14
    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " bounds: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/Throwable;

    .line 37
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 39
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 42
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_0
    if-nez p1, :cond_1

    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 51
    return-void

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 55
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 57
    return-void
    .line 60
.end method

.method public setCornerAnimType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCornerAnimType:I

    .line 2
    return-void
    .line 4
.end method

.method public setCornerPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCornerPosition:I

    .line 2
    return-void
    .line 4
.end method

.method public setCtrlType(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCtrlType:I

    return-void
.end method

.method public setCtrlType(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    or-int/lit8 p1, p1, 0x8

    .line 2
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCtrlType:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    or-int/lit8 p1, p1, 0x8

    .line 4
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mCtrlType:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setDestAndTmpLCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestLCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDestState()I

    .line 5
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpLCornerState(I)V

    .line 9
    return-void
    .line 12
.end method

.method public setDestAndTmpRCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestRCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDestState()I

    .line 5
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpRCornerState(I)V

    .line 9
    return-void
    .line 12
.end method

.method public setDestLCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestLCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    return-void
    .line 4
.end method

.method public setDestRCornerState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestRCornerState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 2
    return-void
    .line 4
.end method

.method public setDestStrokeAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestStrokeAlpha:F

    .line 2
    return-void
    .line 4
.end method

.method public setDestStrokeColors([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestStrokeColors:[F

    .line 2
    return-void
    .line 4
.end method

.method public setDestStrokeThickness(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestStrokeThickness:F

    .line 2
    return-void
    .line 4
.end method

.method public setDestinationAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationAlpha:F

    .line 2
    return-void
    .line 4
.end method

.method public setDestinationBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "setDestinationBounds bounds: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " this: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/Throwable;

    .line 29
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 31
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 34
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 41
    return-void
    .line 44
.end method

.method public setDestinationClipRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationClipRect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public setDestinationRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setDestinationScaleX(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    const-string v1, "MiuiFreeformModeTaskInfo"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "setDestinationScaleX: scaleX"

    .line 10
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    new-instance v2, Ljava/lang/Throwable;

    .line 23
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 25
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    const-string/jumbo p0, "setDestinationScaleX: scaleX is NaN!"

    .line 37
    invoke-static {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 43
    :cond_1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationScaleX:F

    .line 44
    return-void
    .line 46
.end method

.method public setDestinationScaleY(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    const-string v1, "MiuiFreeformModeTaskInfo"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "setDestinationScaleY: scaleY"

    .line 10
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    new-instance v2, Ljava/lang/Throwable;

    .line 23
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 25
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    const-string/jumbo p0, "setDestinationScaleY: scaleY is NaN!"

    .line 37
    invoke-static {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 43
    :cond_1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationScaleY:F

    .line 44
    return-void
    .line 46
.end method

.method public setEnterState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mEnterState:I

    .line 2
    return-void
    .line 4
.end method

.method public setExiting(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExiting:Z

    .line 2
    return-void
    .line 4
.end method

.method public setFolmeProp(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFolmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 2
    return-void
    .line 4
.end method

.method public setForegroundPin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsForegroundPin:Z

    .line 2
    return-void
    .line 4
.end method

.method public setFreeformEludeAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsFreeformEludeAnimation:Z

    .line 2
    return-void
    .line 4
.end method

.method public setFreeformEludeShowScaleAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsFreeformEludeShowScaleAnimation:Z

    .line 2
    return-void
    .line 4
.end method

.method public setFreeformEludeShowYAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsFreeformEludeShowYAnimation:Z

    .line 2
    return-void
    .line 4
.end method

.method public setFriction(Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFriction:Landroid/graphics/PointF;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 4
    return-void
    .line 7
.end method

.method public setHasSetShadow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mHasSetShadow:Z

    .line 2
    return-void
    .line 4
.end method

.method public setHideStackFromFullScreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mHadHideStackFormFullScreen:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 4
    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 10
    invoke-static {p0, p1}, Lmiui/app/MiuiFreeFormManager;->setHideStackFromFullScreen(IZ)V

    .line 12
    return-void
    .line 15
.end method

.method public setInDragTaskResizeAnim(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsInDragTaskResizeAnim:Z

    .line 2
    return-void
    .line 4
.end method

.method public setIsEnteringMini(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "setIsEnteringMini taskId: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 14
    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " isEnteringMini: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/Throwable;

    .line 37
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 39
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 42
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsEnteringMini:Z

    .line 47
    return-void
    .line 49
.end method

.method public setIsLandcapeFreeform(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsLandcapeFreeform:Z

    .line 2
    return-void
    .line 4
.end method

.method public setIsNormalFreeForm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsNormalFreeForm:Z

    .line 2
    return-void
    .line 4
.end method

.method public setLastBottomCaptionActionMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLastBottomCaptionActionMode:I

    .line 2
    return-void
    .line 4
.end method

.method public setLastBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "setLastBounds taskId: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 14
    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " mLastBounds: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/Throwable;

    .line 37
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 39
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 42
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_0
    if-nez p1, :cond_1

    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLastBounds:Landroid/graphics/Rect;

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 51
    return-void

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLastBounds:Landroid/graphics/Rect;

    .line 55
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 57
    return-void
    .line 60
.end method

.method public setLaunchMiniFreeformFromRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLaunchMiniFreeformFromRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 6
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLaunchMiniFreeformFromRect:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    return-void
    .line 15
.end method

.method public setLeftCornerState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mLCornerState:I

    .line 2
    return-void
    .line 4
.end method

.method public setMiniRestoreScaleX(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "setMiniRestoreScaleX downScaleX: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/Throwable;

    .line 21
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 23
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 26
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMiniRestoreScaleX:F

    .line 31
    return-void
    .line 33
.end method

.method public setMiniRestoreScaleY(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "setMiniRestoreScaleY downScaleY: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/Throwable;

    .line 21
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 23
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 26
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMiniRestoreScaleY:F

    .line 31
    return-void
    .line 33
.end method

.method public setMiniScale(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-string p0, "MiuiFreeformModeTaskInfo"

    .line 8
    const-string/jumbo p1, "setMiniScale: miniScale is NaN!"

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void

    .line 16
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMiniScale:F

    .line 17
    return-void
    .line 19
.end method

.method public setMode(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, " setMode: "

    .line 6
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/Throwable;

    .line 12
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 14
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 17
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 22
    return-void
    .line 24
.end method

.method public setNeedAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mNeedAnimation:Z

    .line 2
    return-void
    .line 4
.end method

.method public setNeedImeToAvoid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsNeedImeToAvoid:Z

    .line 2
    return-void
    .line 4
.end method

.method public setOriFreeformScale(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-string p0, "MiuiFreeformModeTaskInfo"

    .line 8
    const-string/jumbo p1, "setOriFreeformScale: oriFreeformScale is NaN!"

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void

    .line 16
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mOriFreeformScale:F

    .line 17
    return-void
    .line 19
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPackageName:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setRequireAutoLayoutAfterAniCompleted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRequireAutoLayoutAfterAniCompleted:Z

    .line 2
    return-void
    .line 4
.end method

.method public setResizeMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mResizeMode:I

    .line 2
    return-void
    .line 4
.end method

.method public setRestoreMiniBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRestoreMiniBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public setRestoreNormalBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRestoreNormalBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public setRightCornerState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRCornerState:I

    .line 2
    return-void
    .line 4
.end method

.method public setScale(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    const-string v1, "MiuiFreeformModeTaskInfo"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "setScale this: "

    .line 10
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, " scale: "

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    new-instance v2, Ljava/lang/Throwable;

    .line 31
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 33
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    const-string/jumbo p0, "setScale: scale is NaN!"

    .line 45
    invoke-static {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 51
    :cond_1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mScale:F

    .line 52
    return-void
    .line 54
.end method

.method public setState(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    return-void
    .line 8
.end method

.method public setTempAvoidActiveTaskBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTempAvoidActiveTaskBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public setTmpDownMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpDownMode:I

    .line 2
    return-void
    .line 4
.end method

.method public setTmpEludeBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpEludeBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public setTmpLCornerState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpLCornerState:I

    .line 2
    return-void
    .line 4
.end method

.method public setTmpMode(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, " setTmpMode: "

    .line 6
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/Throwable;

    .line 12
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 14
    const-string v2, "MiuiFreeformModeTaskInfo"

    .line 17
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpMode:I

    .line 22
    return-void
    .line 24
.end method

.method public setTmpRCornerState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mTmpRCornerState:I

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MiuiFreeformTaskInfo{, mMode="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mMode:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", mBounds="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", mScale="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mScale:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", mDestinationBounds="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationBounds:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", mDestinationScaleX="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationScaleX:F

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", mDestinationScaleY="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mDestinationScaleY:F

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", mResizeMode="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mResizeMode:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", isForegroundPin: "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mIsForegroundPin:Z

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", mState.mTaskInfo="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 89
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const/16 p0, 0x7d

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 104
    return-object p0
    .line 105
.end method
