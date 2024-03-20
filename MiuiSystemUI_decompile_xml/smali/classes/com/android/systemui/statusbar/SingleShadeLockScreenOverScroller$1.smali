.class public final Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$1;->this$0:Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$1;->this$0:Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p1

    .line 9
    const v0, 0x7f070639    # @dimen/lockscreen_shade_qs_transition_distance '@dimen/lockscreen_shade_full_transition_distance'

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->totalDistanceForFullShadeTransition:I

    .line 17
    const v0, 0x7f070630    # @dimen/lockscreen_shade_max_over_scroll_amount '24.0dp'

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result p1

    .line 25
    iput p1, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->maxOverScrollAmount:I

    .line 26
    return-void
    .line 28
.end method
