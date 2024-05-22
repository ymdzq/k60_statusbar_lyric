.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

.field final synthetic val$buttonCount:I

.field final synthetic val$captionButtonMargin:I

.field final synthetic val$captionButtonWidth:I

.field final synthetic val$handleMenuView:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionHandleContainerView;

.field final synthetic val$height:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionHandleContainerView;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$handleMenuView:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionHandleContainerView;

    .line 4
    iput p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$captionButtonWidth:I

    .line 6
    iput p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$captionButtonMargin:I

    .line 8
    iput p5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$buttonCount:I

    .line 10
    iput p6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$height:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$handleMenuView:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionHandleContainerView;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 12
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->-$$Nest$fgetmHandleMenuPosition(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;)Landroid/graphics/Point;

    .line 14
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 18
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$captionButtonWidth:I

    .line 20
    div-int/lit8 v2, v1, 0x2

    .line 22
    add-int/2addr v2, v1

    .line 24
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$captionButtonMargin:I

    .line 25
    div-int/lit8 v1, v1, 0x2

    .line 27
    add-int/2addr v1, v2

    .line 29
    add-int/2addr v1, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 32
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->-$$Nest$fgetmHandleMenuPosition(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;)Landroid/graphics/Point;

    .line 34
    move-result-object v0

    .line 37
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 38
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$captionButtonWidth:I

    .line 40
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$buttonCount:I

    .line 42
    add-int/lit8 v2, v2, -0x1

    .line 44
    mul-int/2addr v2, v1

    .line 46
    add-int/2addr v2, v0

    .line 47
    div-int/lit8 v1, v1, 0x2

    .line 48
    sub-int/2addr v2, v1

    .line 50
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$captionButtonMargin:I

    .line 51
    div-int/lit8 v0, v0, 0x2

    .line 53
    add-int v1, v0, v2

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 57
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->-$$Nest$fgetmHandleMenuPosition(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;)Landroid/graphics/Point;

    .line 59
    move-result-object v0

    .line 62
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 63
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$height:I

    .line 65
    add-int/2addr v0, v2

    .line 67
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 68
    iget-object v2, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 70
    const/high16 v3, 0x40800000    # 4.0f

    .line 72
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->dip2px(Landroid/content/Context;F)I

    .line 74
    move-result v2

    .line 77
    add-int/2addr v2, v0

    .line 78
    const/16 v0, 0x9

    .line 79
    const/16 v3, 0x8

    .line 81
    invoke-static {v0, v1, v2, v3}, Lmiui/app/MiuiFreeFormManager;->showFreeFormTipView(IIII)V

    .line 83
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$3;->val$handleMenuView:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionHandleContainerView;

    .line 86
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 88
    move-result-object v0

    .line 91
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 92
    :cond_1
    return-void
    .line 95
.end method
