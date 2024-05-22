.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onWindowAttached()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onWindowDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 13
    iget-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    .line 15
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mStartScrollEduTextRunnable:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

    .line 26
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    return-void
    .line 31
.end method
