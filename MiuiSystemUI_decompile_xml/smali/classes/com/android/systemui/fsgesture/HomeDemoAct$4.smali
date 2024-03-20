.class public final Lcom/android/systemui/fsgesture/HomeDemoAct$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

.field public final synthetic val$status:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/HomeDemoAct;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$4;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 2
    iput p2, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$4;->val$status:I

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
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$4;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 4
    iget v1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$4;->val$status:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->prepare(I)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$4;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 13
    iget p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$4;->val$status:I

    .line 15
    invoke-virtual {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->startAnimation(I)V

    .line 17
    return-void
    .line 20
.end method
