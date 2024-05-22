.class public final Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

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
    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    .line 14
    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x5

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v0, 0x6

    .line 24
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    .line 25
    iget-object v1, v1, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 27
    invoke-virtual {v1, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->prepare(I)V

    .line 29
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->startAnimation(I)V

    .line 36
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 40
.end method
