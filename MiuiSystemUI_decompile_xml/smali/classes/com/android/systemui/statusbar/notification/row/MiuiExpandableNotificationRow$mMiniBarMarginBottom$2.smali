.class final Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$mMiniBarMarginBottom$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$mMiniBarMarginBottom$2;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$mMiniBarMarginBottom$2;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    const v0, 0x7f0707cb    # @dimen/mini_window_bar_marginBottom '7.27dp'

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 11
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    move-result-object p0

    .line 18
    return-object p0
    .line 19
.end method