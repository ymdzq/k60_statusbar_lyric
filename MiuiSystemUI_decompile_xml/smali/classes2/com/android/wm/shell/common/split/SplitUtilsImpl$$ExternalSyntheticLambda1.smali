.class public final synthetic Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitUtilsImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/split/SplitUtilsImpl;

    .line 2
    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v2, v0, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->mFlingFinished:Z

    .line 11
    if-nez v2, :cond_1

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, v0, Lcom/android/wm/shell/common/split/SplitUtilsImpl;->mFlingFinished:Z

    .line 17
    invoke-virtual {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->flingDividerToDismiss(ZI)V

    .line 19
    :goto_0
    return-void
    .line 22
.end method
