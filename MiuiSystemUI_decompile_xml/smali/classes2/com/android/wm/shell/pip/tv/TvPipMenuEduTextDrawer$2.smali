.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 2
    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;

    .line 9
    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextContainer:Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    return-void
    .line 23
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 2
    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;

    .line 9
    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextContainer:Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    return-void
    .line 23
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
