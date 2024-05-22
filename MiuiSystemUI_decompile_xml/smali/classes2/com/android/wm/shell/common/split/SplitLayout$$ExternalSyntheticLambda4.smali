.class public final synthetic Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    const/4 v1, 0x4

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onSnappedToDismiss(ZI)V

    .line 14
    return-void

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 20
    const/4 v0, 0x1

    .line 22
    invoke-interface {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onSnappedToDismiss(ZI)V

    .line 23
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 28
.end method
