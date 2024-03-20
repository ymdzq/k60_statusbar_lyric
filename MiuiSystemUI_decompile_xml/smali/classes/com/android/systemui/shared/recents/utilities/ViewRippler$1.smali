.class public final Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/recents/utilities/ViewRippler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/utilities/ViewRippler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;->this$0:Lcom/android/systemui/shared/recents/utilities/ViewRippler;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;->this$0:Lcom/android/systemui/shared/recents/utilities/ViewRippler;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;->this$0:Lcom/android/systemui/shared/recents/utilities/ViewRippler;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    .line 15
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 18
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;->this$0:Lcom/android/systemui/shared/recents/utilities/ViewRippler;

    .line 21
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    .line 23
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 26
    return-void
    .line 29
.end method
