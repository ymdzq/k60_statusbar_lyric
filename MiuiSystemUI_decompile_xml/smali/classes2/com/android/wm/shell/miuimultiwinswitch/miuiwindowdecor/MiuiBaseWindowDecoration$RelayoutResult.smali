.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field mBottomRootView:Landroid/view/View;

.field mCaptionOffsetY:I

.field mCaptionX:I

.field mCaptionY:I

.field mRootView:Landroid/view/View;

.field mSamplingOffsetY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionOffsetY:I

    .line 3
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mSamplingOffsetY:I

    .line 5
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 8
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionX:I

    .line 10
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionY:I

    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mBottomRootView:Landroid/view/View;

    .line 14
    return-void
    .line 16
.end method

.method public setCaptionPosition(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionX:I

    .line 2
    iput p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration$RelayoutResult;->mCaptionY:I

    .line 4
    return-void
    .line 6
.end method
