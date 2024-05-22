.class public final Lcom/android/systemui/fsgesture/DrawerDemoAct$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

.field public final synthetic val$status:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 2
    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;->val$status:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 4
    iget v1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;->val$status:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->prepare(I)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 13
    iget p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;->val$status:I

    .line 15
    invoke-virtual {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->startAnimation(I)V

    .line 17
    return-void
    .line 20
.end method
