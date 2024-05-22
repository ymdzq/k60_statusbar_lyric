.class public final synthetic Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;FI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;->f$1:F

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 9
    iget p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;->f$1:F

    .line 11
    cmpl-float p0, p0, v1

    .line 13
    if-eqz p0, :cond_0

    .line 15
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    .line 17
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    :goto_0
    return-void

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 28
    iget p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$$ExternalSyntheticLambda0;->f$1:F

    .line 30
    cmpl-float p0, p0, v1

    .line 32
    if-nez p0, :cond_1

    .line 34
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    .line 36
    const/4 v0, 0x4

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    goto :goto_2

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    :goto_2
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 48
.end method
